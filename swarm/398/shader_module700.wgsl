struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<f32>(2013f, -2261f, 958f, 440f), vec4<bool>(false, false, true, false), vec3<bool>(true, false, true), 35127i, -32482i), Struct_1(vec4<f32>(410f, -1300f, -182f, -467f), vec4<bool>(true, true, false, false), vec3<bool>(true, true, true), 37363i, -11223i), Struct_1(vec4<f32>(-1069f, 1264f, 1000f, 742f), vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), 35736i, 9531i), Struct_1(vec4<f32>(1317f, -1403f, -240f, -459f), vec4<bool>(true, true, true, false), vec3<bool>(true, false, true), -41190i, -1i), Struct_1(vec4<f32>(244f, -442f, 147f, 978f), vec4<bool>(false, true, false, false), vec3<bool>(false, false, true), -1i, -22172i), Struct_1(vec4<f32>(447f, 227f, -1000f, -762f), vec4<bool>(false, false, true, true), vec3<bool>(true, true, false), -6671i, 9538i), Struct_1(vec4<f32>(639f, -936f, 619f, -2531f), vec4<bool>(false, false, true, true), vec3<bool>(true, false, false), 1i, -30188i), Struct_1(vec4<f32>(-1556f, 1269f, 479f, 1130f), vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), 28124i, i32(-2147483648)), Struct_1(vec4<f32>(253f, 1539f, -420f, -105f), vec4<bool>(false, false, false, false), vec3<bool>(false, true, false), -45758i, -54619i), Struct_1(vec4<f32>(-1210f, -1000f, 908f, -2510f), vec4<bool>(true, false, true, false), vec3<bool>(false, true, false), 36730i, -45653i), Struct_1(vec4<f32>(425f, 588f, 1000f, -1062f), vec4<bool>(true, false, false, true), vec3<bool>(true, false, true), 2147483647i, -60768i), Struct_1(vec4<f32>(-1307f, 457f, 1345f, -467f), vec4<bool>(true, false, false, false), vec3<bool>(false, false, false), 0i, 5729i), Struct_1(vec4<f32>(1000f, -337f, 601f, 1057f), vec4<bool>(true, true, false, false), vec3<bool>(false, false, true), 9178i, i32(-2147483648)), Struct_1(vec4<f32>(-1351f, 1255f, -983f, 494f), vec4<bool>(true, true, true, false), vec3<bool>(false, true, false), 0i, -62511i), Struct_1(vec4<f32>(474f, -210f, -1000f, 375f), vec4<bool>(false, true, false, false), vec3<bool>(false, true, false), 2147483647i, -1i), Struct_1(vec4<f32>(853f, -805f, 363f, -1000f), vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), -16544i, -13421i), Struct_1(vec4<f32>(-629f, -657f, -1000f, 2399f), vec4<bool>(false, false, true, false), vec3<bool>(true, false, true), 0i, 65735i), Struct_1(vec4<f32>(1436f, -181f, -2090f, -1000f), vec4<bool>(false, true, false, true), vec3<bool>(true, true, false), 38605i, 16527i), Struct_1(vec4<f32>(-1000f, -1337f, 1068f, 1361f), vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), 2147483647i, i32(-2147483648)), Struct_1(vec4<f32>(-1916f, 949f, 953f, 302f), vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), 1i, -20382i), Struct_1(vec4<f32>(-1000f, -544f, -1709f, 492f), vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), -1i, -1i), Struct_1(vec4<f32>(-370f, -991f, 796f, 860f), vec4<bool>(false, false, true, true), vec3<bool>(false, true, false), 46842i, 30572i), Struct_1(vec4<f32>(-205f, -335f, 696f, -182f), vec4<bool>(true, true, false, true), vec3<bool>(false, true, false), i32(-2147483648), i32(-2147483648)), Struct_1(vec4<f32>(-312f, -719f, 2841f, 1026f), vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), 43415i, -52219i), Struct_1(vec4<f32>(-397f, -1492f, 1537f, 1985f), vec4<bool>(false, false, true, false), vec3<bool>(false, true, false), 24708i, 1i), Struct_1(vec4<f32>(-642f, -306f, -230f, 492f), vec4<bool>(false, true, false, false), vec3<bool>(false, true, false), -13927i, -287i), Struct_1(vec4<f32>(628f, 2095f, -1229f, -1210f), vec4<bool>(false, true, false, false), vec3<bool>(true, true, false), 22955i, 0i), Struct_1(vec4<f32>(-1052f, 962f, 1427f, -186f), vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), i32(-2147483648), -13234i), Struct_1(vec4<f32>(1647f, -1000f, 1033f, 1000f), vec4<bool>(true, false, false, true), vec3<bool>(false, false, true), 0i, 1i), Struct_1(vec4<f32>(1727f, 1000f, -1668f, -1040f), vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), 0i, 59309i));

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<f32>(570f, -765f, -571f, 128f), vec4<bool>(false, true, false, true), vec3<bool>(true, true, false), 2147483647i, 6153i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = firstLeadingBit(max(~(~(~vec4<u32>(1u, 1u, u_input.a, 1u))), countOneBits(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) ^ (abs(vec4<u32>(0u, u_input.a, 29023u, 4294967295u)) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1411f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(284f + -135f), _wgslsmith_f_op_f32(-1859f * 1293f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(466f)) * _wgslsmith_f_op_f32(abs(291f))), _wgslsmith_f_op_f32(f32(-1f) * -1455f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1336f, 305f, -1145f, 823f), vec4<f32>(785f, -1508f, 402f, 416f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, -1055f, 1137f, -1776f))))), vec4<bool>(!(!all(vec2<bool>(false, true))), true, true, true), !vec3<bool>(true, true, all(vec3<bool>(true, false, true))), firstTrailingBit(51906i), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.c, 46743i, 34232i, -1i)), _wgslsmith_div_vec4_i32(min(vec4<i32>(-1245i, u_input.d, u_input.d, u_input.d), vec4<i32>(u_input.c, 0i, u_input.b, 1i)) | vec4<i32>(u_input.d, u_input.c, -2147483647i, u_input.c), vec4<i32>(0i, u_input.d << (var_0.x % 32u), 0i ^ u_input.b, _wgslsmith_mult_i32(-42703i, -48356i)))));
    var var_2 = var_1.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-523f, -823f), _wgslsmith_f_op_vec2_f32(-var_1.a.wz))))) * var_1.a.wx);
    let var_4 = var_1.a.x;
    return var_1.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<Struct_1, 28>();
    let var_0 = vec2<bool>(false, select(true, true, any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)))));
    global1 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1f), -204f, _wgslsmith_f_op_f32(func_3()))));
    let var_2 = firstTrailingBit(reverseBits(min(u_input.d >> (arg_0.x % 32u), abs(1i) & -u_input.c)));
    return global1[_wgslsmith_index_u32(51021u, 30u)];
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 1>();
    global1 = array<Struct_1, 30>();
    let var_0 = -(~u_input.e.yy);
    global1 = array<Struct_1, 30>();
    let var_1 = -vec4<i32>(_wgslsmith_mult_i32(var_0.x, u_input.b), -11262i, -_wgslsmith_mod_i32(-672i, -2147483647i), 1i);
    return func_2(vec2<u32>(~(u_input.a ^ u_input.a), (61556u << (_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a) % 32u)) ^ u_input.a), vec4<i32>(-min(~var_0.x, var_0.x >> (13993u % 32u)), var_0.x, -1i, -41335i));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = func_2(reverseBits(vec2<u32>(~max(u_input.a, u_input.a), ~5214u)), vec4<i32>(arg_1.d, 1i, countOneBits(2147483647i), countOneBits(reverseBits(2147483647i)) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(-26862i, arg_1.d, arg_1.d, -2147483647i), vec4<i32>(u_input.e.x, arg_1.e, 45262i, arg_1.d) | vec4<i32>(-29367i, u_input.d, u_input.b, u_input.d))));
    return vec4<bool>(all(vec3<bool>(func_2(abs(vec2<u32>(35671u, 0u)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.e, -4490i, u_input.c, var_0.d), vec4<i32>(1i, 14266i, arg_1.e, arg_1.d))).c.x, true, true)), true, arg_1.c.x, all(vec2<bool>(var_0.b.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(any(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true))), true, true));
    var var_1 = vec2<bool>(all(func_4(_wgslsmith_f_op_f32(-434f - _wgslsmith_div_f32(1000f, 666f)), func_1())), _wgslsmith_mult_i32(firstLeadingBit(-u_input.b), _wgslsmith_mult_i32(select(2147483647i, 2147483647i, false), firstLeadingBit(25531i))) == func_1().e);
    let var_2 = !vec2<bool>(!(!var_1.x), var_1.x);
    var var_3 = global0[_wgslsmith_index_u32(31497u, 28u)];
    var var_4 = abs(~select(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 33125u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 25299u))), ~vec4<u32>(u_input.a, 33645u, 0u, 12043u), var_3.b));
    let var_5 = global2[_wgslsmith_index_u32(~(~u_input.a), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_5.d), _wgslsmith_div_i32(-firstLeadingBit(i32(-1i) * -2004i), ~func_1().e), 369f, u_input.a);
}

