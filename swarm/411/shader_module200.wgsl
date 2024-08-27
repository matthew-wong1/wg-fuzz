struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(false, Struct_1(vec4<f32>(1408f, 164f, 381f, 572f)), vec4<bool>(true, false, true, false)), Struct_2(true, Struct_1(vec4<f32>(522f, 161f, 1300f, -305f)), vec4<bool>(false, true, true, false)), Struct_2(false, Struct_1(vec4<f32>(-1865f, -843f, -1288f, 838f)), vec4<bool>(true, false, false, true)), Struct_2(true, Struct_1(vec4<f32>(-1608f, -347f, -1000f, 1237f)), vec4<bool>(false, true, true, false)), Struct_2(false, Struct_1(vec4<f32>(263f, 190f, 156f, -444f)), vec4<bool>(true, false, false, true)), Struct_2(false, Struct_1(vec4<f32>(1000f, 1000f, -234f, -469f)), vec4<bool>(false, true, true, false)), Struct_2(true, Struct_1(vec4<f32>(303f, 673f, -422f, -208f)), vec4<bool>(true, false, true, true)), Struct_2(true, Struct_1(vec4<f32>(-1090f, 683f, 1235f, 707f)), vec4<bool>(true, false, true, false)), Struct_2(true, Struct_1(vec4<f32>(-752f, -492f, -1000f, 732f)), vec4<bool>(true, false, false, false)), Struct_2(true, Struct_1(vec4<f32>(-1969f, -1000f, 414f, 364f)), vec4<bool>(false, false, false, false)), Struct_2(false, Struct_1(vec4<f32>(190f, -513f, 353f, -270f)), vec4<bool>(true, true, false, true)), Struct_2(false, Struct_1(vec4<f32>(670f, -1443f, -895f, 2004f)), vec4<bool>(false, false, true, false)), Struct_2(true, Struct_1(vec4<f32>(-1000f, -977f, 1000f, -1000f)), vec4<bool>(false, false, false, true)), Struct_2(false, Struct_1(vec4<f32>(1327f, -1195f, 563f, -1756f)), vec4<bool>(true, false, true, false)), Struct_2(true, Struct_1(vec4<f32>(188f, 894f, 622f, 848f)), vec4<bool>(false, false, false, true)), Struct_2(false, Struct_1(vec4<f32>(-802f, 681f, -2060f, -178f)), vec4<bool>(false, true, true, true)), Struct_2(false, Struct_1(vec4<f32>(613f, -825f, 431f, 700f)), vec4<bool>(false, false, false, true)), Struct_2(false, Struct_1(vec4<f32>(-2295f, 456f, -233f, -704f)), vec4<bool>(false, false, true, false)), Struct_2(false, Struct_1(vec4<f32>(-1038f, -994f, 293f, 1473f)), vec4<bool>(false, false, false, true)), Struct_2(true, Struct_1(vec4<f32>(-1529f, -528f, -1215f, -1056f)), vec4<bool>(false, true, true, true)), Struct_2(true, Struct_1(vec4<f32>(-1000f, -1281f, -1722f, 318f)), vec4<bool>(true, false, false, false)), Struct_2(true, Struct_1(vec4<f32>(975f, -996f, 3824f, 568f)), vec4<bool>(true, false, false, false)), Struct_2(false, Struct_1(vec4<f32>(125f, -150f, -101f, 499f)), vec4<bool>(true, true, true, true)), Struct_2(false, Struct_1(vec4<f32>(1938f, -1000f, -402f, 612f)), vec4<bool>(true, false, false, true)));

var<private> global1: i32;

