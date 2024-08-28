struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a;
    global1 = Struct_1(global1.a, i32(-1i) * -46665i);
    global0 = array<vec3<i32>, 12>();
    return Struct_2(true == global1.a, -49246i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1000f, 1000f, true)), _wgslsmith_f_op_f32(-603f + -1000f), global1.a)))), Struct_1(true, -1i));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(36700u, _wgslsmith_dot_vec2_u32(vec2<u32>(26654u, 4294967295u) << (vec2<u32>(12917u, arg_2) % vec2<u32>(32u)), vec2<u32>(61505u, u_input.a.x)), u_input.a.x, arg_2), min(~(~select(vec4<u32>(u_input.a.x, 3112u, 0u, 4294967295u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 18573u), arg_3)), vec4<u32>(abs(39019u), ~(~u_input.a.x), abs(firstTrailingBit(1u)), _wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), min(4294967295u, u_input.a.x)))));
    var var_1 = -firstTrailingBit(~arg_1.d.b | func_2().d.b);
    var_1 = -_wgslsmith_dot_vec4_i32(abs(-firstTrailingBit(vec4<i32>(arg_1.d.b, 14304i, 25809i, -1144i))), vec4<i32>(_wgslsmith_mod_i32(~global1.b, ~u_input.e.x), -2147483647i, -1i, u_input.d));
    let var_2 = arg_3.x;
    let var_3 = firstTrailingBit(_wgslsmith_add_vec2_u32(max(select(firstLeadingBit(var_0.xy), select(vec2<u32>(arg_2, var_0.x), var_0.xx, var_2), select(arg_3.zy, vec2<bool>(global1.a, var_2), arg_3.yz)), vec2<u32>(min(4294967295u, arg_2), abs(0u))), ~u_input.a << (~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(arg_2, 73437u)) % vec2<u32>(32u))));
    return _wgslsmith_add_vec4_u32(~select(vec4<u32>(37741u, var_3.x, u_input.a.x, arg_2), vec4<u32>(arg_2, 68185u, 4294967295u, var_0.x), global1.a) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(52620u, 14114u, u_input.a.x, u_input.a.x), vec4<u32>(arg_2, u_input.a.x, var_0.x, var_0.x)), vec4<u32>((14095u | var_3.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 46649u, arg_2), var_0.zzw), min(arg_2, ~u_input.a.x), ~var_0.x, var_0.x)) ^ ~vec4<u32>(_wgslsmith_add_u32(~0u, 4294967295u & var_0.x), var_0.x, min(81303u | arg_2, firstLeadingBit(var_0.x)), 1u);
}

fn func_1() -> vec3<i32> {
    var var_0 = ~(~func_3(false, func_2(), u_input.a.x, vec4<bool>(global1.a, true, true, global1.a)) & vec4<u32>(u_input.a.x, ~(22305u << (u_input.a.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(3005u, u_input.a.x, u_input.a.x)) << (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u), ~(~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(floor(491f)) <= -1000f;
    let var_2 = select(!vec2<bool>(global1.a, !(!global1.a)), !(!(!(!vec2<bool>(false, global1.a)))), 0u == _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, 43743u)), 17871u));
    var_1 = any(!select(select(select(vec3<bool>(true, var_2.x, global1.a), vec3<bool>(var_2.x, true, true), vec3<bool>(global1.a, false, var_2.x)), !vec3<bool>(var_2.x, true, global1.a), select(vec3<bool>(global1.a, var_2.x, global1.a), vec3<bool>(false, var_2.x, true), true)), vec3<bool>(global1.a & global1.a, global1.a, global1.a), false));
    var var_3 = vec3<f32>(-767f, 511f, _wgslsmith_f_op_f32(-1044f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2042f - -750f) - _wgslsmith_f_op_f32(f32(-1f) * -385f))))));
    return ~vec3<i32>(~(~(~0i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, select(global1.b, 6589i, false)), global1.b, 1i), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    let var_1 = Struct_1(!global1.a, global1.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-633f, -131f));
    let var_3 = func_1();
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(1478f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1050f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-217f)))))), -1687f, _wgslsmith_f_op_f32(-3061f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f) * func_2().c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(413f * 312f) - _wgslsmith_f_op_f32(-1000f * -603f)))) * _wgslsmith_f_op_f32(sign(972f))));
    let x = u_input.a;
    s_output = StorageBuffer(-583f, u_input.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1770f, -427f, var_4.x, 1000f) + vec4<f32>(1452f, -487f, var_4.x, var_4.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, var_4.x, 595f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.x, 1296f, -533f, -1172f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_4.x - var_4.x), var_4.x, -942f, _wgslsmith_f_op_f32(var_4.x - 1115f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, var_4.x, -443f, -1095f), vec4<f32>(790f, var_4.x, var_4.x, 1013f)))), global1.a)), ~0i);
}

