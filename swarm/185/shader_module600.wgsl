struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
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

var<private> global0: array<Struct_3, 23>;

var<private> global1: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-143f, -1669f, -763f), vec3<f32>(1000f, 509f, 456f), vec3<f32>(454f, 770f, -168f), vec3<f32>(759f, 1000f, 1000f), vec3<f32>(-1168f, -1029f, -1466f), vec3<f32>(347f, -361f, -1000f), vec3<f32>(-1642f, 674f, -377f), vec3<f32>(184f, 1000f, -1000f), vec3<f32>(-652f, -440f, -1428f), vec3<f32>(1468f, -247f, 2216f), vec3<f32>(168f, -158f, -905f), vec3<f32>(528f, -2120f, 1182f), vec3<f32>(1645f, -775f, -1179f), vec3<f32>(-1000f, -1502f, -1659f), vec3<f32>(-3494f, -1000f, 428f), vec3<f32>(-729f, 845f, 585f), vec3<f32>(-231f, 203f, -1977f), vec3<f32>(-1554f, -774f, 248f), vec3<f32>(-553f, 1253f, 1621f), vec3<f32>(-696f, 1032f, -1863f), vec3<f32>(161f, -641f, -395f), vec3<f32>(-1151f, 1121f, 853f), vec3<f32>(-1304f, 1550f, -200f), vec3<f32>(-323f, 351f, 546f), vec3<f32>(220f, -912f, -784f), vec3<f32>(1336f, 486f, 1000f), vec3<f32>(285f, -669f, -1139f));

var<private> global2: u32 = 38054u;

var<private> global3: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(1i, 2147483647i, -13703i, -22441i), vec4<i32>(-20253i, 0i, 33525i, -1i), vec4<i32>(1i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, -12699i, -6205i, 0i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -27412i), vec4<i32>(-1i, -1i, -26390i, i32(-2147483648)), vec4<i32>(-1i, -44227i, i32(-2147483648), -1i), vec4<i32>(-4777i, 1i, -21292i, 2147483647i), vec4<i32>(-19569i, 1i, -89503i, 22769i), vec4<i32>(4150i, 28962i, 1297i, 51494i), vec4<i32>(-1i, 0i, -49003i, 2147483647i), vec4<i32>(-70106i, -34250i, 16885i, i32(-2147483648)), vec4<i32>(7800i, i32(-2147483648), -103499i, -7649i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x << (0u % 32u), -u_input.a.x)) >> (1u % 32u);
    global2 = 57560u;
    global3 = array<vec4<i32>, 13>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(541f, 100f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-504f * 288f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1408f), _wgslsmith_f_op_f32(sign(-407f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-158f, 564f) * vec2<f32>(915f, 595f)), vec2<f32>(-2532f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-569f, -1151f))))));
    var var_2 = true;
    return select(vec2<bool>(false, all(vec4<bool>(true, false, false, true))), select(vec2<bool>(select(any(vec2<bool>(false, false)), true, true), 1u <= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 48244u), vec2<u32>(666u, 8469u))), select(vec2<bool>(any(vec2<bool>(true, false)), false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), true)), !all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    global0 = array<Struct_3, 23>();
    let var_0 = !(false & all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), func_3(), vec2<bool>(false, false))));
    let var_1 = vec3<bool>(false, var_0, true == !all(select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0)));
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(~vec4<u32>(70530u, 4294967295u, 0u, 4294967295u)))));
    global2 = var_2.a;
    return arg_1.x;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1625f, _wgslsmith_f_op_f32(floor(494f)), _wgslsmith_f_op_f32(max(-501f, 3469f)), _wgslsmith_f_op_f32(func_2(-1000f, vec4<f32>(-1249f, -487f, -2387f, -1070f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(187f, 284f, -907f, -147f) - vec4<f32>(-880f, -403f, -569f, -224f)), _wgslsmith_div_vec4_f32(vec4<f32>(-196f, 2265f, -211f, -729f), vec4<f32>(161f, -391f, -2030f, -532f)), arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(509f, -352f, -1419f, 1238f) * vec4<f32>(-321f, 1000f, -439f, 401f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1438f, -321f, -1436f, -237f))))));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.ww - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-251f, -127f)), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), var_0.xz)));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 27131u), vec2<u32>(1u, 52759u)), 7333u), abs(abs(vec2<u32>(0u, 0u))), arg_0), ~vec2<u32>(1u, 81692u)), ~(~(~(~5501u))));
    let var_4 = u_input.a.zz;
    return Struct_2(Struct_1(select(0u, 0u, false & all(vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(1u, 1u) | vec2<u32>(firstTrailingBit(51583u), ~firstTrailingBit(140277u >> (1u % 32u)));
    let var_1 = Struct_1(var_0.x);
    global0 = array<Struct_3, 23>();
    global2 = ~17202u;
    var var_2 = -vec4<i32>(0i, ~u_input.a.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(-u_input.a.x, ~2147483647i), -1i), u_input.a.x);
    global2 = var_1.a;
    var var_3 = abs(vec4<i32>(u_input.a.x, var_2.x, u_input.a.x, -(~u_input.a.x)));
    global1 = array<vec3<f32>, 27>();
    let var_4 = func_1(vec2<bool>(!(2190u < ~var_1.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(ceil(552f)), -684f), countOneBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_3.x, -2147483647i), vec3<i32>(0i, var_2.x, -2147483647i)), 1i)) | var_2.x, ~(_wgslsmith_clamp_u32(30604u ^ var_4.a.a, 25928u, var_4.a.a) | var_4.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec3<u32>(var_4.a.a, reverseBits(firstLeadingBit(1u)), firstTrailingBit(_wgslsmith_mod_u32(reverseBits(var_0.x), select(4294967295u, var_0.x, false)))));
}

