struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> vec2<bool> {
    var var_0 = arg_2.a;
    let var_1 = 10693u;
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(var_0.b))))), vec2<f32>(703f, arg_3), true);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1233f)), _wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_f32(-1969f + arg_3)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a.b.x)))), _wgslsmith_f_op_f32(max(1139f, -1000f)), -662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.a - vec2<f32>(-1000f, -714f)))) + _wgslsmith_div_vec2_f32(var_2.yy, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_2.wz, var_2.xx))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.a), arg_2.a.b, !vec2<bool>(arg_2.b, arg_2.a.c)))))), (var_0.c && (all(vec3<bool>(arg_2.b, var_0.c, var_0.c)) || all(vec4<bool>(var_0.c, true, arg_2.a.c, false)))) || !arg_2.b);
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_5, arg_1: f32) -> vec3<bool> {
    var var_0 = -u_input.a.zy;
    let var_1 = ~67233u;
    var_0 = select(u_input.d.zz, vec2<i32>(_wgslsmith_mod_i32(u_input.d.x, -1i), -(~2147483647i)) & vec2<i32>(var_0.x, 1i), vec2<bool>(any(select(!vec4<bool>(arg_0.c.a, false, arg_0.c.a, true), vec4<bool>(arg_0.c.a, arg_0.c.a, arg_0.b, true), !vec4<bool>(true, arg_0.c.a, arg_0.b, true))), true));
    let var_2 = any(func_3(arg_1, firstLeadingBit(-(u_input.a.x | u_input.d.x)), Struct_3(Struct_2(vec2<f32>(arg_1, 2047f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), arg_0.c.d >= -1i), false, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -915f) - vec2<f32>(-743f, 202f)))), _wgslsmith_div_i32(-1i, arg_0.c.c)), -1346f));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(674f, arg_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, arg_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1 * -403f), _wgslsmith_f_op_f32(f32(-1f) * -1117f))), true), all(vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(666f, arg_1)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-386f, arg_1) - vec2<f32>(-1773f, -364f)))))), arg_0.c.d);
    return !select(vec3<bool>(arg_0.c.c > 2147483647i, var_2, !(285f == var_3.a.b.x)), select(vec3<bool>(var_2, var_2, true), select(select(vec3<bool>(false, true, false), vec3<bool>(var_2, arg_0.c.a, false), vec3<bool>(arg_0.c.a, false, true)), select(vec3<bool>(arg_0.c.a, true, var_3.a.c), vec3<bool>(false, arg_0.c.a, var_2), true), 18858u <= u_input.c.x), all(!vec2<bool>(false, arg_0.c.a))), select(select(!vec3<bool>(arg_0.b, var_3.b, var_2), vec3<bool>(false, arg_0.b, var_3.b), !vec3<bool>(false, var_3.a.c, arg_0.b)), select(!vec3<bool>(true, false, var_3.a.c), !vec3<bool>(false, false, arg_0.b), select(vec3<bool>(var_3.b, false, false), vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(false, false, true))), all(vec2<bool>(true, false))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = func_2(Struct_5(u_input.e, true, Struct_1(arg_1.c, _wgslsmith_clamp_u32(u_input.c.x ^ u_input.c.x, 1u, 66627u), -2147483647i, 2147483647i)), _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-501f + arg_1.a.x)))))).zz;
    var_0 = !arg_0.xy;
    let var_1 = arg_1.a.x;
    var_0 = select(select(vec2<bool>(true, true), vec2<bool>(!any(vec4<bool>(false, arg_0.x, true, arg_1.c)), (var_0.x != true) || any(vec4<bool>(true, var_0.x, arg_0.x, arg_1.c))), arg_0.yy), select(select(arg_0.yy, !(!arg_0.xz), !(u_input.d.x > -27306i)), !(!arg_0.zy), arg_0.x), any(select(vec4<bool>(arg_1.c, true, arg_0.x, false), !vec4<bool>(arg_1.c, false, true, false), all(vec4<bool>(arg_0.x, false, false, var_0.x)))) | !arg_1.c);
    var var_2 = Struct_3(arg_1, func_2(Struct_5(u_input.b.x & 0u, true || func_3(504f, 0i, Struct_3(arg_1, true, vec2<f32>(arg_1.b.x, arg_1.a.x), 31750i), arg_1.b.x).x, Struct_1(all(vec4<bool>(false, arg_1.c, true, arg_1.c)), 1u, -42480i, 1i)), var_1).x, _wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, arg_1.a.x))), vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-271f, -128f) * arg_1.b)))), u_input.a.x);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a.b.x * arg_1.a.x))))), var_1));
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.x * 2094f), _wgslsmith_f_op_f32(-arg_0.a.a.x)) * _wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_5(1u, true, Struct_1(arg_0.b, 0u, u_input.d.x, u_input.d.x)), arg_0.a.b.x), arg_0.a))), select(vec2<bool>(true, true), vec2<bool>(arg_0.a.a.x == arg_0.a.b.x, false), true))), arg_0.c, true);
    var_0 = arg_0.a;
    var_0 = arg_0.a;
    var_0 = Struct_2(arg_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.x, var_0.a.x)), true);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(595f * arg_0.a.b.x)))) * var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(297f, var_0.a.x) * _wgslsmith_f_op_vec2_f32(-arg_0.c)), arg_0.c))), u_input.d.x < _wgslsmith_dot_vec3_i32(u_input.a.xzz, u_input.a.xwy));
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1425f, -1000f))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-109f + -2303f)))))));
    let var_1 = vec2<bool>(any(vec3<bool>(min(u_input.c.x, 4294967295u) <= func_1(Struct_3(Struct_2(vec2<f32>(var_0.x, -714f), vec2<f32>(var_0.x, var_0.x), true), false, vec2<f32>(var_0.x, -1338f), u_input.d.x)), true, all(vec4<bool>(false, true, false, false)))), true);
    let var_2 = -u_input.d.x;
    var var_3 = _wgslsmith_div_u32(u_input.e, ~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 668u, 0u, u_input.e), u_input.b), u_input.b.x, 42483u ^ u_input.e));
    var var_4 = 2147483647i;
    let var_5 = _wgslsmith_dot_vec3_u32(~(~u_input.b.wwz ^ ~reverseBits(vec3<u32>(30400u, u_input.b.x, 0u))), u_input.b.zyy << (reverseBits(~u_input.b.xyx) % vec3<u32>(32u)));
    let var_6 = vec3<u32>(u_input.b.x << (14800u % 32u), ~_wgslsmith_clamp_u32(u_input.e, ~u_input.b.x, ~(~var_5)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(~u_input.b.x, 4294967295u, firstLeadingBit(u_input.b.x))), u_input.b.yxy));
    var var_7 = !(!(!var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))) + 773f), _wgslsmith_div_u32(~var_5, ~61883u << (u_input.b.x % 32u)) & _wgslsmith_add_u32(3535u, reverseBits(101621u)), 1i, 783f);
}

