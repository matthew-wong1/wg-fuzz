struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(601f, 118f, 1316f, 1000f, 1748f, -1875f, 1334f, -159f, 1403f, -1536f, 1102f);

var<private> global1: vec2<i32> = vec2<i32>(0i, -43713i);

var<private> global2: array<f32, 32> = array<f32, 32>(1562f, -933f, 1191f, 1183f, 978f, 1531f, -608f, -1000f, 178f, 1032f, 386f, 1235f, -362f, 514f, 1163f, -335f, -1326f, -1146f, 392f, 1000f, 615f, 533f, 1000f, -221f, 374f, -536f, -959f, -424f, -162f, 612f, -1937f, -622f);

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec3<i32>(2147483647i, -36565i, i32(-2147483648)), vec2<f32>(-617f, -1164f), -2488i, vec3<u32>(0u, 0u, 13436u), vec3<bool>(true, false, false)), Struct_1(vec3<i32>(-1i, 2147483647i, 2147483647i), vec2<f32>(-1091f, -1401f), -1i, vec3<u32>(13798u, 64406u, 1142u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(-1i, 9665i, i32(-2147483648)), vec2<f32>(-144f, -160f), i32(-2147483648), vec3<u32>(23360u, 4294967295u, 57856u), vec3<bool>(false, false, false)), Struct_1(vec3<i32>(-9720i, 0i, -3759i), vec2<f32>(-546f, 457f), -23812i, vec3<u32>(68026u, 30614u, 28196u), vec3<bool>(false, true, true))), Struct_2(Struct_1(vec3<i32>(3445i, -1i, 2147483647i), vec2<f32>(1017f, -1413f), 2147483647i, vec3<u32>(5909u, 44833u, 0u), vec3<bool>(true, false, true)), Struct_1(vec3<i32>(-1i, 0i, 0i), vec2<f32>(1000f, 491f), -6469i, vec3<u32>(82941u, 4294967295u, 0u), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec3<i32>(-27110i, 2147483647i, -1i), vec2<f32>(-886f, -120f), -19007i, vec3<u32>(69863u, 75864u, 40057u), vec3<bool>(true, true, true)), Struct_1(vec3<i32>(48859i, 0i, 0i), vec2<f32>(221f, 1645f), i32(-2147483648), vec3<u32>(4294967295u, 117500u, 14488u), vec3<bool>(false, true, true))), Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), -1i), vec2<f32>(-1549f, 746f), 0i, vec3<u32>(33793u, 0u, 0u), vec3<bool>(true, true, true)), Struct_1(vec3<i32>(1i, 1i, -57373i), vec2<f32>(-1465f, 533f), -1i, vec3<u32>(22496u, 27903u, 4294967295u), vec3<bool>(false, false, false))), Struct_2(Struct_1(vec3<i32>(25056i, 0i, 27692i), vec2<f32>(-655f, 1266f), 0i, vec3<u32>(1u, 0u, 26468u), vec3<bool>(false, false, true)), Struct_1(vec3<i32>(-58429i, 2147483647i, -294i), vec2<f32>(-1913f, 105f), 1i, vec3<u32>(1u, 17590u, 28144u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(-62774i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-1232f, -237f), 2147483647i, vec3<u32>(93674u, 4294967295u, 4294967295u), vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-9312i, i32(-2147483648), 40008i), vec2<f32>(1281f, -520f), i32(-2147483648), vec3<u32>(0u, 74840u, 59080u), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec3<i32>(1i, -18636i, -1195i), vec2<f32>(682f, 992f), -1i, vec3<u32>(17594u, 4294967295u, 75870u), vec3<bool>(true, true, true)), Struct_1(vec3<i32>(-23490i, 2147483647i, -1i), vec2<f32>(177f, -148f), 0i, vec3<u32>(4294967295u, 1900u, 4294967295u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(1i, 7344i, -1i), vec2<f32>(539f, -1000f), -19145i, vec3<u32>(18935u, 35967u, 0u), vec3<bool>(true, false, false)), Struct_1(vec3<i32>(-38513i, -54482i, -1i), vec2<f32>(-992f, -351f), 1087i, vec3<u32>(23955u, 4349u, 44707u), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, 17361i), vec2<f32>(-685f, -659f), -37218i, vec3<u32>(73479u, 4294967295u, 16116u), vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-28740i, 2147483647i, 2587i), vec2<f32>(722f, -1079f), i32(-2147483648), vec3<u32>(1u, 4294967295u, 1u), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 76771i, 0i), vec2<f32>(2270f, -777f), 1i, vec3<u32>(1u, 4294967295u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(vec3<i32>(21205i, 14084i, 17424i), vec2<f32>(873f, -443f), -42792i, vec3<u32>(42193u, 4294967295u, 129191u), vec3<bool>(false, true, false))), Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, 0i), vec2<f32>(2705f, 343f), 19144i, vec3<u32>(0u, 4294967295u, 20860u), vec3<bool>(true, false, true)), Struct_1(vec3<i32>(-25680i, -7815i, -18220i), vec2<f32>(1289f, 1076f), -1i, vec3<u32>(4294967295u, 0u, 94464u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(20996i, 1i, -1i), vec2<f32>(947f, -1000f), -1i, vec3<u32>(0u, 34714u, 54403u), vec3<bool>(false, false, true)), Struct_1(vec3<i32>(-44636i, 36450i, -1i), vec2<f32>(-820f, -362f), i32(-2147483648), vec3<u32>(1u, 19195u, 0u), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec3<i32>(0i, 0i, 2147483647i), vec2<f32>(1000f, 214f), i32(-2147483648), vec3<u32>(55548u, 2618u, 12509u), vec3<bool>(true, true, true)), Struct_1(vec3<i32>(-1i, -15667i, 0i), vec2<f32>(-1000f, -1398f), 23294i, vec3<u32>(1u, 65917u, 74239u), vec3<bool>(false, true, true))), Struct_2(Struct_1(vec3<i32>(41873i, i32(-2147483648), 43411i), vec2<f32>(-402f, -660f), 25852i, vec3<u32>(1u, 27124u, 65898u), vec3<bool>(false, true, false)), Struct_1(vec3<i32>(-13444i, -6414i, -1i), vec2<f32>(722f, 292f), -18111i, vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(false, true, true))), Struct_2(Struct_1(vec3<i32>(35384i, 6400i, -12192i), vec2<f32>(-905f, 910f), 11734i, vec3<u32>(0u, 25198u, 1u), vec3<bool>(false, true, false)), Struct_1(vec3<i32>(0i, 9334i, -59080i), vec2<f32>(384f, 2649f), -2787i, vec3<u32>(1u, 23540u, 4294967295u), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<i32>(-1469i, 8457i, -1i), vec2<f32>(-847f, -644f), -1i, vec3<u32>(0u, 0u, 65293u), vec3<bool>(false, false, false)), Struct_1(vec3<i32>(27771i, 1i, 0i), vec2<f32>(-1160f, 601f), 1i, vec3<u32>(6060u, 48053u, 1u), vec3<bool>(true, false, false))), Struct_2(Struct_1(vec3<i32>(-31244i, 1i, 31022i), vec2<f32>(927f, -389f), -50930i, vec3<u32>(4294967295u, 27658u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(vec3<i32>(-43730i, -9848i, 11877i), vec2<f32>(405f, -946f), i32(-2147483648), vec3<u32>(21547u, 59587u, 19674u), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<i32>(31028i, -2335i, -1i), vec2<f32>(-1159f, -1238f), 2147483647i, vec3<u32>(21569u, 0u, 44623u), vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-1i, -15829i, 15020i), vec2<f32>(1298f, -2191f), 0i, vec3<u32>(118689u, 4294967295u, 1u), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<i32>(19274i, 14851i, -51094i), vec2<f32>(-366f, -187f), i32(-2147483648), vec3<u32>(1u, 34869u, 37482u), vec3<bool>(false, false, false)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -1i), vec2<f32>(1000f, 2190f), 1i, vec3<u32>(76423u, 92396u, 0u), vec3<bool>(true, true, false))), Struct_2(Struct_1(vec3<i32>(2147483647i, 30233i, 1i), vec2<f32>(-767f, -221f), 10213i, vec3<u32>(79849u, 73584u, 1u), vec3<bool>(true, false, true)), Struct_1(vec3<i32>(53036i, 8494i, 0i), vec2<f32>(-230f, 1556f), -17503i, vec3<u32>(83073u, 1u, 36199u), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec3<i32>(-7253i, -1i, 1i), vec2<f32>(-134f, 747f), -1i, vec3<u32>(4294967295u, 0u, 52509u), vec3<bool>(true, true, false)), Struct_1(vec3<i32>(-1i, -1i, 37155i), vec2<f32>(1413f, -511f), 1i, vec3<u32>(7787u, 11292u, 0u), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, 2147483647i), vec2<f32>(-1486f, 867f), 1i, vec3<u32>(0u, 4294967295u, 27534u), vec3<bool>(true, true, true)), Struct_1(vec3<i32>(50803i, -2079i, -53155i), vec2<f32>(394f, -1623f), -28152i, vec3<u32>(0u, 21495u, 39094u), vec3<bool>(false, false, false))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(35879u, 23u)];
    global3 = array<Struct_2, 23>();
    global0 = array<f32, 11>();
    let var_1 = -2306f;
    return -global1.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    global2 = array<f32, 32>();
    global1 = firstTrailingBit(arg_0.a.a.yz);
    global3 = array<Struct_2, 23>();
    var var_0 = ~global1.x;
    var_0 = _wgslsmith_div_i32(func_2(), 31531i);
    return arg_0.b;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = any(arg_1.e.yy);
    let var_1 = Struct_1(min(vec3<i32>(arg_2.a.c, 1i, 24358i | countOneBits(arg_1.a.x)), min(arg_1.a, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.c, arg_0.x, 2147483647i, -47023i), vec4<i32>(1i, -12323i, arg_2.b.a.x, arg_1.a.x)), global1.x, _wgslsmith_clamp_i32(arg_1.c, 10736i, 22525i)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -323f))) + _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b.b.x, arg_2.b.b.x))))), _wgslsmith_add_i32(~_wgslsmith_mult_i32(-1i, global1.x) << (~0u % 32u), -(~(-5949i)) << (firstTrailingBit(~arg_1.d.x) % 32u)), reverseBits(arg_1.d), arg_1.e);
    var var_2 = arg_2;
    let var_3 = -func_1(Struct_2(Struct_1(vec3<i32>(arg_1.a.x, arg_1.a.x, -7545i) >> (vec3<u32>(arg_2.a.d.x, 4294967295u, 21979u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x) + vec2<f32>(180f, 1959f)), countOneBits(global1.x), vec3<u32>(1u, 13629u, var_2.a.d.x), select(var_1.e, vec3<bool>(false, arg_1.e.x, false), vec3<bool>(arg_1.e.x, arg_1.e.x, arg_2.b.e.x))), arg_1), func_1(arg_2, vec3<bool>(!var_1.e.x, arg_2.b.e.x, !var_2.b.e.x), var_2.b.d.x >> (~0u % 32u)).e, ~(~u_input.a)).c;
    global2 = array<f32, 32>();
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 11>();
    let var_0 = 742f;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(51674u, 11u)] + global0[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_f_op_f32(max(-944f, -2146f))) + global0[_wgslsmith_index_u32(u_input.a, 11u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 32u)] - _wgslsmith_f_op_f32(func_3(max(vec2<i32>(global1.x, -1i), vec2<i32>(0i, global1.x)), func_1(Struct_2(Struct_1(vec3<i32>(global1.x, 15357i, 0i), vec2<f32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)]), -1i, vec3<u32>(34759u, 4294967295u, 4294967295u), vec3<bool>(false, true, true)), Struct_1(vec3<i32>(global1.x, global1.x, -1i), vec2<f32>(-926f, global2[_wgslsmith_index_u32(0u, 32u)]), global1.x, vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, false, true))), vec3<bool>(false, false, false), 0u), global3[_wgslsmith_index_u32(0u, 23u)])))));
    var var_2 = vec2<u32>(11456u, func_1(global3[_wgslsmith_index_u32(firstLeadingBit(18400u), 23u)], !select(func_1(Struct_2(Struct_1(vec3<i32>(-40874i, global1.x, 0i), vec2<f32>(var_0, global0[_wgslsmith_index_u32(5012u, 11u)]), global1.x, vec3<u32>(4294967295u, 66504u, 1596u), vec3<bool>(true, true, false)), Struct_1(vec3<i32>(global1.x, global1.x, global1.x), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 32u)], -1091f), global1.x, vec3<u32>(9978u, u_input.a, u_input.a), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), 4294967295u).e, vec3<bool>(true, true, true), select(true, false, false)), _wgslsmith_mult_u32(4294967295u, 0u)).d.x);
    let var_3 = _wgslsmith_sub_vec2_i32((-vec2<i32>(global1.x, 15561i) | (~vec2<i32>(-16246i, 1i) >> (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))) & (reverseBits(firstTrailingBit(vec2<i32>(global1.x, -12675i))) ^ (-vec2<i32>(global1.x, global1.x) & ~vec2<i32>(-3004i, 0i))), ~(-vec2<i32>(global1.x, global1.x)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, countOneBits(var_2.x)), vec2<u32>(u_input.a, var_2.x) >> (vec2<u32>(9773u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, 3616u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a))), abs(vec2<u32>(var_2.x, u_input.a) << (vec2<u32>(7276u, u_input.a) % vec2<u32>(32u)))), abs(firstLeadingBit(vec2<u32>(var_2.x, 48305u))), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, u_input.a), vec2<u32>(var_2.x, 4294967295u)) << (~vec2<u32>(u_input.a, var_2.x) % vec2<u32>(32u)))), abs(_wgslsmith_add_i32(_wgslsmith_div_i32(abs(global1.x), _wgslsmith_div_i32(35569i, -11273i)), _wgslsmith_clamp_i32(global1.x | -38770i, 1i, global1.x))), reverseBits(min(vec2<i32>(i32(-1i) * -23612i, var_3.x), (vec2<i32>(var_3.x, global1.x) & vec2<i32>(52932i, -1i)) & (vec2<i32>(var_3.x, -2147483647i) ^ vec2<i32>(var_3.x, 9727i)))), global0[_wgslsmith_index_u32(var_2.x, 11u)], 72718u);
}

