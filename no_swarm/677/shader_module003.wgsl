struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-arg_0.a);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = u_input.c.x;
    var var_1 = _wgslsmith_div_vec2_f32(arg_1.a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1167f, arg_1.a.a.x)), _wgslsmith_f_op_f32(arg_1.a.a.x + arg_1.c.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.c.a.x)), arg_1.a.a.x))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.a.x), 236f, 404f);
    var var_3 = arg_0.yzy;
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.a), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_1.a.a, 18345u), min(vec4<u32>(var_0, 40169u, var_0, 0u), vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.c.x))))), _wgslsmith_f_op_vec2_f32(ceil(arg_1.a.a)))));
    return select(vec4<bool>(!(var_3.x || false), !(select(false, false, false) && (arg_1.b.x && true)), select(!arg_1.b.x, all(arg_1.b.yw), all(vec2<bool>(true, arg_1.b.x))), !(!any(arg_0.wzy))), !vec4<bool>(true, any(select(arg_0, vec4<bool>(var_3.x, true, arg_0.x, true), false)), select(var_3.x, arg_1.b.x, true | var_3.x), any(vec3<bool>(arg_1.b.x, var_3.x, true)) && all(vec4<bool>(arg_0.x, true, false, true))), any(vec4<bool>(true, var_3.x, true, !(!arg_1.b.x))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = u_input.e;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1042f, _wgslsmith_f_op_f32(844f * -348f), 1f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1121f, arg_1.a.x, 1251f), vec3<f32>(arg_1.a.x, -2171f, arg_1.a.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(step(arg_1.a.x, 263f)), _wgslsmith_f_op_f32(max(220f, arg_1.a.x)), _wgslsmith_f_op_f32(156f * -289f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(739f, arg_1.a.x, var_1.x), vec3<f32>(1000f, 197f, 682f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1198f, -1563f, _wgslsmith_f_op_f32(var_1.x * -1220f))))));
    var_0 = abs(u_input.e ^ vec4<i32>(~var_0.x, _wgslsmith_dot_vec3_i32(select(u_input.e.zzw, vec3<i32>(33761i, var_0.x, 14729i), arg_0), u_input.b), var_0.x, ~u_input.b.x));
    let var_3 = true;
    return select(vec2<bool>(20708i == _wgslsmith_add_i32(var_0.x, _wgslsmith_div_i32(5141i, -1i)), true), vec2<bool>(var_3, var_3 | !any(vec2<bool>(arg_0, var_3))), !any(select(vec4<bool>(arg_0, false, false, true), func_2(vec4<bool>(var_3, var_3, var_3, true), Struct_2(Struct_1(var_2.zy, u_input.c.x), vec4<bool>(true, var_3, false, arg_0), Struct_1(arg_1.a, arg_1.b), vec3<u32>(u_input.c.x, arg_1.b, u_input.c.x))), vec4<bool>(false, false, var_3, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~4294967295u;
    let var_1 = -206f;
    var var_2 = select(vec3<bool>(!(!(var_1 >= var_1)), !all(func_1(false, Struct_1(vec2<f32>(-1058f, var_1), 29208u))), func_2(func_2(vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec2<f32>(var_1, -167f), var_0), vec4<bool>(true, true, false, false), Struct_1(vec2<f32>(-278f, var_1), 6296u), vec3<u32>(var_0, 4294967295u, u_input.c.x))), Struct_2(Struct_1(vec2<f32>(113f, 300f), u_input.c.x), vec4<bool>(true, true, true, true), Struct_1(vec2<f32>(var_1, var_1), u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, 0u))).x), vec3<bool>(true & func_1(true, Struct_1(vec2<f32>(-793f, var_1), 42079u)).x, true, select(u_input.d > u_input.b.x, any(vec4<bool>(false, false, false, true)), false) & true), !func_2(func_2(vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec2<f32>(var_1, 2167f), u_input.c.x), vec4<bool>(true, true, true, false), Struct_1(vec2<f32>(-2386f, var_1), 4294967295u), vec3<u32>(u_input.c.x, 77305u, 4294967295u))), Struct_2(Struct_1(vec2<f32>(var_1, 1000f), 4u), vec4<bool>(true, true, false, true), Struct_1(vec2<f32>(var_1, var_1), u_input.c.x), vec3<u32>(var_0, 106366u, u_input.c.x) ^ vec3<u32>(24874u, 37890u, 40119u))).ywz);
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-170f, var_1), _wgslsmith_f_op_f32(var_1 * -127f), _wgslsmith_div_f32(var_1, 616f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(184f, -252f, var_1), vec3<f32>(var_1, 304f, 1399f), false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1982f, 1352f, var_1), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-682f, -658f, -274f), vec3<f32>(497f, 803f, var_1))), select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, false, var_2.x), vec3<bool>(var_2.x, true, var_2.x))))), !func_2(vec4<bool>(var_2.x, true, var_2.x, false), Struct_2(Struct_1(vec2<f32>(var_1, var_1), u_input.c.x), vec4<bool>(var_2.x, false, var_2.x, true), Struct_1(vec2<f32>(var_1, var_1), var_0), vec3<u32>(u_input.c.x, 4294967295u, var_0))).xzx)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(588f, -386f)), _wgslsmith_clamp_u32(1u, 4294967295u, u_input.c.x)));
    var_3 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1591f)))), _wgslsmith_f_op_f32(-1000f * var_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -259f), 418f)), var_3.b.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(-var_3.b.a), ~(~_wgslsmith_mod_u32(var_3.b.b, u_input.c.x))));
    var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(814f * var_1) * -966f), _wgslsmith_f_op_f32(round(var_1)), 1f)), var_3.b);
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(trunc(var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(1000f, var_3.b.a.x), u_input.c.x), vec4<u32>(52326u, var_3.b.b, u_input.c.x, var_0))).x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, 929f) + var_4.a))), _wgslsmith_div_vec2_f32(var_3.a.xx, _wgslsmith_div_vec2_f32(var_3.b.a, var_4.a))))), -(~vec4<i32>(u_input.e.x ^ 2147483647i, 1i, -20764i, abs(23371i))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, var_3.b.b), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.b, var_3.b.b, 38390u) ^ vec3<u32>(0u, 0u, 1u), ~vec3<u32>(4294967295u, var_0, 1u)) & ~(var_3.b.b >> (var_4.b % 32u))));
}

