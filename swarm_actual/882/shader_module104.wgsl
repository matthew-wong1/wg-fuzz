struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-1i, 10061i, 42040i, 23226i, 1i, 0i, -20241i, 1i);

var<private> global1: array<i32, 22>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-630f, -201f, -134f), 4294967295u, vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(150f, 353f, 810f), 22704u, vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(258f, 2651f, -976f), 23736u, vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-311f, 2393f, -297f), 1u, vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-1062f, -1022f, -474f), 4294967295u, vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-282f, -723f, -899f), 5983u, vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(1219f, 1603f, 1340f), 26604u, vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1452f, 1401f, -495f), 51684u, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(3120f, 384f, 998f), 39793u, vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1041f, 1011f, 624f), 53480u, vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1316f, 554f, -546f), 4294967295u, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1029f, 791f, 1000f), 0u, vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(824f, 1130f, -567f), 1u, vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1232f, -317f, -746f), 4294967295u, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-871f, 1082f, -883f), 0u, vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(345f, 432f, -737f), 1u, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(1263f, -631f, -1927f), 32520u, vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-276f, 1534f, -922f), 5115u, vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(567f, 1198f, -2102f), 0u, vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-271f, 466f, 1430f), 62292u, vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(2281f, 2346f, -877f), 24485u, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(2687f, 466f, -842f), 0u, vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(748f, -941f, 1502f), 0u, vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-900f, 1000f, 1000f), 78944u, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1136f, 356f, -454f), 19308u, vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(1169f, -907f, -886f), 25217u, vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(446f, -1018f, -1840f), 4294967295u, vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-144f, -1000f, 1653f), 67641u, vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1867f, 1942f, 539f), 76395u, vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(1527f, -316f, -764f), 5064u, vec4<bool>(true, true, true, true)));

