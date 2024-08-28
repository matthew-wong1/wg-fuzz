struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-235f, 591f, 551f, 1000f, -120f, 362f, 1000f, -353f, 158f, -709f, 885f, -443f, 1000f, 1313f, 332f, -473f, 1913f, 484f, 391f, -1388f, -683f, 460f, -684f, -360f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_1(all(vec2<bool>(true, true)), ~(_wgslsmith_add_i32(-u_input.d.x, arg_0) | -1i), abs(min(u_input.d.zw, u_input.d.xz ^ u_input.d.xy)), 40550u >> (u_input.c.x % 32u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1666f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e, 24u)]))), -379f, -424f);
    global0 = array<f32, 24>();
    let var_2 = Struct_1(true, -2147483647i, var_0.c, ~(~u_input.c.x));
    var var_3 = Struct_3(arg_0);
    return false;
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    var var_0 = Struct_1(!func_3(abs(-26893i)), _wgslsmith_add_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.d), countOneBits(u_input.d))), ~u_input.d.xw, u_input.b);
    return Struct_3(_wgslsmith_mod_i32(var_0.b, countOneBits(var_0.c.x)));
}

fn func_1() -> bool {
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    var var_0 = false;
    let var_1 = func_2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(~7167u, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~0u, 24u)], _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.e, 24u)], 1182f))))), -894f));
    let var_2 = ~firstTrailingBit(u_input.c.wz);
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    var var_0 = arg_2;
    let var_1 = Struct_1(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.c, 24u)]), 2103f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.d.x, 24u)]))), _wgslsmith_sub_i32(-15049i, ~(-1i)), -abs(abs(vec2<i32>(-1647i, -24953i))), 4294967295u >> (1u % 32u));
    var_0 = Struct_3(u_input.a);
    let var_2 = Struct_2(~reverseBits(~select(vec4<i32>(var_1.b, 31634i, 0i, 23539i), vec4<i32>(2147483647i, var_0.a, 686i, arg_1.a.x), arg_0)), vec4<bool>(all(select(vec3<bool>(var_1.a, false, arg_0), !arg_1.b.xzy, !arg_1.b.xww)), arg_1.b.x, true, arg_0), 51910u | ~(48114u ^ countOneBits(u_input.c.x)), arg_1.d);
    var var_3 = all(var_2.b.zyz);
    return false;
}

fn func_5(arg_0: vec4<bool>) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_clamp_u32(~50447u, u_input.c.x, u_input.b) | ~u_input.e, max(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 131863u, u_input.b, u_input.b)), ~u_input.c), 1u >> (~u_input.b % 32u), 72782u), u_input.c.x & u_input.e), 16160i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 24>();
    let x = u_input.a;
    s_output = func_5(vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1106f * global0[_wgslsmith_index_u32(1u, 24u)]) - 370f) > -385f, func_4(select(true, func_1(), any(vec2<bool>(false, true))), Struct_2(vec4<i32>(u_input.a, -17917i, -2147483647i, 2268i), vec4<bool>(false, false, false, false), u_input.b, vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(104f, 719f, global0[_wgslsmith_index_u32(u_input.e, 24u)], -994f) - vec4<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 24u)], -1123f, -1331f)))), false));
}

