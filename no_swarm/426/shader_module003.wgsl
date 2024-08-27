struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(1i, 1i, -32971i, -12610i, 16569i, i32(-2147483648), -12556i, -9526i, -32318i, 14592i, -10836i);

var<private> global1: array<f32, 25>;

var<private> global2: array<u32, 24>;

var<private> global3: array<i32, 21>;

var<private> global4: vec2<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<i32> {
    global0 = array<i32, 11>();
    return _wgslsmith_div_vec4_i32(vec4<i32>(abs(_wgslsmith_add_i32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32120u, 24u)], 24u)], 11u)], -42381i)), 1i, -15047i, 55137i), -countOneBits(-vec4<i32>(-69722i, -60979i, global0[_wgslsmith_index_u32(43231u, 11u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 21u)])) << (~_wgslsmith_div_vec4_u32(vec4<u32>(31316u, 7118u, 2034u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)]), ~vec4<u32>(4294967295u, 30648u, 10863u, 20397u)) % vec4<u32>(32u)));
}

fn func_2() -> i32 {
    global3 = array<i32, 21>();
    global0 = array<i32, 11>();
    var var_0 = func_3();
    let var_1 = vec2<u32>(_wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 55441u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)]), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)])) | _wgslsmith_clamp_u32(0u, global2[_wgslsmith_index_u32(25025u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13175u, 24u)], 24u)]), global2[_wgslsmith_index_u32(43628u >> (select(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(77610u, 24u)], true) % 32u), 24u)]), 24u)]), _wgslsmith_mod_u32(0u, countOneBits(global2[_wgslsmith_index_u32(0u, 24u)])));
    global0 = array<i32, 11>();
    return -_wgslsmith_dot_vec3_i32(var_0.xzy, vec3<i32>(func_3().x, -abs(19883i), _wgslsmith_mult_i32(reverseBits(u_input.a), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(1u, 11u)], -1i))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-38771i, max(countOneBits(global3[_wgslsmith_index_u32(70890u, 21u)]), _wgslsmith_mult_i32(-1455i, u_input.a))), ~(~select(vec2<i32>(1i, -20299i), vec2<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3826u, 24u)], 24u)], 21u)], 21337i), vec2<bool>(true, arg_1.x)))), -vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], 21u)], -19508i), 0i, func_2()), -44642i));
    global2 = array<u32, 24>();
    let var_1 = arg_1.x & (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(15323u, 4948u, global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(11383u, 24u)])) | reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 1u, global2[_wgslsmith_index_u32(1u, 24u)], 0u)), firstTrailingBit(~vec4<u32>(10506u, 54328u, 2203u, 44961u))) > (~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34072u, 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(57065u, 24u)], 24u)]) >> (firstTrailingBit(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43973u, 24u)], 24u)]) % 32u)));
    global2 = array<u32, 24>();
    var var_2 = abs(_wgslsmith_mod_u32(~(~1u), 26925u >> (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(68170u, 24u)], 69694u), vec2<u32>(10127u, 44760u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)]), vec2<u32>(4294967295u, 4294967295u))), 24u)] % 32u)));
    return Struct_3(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(0u, 11u)], u_input.a), firstTrailingBit(_wgslsmith_clamp_i32(76414i, 1i, 6670i)), max(i32(-1i) * -1i, -global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47573u, 24u)], 11u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(212f * 812f))), u_input.a, !(24940u == _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(17686u, 24u)], 4294967295u, global2[_wgslsmith_index_u32(104934u, 24u)])), global4.x));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>) -> Struct_4 {
    global1 = array<f32, 25>();
    var var_0 = abs(~firstLeadingBit(vec4<u32>(1u, 4294967295u, 1u, global2[_wgslsmith_index_u32(0u, 24u)])) << ((abs(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(1558u, 24u)], 0u, global2[_wgslsmith_index_u32(0u, 24u)])) & abs(_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 29110u, 26010u, global2[_wgslsmith_index_u32(48544u, 24u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(83240u, 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(40952u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19818u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(1u, 24u)])))) % vec4<u32>(32u)));
    global1 = array<f32, 25>();
    let var_1 = !select(select(vec2<bool>(arg_2.x, false & arg_0.a.d), !vec2<bool>(true, arg_0.a.d), vec2<bool>(any(vec3<bool>(true, arg_2.x, arg_0.a.d)), true)), select(select(vec2<bool>(false, arg_0.a.d), vec2<bool>(false, true), all(vec2<bool>(arg_0.a.d, true))), select(select(arg_2, vec2<bool>(arg_0.a.d, arg_0.a.d), arg_2), vec2<bool>(true, false), true), vec2<bool>(arg_2.x, true || arg_2.x)), select(select(vec2<bool>(arg_2.x, true), select(vec2<bool>(true, false), arg_2, arg_2), arg_2), vec2<bool>(true, true), arg_2));
    var var_2 = ~_wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(0u, 0u, 15042u, var_0.x)), max(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 30935u, global2[_wgslsmith_index_u32(1u, 24u)]), vec4<u32>(4294967295u, var_0.x, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)])), vec4<u32>(0u, _wgslsmith_sub_u32(var_0.x, global2[_wgslsmith_index_u32(17222u, 24u)]), ~0u, 120045u)));
    return Struct_4(Struct_2(func_1(all(vec3<bool>(var_1.x, arg_0.a.d, var_1.x)) != true, !select(vec4<bool>(var_1.x, arg_2.x, false, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, false, false, true))).a.b));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_4) -> u32 {
    global2 = array<u32, 24>();
    var var_0 = reverseBits(vec4<u32>(_wgslsmith_add_u32(0u, reverseBits(arg_1.x >> (102549u % 32u))), _wgslsmith_mod_u32(~(~57052u), abs(1u)), ~arg_1.x, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38002u, 24u)], 24u)], global2[_wgslsmith_index_u32(5191u, 24u)]), vec4<u32>(42585u, 0u, 0u, global2[_wgslsmith_index_u32(19407u, 24u)]), vec4<u32>(21790u, global2[_wgslsmith_index_u32(1u, 24u)], arg_1.x, arg_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(32494u, global2[_wgslsmith_index_u32(68032u, 24u)], 302u, global2[_wgslsmith_index_u32(87267u, 24u)]), vec4<u32>(global2[_wgslsmith_index_u32(72217u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], arg_1.x, arg_1.x))), 24u)], _wgslsmith_div_u32(~88463u, countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 24u)], 24u)], 24u)])))));
    var var_1 = select(-abs(_wgslsmith_add_vec4_i32(vec4<i32>(7483i, 1i, 19899i, u_input.a), arg_0)) & -arg_0, arg_0, vec4<bool>(true, true, true, true));
    let var_2 = _wgslsmith_f_op_f32(floor(1741f));
    let var_3 = func_4(Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-14162i, global3[_wgslsmith_index_u32(0u, 21u)]), arg_0.ww), arg_0.zy | var_1.zx), -360f, firstLeadingBit(_wgslsmith_dot_vec2_i32(var_1.zz, vec2<i32>(1i, global0[_wgslsmith_index_u32(arg_1.x, 11u)]))), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(step(-161f, _wgslsmith_f_op_f32(-var_2))))), _wgslsmith_f_op_f32(round(var_2)), !vec2<bool>(true, any(vec4<bool>(true, true, true, true)))).a;
    return global2[_wgslsmith_index_u32(max(118944u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(reverseBits(0u), 24u)], 24u)]), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 24>();
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(false, true, true, true)) || true), false), vec2<bool>(true, true), true);
    global4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-277f, global1[_wgslsmith_index_u32(1u, 25u)]) * vec2<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73778u, 24u)], 24u)], 24u)], 25u)], global1[_wgslsmith_index_u32(0u, 25u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1214f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 25u)]), vec2<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14502u, 24u)], 24u)], 24u)], 24u)], 25u)], global4.x), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-371f, global4.x))), !var_0.x)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1211f * -1241f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32895u, 24u)], 24u)], 24u)], 25u)] * -849f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8426u, 24u)], 24u)], 25u)], 622f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-623f, global4.x) * vec2<f32>(756f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48218u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 25u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(787f, -909f) - vec2<f32>(global4.x, 1155f)))))));
    global3 = array<i32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~((vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 0u, 4294967295u, global2[_wgslsmith_index_u32(1786u, 24u)]) << (vec4<u32>(8281u, 34109u, 51258u, 103352u) % vec4<u32>(32u))) & (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31367u, 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48275u, 24u)], 24u)], 17129u, 39015u) << (vec4<u32>(14190u, 3186u, 68070u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], 24u)]) % vec4<u32>(32u))))), ~(~(~vec2<i32>(2147483647i, u_input.a))), ~func_5(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -14958i, -6776i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12436u, 24u)], 11u)]) ^ vec4<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18906u, 24u)], 24u)], 24u)], 11u)], -2147483647i, u_input.a, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-12105i, 2147483647i, -2147483647i, global3[_wgslsmith_index_u32(0u, 21u)]), vec4<i32>(2147483647i, u_input.a, global3[_wgslsmith_index_u32(54604u, 21u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 11u)]))), firstTrailingBit(vec2<u32>(1u, global2[_wgslsmith_index_u32(1u, 24u)])), func_4(func_1(var_0.x, vec4<bool>(true, true, var_0.x, true)), _wgslsmith_f_op_f32(max(global4.x, 1009f)), var_0)));
}

