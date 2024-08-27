struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
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

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(~abs(~vec2<u32>(u_input.c, 4294967295u)), select(vec2<u32>(abs(~0u), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(0u, global1.b))), ~(~(~vec2<u32>(0u, 46507u))), vec2<bool>(false, true)), ~vec2<u32>(~global1.a, _wgslsmith_clamp_u32(~global1.b, ~0u, 1u)));
    global1 = Struct_1(~(~1u), ~_wgslsmith_add_u32(reverseBits(_wgslsmith_mult_u32(u_input.b, 50715u)), ~firstTrailingBit(global1.a)), !global1.c);
    var var_1 = -_wgslsmith_clamp_i32(-reverseBits(-10271i), _wgslsmith_add_i32(firstTrailingBit(abs(u_input.a)), u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, abs(u_input.a)), ~vec2<i32>(u_input.a, -27195i)));
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-114f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(681f, -1145f) + _wgslsmith_f_op_f32(462f + _wgslsmith_f_op_f32(f32(-1f) * -3014f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -212f)))));
    return 7855u;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = 0i;
    let var_1 = global1.c;
    global0 = _wgslsmith_div_f32(-1487f, _wgslsmith_div_f32(-521f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -1662f) * _wgslsmith_f_op_f32(floor(682f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1668f + arg_1), arg_1)))));
    global1 = Struct_1(func_3(), ~(~global1.a), select(vec3<bool>(any(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x))), _wgslsmith_div_f32(arg_1, 460f) > 1391f, any(global1.c) && true), vec3<bool>(!global1.c.x, true, true), global1.c));
    global1 = Struct_1(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(global1.b, 4294967295u, u_input.c))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.a, global1.a), _wgslsmith_mult_u32(51758u, global1.a), abs(4294967295u)) << (28236u % 32u)), 7223u, global1.c);
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, global1.a, _wgslsmith_sub_u32(u_input.b, u_input.b)), select(min(vec3<u32>(28761u, global1.a, u_input.b), ~vec3<u32>(1u, global1.a, global1.b)), vec3<u32>(u_input.c, 7959u << (0u % 32u), u_input.c << (u_input.b % 32u)), !global1.c)), ~vec3<u32>(global1.a, global1.b, abs(1u)));
}

fn func_4(arg_0: u32) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = -2711f;
    global1 = Struct_1(53402u, global1.a, !select(global1.c, select(vec3<bool>(global1.c.x, false, global1.c.x), !global1.c, true), global1.c.x | global1.c.x));
    var var_0 = u_input.b << (96438u % 32u);
    var var_1 = Struct_1(~firstTrailingBit(_wgslsmith_div_u32(79415u, 30938u)), ~(~global1.b & u_input.c), select(vec3<bool>(true & global1.c.x, true, all(!global1.c.zx)), vec3<bool>(any(vec2<bool>(global1.c.x, false)), false, select(global1.c.x, any(vec4<bool>(global1.c.x, true, global1.c.x, true)), global1.c.x)), global1.c));
    return vec4<bool>(!var_1.c.x, !(false & any(select(global1.c, vec3<bool>(global1.c.x, true, true), var_1.c.x))), false, !((1u | firstTrailingBit(41244u)) > _wgslsmith_div_u32(var_1.b, u_input.b)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = !(!(!(!(!vec4<bool>(arg_3.d.c.x, false, false, true)))));
    var var_1 = arg_3;
    global0 = 2183f;
    let var_2 = arg_3;
    var var_3 = func_4(_wgslsmith_div_u32(_wgslsmith_mult_u32(func_2(-6133i, -1000f, true), arg_3.e.x >> (var_2.d.b % 32u)), 116475u) ^ ~47107u);
    return select(_wgslsmith_mod_vec3_u32(var_1.e, ~var_2.e) & ~(arg_3.e << (vec3<u32>(arg_3.e.x, 249u, var_2.e.x) % vec3<u32>(32u))), vec3<u32>(20074u, 1u, 0u), var_2.b) ^ _wgslsmith_div_vec3_u32(vec3<u32>(~56077u, u_input.c, _wgslsmith_sub_u32(arg_3.e.x, arg_3.e.x)) << (var_2.e % vec3<u32>(32u)), vec3<u32>(~1u ^ arg_3.e.x, 1u, 911u));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> StorageBuffer {
    let var_0 = global1.c.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(262f, 787f), -1058f, _wgslsmith_f_op_f32(trunc(245f)), _wgslsmith_f_op_f32(min(849f, 557f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(401f, 544f, 1000f, -396f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-493f, -416f, 636f, -1000f) + vec4<f32>(-762f, -894f, -378f, 217f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-942f, 943f, 545f, -1921f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-414f, -1233f, -102f, 760f)))), vec4<f32>(-114f, _wgslsmith_f_op_f32(sign(511f)), _wgslsmith_f_op_f32(-889f * 803f), _wgslsmith_f_op_f32(394f + -659f)), !(!vec4<bool>(global1.c.x, arg_1.x, false, arg_1.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1377f * -1130f)), -1000f, -362f, -1044f)));
    global0 = _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(216f))), true));
    global0 = var_1.x;
    let var_2 = vec4<u32>(global1.a, 4294967295u, 0u, abs(9660u));
    return StorageBuffer(0u, -505f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1063f;
    let x = u_input.a;
    s_output = func_5((~(vec4<u32>(4294967295u, 22597u, 43382u, global1.b) & vec4<u32>(14218u, u_input.b, 0u, 4294967295u)) << (vec4<u32>(select(u_input.c, 9046u, false), _wgslsmith_mod_u32(u_input.c, 2019u), u_input.c, 1u) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_sub_u32(15309u, 13931u), ~u_input.c, u_input.b, 0u) % vec4<u32>(32u)), global1.c, (~func_1(u_input.a, global1.c, vec4<f32>(-525f, -1764f, -153f, -1000f), Struct_2(vec2<f32>(-1704f, -126f), global1.c.x, -547f, Struct_1(47378u, u_input.c, global1.c), vec3<u32>(1u, 4294967295u, global1.b))) >> (reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, global1.a), vec3<u32>(4294967295u, 59247u, 26951u))) % vec3<u32>(32u))) >> (max(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1.b, global1.b) | vec3<u32>(4294967295u, global1.a, u_input.b), ~vec3<u32>(global1.a, 1u, u_input.c)), abs(~vec3<u32>(global1.b, 0u, 4294967295u))) % vec3<u32>(32u)));
}

