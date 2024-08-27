struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 28> = array<f32, 28>(-1880f, 705f, 687f, -398f, -524f, 708f, 180f, 524f, 425f, 627f, -447f, 316f, 1055f, 732f, -429f, 757f, 922f, 1276f, 979f, -1685f, 532f, -505f, -531f, -659f, -849f, -265f, -475f, 267f);

var<private> global2: bool;

var<private> global3: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(2147483647i, 24892i), vec2<i32>(-47045i, 1i), vec2<i32>(i32(-2147483648), -3604i), vec2<i32>(11135i, 0i), vec2<i32>(2147483647i, -29294i), vec2<i32>(48091i, 0i), vec2<i32>(70598i, 0i), vec2<i32>(-7015i, -16749i), vec2<i32>(23270i, -3927i), vec2<i32>(1i, 48567i), vec2<i32>(-77117i, 4912i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, -4926i), vec2<i32>(1114i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(0i, 1i), vec2<i32>(-11660i, -25201i), vec2<i32>(0i, -20310i));

var<private> global4: u32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    global4 = max(arg_3.x, arg_3.x);
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, max(select(u_input.d, u_input.c.x, arg_1) & _wgslsmith_dot_vec4_i32(vec4<i32>(59651i, -1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.c.x, u_input.b.x, u_input.a.x, 2147483647i)), ~(~1i))), vec2<i32>(35936i, max(-82887i >> (select(arg_3.x, arg_3.x, arg_2) % 32u), 1i)));
    global0 = select(select(!select(!vec3<bool>(true, arg_1, false), !vec3<bool>(arg_1, global0.x, true), arg_1 & false), !select(select(vec3<bool>(true, global0.x, false), vec3<bool>(true, false, global0.x), vec3<bool>(arg_1, false, false)), vec3<bool>(true, true, true), false), select(select(select(vec3<bool>(true, arg_1, true), vec3<bool>(global0.x, true, false), vec3<bool>(true, true, global0.x)), vec3<bool>(false, arg_1, arg_2), select(vec3<bool>(false, true, false), vec3<bool>(true, global0.x, true), vec3<bool>(arg_1, false, false))), !(!vec3<bool>(false, arg_2, arg_1)), select(select(vec3<bool>(false, false, arg_2), vec3<bool>(true, arg_1, false), false), !vec3<bool>(arg_1, false, true), false))), !select(!vec3<bool>(false, arg_1, false), !select(vec3<bool>(false, false, arg_2), vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, arg_1, global0.x)), !vec3<bool>(false, arg_2, true)), ~_wgslsmith_add_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 1i, u_input.a.x), vec4<i32>(u_input.a.x, 34890i, var_0.x, -25212i))) < _wgslsmith_sub_i32(min(0i >> (arg_3.x % 32u), _wgslsmith_add_i32(-1i, 4242i)), firstTrailingBit(32488i)));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 28u)])) + arg_0), 925f)), vec4<bool>(any(vec3<bool>(arg_1, false, true)) || false, global0.x, true & arg_2, true), false, all(vec4<bool>(false, arg_1, global0.x, any(vec4<bool>(arg_2, false, false, true)))), 0i), !(!any(vec4<bool>(arg_2, global0.x, arg_1, arg_1)) == ((true == arg_1) | global0.x)), !select(all(vec2<bool>(false, false)), true, select(true, global0.x, global0.x)));
    let var_2 = Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, global1[_wgslsmith_index_u32(arg_3.x, 28u)]) + vec2<f32>(var_1.a.a, 378f))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * var_1.a.a)));
}

fn func_2() -> u32 {
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1799f, global1[_wgslsmith_index_u32(~3486u, 28u)], _wgslsmith_f_op_f32(func_3(1941f, false, global0.x, vec2<u32>(4294967295u, 3097u)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(25819u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)])))))));
    global3 = array<vec2<i32>, 18>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1095f, 1000f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(82856u, 28u)] + var_0.a.x)) * var_0.a) - vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1140f * 152f)))));
    global4 = 4294967295u;
    global1 = array<f32, 28>();
    return 22905u;
}

