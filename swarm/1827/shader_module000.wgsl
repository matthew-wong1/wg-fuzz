struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(642f, -1469f, -1055f, 688f), -824f, 323f, -1000f));

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(-1465f, -397f, -1000f, 1349f), -359f, 990f, -445f), Struct_1(vec4<f32>(1341f, 534f, 515f, -737f), 497f, 1150f, 1000f), Struct_1(vec4<f32>(242f, 589f, -1922f, 1202f), -1328f, -1899f, 2427f), Struct_1(vec4<f32>(-545f, 738f, -2204f, -1808f), 606f, -731f, 1000f), Struct_1(vec4<f32>(1000f, 1967f, 382f, -1160f), -366f, 428f, -1005f), Struct_1(vec4<f32>(-1337f, -871f, 511f, 1000f), -604f, -257f, 408f), Struct_1(vec4<f32>(1874f, -1140f, -667f, 1096f), 1000f, 276f, -472f), Struct_1(vec4<f32>(2221f, -1000f, 1261f, 1692f), 1325f, 815f, -1073f), Struct_1(vec4<f32>(1235f, -3521f, -117f, -1000f), 1071f, -892f, 673f), Struct_1(vec4<f32>(747f, -1127f, 1163f, 1454f), 318f, -2541f, 864f), Struct_1(vec4<f32>(156f, 939f, 1000f, 1540f), -696f, -988f, -407f), Struct_1(vec4<f32>(1651f, 1129f, 920f, -1207f), 1185f, 101f, -971f), Struct_1(vec4<f32>(-1447f, 1269f, 564f, 1271f), -1030f, -114f, 1415f), Struct_1(vec4<f32>(1000f, 938f, -834f, -137f), -811f, 912f, 1702f), Struct_1(vec4<f32>(-151f, -559f, 2146f, -704f), 336f, -692f, 496f), Struct_1(vec4<f32>(1008f, 303f, -847f, -572f), 1186f, 419f, -169f), Struct_1(vec4<f32>(-1012f, -1013f, 639f, -481f), 457f, -516f, 1035f), Struct_1(vec4<f32>(892f, 196f, -958f, -2046f), 532f, 196f, 571f), Struct_1(vec4<f32>(1498f, -106f, -448f, 1039f), 1452f, -309f, -1188f), Struct_1(vec4<f32>(375f, 325f, -865f, -1884f), -1718f, 880f, 1344f), Struct_1(vec4<f32>(562f, -1519f, 1116f, -215f), 1393f, 124f, -107f), Struct_1(vec4<f32>(-265f, 191f, 1000f, -385f), 258f, -276f, 857f), Struct_1(vec4<f32>(-209f, -982f, -1000f, 431f), -1299f, 1383f, -644f), Struct_1(vec4<f32>(1355f, 1834f, 239f, -1134f), -667f, 1275f, -305f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    let var_0 = countOneBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), select(~vec4<u32>(4294967295u, 73938u, 6085u, 0u), ~max(vec4<u32>(4294967295u, 0u, 4432u, 57288u), vec4<u32>(11238u, 2450u, 66477u, 90503u)), select(!vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), false)), abs(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_1 = -(~_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -7275i, u_input.a, ~u_input.a), firstTrailingBit(u_input.b.wyx)));
    global0 = Struct_2(Struct_1(global0.a.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(347f, 1602f)) * _wgslsmith_f_op_f32(min(1132f, global0.a.d))))), global0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-global0.a.c)))));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.a.a.x)), arg_0)), _wgslsmith_f_op_f32(global0.a.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.d)))), _wgslsmith_f_op_f32(global0.a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-825f, 104f))))));
    var_1 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -13417i, -1i), u_input.b.zyw), u_input.b.yxy << (var_0.xyz % vec3<u32>(32u))), reverseBits(vec3<i32>(2147483647i, -1i, u_input.a))) >> (min(var_0.yzx | ~firstLeadingBit(var_0.zxz), var_0.wxw | var_0.wxz) % vec3<u32>(32u));
    return -1i;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: f32) -> Struct_3 {
    let var_0 = u_input.b.x;
    global1 = array<Struct_1, 24>();
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-826f, 266f, -1477f, -317f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, 1670f, 754f, -266f))), _wgslsmith_div_vec4_f32(vec4<f32>(-173f, arg_0, global0.a.a.x, arg_1.x), vec4<f32>(global0.a.d, 2268f, -715f, arg_0)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.a.a)))))), arg_1.x, -221f, -776f);
    global0 = Struct_2(var_1);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, var_1.a.x, 1000f)) - vec4<f32>(arg_2, arg_1.x, arg_2, arg_0))), 1000f, global0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))))));
    return Struct_3(var_2, 1u, Struct_2(global1[_wgslsmith_index_u32(~0u, 24u)]), select(vec2<bool>(true, true), vec2<bool>(-2147483647i > func_3(615f, true), (2147483647i | u_input.b.x) > _wgslsmith_div_i32(u_input.a, u_input.a)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    var var_0 = select(arg_1.d.x, true, arg_1.d.x);
    var_0 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.c), 102f)), global0.a.a.xwz, -1452f).d.x;
    global0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_f32(-arg_1.a.a.a.x);
    var_1 = _wgslsmith_f_op_f32(abs(arg_1.a.a.c));
    return func_2(arg_1.a.a.a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(global0.a.a.wxy)))))), -3120f).c;
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(global0.a.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a.a * vec4<f32>(439f, -673f, 111f, 413f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1262f, global0.a.a.x, global0.a.a.x, global0.a.c))) + global0.a.a)));
    var_0 = _wgslsmith_f_op_vec4_f32(-global0.a.a);
    let var_1 = func_4(Struct_4(~u_input.b, false, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, _wgslsmith_add_u32(16702u, 52781u)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13169u, 31360u), vec3<u32>(0u, 4294967295u, 22246u)))), global0.a.a.wx), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) * _wgslsmith_f_op_f32(-795f * global0.a.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-349f)))), false)), global0.a.a.wyw, var_0.x), global0.a.a.x);
    var var_2 = Struct_3(func_2(var_1.a.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1076f * var_1.a.d)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-var_1.a.c))), -700f).a, ~select(abs(79264u), 1u, false), func_4(Struct_4(vec4<i32>(reverseBits(u_input.b.x), u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -2147483647i), vec3<i32>(2147483647i, u_input.a, -7236i)), 1i), any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_u32(~vec3<u32>(26499u, 18758u, 2538u), ~vec3<u32>(40366u, 9945u, 0u)), vec2<f32>(1f, _wgslsmith_div_f32(global0.a.d, global0.a.c))), func_2(-986f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(817f, -1414f, 1011f) + var_0.xwx)), 1335f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.c, 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -340f)), _wgslsmith_f_op_f32(-global0.a.c)))), !func_2(_wgslsmith_f_op_f32(f32(-1f) * -2512f), var_0.yyy, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1516f), true))).d);
    global0 = func_2(global0.a.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(600f, var_2.c.a.c, _wgslsmith_f_op_f32(-global0.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f) + var_1.a.b))) - _wgslsmith_f_op_f32(1138f - var_1.a.d))).a;
    return Struct_4(min(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(_wgslsmith_add_i32(u_input.a, u_input.b.x), u_input.a, u_input.b.x & u_input.a, abs(u_input.b.x))), u_input.b), all(vec2<bool>(true, var_2.d.x)), _wgslsmith_mod_u32(29930u, var_2.b) >> (~_wgslsmith_sub_u32(0u, ~4294967295u) % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -299f) + -291f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_2.c.a.a.yw)) + vec2<f32>(var_2.c.a.d, global0.a.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec4<i32>(~(-(~1i)), u_input.b.x, -2147483647i, _wgslsmith_clamp_i32(u_input.b.x, min(firstLeadingBit(0i), u_input.b.x << (26924u % 32u)), ~0i)), true, ~_wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(142f, global0.a.d), vec2<f32>(1569f, -1883f), vec2<bool>(false, true))) - vec2<f32>(-1000f, global0.a.a.x)) - global0.a.a.xw) * global0.a.a.zy));
    var var_1 = vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b.wwx, reverseBits(u_input.b.xyx)), _wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -var_0.a.x, -_wgslsmith_dot_vec2_i32(var_0.a.zw, u_input.b.xz)), _wgslsmith_div_i32(26725i, 2147483647i)), var_0.a.x);
    var_0 = func_1();
    var_0 = Struct_4(vec4<i32>(_wgslsmith_mult_i32(~u_input.b.x, var_1.x), -16825i, max(firstTrailingBit(-62085i), firstLeadingBit(var_0.a.x)), func_1().a.x) | vec4<i32>(var_0.a.x, i32(-1i) * -var_1.x, ~abs(var_0.a.x), select(-1i, 2147483647i >> (var_0.c % 32u), false)), any(select(select(select(vec4<bool>(var_0.b, true, true, var_0.b), vec4<bool>(true, var_0.b, var_0.b, false), true), vec4<bool>(true, true, true, true), select(false, true, var_0.b)), vec4<bool>(false, global0.a.b != -440f, true, true), false)), ~func_1().c, vec2<f32>(-977f, 438f));
    var var_2 = func_4(func_1(), func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(Struct_4(var_0.a, var_0.b, 0u, vec2<f32>(var_0.d.x, 285f)), Struct_3(Struct_2(Struct_1(global0.a.a, -588f, var_0.d.x, global0.a.b)), 22462u, Struct_2(global1[_wgslsmith_index_u32(var_0.c, 24u)]), vec2<bool>(true, false)), global0.a.d).a.d, _wgslsmith_f_op_f32(global0.a.a.x + -202f))), vec3<f32>(_wgslsmith_f_op_f32(-221f + _wgslsmith_f_op_f32(1446f * global0.a.c)), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.d.x)), -1081f)), 491f), 112f);
    var_0 = Struct_4(-u_input.b, true, var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.c, _wgslsmith_f_op_f32(func_4(Struct_4(vec4<i32>(var_0.a.x, -44943i, -2147483647i, -1i), var_0.b, var_0.c, global0.a.a.zy), Struct_3(Struct_2(Struct_1(vec4<f32>(var_0.d.x, -647f, var_0.d.x, -1622f), global0.a.a.x, 1016f, -309f)), 58601u, Struct_2(Struct_1(vec4<f32>(534f, var_0.d.x, 401f, 1626f), var_2.a.b, 404f, global0.a.d)), vec2<bool>(var_0.b, true)), -2620f).a.a.x * _wgslsmith_f_op_f32(1282f - global0.a.c))) - vec2<f32>(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_div_f32(var_0.d.x, 1000f)), 183f)));
    global0 = func_4(Struct_4(u_input.b, false, firstLeadingBit(firstTrailingBit(_wgslsmith_div_u32(85u, var_0.c))), func_1().d), Struct_3(Struct_2(func_4(func_1(), Struct_3(Struct_2(global1[_wgslsmith_index_u32(1u, 24u)]), var_0.c, Struct_2(Struct_1(var_2.a.a, var_0.d.x, var_2.a.c, -720f)), vec2<bool>(var_0.b, false)), _wgslsmith_f_op_f32(-var_2.a.d)).a), ~(~var_0.c), func_4(Struct_4(~vec4<i32>(u_input.b.x, -1i, 92681i, var_1.x), var_0.b && var_0.b, var_0.c, var_0.d), func_2(_wgslsmith_f_op_f32(min(var_0.d.x, -1686f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_2.a.d, global0.a.d)), _wgslsmith_f_op_f32(1518f - var_2.a.c)), -1000f), vec2<bool>(any(!vec4<bool>(false, true, var_0.b, var_0.b)), var_0.b)), 1675f);
    var_0 = Struct_4(firstTrailingBit(select(max(vec4<i32>(33018i, -22326i, var_0.a.x, var_0.a.x), var_0.a), vec4<i32>(2147483647i, 14060i, firstLeadingBit(0i), -u_input.b.x), true)), all(vec2<bool>(var_0.b, true)), var_0.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(var_2.a.c + -1573f))), var_0.d.x));
    let var_3 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(-999f, var_2.a.b))))), -710f)), vec3<f32>(_wgslsmith_f_op_f32(func_1().d.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(587f))))), var_0.d.x, _wgslsmith_f_op_f32(abs(func_1().d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-153f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(805f * -1823f)) - -1000f))).c;
    let x = u_input.a;
    s_output = StorageBuffer(1335f, 0u, _wgslsmith_div_u32(var_0.c, ~(~var_0.c)), _wgslsmith_f_op_vec2_f32(-var_2.a.a.zx));
}

