struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global1: vec4<f32> = vec4<f32>(662f, -1108f, 116f, -227f);

var<private> global2: array<i32, 6>;

var<private> global3: u32;

var<private> global4: vec3<f32> = vec3<f32>(-1026f, 1739f, 614f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1073f, 254f, -101f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, global4.x, 851f, 730f), vec4<f32>(global1.x, 1044f, global4.x, -318f)))))))));
    let var_0 = global1.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 141f, global1.x, -969f) - vec4<f32>(global1.x, global4.x, 1669f, global4.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(423f, -1000f, -622f, global4.x) * vec4<f32>(-112f, global4.x, global4.x, 329f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(774f, -895f, 624f, -353f) - _wgslsmith_div_vec4_f32(vec4<f32>(1114f, 2168f, global1.x, global1.x), vec4<f32>(global1.x, -784f, global4.x, global4.x))), any(!arg_0.d))))));
    var var_2 = arg_1;
    return ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(var_2.a, 0u)), countOneBits(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.a, 45685u), firstLeadingBit(vec2<u32>(0u, arg_1.a)))));
}

fn func_2(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = Struct_1(true, false);
    global0 = array<vec3<bool>, 12>();
    var var_1 = Struct_1(false, arg_0);
    let var_2 = ~firstTrailingBit(_wgslsmith_dot_vec2_u32(func_3(Struct_3(0i, var_1.b, Struct_1(false, false), vec4<bool>(false, var_0.b, false, var_1.a)), Struct_2(4294967295u, vec4<i32>(0i, u_input.a, -2147483647i, 20457i))), countOneBits(reverseBits(vec2<u32>(20541u, 47819u)))));
    let var_3 = _wgslsmith_f_op_f32(trunc(-1245f));
    return false;
}

fn func_1(arg_0: bool) -> u32 {
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    var var_0 = vec2<bool>(func_2(true || (global1.x <= _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1183f, 1368f)) - 234f)))), true);
    let var_1 = Struct_2(~min(~(~4294967295u), ~1u), -(~(_wgslsmith_add_vec4_i32(vec4<i32>(31644i, 1i, 0i, global2[_wgslsmith_index_u32(36180u, 6u)]), vec4<i32>(global2[_wgslsmith_index_u32(0u, 6u)], 9214i, global2[_wgslsmith_index_u32(50487u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)])) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_mod_u32(~countOneBits(37361u | _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, var_1.a), vec2<u32>(19164u, var_1.a))), 1u);
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(select(vec4<u32>(0u, var_2, 18467u, 0u), vec4<u32>(var_2, var_2, var_2, 0u), vec4<bool>(arg_0, var_0.x, false, var_0.x))), select(select(vec4<u32>(var_1.a, 4294967295u, var_1.a, var_1.a), vec4<u32>(var_1.a, 3389u, 72822u, var_1.a), false), abs(vec4<u32>(28827u, var_1.a, 1u, var_1.a)), vec4<bool>(true, arg_0, arg_0, false))), _wgslsmith_add_vec4_u32(vec4<u32>(120177u, var_1.a, 46550u << (var_2 % 32u), 59916u), ~vec4<u32>(20975u, 78041u, var_2, var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global4 = global1.wxw;
    var_0 = ~func_1(-2147483647i > _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(5959i, -1i, u_input.a, global2[_wgslsmith_index_u32(0u, 6u)]), vec4<i32>(u_input.a, u_input.a, 0i, global2[_wgslsmith_index_u32(76966u, 6u)])), vec4<i32>(global2[_wgslsmith_index_u32(1u, 6u)], -2147483647i, global2[_wgslsmith_index_u32(11071u, 6u)], 0i) & vec4<i32>(-1i, global2[_wgslsmith_index_u32(0u, 6u)], 1i, 72785i)));
    global3 = 23917u;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(global1.yzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(563f, -227f, -1076f) * vec3<f32>(global4.x, global1.x, global1.x))))))));
    global3 = ~81881u ^ abs(func_1(func_2(false, 621f)) << (max(_wgslsmith_mult_u32(3544u, 13788u), 1u) % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-global1.wwx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-779f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1164f)))), true)) * -592f), vec3<u32>(abs(min(1u, _wgslsmith_clamp_u32(14233u, 0u, 4294967295u))), 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(11655u, 30355u, 0u, 36694u)))), _wgslsmith_f_op_vec2_f32(select(global1.xx, global1.wx, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_sub_u32(~firstLeadingBit(4294967295u), 1u) >> (1u % 32u), _wgslsmith_f_op_f32(-global4.x));
}

