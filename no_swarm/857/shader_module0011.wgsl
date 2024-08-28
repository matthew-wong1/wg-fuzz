struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec3<bool>(false, false, false), vec3<u32>(28683u, 20508u, 21505u)), Struct_3(vec3<bool>(false, true, false), vec3<u32>(1650u, 0u, 1863u)), Struct_3(vec3<bool>(false, true, true), vec3<u32>(18537u, 2716u, 51958u)), Struct_3(vec3<bool>(false, true, true), vec3<u32>(0u, 14136u, 24533u)), Struct_3(vec3<bool>(true, false, false), vec3<u32>(4294967295u, 0u, 41930u)), Struct_3(vec3<bool>(true, true, false), vec3<u32>(89655u, 0u, 0u)), Struct_3(vec3<bool>(true, true, false), vec3<u32>(91178u, 4294967295u, 44415u)), Struct_3(vec3<bool>(false, false, false), vec3<u32>(1u, 21134u, 35425u)), Struct_3(vec3<bool>(true, true, false), vec3<u32>(1u, 0u, 28690u)), Struct_3(vec3<bool>(true, true, false), vec3<u32>(41679u, 66582u, 14263u)), Struct_3(vec3<bool>(true, false, false), vec3<u32>(4294967295u, 26382u, 39454u)), Struct_3(vec3<bool>(false, true, true), vec3<u32>(37562u, 20383u, 1u)), Struct_3(vec3<bool>(true, false, false), vec3<u32>(43216u, 0u, 0u)), Struct_3(vec3<bool>(false, false, false), vec3<u32>(21248u, 55304u, 4294967295u)), Struct_3(vec3<bool>(false, false, true), vec3<u32>(12546u, 1u, 4294967295u)), Struct_3(vec3<bool>(false, true, true), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_3(vec3<bool>(true, true, true), vec3<u32>(0u, 36145u, 0u)), Struct_3(vec3<bool>(false, false, false), vec3<u32>(1u, 14823u, 20201u)), Struct_3(vec3<bool>(false, false, true), vec3<u32>(0u, 0u, 4294967295u)), Struct_3(vec3<bool>(true, true, false), vec3<u32>(39507u, 0u, 30932u)), Struct_3(vec3<bool>(true, false, false), vec3<u32>(77037u, 0u, 0u)), Struct_3(vec3<bool>(false, true, true), vec3<u32>(25719u, 3064u, 9132u)), Struct_3(vec3<bool>(false, true, true), vec3<u32>(1u, 68916u, 76004u)), Struct_3(vec3<bool>(true, true, true), vec3<u32>(10110u, 1u, 0u)), Struct_3(vec3<bool>(true, false, true), vec3<u32>(4294967295u, 23056u, 17957u)), Struct_3(vec3<bool>(true, true, true), vec3<u32>(19343u, 0u, 1300u)), Struct_3(vec3<bool>(false, true, false), vec3<u32>(9969u, 5878u, 40857u)), Struct_3(vec3<bool>(false, true, false), vec3<u32>(4294967295u, 49769u, 988u)));

var<private> global2: Struct_3;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, false, true), 4294967295u, vec3<f32>(-700f, -1196f, 954f), vec4<u32>(22558u, 65156u, 0u, 68869u));

