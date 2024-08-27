struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: bool;

var<private> global2: array<vec3<f32>, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_4) -> vec4<i32> {
    global2 = array<vec3<f32>, 24>();
    var var_0 = Struct_4(_wgslsmith_sub_u32(arg_2.a | ~arg_2.a, abs(79974u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(arg_2.b, vec4<f32>(-1478f, 1460f, -887f, -317f))), _wgslsmith_f_op_vec4_f32(-arg_2.b))), arg_2.b)))), abs(arg_2.c));
    var var_1 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), all(vec3<bool>(false, true, true)))));
    return vec4<i32>(1i, 38754i, arg_0.x, ~var_0.c);
}

fn func_2() -> u32 {
    global1 = all(vec2<bool>(false, true));
    let var_0 = i32(-1i) * -abs(_wgslsmith_dot_vec4_i32(func_3(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(u_input.a, u_input.a), Struct_4(1u, vec4<f32>(-445f, 169f, 509f, 419f), 0i)), vec4<i32>(21489i, u_input.b.x, -1i, u_input.b.x)));
    let var_1 = Struct_5(vec2<bool>(true, true), u_input.b.x << (37337u % 32u), Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 1i, 42891i) << (countOneBits(vec3<u32>(u_input.a, 15476u, 3833u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~u_input.b.wxz, firstTrailingBit(vec3<i32>(-36447i, -1i, 1594i)))), Struct_1(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, vec4<i32>(u_input.b.x, 7104i, 0i, 0i)) ^ u_input.b, vec2<bool>(true, all(vec3<bool>(true, false, false))), vec3<u32>(~46285u, _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a), -2493i), -u_input.b.zw, Struct_1(vec4<i32>(14841i, select(-19964i, -1i, true), 1i, _wgslsmith_clamp_i32(-3839i, u_input.b.x, -4276i)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), _wgslsmith_add_vec3_u32(vec3<u32>(4460u, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 40176u), vec3<u32>(u_input.a, 0u, u_input.a))), 1i)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-122f, -634f), _wgslsmith_f_op_f32(trunc(930f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, 591f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1029f, 688f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(791f, 195f)))))))), Struct_4(~(~u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1616f, -1421f, 1000f, 1000f) - vec4<f32>(1850f, 705f, -523f, 1772f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(124f, -757f, 725f, 101f)))), reverseBits(_wgslsmith_dot_vec2_i32(countOneBits(u_input.b.yx), abs(vec2<i32>(-8431i, 1i))))));
    global2 = array<vec3<f32>, 24>();
    let var_2 = ~min(~vec4<u32>(max(var_1.e.a, 80441u), ~var_1.e.a, 57774u, ~u_input.a), select(select(abs(vec4<u32>(var_1.e.a, var_1.c.b.c.x, 1919u, 30466u)), vec4<u32>(u_input.a, 1u, 22612u, 27097u) >> (vec4<u32>(u_input.a, var_1.c.d.c.x, var_1.e.a, var_1.c.d.c.x) % vec4<u32>(32u)), vec4<bool>(true, false, true, true)), vec4<u32>(abs(var_1.e.a), var_1.e.a ^ 0u, ~var_1.c.b.c.x, ~u_input.a), var_1.a.x));
    return 4294967295u;
}

fn func_1(arg_0: u32) -> Struct_5 {
    global2 = array<vec3<f32>, 24>();
    var var_0 = min(max(_wgslsmith_div_u32(firstLeadingBit(~1u), 80092u << (u_input.a % 32u)), arg_0), func_2());
    var var_1 = !any(!select(vec2<bool>(true, true), vec2<bool>(false, false), true));
    global2 = array<vec3<f32>, 24>();
    let var_2 = ~(4294967295u | ~(~arg_0)) | select(~_wgslsmith_sub_u32(28123u, ~arg_0), arg_0, 0u < _wgslsmith_div_u32(~arg_0, arg_0));
    return Struct_5(select(select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), u_input.b.x, Struct_2(abs(vec3<i32>(-30183i, abs(u_input.b.x), min(26806i, u_input.b.x))), Struct_1(-u_input.b, select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), vec3<u32>(min(u_input.a, u_input.a), func_2(), 0u), _wgslsmith_mod_i32(~u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), global0[_wgslsmith_index_u32(~(~arg_0), 9u)], Struct_1(vec4<i32>(10254i, u_input.b.x, abs(870i), -14674i), vec2<bool>(any(vec4<bool>(false, true, false, true)), true), vec3<u32>(abs(43738u), _wgslsmith_mult_u32(arg_0, 1u), 1u), max(3973i, -25977i) | u_input.b.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-216f, -1000f) * vec2<f32>(1600f, 295f))))))), Struct_4(1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(249f, 324f, -1179f, -1360f)))), vec4<f32>(850f, -619f, _wgslsmith_f_op_f32(f32(-1f) * -1224f), 315f), vec4<bool>(any(vec2<bool>(false, true)), true, true, true))), -(~_wgslsmith_mult_i32(2147483647i, u_input.b.x))));
}

