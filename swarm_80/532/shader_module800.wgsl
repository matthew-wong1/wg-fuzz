struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = ~vec2<u32>(_wgslsmith_sub_u32(reverseBits(select(4294967295u, 13215u, true)), ~(~4294967295u)), abs(u_input.a));
    let var_1 = Struct_2(-2147483647i & (_wgslsmith_mod_i32(~8193i, arg_3) | _wgslsmith_div_i32(_wgslsmith_sub_i32(-3176i, 50135i), 28869i)), min(abs(reverseBits(vec3<u32>(44848u, u_input.a, arg_1))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 48308u, global0[_wgslsmith_index_u32(1u, 19u)]), vec3<u32>(1u, 59367u, 66560u), vec3<u32>(4294967295u, 3348u, 4294967295u)) & ~vec3<u32>(arg_1, 0u, arg_1)), Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), arg_3, false, 1u));
    return _wgslsmith_f_op_f32(f32(-1f) * -2537f);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1556f + _wgslsmith_f_op_f32(ceil(-272f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(595f))) + 1319f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(737f - 1009f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1517f - -583f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(919f, -311f) - _wgslsmith_f_op_f32(-1273f - 906f))))) * 1f);
    global0 = array<u32, 19>();
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1127f - -493f), global0[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_f32(394f - -1000f), ~(-14701i))))), 396f));
    let var_1 = Struct_1(vec4<bool>(any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true)), true, true, true), ~1i, all(vec2<bool>(true, true)), 0u);
    return -32342i;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: f32) -> u32 {
    global0 = array<u32, 19>();
    let var_0 = Struct_1(!vec4<bool>(true, !arg_0 & all(vec2<bool>(true, arg_0)), any(select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), false)), false), 9326i, arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5097u, 19u)], 19u)]);
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    let var_1 = -abs(1i);
    return max(63083u, 14866u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 19>();
    var var_0 = firstTrailingBit(vec2<u32>(38630u, countOneBits(4294967295u)));
    let var_1 = func_1();
    let var_2 = false;
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    var_0 = ~vec2<u32>(4294967295u, ~global0[_wgslsmith_index_u32(firstLeadingBit(1u), 19u)]);
    var_0 = ~vec2<u32>(~global0[_wgslsmith_index_u32(func_3(var_2, -31525i, -1i, -748f), 19u)], ~u_input.a ^ 1u) >> (~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(0u, 12544u)), vec2<u32>(var_0.x << (u_input.a % 32u), u_input.a), min(countOneBits(vec2<u32>(4294967295u, 0u)), vec2<u32>(91335u, var_0.x))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(~0u, _wgslsmith_sub_u32(u_input.a, var_0.x), _wgslsmith_add_u32(56231u, var_0.x), global0[_wgslsmith_index_u32(6530u, 19u)] ^ 0u), select(vec4<u32>(14000u, var_0.x, 32752u, 5316u), vec4<u32>(82926u, u_input.a, 1u, 4294967295u), false) & select(vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], u_input.a, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], 1u, var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)]), false))), ~(select(var_1, 71366i, var_2) & firstTrailingBit(var_1)) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, firstTrailingBit(34783i), ~14793i), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, 0i, var_1, var_1), vec4<i32>(var_1, -1i, 0i, var_1))), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, -376f, 1171f, -2113f) + vec4<f32>(1000f, -655f, -697f, 1755f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-473f, 1100f, 1000f, 1976f) + vec4<f32>(1351f, -589f, 642f, 738f)))))), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 18308u)), vec2<u32>(0u, 28973u)), ~abs(vec2<u32>(43395u, 16036u))), min(u_input.a, min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, var_0.x, global0[_wgslsmith_index_u32(12765u, 19u)]), vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(4759u, 19u)], 31032u, 0u)), 19u)], abs(var_0.x))), global0[_wgslsmith_index_u32(abs(~countOneBits(var_0.x)), 19u)]));
}

