struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 47020u, 6462u, 30038u, 47163u, 29323u, 106941u, 9758u, 1u, 4294967295u, 0u, 22753u, 74827u, 0u, 2391u, 4294967295u, 37721u, 46095u, 4294967295u);

var<private> global1: u32;

var<private> global2: array<Struct_1, 4>;

var<private> global3: vec2<u32> = vec2<u32>(0u, 21930u);

var<private> global4: array<u32, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = select(vec3<u32>(global0[_wgslsmith_index_u32(abs(u_input.b), 19u)], reverseBits(~_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], global3.x)), abs(1u)), vec3<u32>(global4[_wgslsmith_index_u32(~abs(u_input.b), 25u)], 0u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, ~u_input.b), ~(~4319u), ~1u << (global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 19u)], 19u)], 30156u, 1u), 25u)] % 32u)), 19u)]), !select(select(select(vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(true, arg_1.a, false), vec3<bool>(true, arg_1.a, arg_1.a)), vec3<bool>(true, true, true), false), select(select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(arg_1.a, false, true), vec3<bool>(false, true, arg_1.a)), vec3<bool>(arg_1.a, false, true), select(true, arg_1.a, true)), false));
    let var_1 = Struct_1(false);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2004f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-767f + 246f) + -1000f)))));
}

fn func_2() -> f32 {
    var var_0 = select(u_input.c.ww, ~select(-vec2<i32>(u_input.a.x, 1i), _wgslsmith_clamp_vec2_i32(u_input.c.zw, -u_input.a.yx, u_input.a.yy), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), vec2<bool>(true, false));
    global4 = array<u32, 25>();
    let var_1 = abs(~(~vec3<u32>(global0[_wgslsmith_index_u32(~33090u, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)] | global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 19u)], 25u)], abs(u_input.b))));
    var var_2 = 1602f;
    global4 = array<u32, 25>();
    return _wgslsmith_f_op_f32(-115f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1598f)), _wgslsmith_f_op_f32(func_3(var_0.x, Struct_1(false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2497f))))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = ~1u;
    let var_1 = Struct_1(true);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, -184f)))))));
    let var_3 = u_input.a;
    global4 = array<u32, 25>();
    return ~(~(~select(max(vec2<u32>(global3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 19u)], 19u)]), vec2<u32>(40319u, 2382u)), select(vec2<u32>(global3.x, u_input.b), vec2<u32>(global3.x, global3.x), vec2<bool>(true, false)), all(vec4<bool>(var_1.a, var_1.a, false, var_1.a)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    global3 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(func_4(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1554f, -1201f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1101f, 1767f)), vec2<bool>(true, true)))), ~(~abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30422u, 25u)], 25u)], 19u)], 19u)], 883u)))), ~_wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 25u)], 25u)]), 4294967295u), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.b, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 25u)])), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(global0[_wgslsmith_index_u32(15148u, 19u)], 30115u)))));
    global1 = abs(select(38822u, _wgslsmith_add_u32(61283u, 0u), !(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, global4[_wgslsmith_index_u32(arg_1, 25u)]), vec2<u32>(4294967295u, 0u)) > u_input.b)));
    var var_0 = 4294967295u;
    let var_1 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 4u)];
    global3 = ~(~abs(max(vec2<u32>(1u, global4[_wgslsmith_index_u32(0u, 25u)]), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(2039u, 25u)]))) ^ select(_wgslsmith_add_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(136388u, global0[_wgslsmith_index_u32(global3.x, 19u)]) | vec2<u32>(4294967295u, global3.x)), func_4(_wgslsmith_f_op_f32(step(427f, 670f)), vec2<f32>(-1563f, 297f)), vec2<bool>(true, true)));
    return abs(-1839i) | u_input.c.x;
}

fn func_5(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = !vec4<bool>(false, any(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), false, true);
    let var_1 = Struct_1(any(select(var_0.zz, !var_0.zx, !vec2<bool>(var_0.x, true))));
    global1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(~global3.x, _wgslsmith_clamp_u32(38546u, global4[_wgslsmith_index_u32(~(~1u), 25u)], global3.x)), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], 19u)]);
    let var_2 = global2[_wgslsmith_index_u32(u_input.b, 4u)];
    var var_3 = -(arg_0.x << (_wgslsmith_dot_vec3_u32(~max(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 1u, 3541u), vec3<u32>(u_input.b, u_input.b, 4294967295u)), ~abs(vec3<u32>(50551u, 1u, global3.x))) % 32u));
    return vec3<f32>(-1000f, -549f, -480f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -941f) * 1000f), -2156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1000f))) * -178f)) - _wgslsmith_f_op_vec3_f32(func_5(vec3<i32>(u_input.a.x, func_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), global0[_wgslsmith_index_u32(36135u, 19u)], vec4<i32>(u_input.a.x, u_input.a.x, 8942i, u_input.a.x)), -1i) | reverseBits(u_input.c.xxz << (vec3<u32>(u_input.b, 4294967295u, 100u) % vec3<u32>(32u))))));
    global4 = array<u32, 25>();
    global2 = array<Struct_1, 4>();
    global0 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global3.x, 7078u, 4294967295u) & vec3<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(global3.x, 19u)]), abs(vec3<u32>(4294967295u, 87669u, global3.x))) & vec3<u32>(~4294967295u, ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 25u)], 25u)], 25u)], func_4(var_0.x, vec2<f32>(var_0.x, var_0.x)).x), abs(~vec3<u32>(94108u, 4294967295u, 0u) & vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global3.x, 19u)])), ~abs(abs(vec3<u32>(20223u, global3.x, 1u)))), _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(17460u, 25u)], 25u)], ~global3.x, global3.x));
}