fn func_4(arg_0: Struct_5) -> i32 {
    let var_0 = _wgslsmith_mult_vec4_i32(u_input.b, -(u_input.b & (select(vec4<i32>(0i, u_input.b.x, arg_0.e.c, arg_0.b), u_input.b, true) >> (max(vec4<u32>(1u, u_input.a, arg_0.c.b.c.x, u_input.a), vec4<u32>(arg_0.c.d.c.x, 1u, 6760u, arg_0.c.d.c.x)) % vec4<u32>(32u)))));
    let var_1 = arg_0.e.b.xzx;
    var var_2 = arg_0.c.d.c;
    let var_3 = -826f;
    global2 = array<vec3<f32>, 24>();
    return 43163i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(abs(vec3<u32>(2914u, 0u, 14887u)) >> (vec3<u32>(~u_input.a, 27642u, reverseBits(32506u)) % vec3<u32>(32u))));
    var var_1 = global0[_wgslsmith_index_u32(~14736u, 9u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-978f, -331f))) + 410f)));
    let var_3 = Struct_2(select(u_input.b.xyy, vec3<i32>(abs(~var_1.x), ~(var_1.x & u_input.b.x), i32(-1i) * -48627i), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_sub_vec4_i32(-u_input.b, u_input.b), vec2<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true)), any(vec4<bool>(false, false, true, false))), reverseBits(~vec3<u32>(var_0.x, 31672u, 4294967295u)), func_4(func_1(min(7613u, 4294967295u)))), -global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(22177u, var_0.x & 17516u), 9u)], Struct_1(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x) << (reverseBits(var_0.x) % 32u), var_1.x ^ ~var_1.x, 8776i, 1i), !select(func_1(1u).a, func_1(110716u).a, true), ~_wgslsmith_div_vec3_u32(vec3<u32>(52166u, 0u, u_input.a), vec3<u32>(4294967295u, u_input.a, 56917u)) ^ ((vec3<u32>(1u, u_input.a, var_0.x) | vec3<u32>(92005u, u_input.a, u_input.a)) << (~vec3<u32>(1u, u_input.a, var_0.x) % vec3<u32>(32u))), u_input.b.x));
    global1 = ~func_2() >= _wgslsmith_add_u32(var_3.b.c.x, var_0.x);
    var var_4 = vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(-932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-555f))), var_3.b.b.x))), _wgslsmith_f_op_f32(max(-357f, 893f)));
    global1 = !(select(true, -var_1.x > firstTrailingBit(-25919i), !var_3.b.b.x) | (true || var_3.b.b.x));
    let var_5 = func_1(43190u).e;
    var var_6 = Struct_1(var_3.b.a, var_3.d.b, ~var_3.b.c, 13745i);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b, 47228u, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1726f, var_4.x, var_5.b.x, -389f))) - var_5.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_5.b) + _wgslsmith_f_op_vec4_f32(select(var_5.b, vec4<f32>(-251f, var_5.b.x, var_5.b.x, 137f), var_3.d.b.x)))) + func_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.d.c.x, var_3.d.c.x), var_6.c.xy), firstTrailingBit(vec2<u32>(1u, 42463u)))).e.b), vec2<i32>(-1i, _wgslsmith_sub_i32(var_5.c, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, -4652i), var_1.x))));
}

