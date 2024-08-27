struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    let var_0 = vec3<u32>(~0u ^ u_input.b.x, 99331u, _wgslsmith_dot_vec2_u32(u_input.a.zz, ~max(vec2<u32>(u_input.a.x, 11967u), ~u_input.a.xx)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(379f)), -974f)))))));
    global0 = array<Struct_1, 5>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, var_1))) + 297f) * _wgslsmith_f_op_f32(-var_1)), Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a.x), abs(var_0.x)))));
    let var_3 = ~1i;
    return firstLeadingBit(70940u);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_1, 5>();
    return Struct_2(vec2<u32>(max(4294967295u, ~func_2()), ~1u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_2(~arg_2.xy);
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var_0 = arg_0;
    global0 = array<Struct_1, 5>();
    return Struct_3(1271f, Struct_2(vec2<u32>(abs(arg_1.b.x), arg_1.d.b.a.x)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<f32>, arg_3: i32) -> vec3<f32> {
    var var_0 = select(vec2<bool>(false, true), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))) == all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), !any(vec4<bool>(true, true, false, true))), vec2<bool>(true, 10830u < u_input.b.x));
    var_0 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, true), vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), var_0.x)), select(!vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), !vec2<bool>(true, var_0.x)), vec2<bool>(var_0.x, arg_0.b.a.x == arg_0.b.a.x)), select(vec2<bool>(all(vec2<bool>(var_0.x, var_0.x)), true), !vec2<bool>(var_0.x, true), all(!vec4<bool>(false, var_0.x, false, true))), !select(vec2<bool>(arg_0.b.a.x == arg_0.b.a.x, !var_0.x), select(!vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), !var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), true)));
    var var_1 = vec4<u32>(4294967295u, reverseBits(func_3(arg_0.b, Struct_5(-1003f, _wgslsmith_mod_vec2_u32(u_input.a.xy, u_input.b.yx), vec2<i32>(1i, arg_3), Struct_3(arg_2.x, Struct_2(vec2<u32>(arg_0.b.a.x, u_input.b.x)))), vec4<u32>(~1u, 1u, u_input.b.x, func_3(arg_0.b, Struct_5(1242f, vec2<u32>(u_input.b.x, 1u), vec2<i32>(arg_1, arg_1), Struct_3(arg_2.x, Struct_2(vec2<u32>(4294967295u, 56175u)))), u_input.b, u_input.a).b.a.x), u_input.a).b.a.x), func_1(vec4<u32>(max(1u, 15063u), 1u, func_3(func_1(u_input.b, Struct_2(vec2<u32>(u_input.b.x, arg_0.b.a.x)), vec2<bool>(true, var_0.x), vec4<u32>(1u, 0u, 4294967295u, 0u)), Struct_5(-505f, vec2<u32>(arg_0.b.a.x, arg_0.b.a.x), vec2<i32>(arg_3, arg_3), Struct_3(arg_0.a, arg_0.b)), abs(u_input.b), select(vec3<u32>(arg_0.b.a.x, arg_0.b.a.x, 34250u), vec3<u32>(arg_0.b.a.x, u_input.b.x, 0u), true)).b.a.x, _wgslsmith_mod_u32(~36800u, 29364u)), arg_0.b, !(!vec2<bool>(true, var_0.x)), abs(u_input.b)).a.x, 0u);
    let var_2 = min(77659u, abs(var_1.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.xz));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-237f, arg_2.x, -322f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a, 812f, 1200f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(774f, -1193f, var_3.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_4(func_3(func_1(vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, u_input.a.x), Struct_2(vec2<u32>(u_input.a.x, 30321u)), vec2<bool>(true, false), vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 29713u)), Struct_5(1933f, u_input.a.yx, vec2<i32>(-2147483647i, -2147483647i), Struct_3(-1110f, Struct_2(vec2<u32>(39104u, u_input.b.x)))), abs(vec4<u32>(58720u, 19772u, u_input.b.x, u_input.b.x)), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) ^ u_input.b.xyz), -23041i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2289f, 557f, 757f), vec3<f32>(-354f, 1325f, -528f), vec3<bool>(true, true, true))))), 26077i)))));
    var var_1 = firstLeadingBit(-vec2<i32>(1i, 1i));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 5u)];
    var var_3 = 37965u;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1001f, -1000f, 376f) + vec3<f32>(-1525f, 1068f, -1307f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-505f, 675f, -1581f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-824f, 176f, -1000f)), vec3<f32>(-2662f, 1384f, 1136f), vec3<bool>(var_2.e, var_2.e, false))))) - _wgslsmith_div_vec3_f32(vec3<f32>(993f, _wgslsmith_f_op_f32(min(var_2.a, var_2.a)), var_0.x), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a * -245f), _wgslsmith_f_op_f32(var_0.x * -1281f)))));
    var var_4 = _wgslsmith_div_vec4_i32((vec4<i32>(-31873i, ~var_1.x, 2132i, _wgslsmith_mult_i32(19289i, var_2.d.x)) | _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -23372i, var_2.d.x, var_2.d.x), ~vec4<i32>(1i, var_1.x, var_1.x, 48360i))) << (~(~select(u_input.b, vec4<u32>(var_2.b, 0u, u_input.b.x, 20033u), vec4<bool>(var_2.c, false, true, var_2.c))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.d.x, var_2.d.x, -1204i, var_1.x), vec4<i32>(var_1.x & ~var_1.x, firstLeadingBit(var_2.d.x) ^ var_2.d.x, -var_2.d.x, -8505i)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_f_op_f32(-var_2.a));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-619f, var_2.a, 272f) + vec3<f32>(1515f, -1275f, var_5)) - vec3<f32>(569f, var_5, -199f)) - vec3<f32>(_wgslsmith_f_op_f32(abs(var_5)), _wgslsmith_f_op_f32(var_5 + var_2.a), _wgslsmith_f_op_f32(round(-1143f))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-174f, -1123f, 968f) * vec3<f32>(-492f, -1120f, -776f)), vec3<f32>(var_5, -761f, var_2.a))))));
    var var_6 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1007f, -547f) - var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1445f * -1327f))), -1875f)), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, ~u_input.a.x), _wgslsmith_mult_u32(func_1(~vec4<u32>(u_input.a.x, u_input.a.x, 31580u, var_2.b), func_1(vec4<u32>(var_2.b, var_2.b, 37829u, 78712u), Struct_2(u_input.b.xy), vec2<bool>(var_2.e, true), vec4<u32>(var_2.b, 1u, 12632u, var_2.b)), select(vec2<bool>(false, var_2.c), vec2<bool>(var_2.e, var_2.e), vec2<bool>(var_2.e, var_2.c)), _wgslsmith_add_vec4_u32(u_input.b, u_input.b)).a.x, 1u)), vec2<i32>(var_1.x, 0i), func_3(Struct_2(~(~u_input.a.xz)), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_5, var_2.a, var_2.e))), ~abs(vec2<u32>(1u, 4294967295u)), var_4.xw >> (_wgslsmith_clamp_vec2_u32(u_input.a.zz, u_input.b.xy, u_input.a.zx) % vec2<u32>(32u)), func_3(Struct_2(vec2<u32>(0u, 0u)), Struct_5(var_5, vec2<u32>(62589u, u_input.b.x), var_2.d.xy, Struct_3(var_0.x, Struct_2(vec2<u32>(19804u, 1u)))), vec4<u32>(u_input.b.x, 17083u, 9364u, u_input.a.x), countOneBits(u_input.a))), _wgslsmith_div_vec4_u32(~u_input.b, abs(~u_input.b)), ~select(abs(vec3<u32>(u_input.b.x, 12583u, 22042u)), u_input.b.zwz, select(vec3<bool>(var_2.e, false, false), vec3<bool>(true, true, var_2.c), true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(firstTrailingBit(u_input.b), var_6.d.b, vec2<bool>(var_2.e, _wgslsmith_mult_i32(var_6.c.x, 27344i) == var_2.d.x), firstTrailingBit(~u_input.b >> (u_input.b % vec4<u32>(32u)))).a.x, var_6.c.x, u_input.b.ww, ~var_2.d.x);
}

