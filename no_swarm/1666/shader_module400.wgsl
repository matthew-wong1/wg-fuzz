struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false));

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<u32, 10> = array<u32, 10>(113796u, 5900u, 0u, 72970u, 0u, 1u, 16004u, 0u, 53828u, 1u);

var<private> global3: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    let var_0 = 1i;
    var var_1 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~0u), 10u)], 4u)];
    var var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(var_0), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, var_0, u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, -19807i, var_0, -32098i), vec4<i32>(1i, var_0, u_input.a, -64821i), vec4<i32>(-37733i, -27942i, u_input.a, u_input.a))), u_input.a), vec3<i32>(var_0, 1i, 0i)), 797i);
    let var_3 = select(select(var_1.a, vec3<bool>(global0.a.x, all(!vec3<bool>(true, global0.a.x, var_1.a.x)), true), true), select(select(select(!var_1.a, vec3<bool>(true, true, false), vec3<bool>(var_1.a.x, global0.a.x, var_1.a.x)), vec3<bool>(!global0.a.x, true, false), var_1.a), global0.a, global0.a.x), vec3<bool>(true, false, false));
    var var_4 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_2.x, u_input.a), -1i, abs(-reverseBits(reverseBits(0i))));
    return global0.a;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(select(select(!vec3<bool>(global0.a.x, true, true), !select(vec3<bool>(true, false, true), global0.a, global0.a), true), select(select(global0.a, vec3<bool>(true, false, false), vec3<bool>(global0.a.x, true, false)), !global0.a, any(global0.a.yz) & (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88650u, 10u)], 10u)], 10u)], 10u)] <= global2[_wgslsmith_index_u32(50484u, 10u)])), any(vec3<bool>(global0.a.x && true, 1u <= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)], 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21685u, 10u)], 10u)], 10u)], 10u)] > 7832u))));
    var var_1 = Struct_1(select(global0.a, func_3(), global0.a));
    let var_2 = vec2<u32>(global2[_wgslsmith_index_u32(~4294967295u, 10u)], ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], ~firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54656u, 10u)], 10u)])), 10u)]);
    let var_3 = ~(~4962u);
    var_1 = Struct_1(vec3<bool>(false, false, global0.a.x));
    return ~4294967295u;
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(2284f, 216f, -2706f), vec3<f32>(-681f, 1774f, -183f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-486f, -999f, 451f), vec3<f32>(-115f, 903f, -667f))))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(684f, 259f, 643f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-477f, -1167f, -360f)))) + vec3<f32>(-173f, -468f, _wgslsmith_f_op_f32(852f - 1151f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1518f, 583f, -499f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1006f, -1000f, 1040f)))), vec3<f32>(_wgslsmith_div_f32(-399f, 489f), _wgslsmith_f_op_f32(ceil(-123f)), _wgslsmith_f_op_f32(trunc(410f))), !global0.a)))));
    global2 = array<u32, 10>();
    global3 = 18610u;
    let var_1 = ~(~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(75897u, 10u)], 10u)], 4294967295u, 4294967295u, 16151u) & vec4<u32>(4294967295u, 76434u, 1u, global2[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_div_vec4_u32(max(vec4<u32>(0u, global2[_wgslsmith_index_u32(31745u, 10u)], global2[_wgslsmith_index_u32(53514u, 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)], 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(72516u, 10u)], 10u)], 0u, 54761u)), ~vec4<u32>(23243u, 0u, 4294967295u, global2[_wgslsmith_index_u32(16903u, 10u)])), ~firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41274u, 10u)], 10u)], 10u)], 10u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13674u, 10u)], 10u)], 1u))));
    var var_2 = global1[_wgslsmith_index_u32(~firstLeadingBit((566u >> (select(2255u, global2[_wgslsmith_index_u32(4038u, 10u)], false) % 32u)) | func_2()), 4u)];
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1());
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(~(-(vec3<i32>(0i, u_input.a, 1i) | vec3<i32>(u_input.a, u_input.a, u_input.a))), max(~vec3<i32>(u_input.a, u_input.a, 2147483647i) | -vec3<i32>(1i, u_input.a, -954i), ~_wgslsmith_div_vec3_i32(vec3<i32>(-4676i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 42308i)))), u_input.a, -55215i);
    let var_2 = _wgslsmith_mult_vec2_u32(firstTrailingBit(~vec2<u32>(28295u, 15245u) | ~firstTrailingBit(vec2<u32>(24502u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(105047u, 10u)], 10u)], 10u)], 10u)]))), ~firstTrailingBit(~(vec2<u32>(global2[_wgslsmith_index_u32(0u, 10u)], 4294967295u) & vec2<u32>(28108u, 1u))));
    global1 = array<Struct_1, 4>();
    global2 = array<u32, 10>();
    var var_3 = global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(~0u, max(21731u, global2[_wgslsmith_index_u32(var_2.x, 10u)])) >> (54197u % 32u)), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.x ^ _wgslsmith_mod_i32(_wgslsmith_sub_i32(13529i, 0i), -6300i)));
}

