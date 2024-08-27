struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2)), _wgslsmith_f_op_vec2_f32(arg_2 - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1147f, -823f) - vec2<f32>(arg_0.x, arg_2.x)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-526f, 707f) - arg_2) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_2.x) - arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-839f, arg_0.x))), max(u_input.c, arg_1) != (arg_1 | -5520i))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(arg_0)));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -425f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), 289f, _wgslsmith_f_op_f32(floor(770f))));
    var_0 = arg_2;
    let var_3 = true;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(var_1.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(718f, var_1.a.x, true)))) - _wgslsmith_f_op_f32(-1266f - 514f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-333f))), _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - 2810f)), _wgslsmith_f_op_f32(trunc(arg_2.x)))));
}

fn func_2() -> u32 {
    let var_0 = -(_wgslsmith_add_i32(_wgslsmith_add_i32(0i, countOneBits(u_input.c)), u_input.c) & u_input.c);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))))), -2147483647i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -537f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1244f * 785f), _wgslsmith_f_op_f32(-589f - 1038f)))))));
    let var_2 = vec4<i32>(var_0, -34979i, 1i, _wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(32461i, _wgslsmith_sub_i32(var_0, -4855i), max(-19514i, var_0)), min(-vec3<i32>(var_0, var_0, var_0), min(vec3<i32>(-2147483647i, var_0, var_0), vec3<i32>(-1i, 2147483647i, u_input.c))))));
    let var_3 = Struct_1(var_1.a);
    var var_4 = firstLeadingBit(1u);
    return 35057u;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1534f, 1336f, -1000f, -648f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-850f, -334f, -1254f, 724f) + vec4<f32>(663f, 116f, 1037f, -321f)), _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-275f, -1702f, -942f, 2431f), 4977i, vec2<f32>(1571f, 697f))), all(vec2<bool>(true, arg_2.x)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-357f, -361f, -1309f, 793f), vec4<f32>(220f, -1136f, 1782f, -1332f), true)))))));
    var_0 = Struct_1(var_0.a);
    let var_1 = 1i;
    var_0 = Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_div_f32(1f, var_0.a.x), 1230f, -1776f));
    var var_2 = Struct_1(var_0.a);
    return Struct_1(var_2.a);
}

fn func_1() -> StorageBuffer {
    let var_0 = ~u_input.a.x;
    var var_1 = _wgslsmith_mod_u32(u_input.b, u_input.a.x);
    var_1 = u_input.b;
    var_1 = var_0;
    var var_2 = func_4(_wgslsmith_mult_vec3_i32(-(vec3<i32>(1i, 2147483647i, u_input.c) & _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, -55374i), vec3<i32>(u_input.c, u_input.c, u_input.c))), vec3<i32>(i32(-1i) * -1i, 44088i, _wgslsmith_mult_i32(-12076i, u_input.c) ^ u_input.c)), ~(~max(u_input.a.yxw, u_input.a.xxx)) & vec3<u32>(~1u | u_input.b, _wgslsmith_add_u32(0u, 70814u) & func_2(), u_input.b), vec3<bool>(true, true, any(vec2<bool>(true, true))));
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1304f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -166f)) * 1064f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.a.yw, ~u_input.a.wz) >> ((u_input.a.xx | u_input.a.yx) % vec2<u32>(32u));
    let var_1 = var_0.x;
    let x = u_input.a;
    s_output = func_1();
}

