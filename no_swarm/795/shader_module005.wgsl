struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-7598i, i32(-2147483648), 1i, 2147483647i), false, 0i);

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(-24751i, 1i, -60695i, 1i), false, -22410i), Struct_1(vec4<i32>(0i, i32(-2147483648), -30010i, 0i), false, 24814i), Struct_1(vec4<i32>(22308i, i32(-2147483648), 25831i, 0i), true, i32(-2147483648)), Struct_1(vec4<i32>(-27689i, -29665i, -1i, 3471i), true, -3134i), Struct_1(vec4<i32>(9336i, 29187i, -31286i, 61273i), false, -1609i), Struct_1(vec4<i32>(2147483647i, 62734i, -5407i, -1i), false, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-144f)), -823f)));
    let var_1 = u_input.a;
    let var_2 = 76429u | ~u_input.a.x;
    let var_3 = vec2<i32>(arg_0 ^ 2147483647i, _wgslsmith_dot_vec4_i32(~(~global0.a) & vec4<i32>(reverseBits(-2147483647i), 1i, -47278i, u_input.b.x | 2147483647i), reverseBits(global0.a)));
    let var_4 = Struct_1(vec4<i32>(-48474i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, -10836i, 1i << (var_1.x % 32u), 48351i), firstTrailingBit(arg_1.a << (vec4<u32>(var_1.x, var_1.x, 1u, 4294967295u) % vec4<u32>(32u)))), -(~(arg_0 & 45933i)), var_3.x), arg_1.a.x < -77488i, 9438i);
    return vec4<i32>(-reverseBits(_wgslsmith_div_i32(47811i, var_3.x)), -2147483647i, reverseBits(arg_0), 2147483647i) << (~_wgslsmith_mod_vec4_u32(countOneBits(reverseBits(vec4<u32>(var_1.x, 26170u, u_input.a.x, 59015u))), ~vec4<u32>(var_1.x, u_input.a.x, 58717u, var_1.x)) % vec4<u32>(32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<f32>) -> i32 {
    var var_0 = func_2(_wgslsmith_dot_vec4_i32(~global0.a, -_wgslsmith_mod_vec4_i32(vec4<i32>(global0.c, global0.a.x, global0.c, 2147483647i), vec4<i32>(global0.c, global0.a.x, u_input.b.x, global0.c)) << (vec4<u32>(0u, u_input.a.x | 4294967295u, ~1u, _wgslsmith_mult_u32(arg_1, u_input.a.x)) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(57952u, 6u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(ceil(arg_2.x))), -1382f)))));
    var var_1 = vec2<i32>(-1i) * -max(firstLeadingBit(vec2<i32>(u_input.b.x, 0i)), var_0.yz);
    global0 = global1[_wgslsmith_index_u32(~u_input.a.x, 6u)];
    global1 = array<Struct_1, 6>();
    var var_2 = min(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(1094u, _wgslsmith_div_u32(arg_1, 4294967295u))), u_input.a.xx), _wgslsmith_clamp_vec2_u32(vec2<u32>(~(98700u << (arg_1 % 32u)), u_input.a.x), ~vec2<u32>(u_input.a.x, 20977u), u_input.a.yx));
    return global0.c;
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = select(select(vec3<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, -26448i, 1i, arg_0.a.x), arg_0.a) <= -15230i, arg_0.b), !select(select(vec3<bool>(arg_0.b, false, global0.b), vec3<bool>(true, arg_0.b, arg_0.b), arg_0.b), vec3<bool>(true, arg_0.b, arg_0.b), select(vec3<bool>(arg_0.b, true, true), vec3<bool>(true, global0.b, global0.b), vec3<bool>(false, arg_0.b, false))), select(!(!vec3<bool>(false, arg_0.b, global0.b)), vec3<bool>(all(vec3<bool>(arg_0.b, arg_0.b, true)), global0.b, global0.b), all(select(vec4<bool>(global0.b, arg_0.b, arg_0.b, false), vec4<bool>(global0.b, arg_0.b, false, global0.b), arg_0.b)))), !select(vec3<bool>(all(vec4<bool>(global0.b, true, true, false)), !arg_0.b, select(global0.b, true, global0.b)), vec3<bool>(!arg_0.b, false, false), vec3<bool>(select(global0.b, global0.b, false), arg_0.b, false)), select(all(vec2<bool>(false, false)) & false, !(true || global0.b), select(true, _wgslsmith_mult_u32(12551u, 84074u) == ~u_input.a.x, (global0.a.x & u_input.b.x) <= 1i)));
    var_0 = !vec3<bool>(false, var_0.x || any(!vec3<bool>(false, arg_0.b, var_0.x)), (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 38396u, u_input.a.x, 8893u)) & min(u_input.a.x, u_input.a.x)) <= 51805u);
    var_0 = select(vec3<bool>(arg_0.b, 2509u <= min(u_input.a.x, 4294967295u), false && !any(vec3<bool>(global0.b, false, false))), vec3<bool>(true, true, global0.b), select(vec3<bool>(var_0.x, global0.a.x >= _wgslsmith_mod_i32(-2147483647i, 2147483647i), select(var_0.x, false, u_input.a.x < 21887u)), vec3<bool>(true, !(u_input.a.x >= u_input.a.x), all(vec4<bool>(true, arg_0.b, false, false))), !(var_0.x & true)));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~45452u), u_input.a.x), 6u)];
    var var_1 = Struct_1(-arg_0.a, !(!any(vec4<bool>(false, true, global0.b, true))) || select(any(select(vec4<bool>(true, global0.b, global0.b, false), vec4<bool>(false, false, global0.b, var_0.x), vec4<bool>(false, false, global0.b, global0.b))), all(select(vec4<bool>(false, false, true, true), vec4<bool>(global0.b, arg_0.b, var_0.x, var_0.x), arg_0.b)), -111f >= _wgslsmith_f_op_f32(select(1755f, 252f, global0.b))), firstLeadingBit(_wgslsmith_dot_vec4_i32(global0.a, global0.a)));
    return -(~vec4<i32>(1i, -11766i, u_input.b.x, 35559i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(~(~select(vec4<i32>(-35039i, -25636i, 53065i, u_input.b.x), vec4<i32>(u_input.b.x, global0.a.x, global0.a.x, global0.a.x), global0.b))), !(!all(select(vec3<bool>(false, false, global0.b), vec3<bool>(global0.b, false, false), global0.b))), ~global0.a.x);
    let var_1 = Struct_1(func_3(Struct_1(vec4<i32>(~1i, global0.c, -20786i, ~(-18601i)), true, _wgslsmith_sub_i32(var_0.c | 2147483647i, func_1(vec4<bool>(false, var_0.b, false, true), 4294967295u, vec3<f32>(505f, -753f, -278f))))), all(vec4<bool>(global0.b, true != var_0.b, true, all(vec4<bool>(global0.b, var_0.b, false, true)))) && all(select(vec4<bool>(false, var_0.b, var_0.b, global0.b), select(vec4<bool>(true, true, global0.b, true), vec4<bool>(var_0.b, global0.b, global0.b, false), vec4<bool>(global0.b, false, true, global0.b)), select(vec4<bool>(false, false, global0.b, true), vec4<bool>(var_0.b, global0.b, false, global0.b), true))), func_3(var_0).x);
    var var_2 = select(!(!select(select(vec4<bool>(var_1.b, global0.b, false, var_1.b), vec4<bool>(false, true, false, global0.b), var_1.b), !vec4<bool>(false, var_1.b, global0.b, var_1.b), u_input.a.x > 28329u)), !vec4<bool>(true, false, any(select(vec3<bool>(false, false, global0.b), vec3<bool>(var_0.b, var_1.b, false), vec3<bool>(global0.b, true, false))), true), select(vec4<bool>(var_1.b == !global0.b, var_1.b, false, var_0.b), !vec4<bool>(all(vec3<bool>(false, true, var_1.b)), false, true, all(vec4<bool>(true, global0.b, true, false))), global0.b | var_1.b));
    var var_3 = any(vec4<bool>(!(u_input.a.x <= _wgslsmith_add_u32(0u, u_input.a.x)), !all(!var_2.wz), all(var_2.xyy), true));
    let var_4 = -vec3<i32>(global0.a.x, u_input.b.x, ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-589f, -1327f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1853f, -860f), vec2<f32>(_wgslsmith_f_op_f32(-302f - -642f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !select(vec2<bool>(var_2.x, false), vec2<bool>(true, var_1.b), var_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1237f, _wgslsmith_f_op_f32(259f + 2040f))) * 425f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1614f * -1213f), -1782f, false))))), 491f, ~(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x << (u_input.a.x % 32u))), 1i);
}