var<private> global3: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec4<i32>(30616i, -29957i, -12097i, 1i), false, i32(-2147483648), 0u), Struct_3(vec4<i32>(1i, 8427i, 1i, -58236i), false, 31278i, 50049u), Struct_3(vec4<i32>(-1i, 13258i, -34392i, 43263i), false, -1i, 0u), Struct_3(vec4<i32>(2147483647i, 7087i, 0i, 14725i), false, 1i, 71772u), Struct_3(vec4<i32>(-84227i, 0i, 2147483647i, -41768i), false, -40800i, 87004u), Struct_3(vec4<i32>(-1i, 1i, -1246i, 0i), false, -14895i, 20100u), Struct_3(vec4<i32>(1i, 30715i, 54727i, 42438i), false, 48775i, 36353u), Struct_3(vec4<i32>(14522i, 6534i, i32(-2147483648), 0i), false, 0i, 29740u), Struct_3(vec4<i32>(-5138i, -26029i, -9537i, -11123i), false, 1i, 4294967295u), Struct_3(vec4<i32>(35840i, -1i, -15932i, -50709i), false, -1825i, 39369u), Struct_3(vec4<i32>(2147483647i, -10276i, -1i, 41177i), false, 0i, 4294967295u), Struct_3(vec4<i32>(-18813i, i32(-2147483648), 0i, -31549i), true, 45142i, 0u), Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), -41856i, 1686i), true, -1i, 41558u), Struct_3(vec4<i32>(0i, 50283i, -36040i, 53368i), true, 1i, 0u), Struct_3(vec4<i32>(-34901i, 9483i, -51890i, -12168i), false, 9432i, 4294967295u), Struct_3(vec4<i32>(6411i, 4239i, 2147483647i, 2147483647i), true, 9831i, 0u), Struct_3(vec4<i32>(-1i, 49099i, 59204i, -50561i), false, 0i, 58189u), Struct_3(vec4<i32>(-61380i, 2147483647i, -14116i, 22861i), false, -1i, 42949u), Struct_3(vec4<i32>(12445i, -1i, 31735i, -1i), false, 0i, 1u), Struct_3(vec4<i32>(37162i, 17616i, 51550i, -50343i), false, 64938i, 2506u), Struct_3(vec4<i32>(2147483647i, 0i, -10760i, 12234i), true, -1i, 1u), Struct_3(vec4<i32>(-49538i, i32(-2147483648), 2147483647i, -6651i), false, 2147483647i, 4294967295u), Struct_3(vec4<i32>(-1i, -42754i, 0i, 0i), true, 1i, 75211u), Struct_3(vec4<i32>(i32(-2147483648), 4915i, 3454i, -6668i), false, i32(-2147483648), 18154u), Struct_3(vec4<i32>(1i, -3634i, -25985i, 1i), false, 2147483647i, 0u), Struct_3(vec4<i32>(2147483647i, 35134i, 46140i, 2147483647i), false, -1i, 8848u), Struct_3(vec4<i32>(16318i, -23658i, 6922i, 10990i), false, -1i, 1u), Struct_3(vec4<i32>(i32(-2147483648), 19074i, -50887i, -1i), false, -19304i, 33175u), Struct_3(vec4<i32>(2147483647i, 41252i, 47159i, -36120i), true, 47133i, 18306u), Struct_3(vec4<i32>(10382i, i32(-2147483648), 0i, 1i), true, -1i, 28001u), Struct_3(vec4<i32>(-1i, -6651i, 19498i, 38884i), false, -9252i, 1u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = array<i32, 22>();
    global0 = array<i32, 8>();
    var var_0 = Struct_1(select(vec3<bool>(any(!vec3<bool>(false, true, arg_0)), false, false), !vec3<bool>(!arg_0, any(vec2<bool>(false, false)), true), arg_0), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), min(~(~25343u), _wgslsmith_dot_vec2_u32(vec2<u32>(25870u, _wgslsmith_dot_vec4_u32(vec4<u32>(24842u, 4294967295u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.b.x, 0u, 0u))), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), u_input.b)))), !vec4<bool>(select(true, select(false, arg_0, false), any(vec2<bool>(arg_0, arg_0))), true, false, true));
    var var_1 = -1000f;
    var var_2 = Struct_2(var_0.b, var_0.b.x, Struct_1(vec3<bool>(var_0.a.x, any(!var_0.a.xz), !select(true, arg_0, false)), var_0.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 20707u, 4294967295u, 4294967295u) | vec4<u32>(4294967295u, u_input.a, 4294967295u, 4294967295u), firstTrailingBit(vec4<u32>(u_input.b.x, 0u, var_0.c, var_0.c)) | vec4<u32>(28855u, var_0.c, 59384u, 41360u)), var_0.d), 66903u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1358f)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false))));
    global0 = array<i32, 8>();
    let var_1 = 1u;
    var var_2 = 702f;
    var var_3 = Struct_3(vec4<i32>(-_wgslsmith_dot_vec3_i32(u_input.d.xwx, u_input.c.zzw) >> (1u % 32u), reverseBits(countOneBits(i32(-1i) * -1i)), -10141i, 1i), max(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(10249u, 0u), var_1), _wgslsmith_sub_u32(u_input.a, var_1 >> (10320u % 32u))) >= ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_1, var_1, 40013u), vec4<u32>(u_input.a, var_1, 0u, 70035u))), _wgslsmith_clamp_i32(~(i32(-1i) * -16006i), global1[_wgslsmith_index_u32(~(~0u) | firstTrailingBit(_wgslsmith_add_u32(4294967295u, u_input.a)), 22u)], _wgslsmith_div_i32(~(i32(-1i) * -1i), u_input.d.x)), 31291u);
    return firstTrailingBit(9132i);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(22555u, ~6675u, arg_0.d), ~min(vec3<u32>(abs(arg_2.c), select(arg_2.c, 54612u, arg_0.b), firstTrailingBit(1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(17020u, 53329u, arg_2.c) << (vec3<u32>(u_input.b.x, 0u, u_input.b.x) % vec3<u32>(32u)), vec3<u32>(4294967295u, arg_2.c, arg_0.d) >> (vec3<u32>(44161u, arg_0.d, 9966u) % vec3<u32>(32u)))));
    var_0 = vec3<u32>(arg_2.c, _wgslsmith_div_u32(~1u, arg_2.c), _wgslsmith_mod_u32(u_input.b.x & _wgslsmith_div_u32(arg_0.d, _wgslsmith_add_u32(0u, 0u)), arg_2.c));
    global1 = array<i32, 22>();
    let var_1 = Struct_1(vec3<bool>(arg_1.x, !select(false, u_input.a > arg_2.c, true), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-552f, -1118f)))), -1884f, _wgslsmith_f_op_f32(-arg_2.b.x)), 2312u, vec4<bool>(_wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -537f))) >= arg_2.b.x, any(select(select(vec4<bool>(arg_0.b, true, true, false), vec4<bool>(true, arg_2.a.x, arg_3, arg_0.b), false), arg_2.d, vec4<bool>(arg_0.b, arg_1.x, false, arg_3))), select(arg_3, arg_0.b, arg_1.x), !(func_2() > -global0[_wgslsmith_index_u32(122460u, 8u)])));
    var var_2 = _wgslsmith_div_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c, var_1.c, 55685u), vec3<u32>(50399u, 56539u, 12564u)) >> (~vec3<u32>(var_0.x, 4294967295u, 1u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(3882u, 0u, u_input.a) ^ vec3<u32>(var_1.c, u_input.b.x, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_1.c, 1u), vec3<u32>(1u, arg_2.c, arg_0.d))), countOneBits(vec3<u32>(arg_2.c, var_1.c, u_input.a) << (vec3<u32>(27971u, u_input.b.x, arg_0.d) % vec3<u32>(32u))))) & (select(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(58343u, u_input.a, 49096u), vec3<u32>(0u, var_0.x, var_1.c)), min(vec3<u32>(var_0.x, 56977u, arg_2.c), vec3<u32>(4294967295u, arg_0.d, 12536u))), max(firstTrailingBit(vec3<u32>(var_0.x, var_0.x, var_0.x)), vec3<u32>(arg_0.d, 28309u, var_1.c)), select(!vec3<bool>(false, arg_0.b, arg_2.a.x), vec3<bool>(arg_2.d.x, false, arg_2.d.x), select(vec3<bool>(arg_2.d.x, true, var_1.d.x), vec3<bool>(false, arg_2.d.x, false), arg_2.a))) | vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 0u, arg_2.c)), vec3<u32>(arg_0.d, 28009u, var_1.c) & vec3<u32>(var_0.x, var_0.x, arg_2.c)), u_input.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.c, 17555u), var_0.xx)));
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(5792i, _wgslsmith_dot_vec4_i32(vec4<i32>(select(19660i, 1i, arg_3), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, arg_0.a.x, 1i), arg_0.a.yzx), u_input.d.x, i32(-1i) * -2147483647i), -_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(global0[_wgslsmith_index_u32(arg_2.c, 8u)], u_input.c.x, -30121i, arg_0.c), arg_0.a)), 34870i), global0[_wgslsmith_index_u32(var_1.c, 8u)]);
}

