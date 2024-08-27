struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(4294967295u, vec2<u32>(4294967295u, 59925u), 22157i), 1i, vec4<i32>(-22133i, 5372i, -5892i, -10364i), Struct_1(4294967295u, vec2<u32>(36007u, 4294967295u), 36869i)), Struct_2(vec3<u32>(65702u, 2857u, 0u), Struct_1(1u, vec2<u32>(27553u, 54339u), 1i), -11556i, vec4<i32>(1i, 2147483647i, -52340i, -1i), Struct_1(24253u, vec2<u32>(4294967295u, 23487u), -44249i)), Struct_2(vec3<u32>(30334u, 1u, 913u), Struct_1(0u, vec2<u32>(65464u, 0u), 2147483647i), -14382i, vec4<i32>(-1835i, 1i, -56021i, -48375i), Struct_1(80340u, vec2<u32>(1u, 4294967295u), 23266i)), Struct_2(vec3<u32>(15280u, 0u, 1u), Struct_1(37585u, vec2<u32>(0u, 40003u), -33130i), -33859i, vec4<i32>(1i, i32(-2147483648), -4901i, 1782i), Struct_1(36450u, vec2<u32>(0u, 4294967295u), -1i)), Struct_2(vec3<u32>(21668u, 45053u, 0u), Struct_1(61046u, vec2<u32>(4294967295u, 52450u), i32(-2147483648)), 0i, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 0i), Struct_1(4294967295u, vec2<u32>(1u, 22345u), -58167i)), Struct_2(vec3<u32>(86977u, 1u, 18979u), Struct_1(23622u, vec2<u32>(28032u, 4294967295u), -9981i), i32(-2147483648), vec4<i32>(-12136i, 1i, 3912i, 2147483647i), Struct_1(4294967295u, vec2<u32>(63165u, 45864u), -50629i)), Struct_2(vec3<u32>(1u, 19006u, 4294967295u), Struct_1(1u, vec2<u32>(0u, 31521u), -27673i), -71277i, vec4<i32>(0i, -1i, 20800i, 2147483647i), Struct_1(76913u, vec2<u32>(47234u, 4294967295u), 38273i)), Struct_2(vec3<u32>(4294967295u, 87301u, 25126u), Struct_1(4294967295u, vec2<u32>(4294967295u, 0u), -38228i), 35420i, vec4<i32>(2147483647i, 13901i, 52520i, 0i), Struct_1(41528u, vec2<u32>(4294967295u, 19925u), -1i)), Struct_2(vec3<u32>(82120u, 0u, 33886u), Struct_1(4294967295u, vec2<u32>(0u, 4454u), 32494i), -6928i, vec4<i32>(2147483647i, 9242i, -9865i, 1i), Struct_1(3432u, vec2<u32>(25439u, 1u), 1i)), Struct_2(vec3<u32>(28180u, 10971u, 10657u), Struct_1(35586u, vec2<u32>(74887u, 60897u), 39632i), 13506i, vec4<i32>(1i, -90015i, 1921i, 0i), Struct_1(8136u, vec2<u32>(97610u, 27319u), 31242i)), Struct_2(vec3<u32>(4294967295u, 33654u, 4294967295u), Struct_1(23395u, vec2<u32>(14820u, 4294967295u), 0i), -14468i, vec4<i32>(43060i, 33970i, 0i, 0i), Struct_1(21087u, vec2<u32>(1u, 100062u), 17743i)), Struct_2(vec3<u32>(69712u, 4294967295u, 1u), Struct_1(2312u, vec2<u32>(0u, 1u), -40474i), 1i, vec4<i32>(-4598i, -22361i, -64894i, 20845i), Struct_1(4294967295u, vec2<u32>(26861u, 1u), i32(-2147483648))), Struct_2(vec3<u32>(3013u, 36658u, 21818u), Struct_1(10230u, vec2<u32>(1u, 1u), 1i), i32(-2147483648), vec4<i32>(70587i, i32(-2147483648), 1i, 3157i), Struct_1(1u, vec2<u32>(38031u, 43115u), 39757i)), Struct_2(vec3<u32>(13893u, 20829u, 10929u), Struct_1(0u, vec2<u32>(36843u, 61591u), 28925i), -1i, vec4<i32>(-8395i, -25954i, 0i, 47630i), Struct_1(1935u, vec2<u32>(9785u, 0u), -11164i)), Struct_2(vec3<u32>(14796u, 21715u, 0u), Struct_1(88069u, vec2<u32>(12378u, 31983u), -1i), -30356i, vec4<i32>(2147483647i, i32(-2147483648), 47706i, -1i), Struct_1(1u, vec2<u32>(48985u, 0u), 29245i)), Struct_2(vec3<u32>(4294967295u, 35648u, 37122u), Struct_1(2475u, vec2<u32>(88441u, 0u), -1i), -11980i, vec4<i32>(-22957i, 2147483647i, 7893i, 2147483647i), Struct_1(0u, vec2<u32>(38418u, 0u), -1i)), Struct_2(vec3<u32>(3084u, 12368u, 1u), Struct_1(1u, vec2<u32>(0u, 24495u), i32(-2147483648)), 6084i, vec4<i32>(1i, -49631i, 2147483647i, 25923i), Struct_1(24811u, vec2<u32>(17321u, 4294967295u), 1i)), Struct_2(vec3<u32>(4294967295u, 8006u, 0u), Struct_1(34463u, vec2<u32>(10063u, 0u), -1i), i32(-2147483648), vec4<i32>(i32(-2147483648), 11331i, -5750i, 809i), Struct_1(4294967295u, vec2<u32>(67435u, 0u), 1i)), Struct_2(vec3<u32>(79127u, 4294967295u, 1u), Struct_1(17934u, vec2<u32>(4294967295u, 0u), -1i), 0i, vec4<i32>(2147483647i, -25354i, 1628i, 20756i), Struct_1(31824u, vec2<u32>(4294967295u, 1u), 0i)), Struct_2(vec3<u32>(3169u, 38081u, 0u), Struct_1(42672u, vec2<u32>(0u, 1u), 0i), -1i, vec4<i32>(70509i, 0i, 0i, -1i), Struct_1(9942u, vec2<u32>(47992u, 4294967295u), -1i)), Struct_2(vec3<u32>(0u, 4294967295u, 0u), Struct_1(4294967295u, vec2<u32>(68323u, 17918u), 15260i), -17093i, vec4<i32>(0i, -2897i, 1i, 2147483647i), Struct_1(1u, vec2<u32>(0u, 4294967295u), -56422i)));

