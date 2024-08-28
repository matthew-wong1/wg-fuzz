struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(1382f, 769f, -203f), vec3<f32>(-822f, 526f, -1302f), vec3<f32>(-205f, -753f, -1647f), vec3<f32>(720f, 1454f, 671f), vec3<f32>(1451f, 762f, 412f), vec3<f32>(2113f, 660f, 443f), vec3<f32>(-532f, 828f, 161f), vec3<f32>(1684f, -370f, 317f), vec3<f32>(639f, -2181f, -1556f), vec3<f32>(2076f, 843f, -303f), vec3<f32>(-905f, -327f, 700f), vec3<f32>(-759f, 634f, 413f), vec3<f32>(-635f, -267f, 365f), vec3<f32>(-765f, 1418f, 245f), vec3<f32>(-1304f, -1307f, 1537f), vec3<f32>(-1406f, -1033f, 457f), vec3<f32>(1105f, 1103f, 716f), vec3<f32>(113f, -393f, 1000f), vec3<f32>(1000f, 1951f, 976f), vec3<f32>(-791f, -1316f, -1380f), vec3<f32>(-1146f, 253f, -479f), vec3<f32>(-265f, 1265f, 1266f), vec3<f32>(121f, -366f, 129f), vec3<f32>(-1778f, 855f, -311f), vec3<f32>(-1479f, 384f, 792f), vec3<f32>(-222f, -1000f, 1471f));

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_1(vec3<bool>(false, true, true), -2867f, false, 34660u, vec3<bool>(false, true, false))), Struct_3(Struct_1(vec3<bool>(true, true, false), -145f, false, 45488u, vec3<bool>(false, true, true))), Struct_3(Struct_1(vec3<bool>(true, true, false), 153f, true, 17777u, vec3<bool>(true, true, true))), Struct_3(Struct_1(vec3<bool>(true, true, false), -169f, false, 35111u, vec3<bool>(false, true, false))), Struct_3(Struct_1(vec3<bool>(true, false, false), -1000f, true, 36778u, vec3<bool>(false, false, false))), Struct_3(Struct_1(vec3<bool>(false, true, false), 360f, false, 48454u, vec3<bool>(true, true, false))), Struct_3(Struct_1(vec3<bool>(false, false, false), -818f, true, 1u, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec3<bool>(true, true, false), -627f, true, 48821u, vec3<bool>(false, false, false))), Struct_3(Struct_1(vec3<bool>(true, true, true), 795f, false, 8647u, vec3<bool>(false, false, true))), Struct_3(Struct_1(vec3<bool>(true, false, true), -997f, true, 51896u, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec3<bool>(false, true, true), -1408f, true, 0u, vec3<bool>(true, true, true))), Struct_3(Struct_1(vec3<bool>(true, true, false), 1123f, false, 0u, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec3<bool>(true, false, true), 705f, false, 15825u, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec3<bool>(false, true, false), 1085f, false, 0u, vec3<bool>(false, false, true))), Struct_3(Struct_1(vec3<bool>(true, true, false), -334f, true, 4294967295u, vec3<bool>(false, false, false))), Struct_3(Struct_1(vec3<bool>(true, false, false), 108f, true, 4294967295u, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec3<bool>(false, true, true), 1543f, true, 4294967295u, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec3<bool>(true, false, false), -415f, false, 87923u, vec3<bool>(false, true, true))), Struct_3(Struct_1(vec3<bool>(true, false, true), 852f, true, 0u, vec3<bool>(false, false, true))), Struct_3(Struct_1(vec3<bool>(false, false, true), -183f, false, 69206u, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec3<bool>(false, false, false), 354f, false, 23667u, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec3<bool>(false, true, true), -1261f, false, 13992u, vec3<bool>(false, true, true))), Struct_3(Struct_1(vec3<bool>(true, false, true), 1000f, true, 4294967295u, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec3<bool>(false, true, false), -145f, true, 70567u, vec3<bool>(true, false, true))), Struct_3(Struct_1(vec3<bool>(true, true, true), 431f, false, 27245u, vec3<bool>(true, true, false))), Struct_3(Struct_1(vec3<bool>(true, true, false), 768f, false, 4294967295u, vec3<bool>(false, false, true))), Struct_3(Struct_1(vec3<bool>(false, true, false), 1033f, false, 4294967295u, vec3<bool>(false, false, true))), Struct_3(Struct_1(vec3<bool>(true, true, true), -130f, false, 1u, vec3<bool>(false, false, true))), Struct_3(Struct_1(vec3<bool>(false, false, true), -334f, true, 4294967295u, vec3<bool>(false, false, true))), Struct_3(Struct_1(vec3<bool>(false, true, true), 1623f, true, 1u, vec3<bool>(false, false, false))), Struct_3(Struct_1(vec3<bool>(true, true, false), -1220f, true, 69857u, vec3<bool>(true, true, true))));

