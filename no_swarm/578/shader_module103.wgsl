struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: Struct_1 = Struct_1(-1i, -932f);

var<private> global2: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = reverseBits(firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(41034u, 20u)], 0i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 20u)], 1i, global1.a)), vec3<i32>(28864i, -36018i, u_input.a.x)) ^ u_input.b));
    let var_1 = select(!select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec2<bool>(true, true))), !select(vec2<bool>(true, any(vec2<bool>(true, false))), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(false, false, true)))), any(!global2[_wgslsmith_index_u32(~1u, 9u)]));
    global0 = array<i32, 20>();
    let var_2 = vec3<u32>(~(~abs(~60132u)), 22623u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u >> (0u % 32u), _wgslsmith_mod_u32(4294967295u, 4294967295u), 1u, abs(35026u)), all(vec3<bool>(true, true, true))), select(vec4<u32>(min(1u, 6047u), select(4294967295u, 1u, false), ~34322u, 1u), vec4<u32>(abs(17704u), firstLeadingBit(0u), _wgslsmith_mod_u32(4294967295u, 5812u), ~0u), 331f != _wgslsmith_f_op_f32(step(global1.b, arg_0)))));
    var var_3 = Struct_1(firstLeadingBit(min(_wgslsmith_mod_i32(var_0.x & 46736i, var_0.x), -abs(u_input.a.x))), global1.b);
    return ~min(var_2.x, 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<i32, 20>();
    var var_0 = Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_1.x, -global1.a, ~(-1i)), u_input.b >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1273f)) - _wgslsmith_f_op_f32(f32(-1f) * -205f)));
    let var_1 = func_3(_wgslsmith_f_op_f32(floor(436f)));
    var var_2 = _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(reverseBits(16861u), 1u));
    let var_3 = Struct_4(~var_0.a, select(vec3<bool>(true, true, true), vec3<bool>(false, false, !any(vec3<bool>(true, false, true))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.b)), -1806f)));
    return Struct_1(global1.a, _wgslsmith_f_op_f32(-1000f - -325f));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<u32>) -> Struct_4 {
    global1 = Struct_1(_wgslsmith_div_i32(0i, _wgslsmith_add_i32(min(-23740i, -17997i), -(global0[_wgslsmith_index_u32(1u, 20u)] >> (arg_2.x % 32u)))), global1.b);
    let var_0 = ~(~(~(arg_2.x << (arg_2.x % 32u)) ^ ~arg_2.x));
    var var_1 = func_2(vec2<i32>(abs(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_2.x, var_0), var_0), 20u)]), abs((i32(-1i) * -26285i) >> (arg_2.x % 32u))), max(firstLeadingBit(-vec2<i32>(2147483647i, u_input.a.x)), vec2<i32>(~(~(-37136i)), -1i)));
    let var_2 = arg_2;
    global1 = func_2(max(-countOneBits(-u_input.b.zy), u_input.a << (~var_2.xx % vec2<u32>(32u))), vec2<i32>(~(~_wgslsmith_sub_i32(-1i, global1.a)), _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-61353i, u_input.a.x, -2265i, var_1.a)), reverseBits(vec4<i32>(var_1.a, global0[_wgslsmith_index_u32(var_0, 20u)], 29921i, -1i)))));
    return Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~global1.a, _wgslsmith_clamp_i32(global1.a, -8123i, global0[_wgslsmith_index_u32(var_2.x, 20u)]), var_1.a & var_1.a, global1.a), abs(-vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 20u)], -2147483647i, 1i, -34098i))), ~(-vec4<i32>(41304i, -27482i, global1.a, var_1.a) << (firstTrailingBit(var_2) % vec4<u32>(32u)))), select(!(!vec3<bool>(false, false, arg_0)), vec3<bool>(false, true, !(!arg_0)), vec3<bool>(true, any(select(vec3<bool>(arg_0, arg_1, true), vec3<bool>(arg_0, false, false), vec3<bool>(arg_1, false, true))), false)), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 9>();
    let var_0 = any(vec3<bool>(false, select(all(vec4<bool>(false, true, true, false)) && any(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, true, false)) | select(true, true, true), any(vec3<bool>(true, false, true))), true));
    global2 = array<vec4<bool>, 9>();
    let var_1 = func_1(var_0, var_0, min(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), min(select(vec4<u32>(104794u, 1u, 4294967295u, 87999u), vec4<u32>(0u, 4294967295u, 27281u, 1u), global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<u32>(1u, 1u, 1u, 1u))), firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(55183u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 211u, 1u)), 0u, 1u))));
    global1 = func_2(countOneBits(u_input.b.xx), select(u_input.a, vec2<i32>(-(~(-1i)), 12736i), !select(select(var_0, true, var_1.b.x), true, false)));
    var var_2 = Struct_1(~(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 20u)] >> (0u % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 76580u, 4294967295u))), 20u)], ~29845u, u_input.b, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(global0[_wgslsmith_index_u32(79220u, 20u)], global0[_wgslsmith_index_u32(18165u, 20u)]), vec2<i32>(-2147483647i, global1.a)).b - _wgslsmith_f_op_f32(1116f * var_1.c)))));
}