var<private> global2: array<Struct_4, 24>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1732f, _wgslsmith_f_op_f32(trunc(167f)), -483f, 1f))));
    return arg_1;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<bool>) -> vec4<u32> {
    global0 = array<Struct_2, 24>();
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 6920i), vec2<i32>(u_input.d.x ^ _wgslsmith_dot_vec2_i32(u_input.e << (u_input.c % vec2<u32>(32u)), firstTrailingBit(u_input.b)), -max(u_input.e.x, u_input.e.x)));
    let var_0 = Struct_3(func_3(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, u_input.c.x) >> (vec3<u32>(7931u, 4294967295u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)), false), u_input.c.x, ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(11467u, 52112u, u_input.c.x) | vec3<u32>(30982u, u_input.c.x, 0u), ~vec3<u32>(41919u, u_input.c.x, u_input.c.x)), 4294967295u, all(select(arg_3.yzy, arg_3.xzz, vec3<bool>(arg_2, arg_3.x, arg_2)))), Struct_2(!(!any(arg_3)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(min(-831f, arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(-206f, arg_1.x)))), select(vec4<bool>(true, any(vec4<bool>(arg_3.x, arg_2, false, true)), u_input.d.x > u_input.a, arg_3.x), select(!vec4<bool>(arg_3.x, true, false, true), select(arg_3, vec4<bool>(arg_3.x, arg_2, arg_3.x, arg_2), arg_3), select(vec4<bool>(true, arg_3.x, false, arg_3.x), vec4<bool>(false, false, arg_3.x, true), arg_2)), true)));
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    return ~max(vec4<u32>(var_0.c, reverseBits(19514u), 0u, _wgslsmith_add_u32(var_0.c, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, var_0.c, u_input.c.x), vec4<u32>(41697u, var_0.c, var_0.b, 39076u) & vec4<u32>(4294967295u, var_0.b, var_0.c, 2989u))) << (abs(firstTrailingBit(vec4<u32>(~u_input.c.x, ~var_0.b, _wgslsmith_add_u32(var_0.c, u_input.c.x), var_0.c))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_vec4_u32(~(~func_2(1226f, vec4<f32>(451f, -240f, -226f, 109f), true, vec4<bool>(true, false, false, true))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 44601u, 25853u, u_input.c.x), vec4<u32>(arg_1.x, 18527u, 36880u, arg_1.x)), ~vec4<u32>(18655u, u_input.c.x, 184878u, arg_1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, u_input.c.x, 20715u, 45634u) << (vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 27293u, arg_2, arg_2), vec4<u32>(4294967295u, 1u, 291u, arg_2)))));
    global2 = array<Struct_4, 24>();
    global1 = 0i;
    let var_1 = ~func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-600f - _wgslsmith_f_op_f32(1280f - -414f)), _wgslsmith_f_op_f32(f32(-1f) * -1456f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-437f + -1202f), _wgslsmith_f_op_f32(f32(-1f) * -1735f), _wgslsmith_f_op_f32(-1043f - -674f), -1454f) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1053f, 1100f, -907f, 1242f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1253f, -644f, 686f, 432f))))), any(vec4<bool>(true, true, true, true)), !vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, true)).x;
    var var_2 = 421f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(278f + -1309f))) - 1000f));
    return Struct_2(true | all(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -821f), -1000f, -1041f, _wgslsmith_f_op_f32(109f - -273f))))), !vec4<bool>(all(vec2<bool>(true, false)), false, false, true));
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.d.b.a.x)), -1338f)) + _wgslsmith_f_op_f32(step(arg_0.d.b.a.x, 1983f)))));
    var var_2 = -(vec2<i32>(var_0 | 1i, select(~(-1i), max(0i, u_input.d.x), all(arg_0.d.c))) & _wgslsmith_add_vec2_i32(-vec2<i32>(37953i, 333i), -_wgslsmith_sub_vec2_i32(u_input.d, u_input.e)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d.b.a.x), -757f, _wgslsmith_f_op_f32(max(arg_0.d.b.a.x, arg_0.d.b.a.x)), -1287f), arg_0.d.b.a) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d.b.a - vec4<f32>(-1267f, arg_0.d.b.a.x, 176f, 222f)) - _wgslsmith_f_op_vec4_f32(-arg_0.d.b.a))))));
    global2 = array<Struct_4, 24>();
    return ~(~(~u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_3(func_4(Struct_3(all(vec4<bool>(false, false, false, false)), u_input.c.x, 3153u, func_1(vec3<i32>(u_input.b.x, u_input.b.x, 1699i), vec3<u32>(u_input.c.x, u_input.c.x, 29627u), 0u))) > countOneBits(firstTrailingBit(24001u)), _wgslsmith_add_u32(~(u_input.c.x & u_input.c.x) | 1u, firstTrailingBit(u_input.c.x & u_input.c.x) ^ u_input.c.x), ~(u_input.c.x & _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c), u_input.c.x | 36897u)), func_1(~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.d.x, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.d.x, u_input.d.x), vec3<i32>(-2147483647i, 1i, u_input.e.x))), ~(~vec3<u32>(u_input.c.x, u_input.c.x, 55971u)), _wgslsmith_div_u32(select(abs(u_input.c.x), 0u, all(vec4<bool>(false, true, true, true))), abs(u_input.c.x ^ u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.d.x, 5979i, u_input.b.x) >> (vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(0i, u_input.e.x, 49937i, -4250i)), _wgslsmith_div_vec4_i32(vec4<i32>(-28232i, 1i, u_input.b.x, u_input.e.x), abs(vec4<i32>(2147483647i, 30531i, u_input.e.x, 2147483647i)))) << (~countOneBits(vec4<u32>(u_input.c.x, var_1.b, 21006u, u_input.c.x) & vec4<u32>(u_input.c.x, 55598u, var_1.b, 63918u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.b.a.x, -154f, 143f, var_1.d.b.a.x)))))));
}

