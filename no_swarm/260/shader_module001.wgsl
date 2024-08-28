struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(1556f, -751f, 928f, -760f), vec4<f32>(1247f, -1000f, -1288f, 147f), vec4<f32>(-128f, 1188f, -663f, -1000f), vec4<f32>(278f, 1251f, -864f, -640f), vec4<f32>(1000f, -203f, 1560f, -834f), vec4<f32>(155f, -268f, -528f, -1835f), vec4<f32>(-445f, 275f, 914f, 429f), vec4<f32>(-1173f, 664f, 1550f, -1565f), vec4<f32>(-920f, -530f, 992f, 1000f), vec4<f32>(-587f, 1029f, 1111f, 843f), vec4<f32>(-1474f, 216f, -1512f, 417f), vec4<f32>(200f, -786f, 1162f, 1861f), vec4<f32>(298f, 309f, 942f, 1417f), vec4<f32>(1008f, -188f, -1000f, -224f), vec4<f32>(-2486f, -1000f, 286f, 1129f), vec4<f32>(-260f, -1379f, -182f, 1512f), vec4<f32>(-670f, 1000f, -1168f, 384f));

var<private> global1: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(0u, 1u), vec2<u32>(36983u, 4294967295u), vec2<u32>(47797u, 19637u), vec2<u32>(39893u, 1u));

var<private> global2: vec3<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    var var_0 = select(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, -2147483647i, -2147483647i)), ~vec3<i32>(0i, 29667i, arg_1.a.x)), ~(~(~vec3<i32>(arg_0.x, 59695i, arg_1.a.x) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -1i, 49115i), vec3<i32>(-12965i, u_input.a, -18415i)))), vec3<bool>(!any(vec4<bool>(false, true, true, true)) != all(vec2<bool>(true, true)), true, select(true, true, true) && any(vec4<bool>(true, true, true, true))));
    let var_1 = !select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), !select(vec2<bool>(false, true), vec2<bool>(true, false), select(false, false, false)), false);
    let var_2 = arg_1;
    global1 = array<vec2<u32>, 4>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1592f, 833f) + 2017f), ~abs(max(vec4<i32>(arg_0.x, var_2.a.x, var_2.a.x, var_0.x), vec4<i32>(3023i, -1i, 25182i, -1i)) ^ reverseBits(vec4<i32>(2147483647i, -34474i, -2147483647i, -35445i))), -28952i < abs(_wgslsmith_sub_i32(8617i, u_input.a) | (i32(-1i) * -1i)), 282f, vec4<bool>(var_1.x, abs(arg_2.x) >= _wgslsmith_div_u32(1u, min(arg_1.b, var_2.b)), select(var_1.x & !var_1.x, all(!vec4<bool>(true, var_1.x, false, false)), false), true));
    return u_input.b.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = min(u_input.a & (_wgslsmith_dot_vec2_i32(vec2<i32>(-7596i, u_input.a), -arg_1.a) | select(_wgslsmith_clamp_i32(arg_1.a.x, arg_1.a.x, arg_1.a.x), _wgslsmith_add_i32(33208i, arg_1.a.x), true)), 0i);
    let var_1 = -_wgslsmith_sub_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, -u_input.a), 0i);
    var var_2 = -2147483647i;
    let var_3 = func_3(_wgslsmith_add_vec2_i32(firstTrailingBit(reverseBits(vec2<i32>(var_1, 1i))), arg_1.a), Struct_2(arg_1.a, 44504u << (u_input.b.x % 32u)), vec4<u32>(32371u, 27996u, ~u_input.b.x, firstLeadingBit(~1u)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(floor(-296f)), vec4<i32>(35258i, 2147483647i, _wgslsmith_clamp_i32(~(~arg_1.a.x), arg_1.a.x, _wgslsmith_mult_i32(arg_1.a.x, u_input.a)), 0i), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1182f + _wgslsmith_div_f32(-409f, _wgslsmith_f_op_f32(f32(-1f) * -567f)))), !select(select(vec4<bool>(arg_2, arg_2, arg_2, true), !vec4<bool>(true, false, arg_2, arg_2), select(vec4<bool>(false, true, false, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2))), !select(vec4<bool>(arg_2, arg_2, true, true), vec4<bool>(true, arg_2, false, arg_2), false), vec4<bool>(2147483647i >= var_1, true, all(vec4<bool>(arg_2, arg_2, true, false)), arg_2)));
    return Struct_1(var_4.a, _wgslsmith_mod_vec4_i32(vec4<i32>(~arg_1.a.x, abs(u_input.a) & (-11734i & arg_1.a.x), _wgslsmith_dot_vec3_i32(var_4.b.xwx << (vec3<u32>(arg_0, 46926u, 31042u) % vec3<u32>(32u)), abs(var_4.b.wzx)), arg_1.a.x ^ var_1), vec4<i32>(~var_0, -40092i, abs(var_1 >> (global2.x % 32u)), reverseBits(-32333i))), arg_2, _wgslsmith_div_f32(var_4.d, -817f), var_4.e);
}

