struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-563f, -835f, 1592f, 1098f), vec4<f32>(-413f, -1125f, 1054f, 938f), vec4<f32>(1243f, 1340f, -127f, 425f), vec4<f32>(581f, -1159f, 1188f, 145f), vec4<f32>(-1444f, 1012f, 701f, 1000f), vec4<f32>(1794f, -2367f, 177f, 1588f), vec4<f32>(-1387f, 869f, 678f, -186f), vec4<f32>(-198f, -2123f, 580f, 354f), vec4<f32>(-198f, -1186f, -776f, -925f), vec4<f32>(-1035f, 854f, 2200f, 1350f), vec4<f32>(-566f, 610f, 937f, -1723f), vec4<f32>(-1242f, 1030f, 414f, 2882f), vec4<f32>(944f, 1445f, 324f, -132f), vec4<f32>(-229f, -810f, -1626f, 1375f), vec4<f32>(-1037f, 2387f, -1000f, -1000f));

var<private> global1: array<i32, 25>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> i32 {
    var var_0 = Struct_2(select(select(select(vec2<bool>(true, arg_0), !vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), false)), vec2<bool>(true, true), true), select(vec2<bool>(!arg_0, 1i != arg_1.x), !select(vec2<bool>(true, true), vec2<bool>(false, true), arg_0), select(!vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), false)), all(vec3<bool>(false != arg_0, true, any(vec2<bool>(arg_0, false))))), Struct_1(u_input.b, _wgslsmith_dot_vec3_i32(arg_1.xzw, ~arg_1.wxy) | ~countOneBits(2147483647i)), vec3<u32>(u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 28945u, u_input.b, 4294967295u), vec4<u32>(u_input.b, 64796u, 20827u, 0u)), ~vec4<u32>(u_input.b, 4294967295u, 20270u, 4294967295u)), u_input.b), abs(firstLeadingBit(firstLeadingBit(1u)))), Struct_1(~_wgslsmith_div_u32(u_input.b, 0u) | 12092u, i32(-1i) * -13825i), Struct_1(_wgslsmith_sub_u32(u_input.b << (1u % 32u), ~u_input.b) >> (u_input.b % 32u), 16963i));
    var_0 = Struct_2(select(!select(var_0.a, var_0.a, any(vec3<bool>(false, true, var_0.a.x))), select(select(select(vec2<bool>(var_0.a.x, arg_0), vec2<bool>(arg_0, var_0.a.x), vec2<bool>(var_0.a.x, var_0.a.x)), var_0.a, false), var_0.a, select(vec2<bool>(arg_0, var_0.a.x), var_0.a, select(vec2<bool>(false, false), var_0.a, var_0.a))), true), Struct_1(_wgslsmith_mod_u32(~27189u, ~77790u), ~44211i), ~max(~var_0.c, ~max(vec3<u32>(u_input.b, u_input.b, 25235u), var_0.c)), var_0.d, var_0.d);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(644f, 1522f, 995f), vec3<f32>(-764f, -812f, 367f))), vec3<f32>(-458f, 546f, -484f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1410f, -1000f, 337f))))), _wgslsmith_div_vec3_f32(vec3<f32>(2569f, -435f, 1f), vec3<f32>(-911f, _wgslsmith_f_op_f32(-210f + 104f), _wgslsmith_div_f32(-1295f, 235f)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-260f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1522f + 1394f)), any(!vec3<bool>(var_0.a.x, arg_0, false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-312f, -692f)), 1135f)), -290f), !vec3<bool>(true, arg_0, arg_0)));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(487f, -918f, -1136f)))) + vec3<f32>(-238f, -1201f, -181f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(exp2(var_1.x))), var_1.x, 1650f))));
    let var_3 = Struct_4(vec3<u32>(~(~(~65358u)), ~4294967295u, ~(~(~32871u))), Struct_2(vec2<bool>(false, var_0.a.x), var_0.b, select(~vec3<u32>(u_input.b, 0u, var_0.e.a), vec3<u32>(min(var_0.e.a, u_input.b), 1u, 1u), vec3<bool>(var_0.a.x, true, select(true, arg_0, var_0.a.x))), var_0.d, Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b, 48465u), u_input.b, var_0.b.a), _wgslsmith_mod_i32(1i, 21085i))), (~(vec3<i32>(u_input.a.x, -7019i, u_input.a.x) & vec3<i32>(31872i, 10715i, global1[_wgslsmith_index_u32(var_0.d.a, 25u)])) & select(reverseBits(arg_1.ywz), reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(29400u, 25u)], -40386i, -9056i)), select(vec3<bool>(arg_0, arg_0, var_0.a.x), vec3<bool>(true, false, false), false))) | _wgslsmith_clamp_vec3_i32(select(-arg_1.zxz, arg_1.yww, true), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, var_0.b.b), vec3<i32>(-10759i, -2147483647i, 2147483647i)), arg_1.zxz), Struct_1(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(4294967295u, ~u_input.b)), select(var_0.b.b, var_0.d.b, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, arg_0, true))))));
    return 69341i;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = arg_1.b.e;
    global0 = array<vec4<f32>, 15>();
    var var_1 = Struct_4(vec3<u32>(arg_2.e.a, abs(arg_1.a.x), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(var_0.a, u_input.b, 6352u, var_0.a)), abs(vec4<u32>(24794u, 1u, arg_1.a.x, 57781u)))), arg_2, vec3<i32>(3867i, arg_1.c.x, -2147483647i) | select(arg_3.xxy, ~arg_1.c ^ ~vec3<i32>(var_0.b, var_0.b, global1[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<bool>(true | arg_2.a.x, !arg_1.b.a.x, true)), arg_2.d);
    let var_2 = max(~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(0u, u_input.b, 0u, 0u)) ^ vec4<u32>(0u, 11105u, 27698u, 4294967295u), vec4<u32>(arg_2.b.a, 1u, arg_1.d.a, arg_1.d.a) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1.d.a, arg_2.c.x, var_1.d.a), vec4<u32>(var_0.a, var_0.a, 30334u, var_1.a.x)), vec4<u32>(4294967295u, 1u, ~arg_2.d.a, _wgslsmith_mult_u32(var_1.a.x, 48242u))), vec4<u32>(_wgslsmith_clamp_u32(var_1.d.a, ~(~1u), reverseBits(arg_1.d.a)), abs(~0u), 4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, var_0.a, ~var_1.a.x), arg_1.b.c.x)));
    let var_3 = Struct_4(var_2.yxy & _wgslsmith_div_vec3_u32(arg_2.c, firstTrailingBit(select(vec3<u32>(4294967295u, u_input.b, 11844u), vec3<u32>(0u, 0u, var_2.x), vec3<bool>(arg_1.b.a.x, true, arg_1.b.a.x)))), Struct_2(select(select(vec2<bool>(false, arg_1.b.a.x), !vec2<bool>(arg_2.a.x, arg_1.b.a.x), false || var_1.b.a.x), !(!arg_1.b.a), arg_2.a), arg_2.e, abs(vec3<u32>(firstTrailingBit(var_1.d.a), _wgslsmith_mod_u32(arg_1.d.a, 17189u), 12873u)), Struct_1(23437u, -75089i), arg_1.d), -firstTrailingBit(vec3<i32>(arg_1.c.x, -13427i, var_1.c.x)) << (var_1.a % vec3<u32>(32u)), arg_2.b);
    return abs(vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, 62059u), var_3.d.a), abs(_wgslsmith_clamp_u32(1u, ~1u, var_3.b.b.a ^ var_0.a)), ~var_0.a, 11379u));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> vec3<u32> {
    global1 = array<i32, 25>();
    global0 = array<vec4<f32>, 15>();
    global1 = array<i32, 25>();
    var var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.a, 27295u, u_input.b, arg_1.a), reverseBits(vec4<u32>(0u, arg_0.a.x, arg_0.d.a, 12679u))), (vec4<u32>(arg_0.b.b.a, arg_1.a, u_input.b, 84860u) & vec4<u32>(arg_0.d.a, 4294967295u, arg_1.a, arg_0.d.a)) >> (vec4<u32>(u_input.b, 4294967295u, u_input.b, arg_0.d.a) % vec4<u32>(32u))), func_4(-1238f, Struct_4(_wgslsmith_add_vec3_u32(arg_0.a, arg_0.a), arg_0.b, arg_0.c >> (arg_0.a % vec3<u32>(32u)), Struct_1(1619u, -2147483647i)), Struct_2(!arg_0.b.a, Struct_1(arg_1.a, 4046i), vec3<u32>(19773u, 48274u, 1u), Struct_1(24585u, global1[_wgslsmith_index_u32(1u, 25u)]), arg_1), vec4<i32>(~arg_1.b, u_input.a.x, arg_0.b.b.b, func_3(true, vec4<i32>(u_input.a.x, 33623i, 0i, -1i))))), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~arg_0.a.x, max(u_input.b, 14103u), _wgslsmith_add_u32(arg_1.a, arg_1.a)), reverseBits(vec4<u32>(arg_1.a, 29468u, 15931u, u_input.b) ^ vec4<u32>(0u, 3882u, u_input.b, 43941u))), min(firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 35992u, 0u), vec4<u32>(u_input.b, 85735u, 1u, arg_1.a))), select(vec4<u32>(arg_1.a, arg_0.a.x ^ arg_0.a.x, min(11964u, 28836u), firstTrailingBit(1u)), vec4<u32>(arg_1.a, 48994u, arg_1.a, 0u), all(select(vec2<bool>(true, arg_0.b.a.x), vec2<bool>(arg_0.b.a.x, false), arg_0.b.a.x)))));
    global1 = array<i32, 25>();
    return vec3<u32>(u_input.b, u_input.b, arg_0.d.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec3<f32>) -> u32 {
    let var_0 = ~(countOneBits(abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 16635u, 4294967295u), func_2(Struct_4(arg_1.wyx, Struct_2(vec2<bool>(arg_2.b, arg_2.b), Struct_1(28184u, 13082i), vec3<u32>(arg_1.x, 0u, 1u), Struct_1(arg_1.x, 12606i), Struct_1(u_input.b, u_input.a.x)), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 25u)], u_input.a.x, u_input.a.x), Struct_1(arg_1.x, 14771i)), Struct_1(43005u, global1[_wgslsmith_index_u32(arg_1.x, 25u)]))) % vec3<u32>(32u))) & reverseBits(vec3<i32>(u_input.a.x, abs(0i) >> (_wgslsmith_dot_vec2_u32(arg_1.xx, arg_1.wz) % 32u), u_input.a.x));
    global0 = array<vec4<f32>, 15>();
    global1 = array<i32, 25>();
    global0 = array<vec4<f32>, 15>();
    global1 = array<i32, 25>();
    return max(~(~(~arg_1.x)), ~_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec4_u32(firstLeadingBit(arg_1), min(arg_1, vec4<u32>(u_input.b, arg_1.x, 1u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(u_input.b >> ((func_1(vec2<f32>(-1000f, 542f), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), Struct_3(vec2<f32>(-711f, -1049f), false), vec3<f32>(-1059f, -2374f, 487f)) << (max(1u, 1u) % 32u)) % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4294967295u, 15u)]);
    let var_2 = Struct_2(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(select(true, false, false), false, true)), select(vec2<bool>(u_input.a.x > -2609i, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), true)), true || any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47830u, 11171u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.b, 46691u)), u_input.b), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 25u)] >> (~u_input.b % 32u), reverseBits(_wgslsmith_div_i32(32781i, global1[_wgslsmith_index_u32(u_input.b, 25u)])))), max(vec3<u32>(func_4(var_1.x, Struct_4(vec3<u32>(0u, u_input.b, 1u), Struct_2(vec2<bool>(false, false), Struct_1(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<u32>(u_input.b, u_input.b, u_input.b), Struct_1(41229u, 16124i), Struct_1(0u, u_input.a.x)), vec3<i32>(2147483647i, -2147483647i, global1[_wgslsmith_index_u32(u_input.b, 25u)]), Struct_1(u_input.b, global1[_wgslsmith_index_u32(24083u, 25u)])), Struct_2(vec2<bool>(false, true), Struct_1(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<u32>(1u, 16335u, u_input.b), Struct_1(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 25u)]), Struct_1(41574u, global1[_wgslsmith_index_u32(u_input.b, 25u)])), firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 25u)], u_input.a.x, global1[_wgslsmith_index_u32(u_input.b, 25u)], -75650i))).x, u_input.b, 1u), vec3<u32>(u_input.b, u_input.b, _wgslsmith_mod_u32(max(4294967295u, u_input.b), max(21611u, 1u)))), Struct_1(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 25u)]), Struct_1(u_input.b, ~0i));
    let var_3 = _wgslsmith_div_u32(u_input.b, ~(var_2.b.a ^ (_wgslsmith_div_u32(var_2.e.a, 1u) & min(var_2.d.a, 1u))));
    var var_4 = _wgslsmith_f_op_f32(select(-501f, var_1.x, var_2.a.x));
    let var_5 = var_1.x;
    var_4 = -1025f;
    let var_6 = var_2.d;
    global0 = array<vec4<f32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_1.x)));
}

