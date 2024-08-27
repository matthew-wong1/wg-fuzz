struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 1i;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, 637f, 1017f, -1416f)))));
    let var_1 = ~_wgslsmith_div_vec3_u32(select(~(~vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<u32>(47722u, u_input.b, 4294967295u), global2.x), ~vec3<u32>(1u, 32903u, 40159u | u_input.b));
    global0 = -2147483647i;
    global0 = -u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b);
    let var_1 = arg_3;
    var var_2 = vec4<u32>(u_input.b, (0u | select(u_input.b, max(1u, 44356u), any(arg_2.zy))) ^ (~(~14404u) & ~u_input.b), _wgslsmith_dot_vec4_u32(var_0, ~firstLeadingBit(~vec4<u32>(u_input.b, 13075u, 1u, 87444u))), _wgslsmith_div_u32(~(~(~0u)), max(u_input.b, 0u)));
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 38226u), var_2.yx), var_2.x, ~var_2.x, u_input.b), vec4<u32>(_wgslsmith_mult_u32(var_0.x, 0u), abs(var_0.x), abs(var_0.x), abs(var_0.x))), ~_wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_0.x, 4294967295u, u_input.b), abs(firstLeadingBit(2592u))));
    var_2 = select(firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_0.x, var_0.x), var_0), u_input.b), 0u, 4294967295u, _wgslsmith_sub_u32(7816u, ~var_0.x))), var_0, !(!vec4<bool>(arg_1.x, arg_3.a != true, false, true)));
    return vec2<bool>(arg_1.x, select(34788i, _wgslsmith_add_i32(~36225i, i32(-1i) * -67986i), var_2.x != 0u) < -2147483647i);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> bool {
    global2 = !vec2<bool>(!(u_input.b <= ~71810u), !(u_input.b == u_input.b));
    let var_0 = Struct_3(-36513i, ~(~(~min(1u, 4294967295u))), ~(~reverseBits(select(vec4<i32>(1022i, arg_0, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, -14121i, u_input.a), vec4<bool>(global2.x, false, global2.x, false)))), -arg_0);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(min(948f, -2124f)), Struct_3(u_input.a, var_0.b, var_0.c, ~arg_0));
    let var_2 = 21598u & firstTrailingBit(reverseBits(~(21465u & u_input.b)));
    global2 = !(!select(select(func_3(false, vec3<bool>(arg_1.a, true, global2.x), vec3<bool>(arg_1.a, global2.x, global2.x), arg_1), select(vec2<bool>(global2.x, arg_1.a), vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, arg_1.a)), select(vec2<bool>(global2.x, arg_1.a), vec2<bool>(arg_1.a, arg_1.a), true)), select(select(vec2<bool>(global2.x, arg_1.a), vec2<bool>(arg_1.a, true), true), !vec2<bool>(arg_1.a, arg_1.a), global2.x), any(!vec4<bool>(false, false, global2.x, false))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-596f, 2499f) + vec2<f32>(1192f, 384f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-566f, 1961f) - vec2<f32>(-291f, -1798f)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(606f - 218f), _wgslsmith_f_op_f32(f32(-1f) * -113f))), _wgslsmith_f_op_f32(trunc(956f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1642f, 1090f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2041f, -689f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-997f * 136f), _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-442f, 268f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-136f, -946f), vec2<f32>(1347f, -181f), vec2<bool>(false, false))), false)))), vec2<bool>(any(vec2<bool>(global2.x, func_2(u_input.a, Struct_2(false)))), true)));
    let var_1 = Struct_4(_wgslsmith_div_f32(-1468f, _wgslsmith_f_op_f32(func_1())), Struct_3(-_wgslsmith_add_i32(~(-2147483647i), ~u_input.a), 4294967295u, vec4<i32>(min(_wgslsmith_mult_i32(0i, -3353i), u_input.a), u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a) & (u_input.a >> (70094u % 32u)), -firstLeadingBit(u_input.a)), _wgslsmith_clamp_i32(u_input.a, -4187i, reverseBits(u_input.a))));
    var var_2 = max(_wgslsmith_mod_vec2_i32(~var_1.b.c.yw, -(var_1.b.c.zx & reverseBits(var_1.b.c.zy))), vec2<i32>(i32(-1i) * -var_1.b.d, -29602i) & var_1.b.c.ww);
    var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, 1f), -670f)), var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, 223f), vec2<f32>(290f, var_0.x), vec2<bool>(global2.x, true))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a, var_0.x)))))));
    let var_3 = Struct_3(~u_input.a, 1u, var_1.b.c, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(~u_input.b & _wgslsmith_add_u32(var_3.b, var_1.b.b), countOneBits(var_1.b.b)), vec3<u32>(44304u, firstLeadingBit(abs(_wgslsmith_sub_u32(var_1.b.b, u_input.b))), firstTrailingBit(var_3.b)), 69276u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2120f, var_0.x, -343f, -1552f) + vec4<f32>(620f, -392f, 1560f, var_0.x)), vec4<f32>(-1000f, -273f, var_0.x, var_0.x))))));
}