fn func_4(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_clamp_vec4_i32(select(u_input.c, vec4<i32>(-arg_0, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 1i, _wgslsmith_div_i32(-22761i, -2163i)), true), abs(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 22u)], 1i, u_input.c.x, -37759i)), _wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(global0[_wgslsmith_index_u32(80127u, 8u)] >> (u_input.b.x % 32u), 1i, 1i, 2147483647i))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), -37071i > global0[_wgslsmith_index_u32(47813u, 8u)]), true)), arg_0, 1997u);
    let var_1 = Struct_1(select(vec3<bool>(var_0.b, any(vec4<bool>(var_0.b, var_0.b, false, false)) && var_0.b, false), select(select(vec3<bool>(true, true, false), !vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, true)), select(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(true, var_0.b, false), vec3<bool>(false, var_0.b, var_0.b)), !vec3<bool>(true, var_0.b, var_0.b), select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(true, var_0.b, var_0.b))), vec3<bool>(false, var_0.b, var_0.b)), select(vec3<bool>(any(vec3<bool>(false, false, false)), var_0.b, true), !(!vec3<bool>(var_0.b, var_0.b, var_0.b)), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(828f, -291f, 561f)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(715f, 1282f, -2072f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-962f, 258f, 946f))))))), _wgslsmith_sub_u32(var_0.d, reverseBits(var_0.d)) ^ 11971u, select(vec4<bool>(var_0.b, var_0.b, true, !any(vec2<bool>(false, false))), select(select(!vec4<bool>(var_0.b, var_0.b, false, var_0.b), select(vec4<bool>(true, var_0.b, var_0.b, true), vec4<bool>(true, true, false, false), true), !var_0.b), select(!vec4<bool>(true, var_0.b, true, var_0.b), select(vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec4<bool>(true, var_0.b, false, var_0.b)), !vec4<bool>(false, true, true, var_0.b)), !vec4<bool>(var_0.b, var_0.b, true, true)), any(vec2<bool>(true, true))));
    var var_2 = !(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~u_input.b.x, 52892u), var_1.c), 8u)] > global0[_wgslsmith_index_u32(u_input.b.x, 8u)]);
    let var_3 = ~var_0.d;
    global0 = array<i32, 8>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1856f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.b.x, var_1.b.x), 1193f, 732f))), 1394f, Struct_1(vec3<bool>(var_1.b.x < _wgslsmith_f_op_f32(round(-563f)), true, false), vec3<f32>(_wgslsmith_f_op_f32(sign(-612f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false)) * _wgslsmith_f_op_f32(676f - -1744f))), ~(~var_3), var_1.d), _wgslsmith_mod_u32(~50353u, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(reverseBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(countOneBits(global0[_wgslsmith_index_u32(u_input.a, 8u)]), 2147483647i & global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), func_1(Struct_3(vec4<i32>(2147483647i, 37261i, global0[_wgslsmith_index_u32(u_input.a, 8u)], u_input.d.x), true, 23901i, 0u), vec2<bool>(true, false), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-1220f, 392f, -600f), u_input.b.x, vec4<bool>(true, true, true, false)), true) << (_wgslsmith_add_u32(48257u, 37230u) % 32u))));
    global3 = array<Struct_3, 31>();
    let var_1 = func_4(-41165i);
    var var_2 = vec4<f32>(var_1.c.b.x, -508f, _wgslsmith_f_op_f32(-1008f + var_1.b), var_1.a.x);
    var var_3 = var_1.c.a.x;
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))))));
    let var_5 = Struct_1(select(var_1.c.a, select(vec3<bool>(true, 37222u < u_input.a, var_1.c.d.x), !(!vec3<bool>(var_1.c.d.x, var_0.c.d.x, true)), !func_4(0i).c.d.xzz), true | (var_0.c.a.x && true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(global0[_wgslsmith_index_u32(var_1.c.c, 8u)]).b, _wgslsmith_f_op_f32(-var_1.b), var_0.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.b + vec3<f32>(921f, 1011f, var_2.x)) + vec3<f32>(-1000f, -1404f, -581f))) + var_2.yyx), reverseBits(~1u), func_4(firstLeadingBit(-_wgslsmith_mod_i32(34031i, 65337i))).c.d);
    let var_6 = Struct_3(vec4<i32>(1i, global0[_wgslsmith_index_u32(var_0.c.c, 8u)], ~(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(21756u, 8420u)), 22u)] | _wgslsmith_sub_i32(-33136i, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(25900i, _wgslsmith_mult_i32(53597i, -5062i)), ~select(u_input.c.xw, vec2<i32>(u_input.d.x, -36102i), var_1.c.a.zx))), false, 1i, ~var_0.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i));
}

