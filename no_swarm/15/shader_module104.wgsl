struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = ~(~abs(_wgslsmith_mod_vec2_i32(arg_2.zx, arg_2.xz)));
    var_0 = ~arg_2.zw << (~u_input.d.yx % vec2<u32>(32u));
    var var_1 = Struct_2(all(vec3<bool>(arg_0.a, u_input.d.x > arg_1, true)) && arg_0.a, arg_3.b);
    var_1 = arg_3;
    let var_2 = arg_2;
    return arg_3.b;
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(771f + 1634f) + 1517f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2743f - 2557f), _wgslsmith_f_op_f32(trunc(-1005f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(true, 106f), 0u, vec4<i32>(2147483647i, -5842i, u_input.c, u_input.e), Struct_2(false, 1925f))) + _wgslsmith_f_op_f32(f32(-1f) * -669f))))), 487f, u_input.c | ~(-_wgslsmith_div_i32(-36961i, -34688i)), !vec2<bool>(false, _wgslsmith_f_op_f32(select(954f, -1281f, false)) != 955f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1244f, _wgslsmith_f_op_f32(step(421f, 549f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-674f, 620f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-119f, _wgslsmith_f_op_f32(1081f + 364f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-292f, -1177f)))), !((u_input.e >> (u_input.a.x % 32u)) != 2147483647i))));
    global0 = ~min(u_input.a.x, countOneBits(u_input.d.x));
    global0 = 35633u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(-338f + _wgslsmith_f_op_f32(-var_0.b)))) + -897f);
    let var_2 = _wgslsmith_add_vec4_i32(-abs(vec4<i32>(u_input.e, -2147483647i, u_input.b, ~0i)), abs(-(~vec4<i32>(-60067i, var_0.c, var_0.c, -596i))));
    return !var_0.d.x;
}

fn func_1() -> Struct_2 {
    global0 = 1u;
    global0 = firstLeadingBit(24764u);
    let var_0 = ~(u_input.b << (_wgslsmith_div_u32(~(~1u), u_input.d.x ^ 80640u) % 32u));
    global0 = u_input.d.x;
    global0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(8093u, 20482u), u_input.a.x), 1u);
    return Struct_2(!all(vec2<bool>(func_2(), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(731f - _wgslsmith_f_op_f32(-1518f + -1027f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(764f, 849f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1264f - -1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(66622u, u_input.a.x, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(60739u, 259u, 48383u), vec3<u32>(u_input.a.x, u_input.d.x, 4294967295u))), max(~u_input.d.x, u_input.a.x)), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, firstLeadingBit(u_input.a.x)), u_input.a.x));
    var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b, 1044f)), var_0.b, -294f, var_0.b))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1370f, 654f, -1000f, 245f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, 675f, var_0.b, var_0.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1437f, 2407f, var_0.b, 467f), vec4<f32>(var_0.b, 1076f, var_0.b, 1662f), true)), select(vec4<bool>(false, true, true, var_0.a), vec4<bool>(false, var_0.a, true, true), var_0.a)))))), _wgslsmith_f_op_f32(abs(-1219f)), 28670i, vec2<bool>(!(true || func_1().a), (_wgslsmith_f_op_f32(-var_0.b) < -1000f) & var_0.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) + vec2<f32>(var_0.b, var_0.b))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * -264f) - _wgslsmith_f_op_f32(f32(-1f) * -1323f)), _wgslsmith_f_op_f32(abs(var_0.b)))));
    var_0 = func_1();
    let var_2 = var_1.c;
    let var_3 = _wgslsmith_f_op_f32(var_0.b - -1947f);
    let var_4 = vec4<u32>(~min(~(4294967295u | u_input.a.x), ~1u), ~1u, 106025u, u_input.a.x | min(_wgslsmith_div_u32(4294967295u & u_input.d.x, abs(u_input.d.x)), _wgslsmith_div_u32(1u, u_input.a.x) << (select(55871u, u_input.a.x, var_1.d.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.a.zz - var_1.a.wy))))) * var_1.e));
}

