struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(27535u, -20881i, 1u, Struct_1(vec4<f32>(-1000f, 1000f, -433f, -1416f), true, vec4<u32>(45069u, 1u, 54149u, 4294967295u), true)), Struct_2(19879u, 61040i, 32895u, Struct_1(vec4<f32>(-2074f, -1033f, 489f, -114f), false, vec4<u32>(147938u, 4294967295u, 4294967295u, 23608u), false)), Struct_2(4294967295u, i32(-2147483648), 16899u, Struct_1(vec4<f32>(-1228f, 804f, 1568f, 1675f), true, vec4<u32>(1u, 4294967295u, 26273u, 14863u), true)), Struct_2(4294967295u, 92035i, 19837u, Struct_1(vec4<f32>(2075f, -1592f, -511f, -465f), false, vec4<u32>(1u, 27933u, 51646u, 1u), false)), Struct_2(4294967295u, 2147483647i, 4294967295u, Struct_1(vec4<f32>(-1747f, 154f, 353f, 509f), true, vec4<u32>(1u, 423u, 63871u, 4294967295u), true)), Struct_2(65228u, 45444i, 1u, Struct_1(vec4<f32>(490f, -1490f, 552f, -119f), true, vec4<u32>(7856u, 1u, 4294967295u, 4294967295u), false)), Struct_2(30811u, 1i, 1u, Struct_1(vec4<f32>(235f, 410f, -1270f, -287f), true, vec4<u32>(4294967295u, 24627u, 1u, 0u), false)), Struct_2(1u, 2147483647i, 6280u, Struct_1(vec4<f32>(333f, -236f, 1163f, 1409f), false, vec4<u32>(29308u, 77389u, 0u, 546u), true)), Struct_2(1u, -126333i, 0u, Struct_1(vec4<f32>(1000f, -653f, -1084f, -395f), false, vec4<u32>(54914u, 65304u, 37963u, 36587u), true)), Struct_2(17219u, 5531i, 1306u, Struct_1(vec4<f32>(636f, -725f, -673f, -564f), true, vec4<u32>(9700u, 4294967295u, 42373u, 4294967295u), false)), Struct_2(4294967295u, i32(-2147483648), 4294967295u, Struct_1(vec4<f32>(-2603f, 1257f, -787f, 1327f), false, vec4<u32>(0u, 4294967295u, 12048u, 59268u), true)), Struct_2(94294u, 17972i, 4550u, Struct_1(vec4<f32>(-1316f, -959f, -1000f, 1346f), false, vec4<u32>(68079u, 19601u, 1u, 15416u), true)), Struct_2(26184u, -1i, 35344u, Struct_1(vec4<f32>(533f, 1857f, -1281f, 918f), false, vec4<u32>(23384u, 11857u, 41559u, 0u), true)), Struct_2(31616u, 21676i, 37675u, Struct_1(vec4<f32>(-544f, 1554f, 1000f, -636f), false, vec4<u32>(0u, 4314u, 1u, 1u), true)), Struct_2(1u, 64215i, 9342u, Struct_1(vec4<f32>(-148f, 338f, -511f, 219f), false, vec4<u32>(42434u, 4351u, 4294967295u, 0u), true)), Struct_2(22575u, 19150i, 24905u, Struct_1(vec4<f32>(-1552f, -687f, -690f, -1000f), true, vec4<u32>(9016u, 1u, 4294967295u, 0u), true)), Struct_2(0u, 10812i, 1u, Struct_1(vec4<f32>(-271f, -385f, -1099f, -321f), false, vec4<u32>(45439u, 1u, 57135u, 45063u), false)), Struct_2(23978u, 2147483647i, 28215u, Struct_1(vec4<f32>(-1439f, -287f, -802f, 673f), true, vec4<u32>(1u, 4294967295u, 18745u, 0u), false)), Struct_2(0u, 19029i, 28355u, Struct_1(vec4<f32>(-679f, 1000f, 1410f, -812f), true, vec4<u32>(0u, 91092u, 4294967295u, 1777u), false)), Struct_2(50990u, i32(-2147483648), 4294967295u, Struct_1(vec4<f32>(2368f, 564f, -173f, 446f), false, vec4<u32>(0u, 1u, 4294967295u, 45865u), false)), Struct_2(10732u, -19780i, 54710u, Struct_1(vec4<f32>(-387f, -860f, -434f, -838f), true, vec4<u32>(16395u, 29211u, 0u, 19406u), true)), Struct_2(28489u, -29173i, 2194u, Struct_1(vec4<f32>(-321f, -660f, -873f, 1281f), true, vec4<u32>(12181u, 4294967295u, 14929u, 26778u), false)));

var<private> global1: u32 = 1u;

var<private> global2: array<vec2<i32>, 27>;

