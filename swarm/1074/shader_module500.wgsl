struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(46352i, Struct_1(385f, false, vec4<f32>(-1698f, 300f, 589f, -1494f), vec4<u32>(1u, 0u, 4756u, 0u), -2037f), Struct_2(Struct_1(610f, true, vec4<f32>(1139f, 1623f, -200f, -2104f), vec4<u32>(1u, 55861u, 4294967295u, 42526u), -1000f), vec4<f32>(1000f, 1925f, -1293f, -1055f), vec4<u32>(4294967295u, 19836u, 4294967295u, 6467u), 798f), vec4<u32>(4294967295u, 1u, 43148u, 1u)), Struct_3(1i, Struct_1(1403f, true, vec4<f32>(790f, -1502f, -235f, -1208f), vec4<u32>(4294967295u, 46963u, 1u, 4294967295u), 1348f), Struct_2(Struct_1(769f, true, vec4<f32>(1000f, 1000f, 1000f, -437f), vec4<u32>(4294967295u, 1u, 0u, 0u), -516f), vec4<f32>(417f, -305f, -1662f, 934f), vec4<u32>(37367u, 0u, 30103u, 1u), 130f), vec4<u32>(6326u, 0u, 4294967295u, 4294967295u)), Struct_3(2147483647i, Struct_1(164f, true, vec4<f32>(-1353f, -772f, -500f, 922f), vec4<u32>(15581u, 535u, 1u, 41305u), -1000f), Struct_2(Struct_1(764f, false, vec4<f32>(-529f, -229f, -324f, -1000f), vec4<u32>(3476u, 49286u, 52376u, 54439u), -275f), vec4<f32>(576f, -1434f, -343f, 421f), vec4<u32>(39806u, 4294967295u, 0u, 4294967295u), -1000f), vec4<u32>(0u, 8169u, 1u, 75137u)), Struct_3(-1i, Struct_1(-1924f, true, vec4<f32>(-455f, -476f, -152f, 380f), vec4<u32>(10684u, 0u, 68679u, 1u), 780f), Struct_2(Struct_1(1245f, true, vec4<f32>(899f, -935f, -944f, -1886f), vec4<u32>(1u, 1u, 0u, 13249u), 167f), vec4<f32>(-1959f, 1026f, -776f, 428f), vec4<u32>(0u, 27616u, 1u, 12480u), -1885f), vec4<u32>(4294967295u, 13205u, 39194u, 0u)), Struct_3(0i, Struct_1(-1000f, true, vec4<f32>(-972f, 335f, -1256f, -830f), vec4<u32>(4294967295u, 34145u, 42565u, 1u), 913f), Struct_2(Struct_1(-1000f, false, vec4<f32>(-765f, -1469f, 1089f, 155f), vec4<u32>(0u, 9787u, 4294967295u, 1u), -1032f), vec4<f32>(-1274f, 1409f, -1349f, -568f), vec4<u32>(4294967295u, 2990u, 104839u, 6397u), 731f), vec4<u32>(44457u, 0u, 0u, 0u)), Struct_3(-10884i, Struct_1(1035f, true, vec4<f32>(-481f, -2326f, 205f, 553f), vec4<u32>(33303u, 20710u, 4071u, 3161u), -1529f), Struct_2(Struct_1(-1000f, true, vec4<f32>(428f, 191f, -1475f, -2237f), vec4<u32>(1u, 17519u, 4014u, 10074u), -991f), vec4<f32>(838f, -454f, -116f, 646f), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), -535f), vec4<u32>(0u, 1u, 6667u, 31469u)), Struct_3(-59184i, Struct_1(1419f, false, vec4<f32>(1000f, 1000f, -1000f, 369f), vec4<u32>(11596u, 38262u, 22349u, 4294967295u), 213f), Struct_2(Struct_1(942f, true, vec4<f32>(1374f, 1000f, 578f, -398f), vec4<u32>(45469u, 1u, 33918u, 7499u), -523f), vec4<f32>(381f, 1152f, -389f, -334f), vec4<u32>(0u, 1u, 4294967295u, 45825u), 369f), vec4<u32>(0u, 1u, 0u, 0u)), Struct_3(2147483647i, Struct_1(1000f, true, vec4<f32>(1664f, 858f, -875f, 1000f), vec4<u32>(47890u, 4294967295u, 1u, 29279u), -671f), Struct_2(Struct_1(-709f, false, vec4<f32>(-392f, 272f, -1269f, 207f), vec4<u32>(1u, 1u, 1u, 0u), 1154f), vec4<f32>(1000f, -338f, -1454f, -204f), vec4<u32>(48053u, 0u, 33322u, 4294967295u), -312f), vec4<u32>(4294967295u, 1u, 5252u, 0u)), Struct_3(-1i, Struct_1(-1198f, true, vec4<f32>(305f, 245f, 2672f, 945f), vec4<u32>(65417u, 1u, 29602u, 22807u), 1978f), Struct_2(Struct_1(311f, true, vec4<f32>(217f, -1330f, -728f, 854f), vec4<u32>(27056u, 4294967295u, 4294967295u, 0u), -456f), vec4<f32>(1175f, 1819f, -574f, 1117f), vec4<u32>(4294967295u, 4294967295u, 8865u, 31383u), -1000f), vec4<u32>(43070u, 12187u, 0u, 4294967295u)), Struct_3(0i, Struct_1(962f, true, vec4<f32>(-1154f, -1000f, 2309f, 1236f), vec4<u32>(4294967295u, 19417u, 1u, 4294967295u), -1138f), Struct_2(Struct_1(-560f, false, vec4<f32>(-186f, -340f, 742f, 1000f), vec4<u32>(39543u, 4564u, 16448u, 1u), 1317f), vec4<f32>(1032f, 1291f, -1219f, 1402f), vec4<u32>(0u, 366u, 0u, 0u), -1102f), vec4<u32>(0u, 1u, 0u, 0u)), Struct_3(2147483647i, Struct_1(513f, true, vec4<f32>(-1576f, -916f, -1315f, 319f), vec4<u32>(21877u, 3287u, 0u, 4294967295u), 478f), Struct_2(Struct_1(690f, true, vec4<f32>(845f, 1461f, 457f, -1017f), vec4<u32>(23164u, 1u, 1u, 72506u), -200f), vec4<f32>(2042f, -1000f, 381f, 671f), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), 1020f), vec4<u32>(4294967295u, 9622u, 1u, 1u)), Struct_3(1i, Struct_1(-1000f, true, vec4<f32>(940f, -566f, 2166f, 1303f), vec4<u32>(0u, 4294967295u, 29321u, 0u), -1067f), Struct_2(Struct_1(232f, false, vec4<f32>(1000f, -1341f, 977f, 1356f), vec4<u32>(0u, 104912u, 1u, 1u), -1282f), vec4<f32>(941f, 1870f, 1771f, -851f), vec4<u32>(1u, 42309u, 4294967295u, 985u), 1165f), vec4<u32>(7094u, 4294967295u, 4294967295u, 51139u)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_i32(2147483647i, _wgslsmith_add_i32(-arg_1, arg_1)) | _wgslsmith_mult_i32(select(arg_1, arg_1, !arg_3.b), 30263i);
    let var_1 = global0[_wgslsmith_index_u32(arg_2.d.x, 4u)];
    let var_2 = ~(~vec4<u32>(var_1.c.x, _wgslsmith_mod_u32(u_input.c, 32767u) & (u_input.a.x >> (1u % 32u)), 1u, 4294967295u | var_1.a.d.x));
    let var_3 = ~vec2<i32>(abs(1i), arg_1);
    global1 = array<Struct_3, 12>();
    return arg_3.d.x;
}

