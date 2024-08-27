struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: Struct_3;

var<private> global1: array<f32, 26>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_mult_i32(global0.c.b, 11290i), arg_1.x >> (65421u % 32u), ~arg_3.b, 16710i), -max(max(vec4<i32>(arg_1.x, -1i, arg_2.d.b, 34903i), vec4<i32>(arg_3.b, arg_3.b, 0i, 11038i)), abs(vec4<i32>(-59557i, arg_1.x, arg_2.c, 5453i)))));
    global0 = Struct_3(true, _wgslsmith_sub_u32(~(~u_input.c.x), ~u_input.c.x) | abs(u_input.c.x ^ firstLeadingBit(global0.b)), arg_2.d.c, -_wgslsmith_div_vec2_i32(abs(vec2<i32>(-1i, 50739i)), arg_2.a.d), Struct_1(vec3<bool>(all(arg_3.a) && true, any(vec3<bool>(global0.c.a.x, arg_2.b.x, true)), false), min(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b, -2147483647i) ^ vec2<i32>(2588i, arg_2.d.c.b), -arg_2.a.d), -1i), 17036u, -971f));
    global1 = array<f32, 26>();
    var var_1 = Struct_3(select(any(arg_3.a), select(true, !arg_2.a.a, true), !arg_2.b.x), 6578u, Struct_1(arg_2.d.c.a, 34649i, 0u, arg_3.d), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(~vec2<i32>(58347i, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(41308i, arg_1.x) & global0.d, ~arg_2.a.d), vec2<i32>(~(-1i), -1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b, 24011i, arg_1.x), vec3<i32>(arg_1.x, -57039i, -34294i)), arg_3.b)), Struct_1(arg_3.a, ~(~0i), arg_0 ^ ~select(1u, 2987u, arg_2.d.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = Struct_3(false, 0u, Struct_1(!(!vec3<bool>(global0.a, global0.a, var_1.c.a.x)), arg_2.c, global0.e.c, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.e.c, 0u), arg_0), 26u)]), min(-(~vec2<i32>(-2147483647i, -37493i)), -select(vec2<i32>(var_1.e.b, -23453i), min(vec2<i32>(0i, 13804i), vec2<i32>(var_1.e.b, 34047i)), vec2<bool>(var_1.a, global0.a))), arg_2.d.c);
    return -_wgslsmith_sub_vec3_i32(firstTrailingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.d.b, -2147483647i, 13633i), vec3<i32>(global0.c.b, arg_3.b, arg_2.a.c.b))), _wgslsmith_add_vec3_i32(vec3<i32>(35860i, arg_2.c, global0.e.b) | min(vec3<i32>(arg_2.a.d.x, -38414i, -11258i), vec3<i32>(-34097i, var_1.c.b, 1i)), vec3<i32>(abs(2147483647i), ~(-4914i), ~arg_2.d.b)));
}

