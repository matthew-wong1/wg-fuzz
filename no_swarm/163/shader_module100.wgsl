struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: i32 = 0i;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_vec3_u32(~abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.c.e, 4294967295u, global0.a.e), u_input.d.xxx)), firstLeadingBit(_wgslsmith_mult_vec3_u32(select(vec3<u32>(15772u, global0.c.e, 9079u), vec3<u32>(4294967295u, 53475u, 0u), all(vec2<bool>(global0.c.b.x, false))), vec3<u32>(20554u, 38961u, u_input.d.x | 4294967295u))));
    return all(select(!vec4<bool>(!global0.c.c, all(vec4<bool>(false, false, global0.a.b.x, global0.c.c)), all(vec3<bool>(global0.c.c, global0.c.c, true)), true), !(!(!vec4<bool>(global0.c.c, true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b))) > 805f));
}

fn func_2() -> f32 {
    global2 = _wgslsmith_mod_i32(reverseBits(_wgslsmith_sub_i32(-min(27432i, -1i), ~(-global0.a.d.x))), ~(~(~(-16784i))));
    var var_0 = u_input.d.x;
    global1 = false;
    global1 = func_3() | global0.c.c;
    let var_1 = Struct_1(global0.c.a, !vec3<bool>(!select(global0.a.b.x, global0.a.b.x, global0.a.c), (1i >= global0.a.d.x) || false, global0.c.c), any(global0.a.b), min(vec2<i32>(-5250i, 0i), -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(global0.c.d, global0.a.d), global0.c.d ^ vec2<i32>(u_input.a, 14330i))), 81804u);
    return -157f;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool) -> bool {
    let var_0 = abs(vec4<i32>(_wgslsmith_div_i32(-6474i, _wgslsmith_sub_i32(1i, max(global0.a.d.x, 3565i))), arg_1, arg_1, ~(~(-26989i) & global0.a.d.x)));
    global1 = global0.b >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - 319f));
    global2 = ~1i;
    global2 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.b)), _wgslsmith_f_op_f32(exp2(global0.b))))), vec2<f32>(_wgslsmith_f_op_f32(floor(875f)), global0.b))));
    return !arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~vec4<u32>(global0.a.e, u_input.d.x, ~_wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(19936u, 39201u, 27492u), vec3<u32>(4294967295u, u_input.d.x, global0.a.a.x))), _wgslsmith_sub_vec4_u32(~firstLeadingBit(u_input.d), abs(vec4<u32>(abs(0u), u_input.c, _wgslsmith_div_u32(u_input.c, 41165u), ~u_input.d.x))), func_1(35767u, _wgslsmith_div_i32(-11211i, countOneBits(global0.a.d.x)), any(vec4<bool>(!global0.c.c, true, all(global0.a.b), global0.a.b.x))));
    let var_1 = vec2<i32>(~(global0.c.d.x >> ((~28725u | select(4294967295u, global0.a.e, false)) % 32u)), _wgslsmith_clamp_i32(-20836i, u_input.b, ~u_input.b));
    var_0 = ~(~(~countOneBits(vec4<u32>(global0.c.a.x, 72279u, var_0.x, 0u) & u_input.d)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 405f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, -1302f) * vec2<f32>(-874f, -688f)) + vec2<f32>(-309f, global0.b)), global0.a.b.zy))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.b)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(441f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 478f) - global0.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) - _wgslsmith_f_op_f32(min(var_2.x, 1238f))));
    var var_4 = select(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.d, abs(vec4<u32>(var_0.x, global0.c.e, 1u, 1u))), ~firstTrailingBit(54902u), ~var_0.x, ~u_input.c), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, u_input.c, u_input.d.x, u_input.d.x), vec4<u32>(global0.c.e, var_0.x, 44695u, global0.a.e)), u_input.d << (u_input.d % vec4<u32>(32u)), global0.c.c), true) << (~select(~u_input.d, _wgslsmith_mult_vec4_u32(min(vec4<u32>(8063u, 1u, var_0.x, 4294967295u), vec4<u32>(37673u, var_0.x, 51288u, 40661u)), vec4<u32>(0u, var_0.x, global0.c.e, 12978u)), !vec4<bool>(false, global0.c.c, global0.c.c, false)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_3.x)))))), var_2.x));
}