fn func_3() -> u32 {
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-152f)), _wgslsmith_f_op_f32(-451f + 2250f)))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-264f, 679f, 2339f, 897f) - vec4<f32>(-184f, -534f, 1631f, -608f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, -1372f, 172f, 1791f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(452f, 1084f, 331f, -199f))), vec4<u32>(~u_input.b, ~48368u, 5026u, u_input.a.x) & vec4<u32>(4038u, 4294967295u >> (1u % 32u), u_input.b, 26963u), _wgslsmith_f_op_f32(f32(-1f) * -333f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-578f + 612f))), 664f, _wgslsmith_f_op_f32(-1174f - -1389f), -2160f)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.b, 0u), u_input.a.x, u_input.c, _wgslsmith_clamp_u32(u_input.b, 17177u, 39009u)), firstLeadingBit(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.c), vec4<u32>(u_input.b, 0u, u_input.a.x, 15945u)), abs(u_input.c), ~0u)), ~min(~vec4<u32>(0u, 2935u, u_input.c, u_input.a.x), vec4<u32>(12592u, u_input.a.x, 0u, 1u) >> (vec4<u32>(4294967295u, 12728u, 7021u, 29858u) % vec4<u32>(32u)))), 1132f);
    return 1u;
}

fn func_1(arg_0: u32, arg_1: u32) -> i32 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1, u_input.a.x), _wgslsmith_clamp_u32(func_2(vec2<f32>(-782f, -517f), 2147483647i, Struct_1(-1000f, false, vec4<f32>(-795f, -1000f, 218f, 964f), vec4<u32>(54982u, 1u, 1u, 15753u), 651f), Struct_1(-190f, false, vec4<f32>(-283f, 509f, -687f, 1565f), vec4<u32>(arg_1, 0u, u_input.b, arg_1), 1792f)), arg_0, u_input.c)), 20414u, arg_1));
    let var_2 = global1[_wgslsmith_index_u32(func_3() & (_wgslsmith_dot_vec2_u32(u_input.a.yy, _wgslsmith_add_vec2_u32(var_1, ~u_input.a.xz)) | ~reverseBits(1u)), 12u)];
    var var_3 = ~_wgslsmith_sub_i32(2147483647i, 38690i);
    let var_4 = _wgslsmith_mod_vec4_i32(~reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.a, -2147483647i, var_2.a, var_2.a), vec4<i32>(2147483647i, -48129i, -4455i, -2147483647i))) | vec4<i32>(_wgslsmith_add_i32(var_2.a, -26613i) >> (~arg_0 % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_2.a, var_2.a), vec3<i32>(0i, -50275i, var_2.a)), abs(vec3<i32>(-2147483647i, var_2.a, var_2.a))), -_wgslsmith_clamp_i32(-52604i, -1i, -27348i), ~firstLeadingBit(-1i)), firstTrailingBit(firstLeadingBit(vec4<i32>(2147483647i, -2147483647i, var_2.a, 0i))) >> (abs(var_2.d) % vec4<u32>(32u)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 53523u, u_input.b << (u_input.b % 32u)), u_input.a), u_input.c) | abs(0i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x);
}

