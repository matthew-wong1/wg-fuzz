struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(select(select(vec2<bool>(global0.a.x, true), vec2<bool>(!global0.a.x, all(global0.a)), true), vec2<bool>(global0.a.x, global0.a.x), select(!(!vec2<bool>(true, global0.a.x)), vec2<bool>(global0.a.x, u_input.c.x == 15922u), any(select(vec2<bool>(false, global0.a.x), global0.a, global0.a)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1615f, global0.b.x, global0.b.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.b.x, 1814f, -1000f), global0.b))) - global0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, -1384f, 869f)))));
    let var_1 = (_wgslsmith_dot_vec3_i32(u_input.a.zww, vec3<i32>(-13927i, -u_input.a.x, u_input.a.x ^ u_input.e.x)) & -2147483647i) != u_input.a.x;
    var var_2 = Struct_2(~u_input.c.x, 83379u, var_0);
    global1 = var_0.b.x;
    let var_3 = !vec4<bool>(global0.a.x, any(vec2<bool>(global0.a.x | global0.a.x, global0.a.x)), all(!(!vec3<bool>(false, var_0.a.x, global0.a.x))), true);
    return select(select(!vec2<bool>(!var_2.c.a.x, false), var_2.c.a, true && var_3.x), vec2<bool>(all(vec2<bool>(var_1 && true, true)), global0.a.x), var_1);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(func_3(), global0.b);
    let var_1 = 4294967295u;
    return Struct_1(vec2<bool>(true, global0.b.x < _wgslsmith_f_op_f32(max(-1998f, _wgslsmith_f_op_f32(var_0.b.x - -794f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(-global0.b))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var var_1 = u_input.a;
    var_1 = vec4<i32>(~(abs(select(var_1.x, u_input.a.x, var_0.a.x)) << (~(~4294967295u) % 32u)), (_wgslsmith_dot_vec3_i32(~u_input.a.wyw, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -30979i, var_1.x), vec3<i32>(23258i, 2147483647i, 7865i), u_input.a.xyy)) | -_wgslsmith_dot_vec3_i32(vec3<i32>(-6517i, var_1.x, 16361i), u_input.a.xyz)) ^ _wgslsmith_mult_i32(~(u_input.e.x >> (79856u % 32u)), -1i), -43255i, firstTrailingBit(-2147483647i));
    var var_2 = Struct_1(!(!func_2().a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b - var_0.b) * vec3<f32>(var_0.b.x, var_0.b.x, global0.b.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 345f, -908f))))), !select(vec3<bool>(false, true, false), !vec3<bool>(true, false, var_0.a.x), var_0.a.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * func_2().b.x))));
    return Struct_1(vec2<bool>(true, !(_wgslsmith_f_op_f32(sign(588f)) < _wgslsmith_div_f32(1081f, -1108f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, var_0.b.x) + vec3<f32>(578f, -252f, 805f)) + vec3<f32>(1319f, var_0.b.x, -701f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -1144f, 1843f)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(u_input.b.x, ~80246u);
    let var_1 = Struct_2(18175u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, 4294967295u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 20647u, 83027u))) | firstLeadingBit(u_input.b.x)), arg_0);
    let var_2 = -max(reverseBits(18832i), -1i | u_input.e.x);
    let var_3 = Struct_2(_wgslsmith_mult_u32(max(var_1.a, u_input.d), ~27958u), 0u, Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, 308f, 1143f), arg_0.b)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.x, 241f, global0.b.x), _wgslsmith_f_op_vec3_f32(sign(var_1.c.b)), true)))));
    global0 = func_1();
    return Struct_1(!global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(trunc(203f)), _wgslsmith_div_f32(global0.b.x, arg_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    var var_1 = select(vec4<u32>(~_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.c.x)), ~0u), min(~_wgslsmith_add_u32(u_input.b.x, 0u), _wgslsmith_div_u32(u_input.b.x, u_input.c.x)), ~1u, max(~countOneBits(u_input.b.x), 58201u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b.x, ~firstTrailingBit(35574u), 24959u), (abs(vec4<u32>(0u, 86472u, u_input.b.x, 7435u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.b.x, u_input.c.x), vec4<u32>(1096u, u_input.d, u_input.d, 27053u))) & select(_wgslsmith_clamp_vec4_u32(vec4<u32>(31798u, 0u, 62113u, 4294967295u), vec4<u32>(u_input.d, u_input.d, u_input.c.x, 0u), vec4<u32>(u_input.c.x, u_input.d, 1u, 0u)), vec4<u32>(49852u, 27023u, u_input.b.x, u_input.d), global0.a.x)), !vec4<bool>(var_0.a.x, var_0.a.x, (global0.a.x || var_0.a.x) && false, _wgslsmith_div_f32(global0.b.x, 515f) > -964f));
    var var_2 = Struct_2(u_input.b.x, ~(~u_input.c.x), func_2());
    var var_3 = u_input.a.x;
    let var_4 = vec4<f32>(-1418f, 1098f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.b.x)), 1012f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(386f))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x - 385f) + _wgslsmith_f_op_f32(abs(-470f)))) + global0.b.x);
    let var_6 = func_4(Struct_1(!select(var_0.a, vec2<bool>(var_0.a.x, true), !vec2<bool>(var_0.a.x, var_2.c.a.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1222f, -105f, var_2.c.b.x) + vec3<f32>(-250f, -712f, 278f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -446f), _wgslsmith_f_op_f32(-var_0.b.x), -125f), vec3<bool>(func_4(var_2.c).a.x, !var_0.a.x, func_1().a.x)))));
    var var_7 = Struct_2(var_1.x, 55825u, var_6);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1027f), vec3<f32>(var_4.x, _wgslsmith_f_op_f32(-var_4.x), 859f), max(firstTrailingBit(reverseBits(u_input.e.x) >> (1u % 32u)), -select(u_input.a.x, _wgslsmith_div_i32(-24659i, u_input.e.x), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(var_6.b.x, 1705f, var_0.a.x == global0.a.x)), _wgslsmith_f_op_f32(select(1f, -864f, true))))));
}

