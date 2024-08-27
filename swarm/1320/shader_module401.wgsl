struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<bool, 30>;

var<private> global2: array<u32, 25> = array<u32, 25>(1u, 9669u, 0u, 0u, 59236u, 34778u, 1u, 4294967295u, 0u, 54141u, 4294967295u, 0u, 1u, 0u, 36935u, 0u, 2336u, 81u, 36442u, 13474u, 4294967295u, 29247u, 1u, 80443u, 4294967295u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0.a, 25u)];
    var var_1 = _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(-31097i ^ u_input.b.x, ~14302i, u_input.b.x), -9204i) == reverseBits(u_input.b.x);
    var var_2 = vec4<f32>(434f, _wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(-1003f * 261f), 832f);
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.x)))))), _wgslsmith_f_op_f32(165f + -2376f), global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 25u)], 4294967295u), 25u)], 30u)])), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-1385f - -1051f)), -832f)) * global0.x), var_2.x);
    let var_3 = !(true & all(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], !global1[_wgslsmith_index_u32(u_input.a, 30u)])));
    return _wgslsmith_f_op_f32(trunc(790f));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.c.x), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -386f)))));
    let var_1 = max(firstTrailingBit(vec4<i32>(u_input.b.x, 32723i, -37676i, u_input.b.x)), max(u_input.b, select(abs(u_input.b), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i), select(vec4<bool>(arg_0.x, arg_0.x, false, global1[_wgslsmith_index_u32(31233u, 30u)]), arg_0, arg_0)) & u_input.b));
    var var_2 = 1u;
    var_0 = 355f;
    global2 = array<u32, 25>();
    return 25164u;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = !(!vec4<bool>(true, u_input.a < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 50625u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63568u, 25u)], 25u)]), vec4<u32>(2069u, 1u, u_input.c.x, u_input.a)), (u_input.c.x <= u_input.a) == !global1[_wgslsmith_index_u32(4294967295u, 30u)], all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], true))));
    return ~(1u >> (func_2(vec4<bool>(global1[_wgslsmith_index_u32(59711u, 30u)], global1[_wgslsmith_index_u32(abs(u_input.c.x), 30u)], var_0.x, global1[_wgslsmith_index_u32(u_input.a ^ u_input.a, 30u)])) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1346f, global0.x), vec2<f32>(global0.x, global0.x)) + _wgslsmith_f_op_vec2_f32(trunc(global0.zw))) - vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -928f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(295f + global0.x)) - -1247f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) * _wgslsmith_f_op_f32(global0.x * global0.x)), 564f))));
    let var_2 = Struct_1(~(~func_1(_wgslsmith_f_op_vec2_f32(var_1 * vec2<f32>(-403f, global0.x)))));
    global1 = array<bool, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(u_input.b.x >> (firstLeadingBit(1u) % 32u)), var_0.x, ~(var_0.x >> (1u % 32u)), abs(var_0.x) & (firstLeadingBit(u_input.b.x) >> (var_2.a % 32u))), select(reverseBits(u_input.c.yy), ~(~(~vec2<u32>(0u, var_2.a))), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(17572u, 30u)]), vec2<bool>(false, true), global1[_wgslsmith_index_u32(var_2.a, 30u)]), vec2<bool>(global1[_wgslsmith_index_u32(38912u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(26735i, 0i, 0i), vec3<i32>(2147483647i, -2147483647i, 24514i)), var_0.x, -2147483647i << (u_input.c.x % 32u)) >> (vec4<u32>(1u, ~72655u, _wgslsmith_add_u32(var_2.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)]), u_input.a) % vec4<u32>(32u)), var_0 ^ ~var_0), vec4<u32>(_wgslsmith_mod_u32(11532u, ~88998u), ~var_2.a, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yy) + _wgslsmith_f_op_vec2_f32(max(global0.wy, var_1)))), ~(1u << (~var_2.a % 32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~(var_0.ww ^ vec2<i32>(0i, 0i)), u_input.b.xx), ~(-var_0.yz)));
}

