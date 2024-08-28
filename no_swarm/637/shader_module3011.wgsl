struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = 1464f;
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(~0u, arg_0.b), reverseBits(0u));
    var var_1 = arg_0.d.zy;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-450f * arg_0.d.x) - arg_0.d.x)), ~countOneBits(u_input.c.x | u_input.c.x), ~(~u_input.c.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(450f, _wgslsmith_f_op_f32(select(arg_0.d.x, var_1.x, false)), -942f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d + arg_0.d))))), 1i);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d.zy)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(545f, 931f)));
    return Struct_1(400f, firstTrailingBit(_wgslsmith_dot_vec2_u32(min(max(u_input.c, u_input.c), ~u_input.c), select(~u_input.c, ~u_input.c, select(true, false, true)))), arg_0.b, _wgslsmith_f_op_vec3_f32(-var_2.a.d));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !(!vec2<bool>(!any(vec3<bool>(true, false, true)), false));
    var_0 = select(!select(vec2<bool>(true, false), vec2<bool>(any(vec2<bool>(false, false)), true), !(!var_0.x)), !vec2<bool>(var_0.x, true), select(vec2<bool>(-u_input.b == u_input.a.x, all(select(vec2<bool>(false, var_0.x), vec2<bool>(false, false), vec2<bool>(false, var_0.x)))), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true == var_0.x, arg_3.a <= -2132f), select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), !vec2<bool>(var_0.x, var_0.x))), vec2<bool>(var_0.x, var_0.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(arg_3.d)))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.a * arg_3.d.x), _wgslsmith_f_op_f32(select(-447f, arg_3.d.x, var_0.x))))), -785f));
    var var_2 = arg_3;
    var_2 = Struct_1(func_2(func_2(arg_3)).d.x, _wgslsmith_mult_u32(arg_0.a >> (arg_0.a % 32u), 91717u), 66305u, arg_3.d);
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(891f))))), _wgslsmith_dot_vec4_u32(countOneBits(~(vec4<u32>(54501u, 36927u, arg_0.a, arg_0.b.x) & vec4<u32>(u_input.c.x, 1u, 4294967295u, 33533u))), vec4<u32>(var_2.c | 4294967295u, ~(83387u ^ arg_0.a), arg_0.b.x, 0u | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_0.a, 1u, 13643u), vec4<u32>(0u, 1u, 0u, 4294967295u)))), countOneBits(u_input.c.x), var_2.d);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.d.zz)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a, -338f)) + arg_1.d.x), 196f)), arg_1, -_wgslsmith_mod_i32(-801i, _wgslsmith_div_i32(min(u_input.a.x, u_input.a.x), 0i)));
    global0 = _wgslsmith_f_op_f32(abs(var_0.a.x));
    global0 = _wgslsmith_f_op_f32(-arg_1.a);
    let var_1 = func_3(Struct_4(var_0.b.b, vec2<u32>(21392u, 22220u)), -40188i, 30663u, func_2(Struct_1(arg_1.d.x, ~(~4294967295u), ~(~1u), arg_1.d)));
    let var_2 = _wgslsmith_dot_vec2_i32(reverseBits(u_input.a.yy) | u_input.d.zy, vec2<i32>(-(_wgslsmith_clamp_i32(var_0.c, var_0.c, u_input.b) & 59911i), ~var_0.c));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.d) * vec3<f32>(996f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.d.x), 1383f, var_0.b.b == 31047u)), _wgslsmith_f_op_f32(-func_2(arg_1).a)))));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_4 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), countOneBits(_wgslsmith_mod_u32(select(16727u, 19660u, arg_1), u_input.c.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 4294967295u, 18968u), vec3<u32>(u_input.c.x, u_input.c.x, 46578u) ^ vec3<u32>(u_input.c.x, u_input.c.x, 0u)) >> (~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) % 32u), _wgslsmith_f_op_vec3_f32(func_4(any(vec3<bool>(true, false, false)) & arg_1, func_3(Struct_4(1u, u_input.c), i32(-1i) * -2147483647i, u_input.c.x, func_2(Struct_1(arg_0, 0u, 7473u, vec3<f32>(arg_0, -1949f, -158f)))), true, !vec4<bool>(false, arg_1, arg_1, arg_1)))), abs(u_input.a.x));
    global0 = _wgslsmith_div_f32(790f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-465f)) - _wgslsmith_f_op_f32(step(484f, 998f))));
    let var_1 = func_2(var_0.a);
    global0 = _wgslsmith_f_op_f32(max(var_0.a.d.x, 1661f));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(535f, arg_0))))) - -425f);
    return Struct_4(_wgslsmith_div_u32(_wgslsmith_div_u32(~reverseBits(4294967295u), ~var_0.a.b >> (abs(1u) % 32u)), 2017u), ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = 1f;
    var var_1 = func_1(_wgslsmith_f_op_f32(442f * _wgslsmith_f_op_f32(240f - _wgslsmith_f_op_f32(step(1049f, -148f)))), false);
    global0 = 472f;
    let var_2 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1367f, 469f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), ~(-u_input.a.x));
}

