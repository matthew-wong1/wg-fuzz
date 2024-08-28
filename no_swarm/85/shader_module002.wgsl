struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 21>;

var<private> global3: array<Struct_1, 1>;

var<private> global4: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<f32>(-1328f, -1000f, -2059f), Struct_1(vec3<u32>(55698u, 90305u, 7008u), -1i), vec4<u32>(1u, 1u, 53946u, 74139u), vec2<i32>(-69083i, 2147483647i), 2213f), Struct_2(vec3<f32>(1743f, -1247f, -737f), Struct_1(vec3<u32>(1u, 1u, 4294967295u), -1i), vec4<u32>(1u, 0u, 28800u, 4294967295u), vec2<i32>(-31537i, -16638i), 605f), Struct_2(vec3<f32>(-1049f, 1521f, 1854f), Struct_1(vec3<u32>(67663u, 40825u, 0u), 1i), vec4<u32>(4294967295u, 79657u, 1u, 17118u), vec2<i32>(17118i, -1i), -1003f), Struct_2(vec3<f32>(-470f, 826f, -635f), Struct_1(vec3<u32>(67991u, 4294967295u, 14293u), 2147483647i), vec4<u32>(4294967295u, 17517u, 0u, 83672u), vec2<i32>(2097i, 1i), 893f), Struct_2(vec3<f32>(1000f, 561f, 142f), Struct_1(vec3<u32>(2022u, 4294967295u, 79492u), 0i), vec4<u32>(4294967295u, 14110u, 59843u, 21863u), vec2<i32>(0i, -7245i), -692f), Struct_2(vec3<f32>(135f, 1835f, 1248f), Struct_1(vec3<u32>(4294967295u, 20364u, 1u), 1i), vec4<u32>(0u, 21318u, 71600u, 4294967295u), vec2<i32>(-1i, -28641i), -820f), Struct_2(vec3<f32>(335f, 1717f, -1270f), Struct_1(vec3<u32>(32100u, 426u, 1u), -5525i), vec4<u32>(4294967295u, 65623u, 4294967295u, 20350u), vec2<i32>(70804i, -19895i), 406f), Struct_2(vec3<f32>(803f, -1106f, -574f), Struct_1(vec3<u32>(14580u, 4294967295u, 6124u), 12207i), vec4<u32>(0u, 103556u, 85698u, 8161u), vec2<i32>(0i, 14559i), -1000f), Struct_2(vec3<f32>(352f, -575f, -3329f), Struct_1(vec3<u32>(0u, 17563u, 0u), 13634i), vec4<u32>(77696u, 0u, 55839u, 1u), vec2<i32>(-8996i, 42194i), 1830f), Struct_2(vec3<f32>(945f, 1677f, 1000f), Struct_1(vec3<u32>(45758u, 14430u, 1592u), -37979i), vec4<u32>(4294967295u, 0u, 1u, 9935u), vec2<i32>(19338i, 40333i), 344f), Struct_2(vec3<f32>(-1099f, 453f, -437f), Struct_1(vec3<u32>(4294967295u, 14160u, 1u), i32(-2147483648)), vec4<u32>(47501u, 1u, 4294967295u, 43888u), vec2<i32>(2147483647i, -2307i), -1330f), Struct_2(vec3<f32>(1090f, 951f, -354f), Struct_1(vec3<u32>(4294967295u, 0u, 0u), 2147483647i), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec2<i32>(-58459i, i32(-2147483648)), -1553f), Struct_2(vec3<f32>(-343f, -439f, -622f), Struct_1(vec3<u32>(52976u, 10879u, 24851u), 2147483647i), vec4<u32>(33547u, 1u, 0u, 1u), vec2<i32>(41437i, -52225i), 1133f), Struct_2(vec3<f32>(-2700f, 233f, -2249f), Struct_1(vec3<u32>(2688u, 0u, 0u), 33753i), vec4<u32>(4294967295u, 57192u, 385u, 71039u), vec2<i32>(0i, -27936i), -868f), Struct_2(vec3<f32>(-931f, -373f, 965f), Struct_1(vec3<u32>(7268u, 4294967295u, 0u), i32(-2147483648)), vec4<u32>(4294967295u, 3209u, 99859u, 4294967295u), vec2<i32>(12498i, 1i), 397f), Struct_2(vec3<f32>(-104f, 1685f, -1463f), Struct_1(vec3<u32>(32984u, 13731u, 1u), -15332i), vec4<u32>(0u, 19429u, 4294967295u, 8165u), vec2<i32>(-1i, -19484i), 356f), Struct_2(vec3<f32>(-1405f, 961f, 684f), Struct_1(vec3<u32>(0u, 16929u, 1u), 2147483647i), vec4<u32>(80708u, 1u, 0u, 51858u), vec2<i32>(1i, -57116i), -103f), Struct_2(vec3<f32>(-877f, -515f, 472f), Struct_1(vec3<u32>(23176u, 3116u, 53918u), 2147483647i), vec4<u32>(4294967295u, 1u, 4294967295u, 64342u), vec2<i32>(31243i, 43190i), 1000f), Struct_2(vec3<f32>(1458f, -188f, 292f), Struct_1(vec3<u32>(1u, 39415u, 22188u), 2147483647i), vec4<u32>(31728u, 31098u, 8321u, 1u), vec2<i32>(-19375i, -1i), 1850f), Struct_2(vec3<f32>(619f, 1257f, -489f), Struct_1(vec3<u32>(1u, 4294967295u, 0u), 0i), vec4<u32>(173u, 13830u, 0u, 13588u), vec2<i32>(i32(-2147483648), i32(-2147483648)), 452f), Struct_2(vec3<f32>(-251f, 1304f, -438f), Struct_1(vec3<u32>(0u, 17260u, 1u), 51026i), vec4<u32>(11993u, 58247u, 4294967295u, 1u), vec2<i32>(1i, 1i), -1769f), Struct_2(vec3<f32>(-544f, -721f, 426f), Struct_1(vec3<u32>(4874u, 56894u, 4294967295u), 2147483647i), vec4<u32>(43275u, 34262u, 48561u, 1u), vec2<i32>(-1i, 0i), 2713f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool, arg_1: i32) -> u32 {
    global4 = array<Struct_2, 22>();
    global3 = array<Struct_1, 1>();
    global0 = array<vec4<u32>, 23>();
    let var_0 = global2[_wgslsmith_index_u32(3561u, 21u)];
    let var_1 = select(!vec2<bool>(arg_0, -9956i < (u_input.b.x << (var_0.b.a.x % 32u))), vec2<bool>(arg_0 == false, true), arg_0);
    return var_0.c.x;
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = vec3<u32>(abs(func_3(any(vec2<bool>(true, true)), _wgslsmith_div_i32(2147483647i, u_input.a))), 1u, 1u) | vec3<u32>(~_wgslsmith_div_u32(1u << (1u % 32u), ~0u), _wgslsmith_mult_u32(0u, 1u), ~28893u);
    let var_1 = min(_wgslsmith_sub_vec3_i32(u_input.b.xyz, _wgslsmith_mod_vec3_i32(u_input.b.yyw, vec3<i32>(~u_input.b.x, countOneBits(u_input.a), -19153i))), ~_wgslsmith_div_vec3_i32(u_input.b.xzw, reverseBits(u_input.b.yyw)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f) * arg_0) - _wgslsmith_f_op_f32(arg_0 * -793f)) * arg_0);
    var var_3 = Struct_2(vec3<f32>(951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, var_2)))), _wgslsmith_f_op_f32(1117f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - arg_0), -741f))), Struct_1(vec3<u32>(var_0.x, var_0.x, ~(~var_0.x)), firstTrailingBit(u_input.a)), abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 136769u, 81350u), global0[_wgslsmith_index_u32(1u, 23u)]) ^ select(vec4<u32>(8180u, var_0.x, var_0.x, 0u), ~global0[_wgslsmith_index_u32(var_0.x, 23u)], select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false))), _wgslsmith_mult_vec2_i32(max(abs(vec2<i32>(-4687i, u_input.a)), _wgslsmith_clamp_vec2_i32(var_1.xz, var_1.yy, vec2<i32>(u_input.a, -1i))), vec2<i32>(firstLeadingBit(var_1.x), u_input.a)) | var_1.yz, 629f);
    global4 = array<Struct_2, 22>();
    return vec2<bool>(!all(vec2<bool>(any(vec4<bool>(false, false, true, false)), -1i < var_1.x)), 0u > _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1996u, var_3.c.x), 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(51311u, 2560u) | vec2<u32>(var_3.b.a.x, 4294967295u), vec2<u32>(14978u, 1u) & vec2<u32>(1u, var_3.c.x))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_1 {
    global2 = array<Struct_2, 21>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, arg_2, -1347f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-424f, arg_2, 1460f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -717f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) + vec3<f32>(202f, -353f, arg_2)), vec3<bool>(true, true, true))))), global3[_wgslsmith_index_u32(firstLeadingBit(1u), 1u)], vec4<u32>(countOneBits(0u), firstTrailingBit(4294967295u), 1u, ~0u) & _wgslsmith_sub_vec4_u32(vec4<u32>(min(1u, 38576u), ~4294967295u, ~18865u, select(1u, 1u, false)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(39228u, 31366u), vec2<u32>(6945u, 1u)), ~1u, ~10763u, _wgslsmith_mult_u32(13306u, 0u))), vec2<i32>(-2147483647i, _wgslsmith_mult_i32(arg_0, 17332i)), arg_2);
    var var_1 = all(!select(func_2(arg_2), vec2<bool>(true, true), var_0.c.x != ~20331u));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(var_0.a)), var_0.b, vec4<u32>(var_0.b.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(~var_0.c.x, _wgslsmith_mod_u32(var_0.c.x, 7376u)), 1u), var_0.c.x, min(firstLeadingBit(var_0.c.x & 0u), ~var_0.b.a.x)), vec2<i32>(0i, ~min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0, var_0.d.x), u_input.b.zwy))), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(263f + _wgslsmith_div_f32(arg_2, arg_2)))));
    var var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.a.x, 4294967295u, max(21620u, var_0.c.x)) << (select(var_2.c.wxz, vec3<u32>(~0u, ~31107u, _wgslsmith_sub_u32(var_2.c.x, 4294967295u)), true && any(vec2<bool>(false, true))) % vec3<u32>(32u)), var_2.b.a, select(vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(var_2.c.x), 11770u), var_0.b.a.x, _wgslsmith_clamp_u32(var_2.b.a.x, 18860u, var_0.b.a.x) & countOneBits(var_0.c.x)), reverseBits(~(vec3<u32>(var_0.c.x, 4294967295u, var_2.c.x) << (vec3<u32>(var_0.b.a.x, 37257u, var_2.b.a.x) % vec3<u32>(32u)))), vec3<bool>(true, true, true)));
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = array<vec4<u32>, 23>();
    var var_0 = any(!vec2<bool>((11211u ^ arg_0.b.a.x) == _wgslsmith_mod_u32(17140u, arg_0.b.a.x), true));
    global0 = array<vec4<u32>, 23>();
    let var_1 = arg_0.a.x;
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(round(var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(vec3<f32>(-172f, 822f, 1150f), Struct_1(vec3<u32>(4294967295u, 0u, 433u), u_input.b.x), global0[_wgslsmith_index_u32(0u, 23u)], u_input.b.yz, -272f), func_1(1i, 6380i, -1000f), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(776f, 1791f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -768f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1540f)))), func_1(min(_wgslsmith_dot_vec4_i32(u_input.b | u_input.b, vec4<i32>(-50059i, u_input.a, 2147483647i, 11433i) | vec4<i32>(1907i, 2147483647i, u_input.a, u_input.b.x)), -10224i), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1165f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1321f + 1980f)))), vec4<u32>(24699u, 1u, _wgslsmith_clamp_u32(1u, min(1u, 46648u), ~4739u) << (~_wgslsmith_clamp_u32(0u, 1u, 57398u) % 32u), 1u), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), vec2<i32>(-u_input.a, -_wgslsmith_div_i32(u_input.a, 39252i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1148f, _wgslsmith_f_op_f32(f32(-1f) * -768f))))));
    global0 = array<vec4<u32>, 23>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a), var_0.b, ~(~vec4<u32>(20353u, var_0.b.a.x, 4294967295u, 38338u >> (var_0.c.x % 32u))), vec2<i32>(43961i & -_wgslsmith_dot_vec3_i32(u_input.b.zxz, vec3<i32>(11694i, var_0.d.x, var_0.d.x)), u_input.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(var_0.e * 1000f)), var_0.a.x)));
    global2 = array<Struct_2, 21>();
    let var_2 = 55695u;
    let var_3 = _wgslsmith_add_vec2_u32(var_1.c.yy, var_1.c.zw);
    var var_4 = !(!vec3<bool>(var_1.a.x == -1177f, true, true));
    let var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f - -297f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(-vec2<i32>(0i, u_input.a), var_1.d), ~(i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(select(-_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.b, var_1.d.x), vec2<i32>(-11889i, u_input.a)), vec2<i32>(max(var_0.d.x, var_1.b.b), var_1.b.b), vec2<bool>(true, var_4.x)), u_input.b.wx), ~_wgslsmith_dot_vec4_i32(min(u_input.b, vec4<i32>(var_1.d.x, -31649i, -12653i, u_input.a)) | (u_input.b >> (vec4<u32>(var_1.c.x, 27941u, 1u, var_1.b.a.x) % vec4<u32>(32u))), -u_input.b));
}