fn func_1() -> vec2<i32> {
    var var_0 = func_2(global2.x, Struct_2(_wgslsmith_div_vec2_i32(select(-vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(2940i, u_input.a), vec2<bool>(true, true)), vec2<i32>(0i, 0i)), 0u), false);
    global2 = u_input.b.xww;
    let var_1 = Struct_2(var_0.b.wx >> (_wgslsmith_mult_vec2_u32(~(~u_input.b.yw), _wgslsmith_div_vec2_u32(vec2<u32>(global2.x, global2.x) << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), global2.xy << (global1[_wgslsmith_index_u32(6028u, 4u)] % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_mod_u32(global2.x, global2.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.d, var_0.a)))))));
    global1 = array<vec2<u32>, 4>();
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, -50563i), ~1i), var_1.a, vec2<i32>(u_input.a | -5058i, _wgslsmith_add_i32(6650i, var_1.a.x)) | vec2<i32>(min(~var_0.b.x, -1i), abs(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x < (~(~countOneBits(4294967295u)) & global2.x);
    global0 = array<vec4<f32>, 17>();
    var var_1 = Struct_2(abs(func_1()), max(_wgslsmith_clamp_u32(abs(u_input.b.x), abs(4294967295u), func_3(vec2<i32>(2894i, -4088i), Struct_2(vec2<i32>(-42847i, 23662i), 18186u), vec4<u32>(15301u, u_input.b.x, 0u, 15163u))), 1u) << (47408u % 32u));
    let var_2 = global2.x;
    let var_3 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(abs(min(vec4<i32>(1i, var_1.a.x, 8178i, -4556i), vec4<i32>(1i, var_1.a.x, -1i, -1996i)) | vec4<i32>(var_1.a.x, 29736i, 0i, 2147483647i)), ~firstTrailingBit(vec4<i32>(var_1.a.x, -31687i, 18538i, u_input.a))), vec3<i32>(-60053i << (~select(4294967295u, u_input.b.x, false) % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(-544i, 2147483647i, var_1.a.x, u_input.a), -(vec4<i32>(9918i, var_1.a.x, 2147483647i, u_input.a) ^ vec4<i32>(2147483647i, -2147483647i, var_1.a.x, 2147483647i))), ~(i32(-1i) * -u_input.a)), ~vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, var_1.a.x), _wgslsmith_mult_i32(var_1.a.x, u_input.a), _wgslsmith_mod_i32(var_1.a.x, -2147483647i)), _wgslsmith_mod_i32(25008i, 28807i)), -_wgslsmith_add_vec4_i32(vec4<i32>(abs(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-2147483647i, var_1.a.x, var_1.a.x)), -20454i, ~u_input.a), -reverseBits(vec4<i32>(-1i, -2360i, -1i, var_1.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-262f, 1567f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-179f, -729f)))))));
}