fn func_2() -> vec4<bool> {
    var var_0 = -617f;
    var var_1 = countOneBits(43006i);
    let var_2 = vec4<u32>(52006u & ~global0.b, global0.c.c, global0.e.c, 73321u);
    let var_3 = Struct_4(Struct_3(global0.c.a.x, u_input.c.x, Struct_1(vec3<bool>(true, global0.e.a.x, !global0.e.a.x), _wgslsmith_dot_vec3_i32(func_3(var_2.x, global0.d, Struct_4(Struct_3(true, 339u, Struct_1(vec3<bool>(false, global0.a, global0.c.a.x), global0.e.b, var_2.x, global0.c.d), vec2<i32>(2147483647i, -33554i), Struct_1(vec3<bool>(global0.a, true, false), -30274i, 43157u, 223f)), global0.c.a.yz, global0.d.x, Struct_2(vec2<f32>(1922f, 260f), -71914i, global0.e), global0.e.d), global0.c), vec3<i32>(1i, global0.d.x, global0.d.x) | vec3<i32>(global0.c.b, global0.e.b, 37441i)), ~firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(882f * _wgslsmith_f_op_f32(-global0.e.d))), -_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global0.d.x), vec2<i32>(0i, global0.c.b)) ^ global0.d, global0.c), global0.c.a.zz, countOneBits(func_3((global0.e.c << (var_2.x % 32u)) & var_2.x, global0.d & vec2<i32>(global0.e.b, global0.c.b), Struct_4(Struct_3(global0.c.a.x, var_2.x, Struct_1(vec3<bool>(global0.c.a.x, true, false), global0.e.b, var_2.x, global1[_wgslsmith_index_u32(77794u, 26u)]), vec2<i32>(2147483647i, global0.d.x), Struct_1(global0.c.a, -1i, global0.e.c, global1[_wgslsmith_index_u32(global0.b, 26u)])), vec2<bool>(false, true), func_3(0u, vec2<i32>(global0.e.b, global0.c.b), Struct_4(Struct_3(global0.a, 4294967295u, Struct_1(vec3<bool>(global0.a, false, global0.e.a.x), global0.d.x, 1u, global0.c.d), global0.d, global0.c), global0.c.a.zx, 1i, Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], 251f), 2147483647i, global0.e), 152f), Struct_1(vec3<bool>(false, global0.e.a.x, global0.e.a.x), global0.c.b, var_2.x, global1[_wgslsmith_index_u32(3352u, 26u)])).x, Struct_2(vec2<f32>(global0.c.d, 1000f), global0.c.b, global0.c), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(39876u, 26u)])), Struct_1(global0.e.a, ~(-2147483647i), _wgslsmith_sub_u32(u_input.a, u_input.b), _wgslsmith_f_op_f32(-global0.c.d))).x), Struct_2(vec2<f32>(global0.c.d, global1[_wgslsmith_index_u32(abs(var_2.x), 26u)]), -30359i, global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 26u)], 1535f)) * -1540f));
    global1 = array<f32, 26>();
    return !(!vec4<bool>(select(!global0.a, global0.c.a.x, any(vec4<bool>(var_3.a.c.a.x, true, global0.c.a.x, var_3.b.x))), select(select(var_3.b.x, global0.a, global0.a), any(vec4<bool>(true, true, true, true)), false), true, select(!global0.c.a.x, var_3.c == var_3.a.d.x, !var_3.d.c.a.x)));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    var var_0 = select(!vec4<bool>(true, select(global0.c.a.x, false, true), any(global0.e.a), global0.c.a.x), func_2(), vec4<bool>(!(global0.a | false) && ((arg_1 >= arg_0.c.c) || arg_0.c.a.x), global0.e.a.x, false, !any(arg_0.c.a.yz)));
    global1 = array<f32, 26>();
    global0 = Struct_3(!all(select(vec4<bool>(false, global0.e.a.x, global0.a, true), vec4<bool>(true, false, var_0.x, global0.c.a.x), global0.e.a.x)) | !(!global0.c.a.x), 1u, arg_0.c, vec2<i32>(-1i, 2147483647i), Struct_1(global0.e.a, func_3(reverseBits(4294967295u), vec2<i32>(global0.e.b, -global0.c.b), Struct_4(Struct_3(true, 1u, global0.c, global0.d, Struct_1(vec3<bool>(false, true, false), global0.d.x, 1u, -1000f)), select(arg_0.c.a.xx, var_0.ww, false), global0.d.x, arg_0, 239f), global0.c).x, firstLeadingBit(_wgslsmith_dot_vec4_u32(reverseBits(u_input.c), vec4<u32>(4880u, u_input.c.x, 1u, arg_0.c.c))), global0.c.d));
    global0 = Struct_3(all(select(vec2<bool>(true, var_0.x), vec2<bool>(-1000f >= arg_0.a.x, any(arg_0.c.a.xy)), !func_2().x)), abs(firstTrailingBit(~countOneBits(6543u))), global0.e, _wgslsmith_mult_vec2_i32(global0.d, -global0.d), arg_0.c);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(max(global0.e.d, global0.c.d)), global1[_wgslsmith_index_u32(1u, 26u)]))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-787f, global0.c.d) - _wgslsmith_f_op_vec2_f32(-arg_0.a))))), -min(countOneBits(~arg_0.b), 1i), arg_0.c);
    return Struct_3(any(func_2().yyw), (var_1.c.c ^ 42267u) | global0.c.c, arg_0.c, vec2<i32>(select(max(global0.d.x, 2147483647i), var_1.c.b, true), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(global0.e.b, -1i), 0i)), Struct_1(vec3<bool>(var_0.x, var_0.x, any(vec4<bool>(true, true, global0.e.a.x, var_0.x))), -26380i, ~21023u, _wgslsmith_f_op_f32(step(global0.e.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.c.d)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(39128u, 26u)] - global1[_wgslsmith_index_u32(var_1.c.c, 26u)]))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: Struct_3) -> bool {
    var var_0 = ~(~(~(~max(vec3<u32>(4294967295u, global0.c.c, u_input.b), vec3<u32>(global0.b, 31577u, global0.b)))));
    global0 = arg_3;
    global1 = array<f32, 26>();
    var var_1 = Struct_2(arg_1, ~(-48518i & arg_2.x), Struct_1(!global0.e.a, 2147483647i, ~(~firstLeadingBit(0u)), arg_1.x));
    var var_2 = any(vec2<bool>(any(!select(vec4<bool>(false, global0.e.a.x, global0.a, arg_0.x), vec4<bool>(true, false, var_1.c.a.x, false), arg_3.e.a.x)), ~(~4294967295u) != _wgslsmith_add_u32(~41141u, var_1.c.c)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(global0.b) == ~42890u;
    var_0 = global0.a;
    global0 = Struct_3(!(!func_4(select(vec3<bool>(true, false, global0.a), global0.e.a, vec3<bool>(global0.e.a.x, global0.a, true)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.e.d, global1[_wgslsmith_index_u32(global0.e.c, 26u)]), vec2<f32>(1192f, global1[_wgslsmith_index_u32(1u, 26u)])), ~global0.d, func_1(Struct_2(vec2<f32>(-887f, -1574f), global0.e.b, Struct_1(vec3<bool>(false, global0.a, global0.a), 5427i, global0.c.c, global0.c.d)), 0u))), func_1(Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1408f, global1[_wgslsmith_index_u32(global0.c.c, 26u)])))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-40809i, -14112i, global0.e.b, -2147483647i), vec4<i32>(6070i, global0.c.b, 39223i, 0i)), vec4<i32>(global0.d.x, 2147483647i, 14012i, -7173i) ^ vec4<i32>(global0.e.b, 30544i, 23035i, global0.c.b)), func_1(Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(global0.e.c, 26u)], global0.e.d), -2147483647i, Struct_1(vec3<bool>(global0.c.a.x, global0.a, global0.e.a.x), global0.e.b, 94674u, global1[_wgslsmith_index_u32(global0.b, 26u)])), _wgslsmith_sub_u32(u_input.a, 1415u)).e), 65160u).b, Struct_1(select(vec3<bool>(global0.e.a.x, true, global0.a && false), !vec3<bool>(true, global0.a, false), func_1(Struct_2(vec2<f32>(643f, -2387f), global0.e.b, Struct_1(global0.e.a, 22483i, 114028u, global1[_wgslsmith_index_u32(32122u, 26u)])), 1u).e.a), ~global0.d.x >> (global0.e.c % 32u), u_input.b, -1250f), global0.d, global0.e);
    global1 = array<f32, 26>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 26u)] + _wgslsmith_f_op_f32(855f * _wgslsmith_f_op_f32(min(831f, -401f)))) + func_1(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-345f, global0.e.d) * vec2<f32>(global0.c.d, 528f)), ~(-3627i), Struct_1(global0.e.a, global0.e.b, global0.c.c, -968f)), select(countOneBits(u_input.c.x), max(1u, 24448u), true)).c.d), global0.c.d, -1230f);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_i32(~global0.e.b, countOneBits(13448i)), func_1(Struct_2(var_1.xz, global0.e.b, Struct_1(vec3<bool>(global0.e.a.x, global0.c.a.x, false), 31980i, u_input.b, -1793f)), 59271u).c.b, global0.a) ^ ~(i32(-1i) * -global0.e.b));
}

