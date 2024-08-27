struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) - arg_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.c, arg_2.c))))), -1706f <= _wgslsmith_f_op_f32(-1418f + _wgslsmith_f_op_f32(-arg_2.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.c)), arg_2.c));
    var var_1 = arg_0.a;
    var var_2 = vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(var_0 * _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(arg_2.c - 1182f))), arg_2.c, _wgslsmith_f_op_f32(-var_0));
    var var_3 = Struct_1(vec2<bool>(!select(true, any(vec3<bool>(var_1.a.x, true, var_1.a.x)), all(var_1.a)), true));
    let var_4 = ~vec4<i32>(-u_input.c, arg_2.b.x, 34164i, 1i);
    return vec2<bool>(!select(arg_1.a.x, var_3.a.x, select(any(arg_1.a), false, any(vec3<bool>(arg_1.a.x, var_3.a.x, arg_1.a.x)))), true);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(1296f - _wgslsmith_f_op_f32(f32(-1f) * -977f));
    let var_1 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(false | (45323u >= u_input.a), ~0u == u_input.d), select(func_3(Struct_4(Struct_1(vec2<bool>(false, true))), Struct_1(vec2<bool>(true, false)), Struct_3(u_input.a, vec4<i32>(u_input.c, u_input.c, u_input.b, -62052i), -1294f)), vec2<bool>(true, true), !func_3(Struct_4(Struct_1(vec2<bool>(false, false))), Struct_1(vec2<bool>(false, true)), Struct_3(u_input.e.x, vec4<i32>(u_input.b, u_input.c, u_input.b, u_input.b), -181f)))));
    let var_2 = ~(~(~u_input.a));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1024f)))) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-1f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(360f)), -233f);
    return false;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = -abs(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(u_input.b, u_input.b)) & select(vec2<i32>(2147483647i, -5839i), vec2<i32>(u_input.c, u_input.c), true), abs(vec2<i32>(u_input.c, -2147483647i))));
    var var_1 = 182f;
    var var_2 = ~(~u_input.e);
    var_1 = 379f;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-411f, _wgslsmith_f_op_f32(step(-1000f, 455f)), _wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(-379f - 111f))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f + -1732f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 635f, 296f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1251f, _wgslsmith_f_op_f32(max(-1318f, -794f)), -1359f, _wgslsmith_f_op_f32(f32(-1f) * -757f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-483f, 1467f, -327f, 289f))))))));
    return Struct_1(!func_3(Struct_4(Struct_1(arg_3.zz)), Struct_1(!vec2<bool>(arg_2.x, false)), Struct_3(firstLeadingBit(u_input.a), vec4<i32>(u_input.b, -40436i, 21640i, u_input.c), _wgslsmith_f_op_f32(sign(-1000f)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    let var_0 = 0u;
    let var_1 = !(firstTrailingBit(u_input.d) < 1u);
    let var_2 = arg_1.a;
    let var_3 = Struct_2(~arg_0.a >= abs(4294967295u & firstTrailingBit(0u)), arg_1.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(54605u, var_0)), ~_wgslsmith_add_vec2_u32(vec2<u32>(18056u, 5611u), vec2<u32>(arg_0.a, 22760u))), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.e.x, ~u_input.d), u_input.e.x)), arg_0.b, arg_2.a);
    var var_4 = vec2<bool>(var_1, false);
    return Struct_2(var_4.x, var_3.e, ~19216u, abs(~reverseBits(abs(vec4<i32>(-1i, u_input.b, -1i, u_input.c)))), arg_1.a);
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_4(Struct_1(vec2<bool>(true, true)));
    let var_1 = ~(~max(0u, _wgslsmith_mod_u32(~0u, 24448u)));
    var_0 = Struct_4(var_0.a);
    let var_2 = func_5(Struct_3(u_input.e.x, vec4<i32>(-_wgslsmith_clamp_i32(27618i, u_input.b, u_input.c), ~u_input.c, u_input.b, 0i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1513f)), _wgslsmith_f_op_f32(f32(-1f) * -565f), var_0.a.a.x))), Struct_4(func_4(func_2(), var_0.a.a, !vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, false), vec4<bool>(var_0.a.a.x, true, var_0.a.a.x && true, !var_0.a.a.x))), Struct_4(var_0.a));
    var var_3 = !vec4<bool>(all(vec2<bool>(true && var_0.a.a.x, true)), (1i & (var_2.d.x << (var_1 % 32u))) >= func_5(Struct_3(66871u, vec4<i32>(-1i, -2147483647i, 0i, -21993i), 1000f), Struct_4(var_2.e), Struct_4(Struct_1(vec2<bool>(var_2.a, var_2.b.a.x)))).d.x, var_0.a.a.x, true);
    return StorageBuffer(var_1, _wgslsmith_f_op_f32(floor(-967f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