var<private> global3: array<Struct_2, 24>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_mod_u32(arg_1.d, 110800u);
    let var_1 = -319f;
    let var_2 = all(vec2<bool>(true, true));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0.a.b, var_1), _wgslsmith_f_op_f32(361f + _wgslsmith_f_op_f32(-arg_0.a.b)), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) * _wgslsmith_f_op_f32(var_1 + arg_0.a.b)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(var_3, _wgslsmith_f_op_vec4_f32(vec4<f32>(-140f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-446f, var_1)))), -1271f, 1855f) - var_3), select(select(select(!vec4<bool>(arg_0.a.c, false, false, arg_0.a.e.x), !vec4<bool>(false, arg_0.a.a.x, false, var_2), all(arg_1.e.xx)), select(vec4<bool>(arg_0.a.c, true, arg_1.a.x, false), !vec4<bool>(arg_1.e.x, true, var_2, true), vec4<bool>(false, var_2, false, false)), -19474i > u_input.d.x), !select(!vec4<bool>(var_2, true, var_2, true), select(vec4<bool>(arg_0.a.e.x, false, arg_1.c, true), vec4<bool>(false, true, arg_0.a.c, arg_1.e.x), vec4<bool>(arg_1.e.x, true, arg_1.e.x, true)), arg_1.e.x), !((0i <= arg_2) | (true != arg_0.a.a.x)))));
    return 2147483647i;
}

fn func_2() -> bool {
    var var_0 = countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(func_3(Struct_3(Struct_1(vec3<bool>(true, true, true), 587f, true, u_input.a.x, vec3<bool>(true, true, true))), Struct_1(vec3<bool>(false, true, false), 799f, true, 1u, vec3<bool>(true, true, false)), u_input.d.x), func_3(Struct_3(Struct_1(vec3<bool>(false, false, true), -632f, true, u_input.b.x, vec3<bool>(false, true, true))), Struct_1(vec3<bool>(true, false, false), -790f, true, 4294967295u, vec3<bool>(true, true, false)), -3474i), -1i, min(2147483647i, 0i)), vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, u_input.c)), -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.d.x, u_input.c), vec4<i32>(-2147483647i, 22320i, 59532i, -9088i), vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, -1i)), vec4<i32>(2147483647i, -19527i, 22870i, -2147483647i) | vec4<i32>(u_input.c, u_input.d.x, u_input.c, u_input.d.x), vec4<bool>(false, true, true, false))));
    var_0 = -min(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(23129i, u_input.c, var_0.x, -97319i), vec4<i32>(-1i, u_input.d.x, u_input.c, u_input.c))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, u_input.d.x, var_0.x), vec4<i32>(2147483647i, 17078i, 20981i, 145i)))) >> ((_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(global1.x, _wgslsmith_clamp_u32(global1.x, global1.x, 103023u), _wgslsmith_clamp_u32(u_input.b.x, global1.x, global1.x), 19316u)) >> (vec4<u32>(global1.x, 8782u, abs(~0u), ~firstTrailingBit(global1.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    global2 = array<Struct_3, 31>();
    global0 = array<vec3<f32>, 26>();
    return !(!select(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true));
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(vec3<bool>(!any(vec2<bool>(false, false)), func_2(), all(vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -312f), 1384f)), false, 23740u, !vec3<bool>(false, true, any(vec4<bool>(true, true, true, false)))));
    global1 = u_input.a.zyw;
    var var_1 = global2[_wgslsmith_index_u32(33345u, 31u)];
    global3 = array<Struct_2, 24>();
    var_0 = Struct_2(var_1.a);
    return _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32((min(vec4<i32>(0i, 17359i, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.d.x)) << (~u_input.a % vec4<u32>(32u))) << (u_input.a % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, -1i, u_input.d.x)) ^ countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(20280i, 39669i, 18337i, u_input.c), vec4<i32>(-50659i, u_input.c, 29469i, u_input.d.x)))), vec4<i32>(1i, 1i, 1i, 1i) | ~vec4<i32>(5922i, u_input.c, ~u_input.c, 2147483647i << (var_0.a.d % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -(~u_input.d.x);
    var var_1 = reverseBits(vec4<i32>(~_wgslsmith_clamp_i32(-var_0, _wgslsmith_mult_i32(var_0, 0i), _wgslsmith_mod_i32(-31108i, u_input.c)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-44079i, u_input.c, 0i) >> (u_input.a.zyy % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0, u_input.c), -vec3<i32>(-53934i, var_0, -58513i))), firstLeadingBit(27372i), 902i));
    let var_2 = ~(~0i);
    var_1 = func_1();
    global3 = array<Struct_2, 24>();
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1454f, 1f)), _wgslsmith_f_op_f32(trunc(534f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1118f)), _wgslsmith_div_f32(-829f, 295f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2038f, 1649f)) - vec2<f32>(1f, 1f)))))));
    var var_4 = countOneBits(~_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 40282u, 4294967295u, 90323u), u_input.a), select(~vec4<u32>(global1.x, u_input.b.x, u_input.b.x, 4294967295u), select(vec4<u32>(16812u, global1.x, 80227u, u_input.e), vec4<u32>(u_input.a.x, global1.x, global1.x, global1.x), vec4<bool>(false, true, false, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, reverseBits(u_input.a)), _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -31987i, var_0, 50403i) << (u_input.a % vec4<u32>(32u)), select(vec4<i32>(-1i, -2147483647i, var_1.x, -2147483647i), vec4<i32>(var_2, -1i, var_1.x, -2147483647i), true)), ~(-vec4<i32>(2147483647i, var_0, var_0, -38394i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.x, var_3.x), _wgslsmith_f_op_f32(1611f * var_3.x)))));
}