fn func_1(arg_0: u32, arg_1: i32) -> bool {
    let var_0 = _wgslsmith_mult_u32(func_2(), select(4294967295u, _wgslsmith_mod_u32(arg_0, abs(_wgslsmith_mult_u32(0u, arg_0))), true));
    let var_1 = max(max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 1u, arg_0, 4294967295u) >> (vec4<u32>(41515u, 88456u, var_0, 532u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 114167u, 0u, 55246u), vec4<u32>(0u, 4294967295u, var_0, 896u))), ~arg_0, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 32106u, 29030u) | vec3<u32>(44514u, 15063u, arg_0), vec3<u32>(var_0, arg_0, arg_0) | vec3<u32>(0u, 0u, var_0))), vec4<u32>(~select(arg_0, 4294967295u, true), var_0, 32387u, _wgslsmith_mult_u32(arg_0, abs(1u)))), vec4<u32>(4294967295u, var_0, arg_0, abs(1u)));
    var var_2 = select(firstLeadingBit(_wgslsmith_div_vec2_i32(-(vec2<i32>(arg_1, u_input.b.x) | vec2<i32>(arg_1, 25680i)), min(firstTrailingBit(vec2<i32>(u_input.d, -1i)), global3[_wgslsmith_index_u32(func_2(), 18u)]))), ~(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), global3[_wgslsmith_index_u32(4294967295u, 18u)] | global3[_wgslsmith_index_u32(arg_0, 18u)]) << (var_1.yz % vec2<u32>(32u))), select(vec2<bool>(global0.x, 61317i <= reverseBits(arg_1)), global0.yx, all(vec2<bool>(global0.x, any(vec3<bool>(global0.x, false, true))))));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1061f)), _wgslsmith_f_op_f32(f32(-1f) * -1226f)), !vec4<bool>(!global0.x, global0.x, global0.x, false), true, false, _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(~(-53823i), 66272i)));
    global1 = array<f32, 28>();
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, global0.x, global0.x)))));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(-firstTrailingBit(abs(vec4<i32>(u_input.d, -1i, u_input.a.x, u_input.b.x))), vec4<i32>(i32(-1i) * -2147483647i, -firstTrailingBit(-2147483647i), u_input.d >> (4294967295u % 32u), _wgslsmith_mult_i32(-33049i, _wgslsmith_div_i32(15006i, u_input.c.x)))), -_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 24588i, u_input.a.x, u_input.d), vec4<i32>(0i, u_input.b.x, -12181i, -2147483647i)), vec4<i32>(33431i, 27680i, u_input.b.x, i32(-1i) * -1i)));
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(round(1282f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 28u)] * _wgslsmith_f_op_f32(-2061f + global1[_wgslsmith_index_u32(4294967295u, 28u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -3084f), 258f)))));
    let var_3 = !func_1(~(~4294967295u), firstLeadingBit(u_input.d));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(30654u, 28u)]), _wgslsmith_f_op_f32(var_2.a.x - -1941f))))), global1[_wgslsmith_index_u32(4294967295u, 28u)], 186f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(606f, 856f)), _wgslsmith_f_op_f32(-var_2.a.x), global1[_wgslsmith_index_u32(~63363u, 28u)], _wgslsmith_f_op_f32(-1648f - global1[_wgslsmith_index_u32(121604u, 28u)]))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(336f * _wgslsmith_f_op_f32(step(var_2.a.x, global1[_wgslsmith_index_u32(38218u, 28u)]))), var_2.a.x, -1025f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_clamp_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(25293i, 47664i), countOneBits(global3[_wgslsmith_index_u32(11176u, 18u)])), _wgslsmith_add_vec2_i32(vec2<i32>(-1070i, 1i), abs(-global3[_wgslsmith_index_u32(85030u, 18u)])), abs(firstTrailingBit(vec2<i32>(u_input.c.x, var_1.x)))), select(firstTrailingBit(~vec2<u32>(42885u, 0u)), vec2<u32>(0u, 12564u), !(!var_0.zz)), 0i);
}

