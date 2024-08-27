struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec2<bool>(true, false), true, vec2<u32>(22282u, 0u), 26368i, Struct_1(1i, 1i, vec2<u32>(6358u, 0u), true, vec4<i32>(-1i, 52939i, 45122i, -67838i))), Struct_2(vec2<bool>(false, true), false, vec2<u32>(4294967295u, 4294967295u), 37170i, Struct_1(1i, 8572i, vec2<u32>(42484u, 1u), false, vec4<i32>(-1618i, -28000i, 29443i, 48958i))), Struct_2(vec2<bool>(true, false), false, vec2<u32>(37125u, 70698u), 0i, Struct_1(-17972i, 2147483647i, vec2<u32>(0u, 0u), false, vec4<i32>(31828i, i32(-2147483648), -9483i, i32(-2147483648)))), Struct_2(vec2<bool>(true, false), true, vec2<u32>(4294967295u, 21302u), 1i, Struct_1(i32(-2147483648), i32(-2147483648), vec2<u32>(4294967295u, 0u), true, vec4<i32>(-1i, 1i, -12995i, -1i))), Struct_2(vec2<bool>(false, true), true, vec2<u32>(58545u, 22376u), 2147483647i, Struct_1(-62639i, 0i, vec2<u32>(1961u, 56316u), false, vec4<i32>(18118i, -65467i, 0i, 56349i))), Struct_2(vec2<bool>(true, true), true, vec2<u32>(1763u, 4294967295u), 1i, Struct_1(14021i, -52850i, vec2<u32>(1u, 9246u), false, vec4<i32>(-31771i, i32(-2147483648), -12927i, 1i))), Struct_2(vec2<bool>(true, false), false, vec2<u32>(25695u, 25337u), -28959i, Struct_1(i32(-2147483648), -60408i, vec2<u32>(1u, 1u), true, vec4<i32>(2147483647i, -36384i, -26466i, 9005i))), Struct_2(vec2<bool>(false, false), false, vec2<u32>(1u, 4294967295u), 1i, Struct_1(-29045i, -1i, vec2<u32>(45035u, 40177u), false, vec4<i32>(16492i, 5370i, -25732i, 1i))), Struct_2(vec2<bool>(true, false), true, vec2<u32>(92764u, 4294967295u), 2147483647i, Struct_1(-1i, -39246i, vec2<u32>(4294967295u, 50630u), true, vec4<i32>(-13551i, -8249i, 0i, 2147483647i))), Struct_2(vec2<bool>(true, false), false, vec2<u32>(76672u, 1u), 0i, Struct_1(2147483647i, 46088i, vec2<u32>(4294967295u, 0u), true, vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 458i))), Struct_2(vec2<bool>(false, false), false, vec2<u32>(29134u, 9188u), -1i, Struct_1(-20242i, 1i, vec2<u32>(4294967295u, 51590u), true, vec4<i32>(35018i, -1i, 2147483647i, 53857i))), Struct_2(vec2<bool>(false, false), false, vec2<u32>(4294967295u, 24865u), -16005i, Struct_1(2147483647i, 0i, vec2<u32>(0u, 40215u), true, vec4<i32>(-38328i, -15983i, -1i, -28678i))), Struct_2(vec2<bool>(false, false), true, vec2<u32>(7382u, 39883u), -45435i, Struct_1(85453i, i32(-2147483648), vec2<u32>(38215u, 0u), true, vec4<i32>(-715i, -12891i, -30759i, 1i))), Struct_2(vec2<bool>(true, false), true, vec2<u32>(1u, 4294967295u), -1i, Struct_1(37054i, 2147483647i, vec2<u32>(70365u, 1u), true, vec4<i32>(21746i, -9434i, 46073i, 69909i))));

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_4) -> bool {
    let var_0 = 7052i;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(696f, arg_0.c) * vec2<f32>(arg_0.a, arg_0.a))), vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))), false && all(vec3<bool>(false, true, arg_0.b.b.d)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -1000f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.c, arg_0.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.a))))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_2.x, arg_0.a)), _wgslsmith_f_op_f32(trunc(628f)))), arg_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1656f, 877f) * _wgslsmith_f_op_f32(exp2(var_2.x)))))), 0u);
    let var_4 = arg_0.b.b;
    return !(select(2147483647i, countOneBits(~841i), arg_0.b.b.e.x < _wgslsmith_mod_i32(var_0, var_4.b)) >= -48540i);
}

fn func_1() -> vec2<i32> {
    global1 = u_input.b.xz;
    var var_0 = Struct_1(-21199i, abs(-2147483647i), vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a, u_input.a)) << (3733u % 32u)), u_input.a), true, firstLeadingBit(_wgslsmith_div_vec4_i32(u_input.b ^ vec4<i32>(-27652i, -2147483647i, u_input.b.x, global1.x), _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(-4867i, -1i, global1.x, u_input.b.x)))) << (~vec4<u32>(55565u, ~u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a))) % vec4<u32>(32u)));
    var var_1 = all(!(!vec3<bool>(var_0.d, true, var_0.d | var_0.d)));
    var_1 = false;
    var var_2 = any(vec3<bool>(!select(any(vec4<bool>(true, var_0.d, true, var_0.d)), func_2(Struct_4(-1128f, Struct_3(-2147483647i, Struct_1(31620i, 47466i, vec2<u32>(var_0.c.x, var_0.c.x), var_0.d, vec4<i32>(u_input.b.x, 1i, global1.x, var_0.a))), 272f, u_input.a)), true), all(select(vec3<bool>(false, var_0.d, true), vec3<bool>(var_0.d, false, true), false)) | false, true));
    return -(_wgslsmith_div_vec2_i32(firstTrailingBit(reverseBits(var_0.e.xx)), u_input.b.zz) | reverseBits(vec2<i32>(var_0.e.x, i32(-1i) * -31855i)));
}

fn func_3() -> u32 {
    global1 = countOneBits(u_input.b.xw);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -1819f))))));
    let var_1 = ~((0u ^ ~_wgslsmith_sub_u32(u_input.a, 4294967295u)) << (((u_input.a ^ ~u_input.a) | 67054u) % 32u));
    let var_2 = Struct_3(~(-global1.x), Struct_1(-18160i, -(i32(-1i) * -2147483647i), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, 1u)), countOneBits(vec2<u32>(4294967295u, var_1))), !(_wgslsmith_f_op_f32(f32(-1f) * -1693f) <= _wgslsmith_f_op_f32(floor(var_0))), u_input.b));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 + var_0))), var_2, 1000f, ~25238u);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 14>();
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-683f, -2444f, 922f, 1183f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(778f, -138f, 1279f, 1306f)))))));
    var var_1 = u_input.b.x;
    var_1 = 1i;
    global1 = func_1();
    let var_2 = (global1.x >= global1.x) || true;
    let var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)), ~vec2<u32>(u_input.a, 4294967295u)), func_3(), _wgslsmith_mult_u32(u_input.a | u_input.a, 4294967295u)), countOneBits(~(vec4<u32>(47807u, 1u, u_input.a, 40187u) | vec4<u32>(u_input.a, 1u, u_input.a, 1u))), vec4<bool>(all(vec2<bool>(true, var_2)), (var_2 == false) && false, var_2, false)), 57103u, 4294967295u);
}

