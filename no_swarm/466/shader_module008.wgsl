struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    var var_0 = all(select(select(vec2<bool>(u_input.b <= u_input.b, false), vec2<bool>(true, true & arg_0.c), !vec2<bool>(arg_0.c, arg_0.c)), select(vec2<bool>(arg_0.c, arg_0.c), select(vec2<bool>(arg_0.c, false), select(vec2<bool>(arg_0.c, false), vec2<bool>(false, false), true), !arg_0.c), true), false));
    var var_1 = abs(_wgslsmith_sub_vec2_i32(firstLeadingBit(~vec2<i32>(-2147483647i, u_input.c.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, arg_0.b.x) & vec2<i32>(arg_0.b.x, -46421i), vec2<i32>(2147483647i, arg_0.a), abs(vec2<i32>(u_input.a.x, -2147483647i)))) ^ vec2<i32>(reverseBits(arg_0.a), -arg_0.b.x));
    var_0 = arg_0.c & !arg_0.c;
    return false;
}

fn func_2() -> u32 {
    let var_0 = countOneBits(~(~select(vec3<u32>(38871u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), false) ^ ~(~vec3<u32>(16302u, 89857u, 1u))));
    global0 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-353f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -1507f) - 626f))));
    var var_2 = vec2<bool>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.x, 4294967295u) << (66169u % 32u), u_input.b & _wgslsmith_add_u32(30087u, var_0.x)) >= (_wgslsmith_div_u32(_wgslsmith_mult_u32(15710u, var_0.x), u_input.b) ^ 0u), !func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 0u, 24986u), vec4<u32>(66847u, u_input.b, 29435u, 70900u)), 31u)]));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -985f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-517f, -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-134f - 1485f) - _wgslsmith_f_op_f32(f32(-1f) * -352f)))));
    return u_input.b;
}

fn func_1() -> vec3<u32> {
    global1 = ~(17906u << (_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b, 4294967295u), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 34530u), vec2<u32>(u_input.b, u_input.b)), min(vec2<u32>(u_input.b, 18152u), vec2<u32>(u_input.b, 0u)))) % 32u));
    var var_0 = ~(~countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 0u, 4294967295u))));
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.b, u_input.b)), 31u)];
    let var_2 = vec2<u32>(select(~(~0u), ~(~u_input.b), false), u_input.b) << (_wgslsmith_clamp_vec2_u32(~(vec2<u32>(1u, 9376u) ^ vec2<u32>(10347u, u_input.b)) >> (vec2<u32>(abs(u_input.b), 22055u) % vec2<u32>(32u)), abs(vec2<u32>(~4294967295u, func_2())), max(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 73734u)), ~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 10186u), var_1.c))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-653f + var_1.d)))));
    return ~firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 13692u, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 50108u), vec3<u32>(1u, var_2.x, 4294967295u))), min(select(vec3<u32>(8676u, var_2.x, var_2.x), vec3<u32>(4294967295u, u_input.b, var_2.x), var_1.c), vec3<u32>(24980u, 0u, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec3_u32(select(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4342u), vec3<u32>(32239u, 1u, 1u)), countOneBits(func_1()), true), ~vec3<u32>(u_input.b >> (0u % 32u), 69778u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 7572u, u_input.b, 26982u), vec4<u32>(40581u, 24714u, 4294967295u, 56698u))));
    let var_1 = u_input.b;
    global1 = u_input.b;
    global1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1310f), _wgslsmith_f_op_f32(abs(592f)), 22688u);
}