var<private> global2: f32 = 460f;

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = Struct_2(~(~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.a, u_input.e), vec3<u32>(u_input.e, 109412u, u_input.e)), abs(vec3<u32>(u_input.d, 13919u, u_input.a)))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(min(vec3<u32>(u_input.e, u_input.d, u_input.c), vec3<u32>(37015u, u_input.e, u_input.e))), firstTrailingBit(select(vec3<u32>(5073u, u_input.e, u_input.d), vec3<u32>(u_input.a, 25278u, 42400u), true))), vec3<u32>(_wgslsmith_sub_u32(31011u, min(44911u, u_input.e)), 31815u, u_input.e)), 7u)], ~u_input.b.x, u_input.b | vec4<i32>(-46558i, 4878i, reverseBits(_wgslsmith_sub_i32(0i, 1i)), ~u_input.b.x | (1i << (u_input.c % 32u))), global3[_wgslsmith_index_u32(u_input.a, 7u)]);
    var var_1 = min(~(~var_0.e.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.e.a, var_0.e.b.x), vec2<u32>(1021u, u_input.d)), var_0.a.yx)) | abs(_wgslsmith_clamp_u32(var_0.a.x, select(select(var_0.e.b.x, 1464u, arg_0), 18466u, true), _wgslsmith_mod_u32(select(1u, u_input.e, false), abs(13767u))));
    let var_2 = Struct_3(global3[_wgslsmith_index_u32(1u, 7u)], true, ~vec4<u32>(_wgslsmith_clamp_u32(~var_0.b.a, var_0.b.a >> (var_0.e.b.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 49007u, 80576u), vec3<u32>(4294967295u, var_0.b.a, 1u))), var_0.b.a, select(_wgslsmith_dot_vec3_u32(vec3<u32>(3923u, 4294967295u, 0u), var_0.a), abs(4294967295u), false), var_0.e.b.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1683f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f - -878f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1130f), _wgslsmith_f_op_f32(-234f - -920f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(129f, -2013f, var_2.d.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1208f, 1193f, var_2.d.x))), var_2.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.d.x, 1062f, -707f), vec3<f32>(1535f, 329f, -1346f)))), !vec3<bool>(!var_2.b, !var_2.b, any(vec2<bool>(true, true))))), var_2.d));
    global2 = var_2.d.x;
    return _wgslsmith_add_vec4_i32(-u_input.b, vec4<i32>(u_input.b.x, ~select(0i, 1i, true), 16041i, countOneBits(u_input.b.x ^ -23249i)));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = arg_1.a;
    var var_2 = u_input.b.zzw;
    let var_3 = true;
    let var_4 = Struct_4(Struct_2(arg_1.c.wzx, Struct_1(var_1.a | ~arg_1.a.a, ~vec2<u32>(4294967295u, u_input.d), 2147483647i), _wgslsmith_mult_i32(-countOneBits(0i), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, var_0), var_2.yy)), func_3(true) | u_input.b, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.e << (0u % 32u)), 2523u), 7u)]), Struct_3(Struct_1(firstTrailingBit(arg_1.c.x) ^ u_input.e, vec2<u32>(select(23620u, u_input.c, true), ~u_input.d), var_1.c), true, _wgslsmith_add_vec4_u32(arg_1.c, vec4<u32>(91976u | arg_1.a.a, abs(80457u), var_1.a, var_1.b.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1001f * arg_1.d.x), _wgslsmith_f_op_f32(arg_1.d.x + 2572f), arg_1.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(971f, arg_1.d.x, -1639f))))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(~var_1.b.x, ~0u), arg_1.c.x), var_1.b, abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-33369i, var_2.x), _wgslsmith_mod_i32(var_2.x, -2147483647i)))), ~_wgslsmith_sub_vec4_u32(arg_1.c, vec4<u32>(83390u, u_input.e, arg_1.a.a, arg_1.a.a) & (vec4<u32>(var_1.b.x, 4294967295u, 32155u, 0u) >> (vec4<u32>(17507u, 9268u, 4294967295u, 10356u) % vec4<u32>(32u)))));
    return _wgslsmith_mod_u32(4851u, max((89432u | var_1.b.x) & ((var_4.d.x ^ arg_1.c.x) & _wgslsmith_add_u32(var_1.b.x, 10313u)), var_4.a.e.a));
}