var<private> global4: Struct_2 = Struct_2(vec3<bool>(false, false, false), 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1332f + global3.c.x), global3.c.x, _wgslsmith_f_op_f32(-global3.c.x), -437f) + vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, 167f, -522f, -2288f)))))), global3.c.x, Struct_2(global4.a, select(_wgslsmith_sub_u32(firstLeadingBit(4294967295u), global3.b), global4.b, _wgslsmith_div_f32(-1067f, global3.c.x) == global3.c.x)), Struct_2(!select(select(vec3<bool>(global4.a.x, true, global3.a.x), global4.a, global3.a), !vec3<bool>(global4.a.x, global2.a.x, global3.a.x), global2.a.x), global2.b.x), Struct_1(vec3<bool>(true, global3.a.x, !all(vec4<bool>(global4.a.x, false, false, true))), ~(~global3.d.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.c.x, global3.c.x, global3.c.x)))))), vec4<u32>(~_wgslsmith_div_u32(global3.b, 1u), ~_wgslsmith_clamp_u32(global3.b, global4.b, 4294967295u), firstLeadingBit(21639u >> (0u % 32u)), (1u >> (global4.b % 32u)) | global4.b)));
    let var_1 = ~_wgslsmith_sub_u32(4294967295u, abs(var_0.e.b));
    var var_2 = ~u_input.e.x;
    var var_3 = vec3<u32>(0u, _wgslsmith_dot_vec3_u32(firstLeadingBit(~(vec3<u32>(global3.d.x, 1u, var_0.e.d.x) << (vec3<u32>(0u, global2.b.x, var_0.e.d.x) % vec3<u32>(32u)))), vec3<u32>(~66961u, ~var_1, _wgslsmith_mult_u32(global3.b, 1u)) & vec3<u32>(var_1, 59144u, global2.b.x)), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 27458u, var_0.e.d.x, global3.d.x) & var_0.e.d, var_0.e.d, vec4<bool>(false, global2.a.x, global3.a.x, true)), firstTrailingBit(vec4<u32>(72276u, 1484u, var_1, 0u)) | var_0.e.d));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: bool) -> u32 {
    return func_3();
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f))), 363f));
    var var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(func_2(u_input.b.x, global4.a.x), func_3()), vec2<u32>(_wgslsmith_add_u32(4294967295u, global3.d.x), global2.b.x & arg_2.b.x)) << (_wgslsmith_mod_u32(2773u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(global4.b, 0u, global3.b), vec3<u32>(4294967295u, 1u, 4294967295u) & vec3<u32>(1u, arg_2.b.x, arg_0.b.x), false), vec3<u32>(6053u, _wgslsmith_dot_vec4_u32(vec4<u32>(56457u, arg_2.b.x, 1u, 9395u), vec4<u32>(0u, global4.b, 55330u, global4.b)), _wgslsmith_mult_u32(76687u, global4.b)))) % 32u);
    let var_2 = any(select(vec3<bool>(arg_1.x, (global4.b | global4.b) > ~4294967295u, arg_1.x), vec3<bool>(false, all(!global2.a.yx), arg_2.a.x), !arg_2.a.x));
    var var_3 = false == (u_input.b.x <= -1i);
    global4 = Struct_2(global2.a, abs(12526u));
    return Struct_2(vec3<bool>(any(!vec4<bool>(var_2, var_2, true, false)), !global3.a.x, true), 119477u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec4_i32(-u_input.a, vec4<i32>(-12187i, u_input.a.x, ~_wgslsmith_div_i32(0i >> (0u % 32u), _wgslsmith_mult_i32(u_input.c.x, u_input.d.x)), _wgslsmith_div_i32(2134i, -38593i)));
    global4 = arg_1;
    global3 = Struct_1(!vec3<bool>(arg_1.b >= 60422u, arg_0.a.x, false), func_3(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global3.c))), global3.d);
    var var_1 = -7683i;
    let var_2 = global3.c.yx;
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>) -> u32 {
    global2 = func_4(func_4(Struct_3(vec3<bool>(!global3.a.x, func_4(global1[_wgslsmith_index_u32(34369u, 28u)], Struct_2(vec3<bool>(global4.a.x, global3.a.x, arg_0.a.x), global3.b)).a.x, all(vec4<bool>(true, global4.a.x, false, global2.a.x))), select(~vec3<u32>(7059u, global2.b.x, 0u), abs(global3.d.wzx), arg_0.a)), func_1(Struct_3(func_4(arg_0, Struct_2(arg_0.a, 0u)).a, _wgslsmith_add_vec3_u32(global3.d.yww, global2.b)), global2.a, func_4(global1[_wgslsmith_index_u32(global4.b >> (41381u % 32u), 28u)], func_1(Struct_3(vec3<bool>(global4.a.x, arg_0.a.x, false), global2.b), vec3<bool>(global3.a.x, global3.a.x, global2.a.x), Struct_3(global2.a, global2.b))))), func_1(func_4(Struct_3(func_4(global1[_wgslsmith_index_u32(66900u, 28u)], Struct_2(global2.a, arg_0.b.x)).a, vec3<u32>(5932u, 30802u, global2.b.x)), func_1(arg_0, vec3<bool>(arg_0.a.x, true, arg_0.a.x), Struct_3(global4.a, global3.d.wwy))), !select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), func_4(Struct_3(vec3<bool>(global3.a.x, false, true), vec3<u32>(global4.b, global4.b, 1u)), Struct_2(vec3<bool>(global3.a.x, global3.a.x, global3.a.x), 10447u)).a, global3.a.x), func_4(global1[_wgslsmith_index_u32(firstTrailingBit(global4.b), 28u)], func_1(func_4(Struct_3(global2.a, global3.d.zyx), Struct_2(vec3<bool>(false, global3.a.x, true), global2.b.x)), vec3<bool>(global2.a.x, false, true), Struct_3(vec3<bool>(arg_0.a.x, false, true), vec3<u32>(25988u, global3.b, global2.b.x))))));
    global4 = func_1(func_4(func_4(func_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.b.x, 4980u), 28u)], Struct_2(arg_0.a, 1u)), func_1(func_4(global1[_wgslsmith_index_u32(87102u, 28u)], Struct_2(vec3<bool>(false, global3.a.x, true), 1u)), func_4(arg_0, Struct_2(global4.a, global4.b)).a, func_4(Struct_3(global3.a, vec3<u32>(global3.b, 4294967295u, 1u)), Struct_2(vec3<bool>(global3.a.x, global4.a.x, arg_0.a.x), global4.b)))), func_1(func_4(Struct_3(arg_0.a, global2.b), Struct_2(vec3<bool>(arg_0.a.x, global2.a.x, false), 4294967295u)), !(!arg_0.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.d.x, 1u, 56859u, global4.b), global3.d), 28u)])), vec3<bool>(func_1(func_4(func_4(Struct_3(arg_0.a, global3.d.xwx), Struct_2(global2.a, global4.b)), Struct_2(global4.a, arg_0.b.x)), global2.a, func_4(global1[_wgslsmith_index_u32(1u, 28u)], func_1(global1[_wgslsmith_index_u32(1u, 28u)], vec3<bool>(true, true, global2.a.x), Struct_3(arg_0.a, global2.b)))).a.x, _wgslsmith_f_op_f32(-1740f + _wgslsmith_div_f32(-567f, global3.c.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.c.x)) - -259f), true), arg_0);
    global4 = Struct_2(global3.a, ~(~abs(41083u)));
    global3 = Struct_1(arg_0.a, arg_0.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 646f)), -1074f)), _wgslsmith_clamp_vec4_u32(min(~(global3.d | global3.d), global3.d), vec4<u32>(countOneBits(_wgslsmith_sub_u32(23460u, global4.b)), countOneBits(arg_0.b.x), abs(global2.b.x), _wgslsmith_sub_u32(1u, firstLeadingBit(arg_0.b.x))), vec4<u32>(func_4(Struct_3(arg_0.a, arg_0.b), Struct_2(vec3<bool>(false, global3.a.x, global3.a.x), global3.d.x)).b.x, ~global4.b, global2.b.x, _wgslsmith_dot_vec2_u32(global2.b.zy, vec2<u32>(arg_0.b.x, global2.b.x)))));
    let var_0 = vec3<u32>(~1u, ~firstTrailingBit(0u), func_4(Struct_3(!vec3<bool>(global3.a.x, true, global3.a.x), ~(~global3.d.wxy)), func_1(Struct_3(arg_0.a, _wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_0.b.x, 12240u), vec3<u32>(arg_0.b.x, global4.b, global2.b.x))), arg_0.a, global1[_wgslsmith_index_u32(global4.b, 28u)])).b.x);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(reverseBits(~vec4<u32>(var_0.x, 30417u, 26380u, 52058u))), ~(~global3.d)), reverseBits(~global3.d ^ vec4<u32>(func_2(arg_1.x, global4.a.x), global4.b | global3.b, ~global3.d.x, 48395u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(func_5(func_4(global1[_wgslsmith_index_u32(global4.b, 28u)], func_1(global1[_wgslsmith_index_u32(0u, 28u)], !global3.a, global1[_wgslsmith_index_u32(1u, 28u)])), vec4<i32>(34245i, -13712i << (_wgslsmith_div_u32(3457u, 53074u) % 32u), u_input.a.x, 1i) | ~_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -1i, u_input.e.x, u_input.d.x)), u_input.a)), 28u)];
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, -701f, -2778f, _wgslsmith_f_op_f32(select(892f, global3.c.x, true))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1937f, 1092f, -1173f, global3.c.x) + vec4<f32>(global3.c.x, global3.c.x, global3.c.x, 1129f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, global3.c.x, -1000f, 651f) - vec4<f32>(-859f, -901f, 376f, global3.c.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.c.x))), func_1(func_4(func_4(Struct_3(vec3<bool>(false, false, global2.a.x), global3.d.yzy), Struct_2(global3.a, global4.b)), func_1(func_4(Struct_3(vec3<bool>(global3.a.x, true, global3.a.x), global3.d.yxy), Struct_2(global4.a, global4.b)), global2.a, func_4(Struct_3(vec3<bool>(global4.a.x, global2.a.x, global4.a.x), global3.d.zzx), Struct_2(vec3<bool>(global4.a.x, global4.a.x, true), global3.d.x)))), vec3<bool>(all(select(global3.a.xz, vec2<bool>(global2.a.x, global3.a.x), global4.a.xx)), global3.a.x, global4.a.x), func_4(func_4(Struct_3(vec3<bool>(global2.a.x, false, global4.a.x), global3.d.wwx), Struct_2(global4.a, global3.d.x)), Struct_2(!vec3<bool>(false, global4.a.x, false), ~global2.b.x))), func_1(func_4(func_4(func_4(Struct_3(vec3<bool>(global4.a.x, global3.a.x, true), vec3<u32>(22303u, 0u, 0u)), Struct_2(global3.a, 4294967295u)), func_1(global1[_wgslsmith_index_u32(global4.b, 28u)], global3.a, global1[_wgslsmith_index_u32(1u, 28u)])), func_1(func_4(global1[_wgslsmith_index_u32(global3.b, 28u)], Struct_2(vec3<bool>(global4.a.x, false, global2.a.x), global2.b.x)), select(vec3<bool>(false, global3.a.x, global2.a.x), global2.a, false), func_4(Struct_3(vec3<bool>(global2.a.x, true, true), global3.d.wwz), Struct_2(vec3<bool>(true, true, true), global4.b)))), !select(global3.a, global2.a, func_1(global1[_wgslsmith_index_u32(global2.b.x, 28u)], global3.a, global1[_wgslsmith_index_u32(global3.d.x, 28u)]).a), func_4(func_4(Struct_3(vec3<bool>(global2.a.x, true, false), vec3<u32>(global3.d.x, 17715u, 4294967295u)), Struct_2(vec3<bool>(false, global2.a.x, true), global4.b)), Struct_2(func_4(global1[_wgslsmith_index_u32(1u, 28u)], Struct_2(global3.a, global3.b)).a, ~1u))), Struct_1(func_4(func_4(global1[_wgslsmith_index_u32(~global3.d.x, 28u)], func_1(Struct_3(vec3<bool>(global2.a.x, true, global2.a.x), global3.d.yxw), vec3<bool>(global2.a.x, global3.a.x, global3.a.x), global1[_wgslsmith_index_u32(global4.b, 28u)])), func_1(func_4(Struct_3(global2.a, global2.b), Struct_2(global4.a, 0u)), vec3<bool>(global4.a.x, false, global4.a.x), Struct_3(global4.a, vec3<u32>(global3.d.x, global3.d.x, global3.d.x)))).a, abs(global2.b.x), _wgslsmith_f_op_vec3_f32(global3.c * vec3<f32>(-1472f, global3.c.x, -297f)), ~(~global3.d) >> (global3.d % vec4<u32>(32u))));
    global3 = Struct_1(select(vec3<bool>(true, false, global3.a.x), func_4(func_4(global1[_wgslsmith_index_u32(global4.b << (0u % 32u), 28u)], func_1(Struct_3(vec3<bool>(var_0.e.a.x, true, true), global3.d.wzz), vec3<bool>(true, global3.a.x, false), Struct_3(global2.a, vec3<u32>(14684u, 37258u, 33889u)))), func_1(func_4(global1[_wgslsmith_index_u32(1u, 28u)], var_0.c), vec3<bool>(false, var_0.d.a.x, false), Struct_3(global2.a, global2.b))).a, (false || global2.a.x) != (global4.a.x & true)), select(_wgslsmith_mult_u32(30994u, firstLeadingBit(var_0.d.b)), 1u, true || global4.a.x) ^ global4.b, _wgslsmith_f_op_vec3_f32(abs(var_0.a.xxz)), ~vec4<u32>(_wgslsmith_clamp_u32(1u, global3.b, global2.b.x), 4294967295u, var_0.d.b << (global4.b % 32u), global3.d.x) & vec4<u32>(var_0.d.b, 0u, min(~27782u, global2.b.x >> (var_0.d.b % 32u)), global3.b));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_sub_u32(~reverseBits(global2.b.x), ~(~18996u)), min(max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, u_input.b.x, u_input.b.x), min(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i))), vec3<i32>(~(-2147483647i), -u_input.d.x, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-43567i, _wgslsmith_mod_i32(u_input.e.x, u_input.e.x), u_input.e.x), _wgslsmith_sub_vec3_i32(u_input.a.yzy >> (vec3<u32>(var_0.d.b, global4.b, 15504u) % vec3<u32>(32u)), vec3<i32>(u_input.e.x, 7914i, 0i) << (var_0.e.d.zyx % vec3<u32>(32u))))));
}

