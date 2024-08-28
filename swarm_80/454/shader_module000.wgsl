struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 4294967295u, 18823u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1323f, 1229f, -803f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, arg_1.b.d, 1173f))))))));
    global0 = reverseBits(u_input.b);
    var var_1 = !(!select(vec4<bool>(arg_3.b.x, arg_1.a.x <= -1000f, arg_2.b.x, arg_2.a && arg_3.b.x), !(!vec4<bool>(true, arg_3.b.x, true, arg_2.a)), arg_1.b.a.a));
    var var_2 = global0.x;
    let var_3 = arg_1.b.a;
    return vec2<u32>(11193u, ~u_input.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_0.a.c, 670f, arg_0.d)) + vec4<f32>(159f, -116f, arg_2, arg_0.d)), vec4<f32>(487f, arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(187f - arg_1.c)))))));
    let var_1 = arg_1;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.ww * vec2<f32>(arg_2, var_0.x)) * _wgslsmith_f_op_vec2_f32(min(var_0.xz, vec2<f32>(arg_0.d, 430f)))))), Struct_2(Struct_1(all(select(vec3<bool>(arg_1.b.x, var_1.b.x, arg_1.a), vec3<bool>(false, true, var_1.b.x), arg_1.b.x)), !var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), u_input.b.xz, 22803u, _wgslsmith_f_op_f32(-var_1.c)), var_1.c);
    var var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.b.b.x >> (var_2.b.b.x % 32u), 0u, 15507u, 0u), ~select(~vec4<u32>(42976u, 0u, 66104u, 61085u), vec4<u32>(2304u, global0.x, 0u, var_2.b.c) >> (vec4<u32>(0u, global0.x, global0.x, 0u) % vec4<u32>(32u)), vec4<bool>(var_2.b.a.b.x, false, false, var_1.a))) ^ firstLeadingBit((var_2.b.c ^ global0.x) & _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.b, vec2<u32>(62535u, arg_0.c)), countOneBits(global0.zz)));
    let var_4 = -28911i;
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_2.a + vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2)))))));
}

fn func_2() -> u32 {
    global0 = u_input.b;
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(Struct_1(false, vec2<bool>(false, true), 1445f), func_3(-184f, Struct_3(vec2<f32>(-138f, -533f), Struct_2(Struct_1(false, vec2<bool>(false, false), 646f), vec2<u32>(0u, global0.x), global0.x, 1000f), -882f), Struct_1(false, vec2<bool>(false, true), -617f), Struct_1(true, vec2<bool>(false, false), -405f)), _wgslsmith_div_u32(u_input.b.x, 4294967295u), _wgslsmith_f_op_f32(482f - 1660f)), Struct_1(true, vec2<bool>(true, true), -1000f), 898f)))), Struct_2(Struct_1(all(vec4<bool>(true, true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), _wgslsmith_f_op_f32(select(1531f, -202f, true))), global0.yx, u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2232f)), 1f))), 1706f);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), var_0.b, _wgslsmith_f_op_f32(max(-274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c)))))));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c))))), var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1224f))));
    var var_2 = var_1.b.a;
    return ~countOneBits(global0.x);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> bool {
    global0 = vec3<u32>(_wgslsmith_mult_u32(1u, 38248u), abs(func_2()), 4294967295u);
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(136f, -403f) + vec2<f32>(1f, 1f)), Struct_2(Struct_1((u_input.d << (global0.x % 32u)) != global0.x, vec2<bool>(true, !arg_0), _wgslsmith_f_op_f32(floor(752f))), u_input.b.xz, ~global0.x ^ abs(~1766u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1895f * 786f), -1573f))) * _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(Struct_1(arg_0, vec2<bool>(arg_0, arg_0), 1099f), vec2<u32>(global0.x, u_input.d), arg_1.x, 1278f), Struct_1(arg_0, vec2<bool>(arg_0, false), -1954f), _wgslsmith_f_op_f32(-205f - -246f))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f - 527f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-653f, -1458f, var_0.c))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-766f, var_0.b.a.c, var_0.b.a.c)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-711f, 1127f, -264f) * vec3<f32>(-845f, -956f, var_0.c)), vec3<f32>(var_0.b.a.c, 1294f, var_0.c), vec3<bool>(false, var_0.b.a.a, false)))))));
    let var_2 = Struct_1(!(-2147483647i >= abs(u_input.c.x | u_input.c.x)), select(vec2<bool>(all(select(vec3<bool>(arg_0, var_0.b.a.a, false), vec3<bool>(arg_0, true, false), false)), !(var_0.b.a.b.x || false)), var_0.b.a.b, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.d), _wgslsmith_f_op_f32(max(440f, var_0.c))))))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, 599f)), _wgslsmith_f_op_vec2_f32(-var_0.a)))), var_0.b, _wgslsmith_f_op_f32(ceil(var_0.c)));
    return any(!(!(!vec4<bool>(var_3.b.a.b.x, false, true, var_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    let var_0 = _wgslsmith_f_op_f32(select(-120f, -318f, select(select(all(vec3<bool>(true, true, true)), true, func_1(select(false, true, false), ~vec4<u32>(20934u, global0.x, 4294967295u, global0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-628f * 347f))) <= _wgslsmith_f_op_f32(max(-983f, -1000f)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, vec2<i32>(countOneBits(u_input.c.x), abs(u_input.c.x)), _wgslsmith_f_op_f32(ceil(var_0)));
}