fn func_1() -> Struct_4 {
    let var_0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.e, u_input.d)) & 50935u, ~func_2(-1i, Struct_3(Struct_1(u_input.c, vec2<u32>(0u, 10567u), u_input.b.x), true, vec4<u32>(u_input.c, 1u, 1u, 40502u) | vec4<u32>(60495u, u_input.d, u_input.a, 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1218f, 810f, 1040f) * vec3<f32>(-486f, -221f, -1464f)))), u_input.d, 37505u);
    let var_1 = false;
    var var_2 = var_1 | true;
    let var_3 = Struct_1(max(_wgslsmith_mod_u32(~(~4294967295u), var_0.x), 79420u), ~var_0.zy, _wgslsmith_mult_i32(-min(-2147483647i, u_input.b.x) & ~u_input.b.x, -u_input.b.x));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1337f, -1079f, -601f, 156f) + vec4<f32>(943f, 159f, -1000f, 524f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(step(1771f, -594f)), _wgslsmith_f_op_f32(f32(-1f) * -876f), _wgslsmith_f_op_f32(-336f - -1282f))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1508f) * _wgslsmith_f_op_f32(f32(-1f) * -749f)), _wgslsmith_f_op_f32(ceil(-473f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-352f)) + _wgslsmith_f_op_f32(f32(-1f) * -583f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(178f - -1170f), _wgslsmith_f_op_f32(-152f * -2258f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(841f, _wgslsmith_f_op_f32(f32(-1f) * -146f), false && var_1)) * -410f)));
    return Struct_4(global1[_wgslsmith_index_u32(4294967295u, 21u)], Struct_3(var_3, all(vec3<bool>(true, !var_1, true)), vec4<u32>(_wgslsmith_div_u32(7827u, countOneBits(var_0.x)), ~(u_input.a & var_0.x), ~(~16455u), var_3.b.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_4.wwz, var_4.wyw)))))), var_3, ~var_0);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_1(1u, arg_1.d.zy, reverseBits(arg_2.d.x));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2174f) + _wgslsmith_f_op_f32(-arg_0.d.x)), arg_1.b.d.x))) * arg_1.b.d.x);
    global1 = array<Struct_2, 21>();
    let var_1 = -func_1().b.a.c;
    global1 = array<Struct_2, 21>();
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 7>();
    global3 = array<Struct_1, 7>();
    var var_0 = func_4(Struct_3(Struct_1(48799u, _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 45241u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, u_input.d), vec2<u32>(u_input.c, u_input.d))), (u_input.b.x ^ -12870i) ^ -u_input.b.x), true, ~vec4<u32>(~4294967295u, u_input.d ^ 1u, ~3294u, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(step(1000f, 251f)), _wgslsmith_f_op_f32(-1084f - 1049f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(581f, -245f, 1008f) * vec3<f32>(-342f, 560f, -184f)) + vec3<f32>(-1000f, -881f, -1711f)))), func_1(), global1[_wgslsmith_index_u32(u_input.c, 21u)]);
    let var_1 = false || var_0.b;
    global0 = true;
    let var_2 = ~countOneBits(~u_input.a);
    let var_3 = select(select(!select(!vec2<bool>(var_1, var_1), select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), var_1), select(vec2<bool>(true, true), vec2<bool>(true, var_1), vec2<bool>(var_0.b, var_0.b))), !(!vec2<bool>(var_1, true)), !select(!vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_0.b), !vec2<bool>(var_0.b, false))), select(vec2<bool>(true, true), !vec2<bool>(var_0.b, var_1), var_0.b), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2150f, var_0.d.x, var_0.d.x, 1452f)))) - vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -532f))), 578f, _wgslsmith_f_op_f32(-var_0.d.x))));
}

