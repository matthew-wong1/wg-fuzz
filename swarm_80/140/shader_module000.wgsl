struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-1372f), Struct_1(1039f), Struct_1(880f), Struct_1(-1000f), Struct_1(-599f), Struct_1(-419f), Struct_1(1000f), Struct_1(-715f), Struct_1(-199f), Struct_1(-655f), Struct_1(1209f), Struct_1(609f), Struct_1(656f), Struct_1(376f));

var<private> global1: i32 = 1i;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = !(!(!vec3<bool>(true, arg_1.x, true)));
    var var_1 = _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a), ~arg_0.a.xz), 1u, arg_0.a.x, ~countOneBits(20202u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.b.b.x & 3870u, reverseBits(u_input.a), ~u_input.a), ~(~vec4<u32>(14426u, 0u, 75475u, arg_0.a.x))));
    var var_2 = arg_0;
    let var_3 = Struct_3(arg_0.a, var_2.b, Struct_1(arg_0.d.a), Struct_1(1000f));
    var var_4 = ~(~min(~var_3.a.wwy >> (vec3<u32>(arg_0.b.b.x, var_2.a.x, 15549u) % vec3<u32>(32u)), min(var_1.xyy >> (var_3.a.xxx % vec3<u32>(32u)), arg_0.a.wyz)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1454f);
}

fn func_2() -> Struct_3 {
    var var_0 = true;
    let var_1 = Struct_3(_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(u_input.a, 29928u, u_input.a, 0u) & ~vec4<u32>(u_input.a, u_input.a, u_input.a, 50556u)), vec4<u32>(~17006u, u_input.a, abs(4294967295u), countOneBits(61039u)) & (vec4<u32>(0u, u_input.a, u_input.a, 275u) & vec4<u32>(45971u, 4022u, u_input.a, 4294967295u))), Struct_2(select(vec3<bool>(any(vec4<bool>(true, true, false, false)), any(vec3<bool>(false, false, true)), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true), _wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), ~(~vec2<u32>(43542u, u_input.a))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.b.x, u_input.c, u_input.b.x), u_input.b.wzw, vec3<bool>(false, true, true)) | abs(vec3<i32>(23360i, u_input.c, 15536i)), firstLeadingBit(vec3<i32>(2147483647i, 1i, -43571i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1000f))))), global0[_wgslsmith_index_u32(u_input.a, 14u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<u32>(4294967295u, 0u, u_input.a, 67952u), Struct_2(vec3<bool>(false, true, true), vec2<u32>(30805u, 1u), vec3<i32>(-73689i, u_input.b.x, -59214i), 609f), Struct_1(-495f), Struct_1(1458f)), vec4<bool>(false, false, true, true), any(vec2<bool>(true, true)), firstLeadingBit(u_input.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-844f))))));
    var var_2 = ~var_1.b.b.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b.d + -137f), _wgslsmith_f_op_f32(315f - _wgslsmith_f_op_f32(f32(-1f) * -983f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.a, 588f) + vec2<f32>(-920f, 727f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a, var_1.b.d))), select(var_1.b.a.zz, !vec2<bool>(false, var_1.b.a.x), false | var_1.b.a.x)))));
    let var_4 = ~firstLeadingBit(_wgslsmith_mult_i32(u_input.b.x, firstLeadingBit(u_input.c)));
    return var_1;
}

fn func_1() -> Struct_2 {
    global1 = -abs(50396i);
    global1 = -u_input.c;
    var var_0 = vec3<bool>(true, any(vec2<bool>(true, true)), true);
    let var_1 = func_2();
    global1 = u_input.c;
    return func_2().b;
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_mult_i32(func_1().c.x, reverseBits(func_1().c.x) | func_1().c.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-426f))), -462f, _wgslsmith_f_op_f32(f32(-1f) * -1204f));
    global0 = array<Struct_1, 14>();
    var var_2 = _wgslsmith_clamp_i32(~u_input.c, 1i, reverseBits(func_1().c.x));
    var var_3 = vec3<u32>(1u, _wgslsmith_div_u32(1u, 1u), _wgslsmith_mult_u32(abs(arg_0.b.b.x), u_input.a));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_i32(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-79485i, -53804i), u_input.b.xw, u_input.b.zz), u_input.b.zy), u_input.c), 2147483647i | u_input.b.x);
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2172f + 854f), _wgslsmith_f_op_f32(816f - 609f))), 1824f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(653f * -424f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(603f)) + -468f))))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-280f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-865f, _wgslsmith_f_op_f32(272f * -1475f), u_input.a != u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(982f + 865f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) - _wgslsmith_f_op_f32(floor(1000f)))))));
    let var_1 = Struct_3(vec4<u32>(abs(1u), func_4(Struct_3(~vec4<u32>(u_input.a, 115126u, 33130u, 7052u), func_1(), Struct_1(-1219f), func_2().d)), ~_wgslsmith_add_u32(11339u, 1u), ~u_input.a), Struct_2(vec3<bool>(any(vec3<bool>(true, true, true)), true, false), ~(~(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 21219u) % vec2<u32>(32u)))), func_1().c, 1342f), global0[_wgslsmith_index_u32(func_2().b.b.x, 14u)], Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1959f), _wgslsmith_div_f32(391f, _wgslsmith_f_op_f32(trunc(-358f)))))));
    var_0 = _wgslsmith_f_op_f32(-var_1.d.a);
    let var_2 = ~(-var_1.b.c.x);
    var var_3 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1398f, var_1.c.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(857f, var_3.d))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-820f * -402f)))), ~abs(vec2<i32>(u_input.c, var_1.b.c.x) & vec2<i32>(15725i, 1i)), 35547u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.c.a, -301f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-384f, -2100f), vec2<f32>(-481f, -1176f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-445f, var_3.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-705f, 416f) - vec2<f32>(1f, 1f))))));
}