var<private> global3: vec3<bool>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(arg_2, arg_2), -2147483647i, ~abs(-39460i), _wgslsmith_mod_i32(arg_2 & _wgslsmith_clamp_i32(-90134i, 2054i, arg_2), ~(-2147483647i)));
    global1 = min(12204u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(min(24092u, u_input.c.x), ~arg_1.x), u_input.d, ~2409u, ~(898u & arg_1.x)), u_input.c));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1560f, -1000f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(ceil(1734f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, arg_0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-672f, arg_0, arg_0)))));
    var var_2 = -var_0.x;
    var_2 = arg_2;
    return arg_1.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> vec2<f32> {
    global1 = ~1u;
    var var_0 = arg_0;
    global2 = array<vec2<i32>, 27>();
    let var_1 = vec3<bool>(any(!(!select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(false, arg_2.a.x, var_0.d.d), vec3<bool>(false, arg_2.d.b, true)))), false, !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-857f, 919f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d.a.x)))));
    var var_2 = arg_2;
    return vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.d.a.x)), _wgslsmith_f_op_f32(-var_0.d.a.x));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> vec2<bool> {
    global0 = array<Struct_2, 22>();
    let var_0 = vec4<i32>(arg_2, arg_2, arg_2, arg_2) ^ ~((_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2, -41459i, -40035i, 10081i), vec4<i32>(arg_2, arg_2, arg_2, -7569i)) >> ((vec4<u32>(u_input.a, 1u, 30067u, u_input.b) & u_input.c) % vec4<u32>(32u))) & -(vec4<i32>(1i, arg_2, arg_2, -977i) & vec4<i32>(arg_2, arg_2, arg_2, -32486i)));
    let var_1 = select(vec3<bool>(!select(arg_3, true && global3.x, arg_3 & false), true, !all(!vec3<bool>(global3.x, false, false))), !select(!select(vec3<bool>(global3.x, false, arg_3), vec3<bool>(false, arg_3, global3.x), vec3<bool>(global3.x, true, false)), select(select(vec3<bool>(false, false, arg_3), vec3<bool>(global3.x, true, false), vec3<bool>(true, arg_3, global3.x)), select(vec3<bool>(global3.x, false, arg_3), vec3<bool>(global3.x, global3.x, false), false), select(vec3<bool>(global3.x, arg_3, false), vec3<bool>(arg_3, false, global3.x), vec3<bool>(global3.x, arg_3, global3.x))), select(select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(false, arg_3, false), vec3<bool>(true, global3.x, false)), !vec3<bool>(arg_3, true, arg_3), select(vec3<bool>(true, global3.x, false), vec3<bool>(global3.x, true, false), vec3<bool>(arg_3, false, global3.x)))), !select(select(vec3<bool>(false, global3.x, true), vec3<bool>(global3.x, global3.x, global3.x), select(vec3<bool>(true, arg_3, global3.x), vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, true, false))), vec3<bool>(true, true, true), true));
    let var_2 = max(~var_0.wxz, max(vec3<i32>(arg_2, var_0.x, var_0.x) << (~u_input.c.zzz % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_2, 22934i, var_0.x), var_0.wyz ^ vec3<i32>(-22836i, arg_2, var_0.x)))) & ~min(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1180i, -2147483647i, arg_2), var_0.zxy), -8570i, 1520i), var_0.yzz);
    return var_1.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<u32>(u_input.c.x, firstLeadingBit(u_input.a & 68683u)), i32(-1i) * -1i), 22u)];
    var var_1 = var_0.d;
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(select(22996u, ~99862u, !var_0.d.b))), 22u)];
    global2 = array<vec2<i32>, 27>();
    let var_3 = select(select(!(!select(global3.yx, global3.yx, vec2<bool>(false, false))), vec2<bool>(var_1.d, false), any(vec4<bool>(false || var_1.d, false, all(vec4<bool>(var_2.d.b, true, false, var_1.b)), var_0.d.d | false))), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a.x, var_2.d.a.x, var_0.d.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(var_0.a, var_0.b, var_2.a, var_0.d), _wgslsmith_mod_i32(-1i, 1i), Struct_3(global3.yz, Struct_1(var_1.a, var_1.d, vec4<u32>(1u, 1u, var_0.c, var_2.d.c.x), var_0.d.b), vec4<i32>(2339i, 0i, 0i, var_2.b), var_2.d, 1336f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(952f, 365f), var_2.d.a.yy, global3.x)) + _wgslsmith_f_op_vec2_f32(select(var_2.d.a.xz, var_2.d.a.zx, vec2<bool>(false, false))))), 1i, var_0.b != _wgslsmith_mod_i32(select(var_2.b, var_0.b, true), -24504i)), 2914u >= reverseBits(firstLeadingBit(var_0.c)));
    global2 = array<vec2<i32>, 27>();
    var var_4 = vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(var_2.d.c.zyz), firstLeadingBit(vec3<u32>(~var_0.a, abs(4294967295u), ~var_1.c.x))), 4294967295u >> ((1u ^ var_2.a) % 32u), _wgslsmith_sub_u32(~(~0u) >> (var_0.c % 32u), 1u), ~27659u);
    var var_5 = Struct_2(1u, reverseBits(~_wgslsmith_dot_vec3_i32(min(vec3<i32>(-36599i, var_0.b, var_2.b), vec3<i32>(20623i, var_2.b, 0i)), -vec3<i32>(var_0.b, var_2.b, var_0.b))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u | var_4.x, abs(0u)), ~var_4.x), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(min(0u, var_2.c), ~u_input.b, var_1.c.x) | vec3<u32>(var_4.x, 1u, u_input.a), vec4<i32>(_wgslsmith_div_i32(~reverseBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 88965i, var_2.b, var_2.b) >> (var_1.c % vec4<u32>(32u)), vec4<i32>(-1i, var_5.b, 82547i, -22799i))), var_5.b, ~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1573i, var_5.b), vec2<i32>(7790i, var_0.b)), ~var_0.b, _wgslsmith_add_i32(33879i, var_0.b), var_2.b << (0u % 32u)), vec4<i32>(var_5.b, firstTrailingBit(-25740i), _wgslsmith_mult_i32(1i, -50721i), -11562i))), 1i);
}

