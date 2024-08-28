struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<i32, 24> = array<i32, 24>(0i, 2147483647i, 0i, 35001i, 1i, 5966i, 2147483647i, -11938i, 0i, -1i, 4439i, 2147483647i, 1i, -1i, -1i, i32(-2147483648), 1i, -57324i, -13027i, i32(-2147483648), -25429i, 2147483647i, -4462i, 57175i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> vec2<i32> {
    global0 = ~43172i & abs(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(3777u, 4294967295u, 81882u)), 24u)]);
    let var_0 = u_input.b.x;
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 24u)];
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    return -_wgslsmith_mult_vec2_i32(select(_wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec2<i32>(global1[_wgslsmith_index_u32(60982u, 24u)], 0i) & vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 24u)], -847i)), vec2<i32>(_wgslsmith_sub_i32(62707i, global1[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(102515u, 24u)], global1[_wgslsmith_index_u32(2371u, 24u)])), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<i32>(global1[_wgslsmith_index_u32(countOneBits(~0u), 24u)], 2147483647i));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, -740f) + vec4<f32>(-2150f, -319f, -1000f, -309f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.d.x, arg_0.d.x, 130f, arg_0.d.x))) + vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1937f, 1000f, 1081f, arg_0.d.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1455f, arg_0.d.x, arg_0.d.x, arg_0.d.x), vec4<f32>(154f, arg_0.d.x, 1724f, 1711f)))), vec4<bool>(true, arg_0.c.x, false, true))));
    var var_1 = select(_wgslsmith_add_i32(1i, -(~(i32(-1i) * -1i))), var_0.x, any(select(arg_0.c.yyz, arg_0.c.xyw, all(!vec2<bool>(arg_0.c.x, true)))));
    var var_2 = -_wgslsmith_clamp_vec3_i32(~vec3<i32>(64972i, arg_0.b, -2147483647i) << (arg_0.a % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], 0i, var_0.x), vec3<i32>(-2419i, -11354i, var_0.x))), vec3<i32>(var_0.x, global1[_wgslsmith_index_u32(5146u, 24u)], -arg_0.b)) ^ -_wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b, var_0.x, arg_0.b), vec3<i32>(global1[_wgslsmith_index_u32(0u, 24u)], 16591i, 63902i)), max(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], -1i, 7584i), vec3<i32>(1i, arg_0.b, -11734i)));
    let var_3 = vec2<bool>(true, !arg_0.c.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1108f, arg_0.d.x, -475f))));
    return max(_wgslsmith_mult_u32(12276u, 1u), arg_0.a.x);
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(14652i, 19626i), select(vec2<i32>(2147483647i, -6966i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(1094u, 24u)]), arg_1)) & _wgslsmith_div_vec2_i32(vec2<i32>(-45821i, -1i), ~vec2<i32>(-26395i, -2147483647i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(arg_0, 24u)])), _wgslsmith_sub_vec2_i32(-vec2<i32>(global1[_wgslsmith_index_u32(arg_0, 24u)], global1[_wgslsmith_index_u32(1898u, 24u)]), abs(vec2<i32>(-3879i, global1[_wgslsmith_index_u32(16369u, 24u)]))), firstLeadingBit(vec2<i32>(1i, 2147483647i)))), firstLeadingBit(select(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 24u)], -1i), vec2<i32>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)])), select(vec2<i32>(-39115i, global1[_wgslsmith_index_u32(15334u, 24u)]), vec2<i32>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(arg_0, 24u)]), vec2<bool>(false, true))), _wgslsmith_add_vec2_i32(max(vec2<i32>(-1852i, -2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(0u, 24u)], 2147483647i)), abs(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]))), arg_1)));
    let var_0 = Struct_2(-(~_wgslsmith_add_vec3_i32(vec3<i32>(-23287i, 52750i, global1[_wgslsmith_index_u32(57393u, 24u)]) << (u_input.b % vec3<u32>(32u)), select(vec3<i32>(global1[_wgslsmith_index_u32(15586u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)], 23251i), vec3<i32>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], -65142i), vec3<bool>(arg_1, arg_1, arg_1)))), arg_1, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-462f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_f_op_f32(-1524f - -278f)))))), 24704i, abs(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 561u), u_input.b.yy)));
    let var_1 = select(vec2<bool>(!(!var_0.b), _wgslsmith_f_op_f32(-453f * -2465f) >= _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x))), vec2<bool>(arg_1, any(vec2<bool>(global1[_wgslsmith_index_u32(2159u, 24u)] < 0i, var_0.b))), !vec2<bool>(!(1000f > var_0.c.x), any(select(vec3<bool>(var_0.b, arg_1, false), vec3<bool>(true, true, true), true))));
    let var_2 = firstLeadingBit(select(firstTrailingBit(vec3<u32>(u_input.a, 1u, countOneBits(12695u))), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, var_0.e.x | 39449u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, arg_0), vec4<u32>(arg_0, 45991u, 4294967295u, arg_0))), ~u_input.b), true));
    var var_3 = var_0.e.x;
    return ~_wgslsmith_dot_vec3_i32(var_0.a, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global0 = _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(~func_1(Struct_1(vec3<u32>(40980u, u_input.b.x, u_input.a), global1[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<bool>(true, true, true, true), vec2<f32>(-519f, -203f))), 24u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~u_input.b, ~vec3<u32>(4294967295u, u_input.b.x, u_input.a) | ~vec3<u32>(38140u, 80544u, 0u)), 4294967295u), 24u)], -global1[_wgslsmith_index_u32(~(~(u_input.a & u_input.b.x)), 24u)]);
    var_0 = u_input.b.x;
    global0 = _wgslsmith_mult_i32(i32(-1i) * -31000i, -28490i);
    var var_1 = select(select(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(true, any(vec2<bool>(false, false)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, true)))), -36645i == _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~11728u, 24u)], -global1[_wgslsmith_index_u32(u_input.a, 24u)])), !(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), u_input.a >= 0u)), vec3<bool>(true, !all(vec3<bool>(false, true, true)), -1i <= _wgslsmith_div_i32(4984i, _wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]))));
    global0 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, 267f, -433f, 109f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1770f, -1641f, 2415f, -508f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-298f, -376f, -421f, -597f) + vec4<f32>(561f, -1364f, 934f, -140f)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(var_1.x, true, false, var_1.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1441f, -887f, -1000f, 1104f)))))).x;
    var var_2 = Struct_2(firstTrailingBit(-select(vec3<i32>(-60427i, 3761i, global1[_wgslsmith_index_u32(9964u, 24u)]), ~vec3<i32>(global1[_wgslsmith_index_u32(14114u, 24u)], 13293i, 2147483647i), true)), u_input.a <= 0u, _wgslsmith_div_vec2_f32(vec2<f32>(-1068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1903f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(max(1003f, -2285f))))), ~_wgslsmith_sub_i32(15691i, 20780i) & _wgslsmith_clamp_i32(func_3(~u_input.a, var_1.x), global1[_wgslsmith_index_u32(~min(u_input.b.x, u_input.b.x), 24u)], -40338i), u_input.b.zy);
    var_1 = select(select(vec3<bool>(true, all(var_1.yy), true), !select(select(vec3<bool>(true, false, false), vec3<bool>(var_2.b, false, false), true), select(vec3<bool>(var_2.b, true, false), vec3<bool>(true, true, true), false), false), true), !select(!select(vec3<bool>(var_2.b, var_2.b, var_1.x), vec3<bool>(var_1.x, false, true), vec3<bool>(var_2.b, true, false)), vec3<bool>(var_1.x, var_2.c.x < 491f, !var_1.x), vec3<bool>(all(vec3<bool>(var_2.b, var_2.b, true)), var_1.x, false)), vec3<bool>(var_1.x, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(31945u, min(2868u, ~var_2.e.x) >> (0u % 32u), max(u_input.a, u_input.b.x)), u_input.b, var_2.c, abs(vec4<u32>(1u, _wgslsmith_mod_u32(~var_2.e.x, var_2.e.x), 0u, 73760u)), _wgslsmith_f_op_f32(f32(-1f) * -939f));
}

