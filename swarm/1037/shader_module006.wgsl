struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(773f, -1006f), vec2<f32>(248f, -455f), vec2<f32>(-1616f, 1471f), vec2<f32>(-381f, -1000f), vec2<f32>(-444f, -1287f), vec2<f32>(-356f, -1000f), vec2<f32>(-688f, 1040f), vec2<f32>(-1175f, -1000f), vec2<f32>(609f, -1159f));

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<f32>(1391f, -1891f), vec2<bool>(false, true), Struct_1(vec4<i32>(6913i, -33946i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-44781i, 0i, 0i, 0i), 1i, 1u), vec4<i32>(2834i, 1i, 1i, 2147483647i), Struct_1(vec4<i32>(-1i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(7847i, 13981i, 1i, i32(-2147483648)), 0i, 82683u)), Struct_2(vec2<f32>(1277f, -1091f), vec2<bool>(true, false), Struct_1(vec4<i32>(-25720i, -1i, 16481i, 1i), vec4<i32>(-1120i, 1i, -65745i, 88996i), 0i, 0u), vec4<i32>(-39735i, -21232i, -1i, i32(-2147483648)), Struct_1(vec4<i32>(14822i, -1i, -4853i, -16043i), vec4<i32>(-1i, -1205i, 0i, 1i), i32(-2147483648), 20309u)), Struct_2(vec2<f32>(-1000f, -314f), vec2<bool>(true, true), Struct_1(vec4<i32>(-27054i, -2439i, 1i, -7643i), vec4<i32>(687i, 2147483647i, -1i, 2147483647i), 79051i, 55160u), vec4<i32>(20125i, -1i, i32(-2147483648), 34377i), Struct_1(vec4<i32>(-39023i, 1i, -1i, 2147483647i), vec4<i32>(0i, 2147483647i, 64193i, 1i), 39057i, 25237u)), Struct_2(vec2<f32>(-468f, 297f), vec2<bool>(false, true), Struct_1(vec4<i32>(1i, 61840i, -1i, 42077i), vec4<i32>(2147483647i, 50460i, 2147483647i, -1i), i32(-2147483648), 4294967295u), vec4<i32>(3634i, 0i, 1i, 7957i), Struct_1(vec4<i32>(43823i, -25816i, -11160i, 0i), vec4<i32>(-4639i, 0i, 2147483647i, -4457i), 2147483647i, 17525u)), Struct_2(vec2<f32>(-1435f, -1294f), vec2<bool>(true, true), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 678i), vec4<i32>(1i, 0i, 7325i, -45904i), -24052i, 86397u), vec4<i32>(-7175i, 2147483647i, 5751i, -35923i), Struct_1(vec4<i32>(-45578i, 12818i, -24937i, 0i), vec4<i32>(-43404i, 1i, 42010i, -37562i), 64951i, 61250u)), Struct_2(vec2<f32>(1000f, -546f), vec2<bool>(true, true), Struct_1(vec4<i32>(0i, i32(-2147483648), 1i, -1i), vec4<i32>(6652i, 5638i, 4967i, 0i), -1i, 20942u), vec4<i32>(-32713i, -1511i, -12008i, -18573i), Struct_1(vec4<i32>(-1i, 29913i, -21379i, 47362i), vec4<i32>(39930i, i32(-2147483648), 2806i, 1i), i32(-2147483648), 27697u)), Struct_2(vec2<f32>(470f, 1635f), vec2<bool>(true, false), Struct_1(vec4<i32>(i32(-2147483648), -38424i, 24268i, 20919i), vec4<i32>(-1i, 0i, i32(-2147483648), 1i), -13827i, 21228u), vec4<i32>(15622i, 17420i, -1i, -1i), Struct_1(vec4<i32>(2147483647i, 17538i, 6382i, -10242i), vec4<i32>(0i, 2147483647i, 36242i, 1i), 1i, 23765u)), Struct_2(vec2<f32>(1019f, 1538f), vec2<bool>(true, true), Struct_1(vec4<i32>(-1i, i32(-2147483648), -5545i, 1i), vec4<i32>(12495i, 0i, 2147483647i, 66681i), -10524i, 9330u), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -14482i), Struct_1(vec4<i32>(-15583i, -1i, 5555i, 24774i), vec4<i32>(2147483647i, -46684i, 1i, -14514i), 1i, 28661u)), Struct_2(vec2<f32>(-613f, -566f), vec2<bool>(true, false), Struct_1(vec4<i32>(2147483647i, 2147483647i, 16704i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -6402i), -33311i, 412u), vec4<i32>(i32(-2147483648), -25632i, 15954i, 11808i), Struct_1(vec4<i32>(-29375i, -22397i, 5022i, i32(-2147483648)), vec4<i32>(13840i, i32(-2147483648), 0i, 15776i), -1i, 0u)), Struct_2(vec2<f32>(-166f, -772f), vec2<bool>(true, true), Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(1i, 1i, i32(-2147483648), -1i), 55226i, 18417u), vec4<i32>(27114i, 24605i, i32(-2147483648), 16124i), Struct_1(vec4<i32>(43997i, 1i, -1i, -12492i), vec4<i32>(-1i, 1i, i32(-2147483648), i32(-2147483648)), 2147483647i, 0u)), Struct_2(vec2<f32>(338f, 468f), vec2<bool>(true, false), Struct_1(vec4<i32>(23698i, 0i, -15955i, 2147483647i), vec4<i32>(3313i, i32(-2147483648), 2147483647i, i32(-2147483648)), 2147483647i, 57611u), vec4<i32>(1i, 0i, 44579i, 5543i), Struct_1(vec4<i32>(27580i, 0i, 30346i, -1i), vec4<i32>(36767i, -53876i, 0i, 62004i), 30404i, 1u)), Struct_2(vec2<f32>(-2103f, -1000f), vec2<bool>(false, false), Struct_1(vec4<i32>(-35317i, -57399i, -16583i, 0i), vec4<i32>(-12020i, 2147483647i, -41250i, -45457i), 2147483647i, 180u), vec4<i32>(i32(-2147483648), -13988i, 0i, -18033i), Struct_1(vec4<i32>(-32362i, 36452i, 5310i, -8959i), vec4<i32>(0i, i32(-2147483648), -1i, -44932i), 11908i, 4294967295u)), Struct_2(vec2<f32>(412f, -2296f), vec2<bool>(true, true), Struct_1(vec4<i32>(-46497i, 0i, 1i, -92698i), vec4<i32>(-1i, 2147483647i, -17844i, 56154i), 0i, 15545u), vec4<i32>(-1297i, 2147483647i, 2147483647i, 36465i), Struct_1(vec4<i32>(2147483647i, -2522i, -12563i, 2147483647i), vec4<i32>(-8292i, -1i, -10150i, 0i), 17445i, 65076u)), Struct_2(vec2<f32>(-847f, -1805f), vec2<bool>(false, true), Struct_1(vec4<i32>(-25605i, 0i, -8889i, i32(-2147483648)), vec4<i32>(-26364i, 1i, 2147483647i, 46562i), 2147483647i, 46838u), vec4<i32>(-40728i, 1i, 61125i, -1i), Struct_1(vec4<i32>(i32(-2147483648), -3216i, -15618i, 0i), vec4<i32>(305i, 22142i, -7122i, -30863i), 2147483647i, 4294967295u)), Struct_2(vec2<f32>(614f, -2057f), vec2<bool>(false, true), Struct_1(vec4<i32>(0i, -1i, 6553i, i32(-2147483648)), vec4<i32>(0i, 63095i, -40596i, 2147483647i), 42751i, 40026u), vec4<i32>(2147483647i, 0i, 1i, -15839i), Struct_1(vec4<i32>(2147483647i, 1i, -32701i, 9077i), vec4<i32>(1i, -57130i, 2147483647i, 1i), -1i, 24881u)), Struct_2(vec2<f32>(1607f, -199f), vec2<bool>(true, false), Struct_1(vec4<i32>(2147483647i, 0i, -2753i, 2147483647i), vec4<i32>(-42249i, 2147483647i, -11909i, -19054i), 36004i, 4294967295u), vec4<i32>(i32(-2147483648), 1i, 1i, 0i), Struct_1(vec4<i32>(-1i, 28841i, -2540i, 91408i), vec4<i32>(2147483647i, 27940i, 28205i, 0i), 1i, 4294967295u)), Struct_2(vec2<f32>(-1521f, 1404f), vec2<bool>(true, false), Struct_1(vec4<i32>(2147483647i, 52379i, -1i, 0i), vec4<i32>(1i, 0i, 1i, -31801i), -8029i, 1u), vec4<i32>(42804i, i32(-2147483648), 16779i, 27934i), Struct_1(vec4<i32>(74700i, 0i, 13889i, -31431i), vec4<i32>(-19608i, 22998i, 6452i, i32(-2147483648)), -58677i, 1u)), Struct_2(vec2<f32>(323f, 374f), vec2<bool>(false, true), Struct_1(vec4<i32>(12766i, 46612i, 1i, 51438i), vec4<i32>(-1i, -26837i, 30881i, -30583i), 1i, 62248u), vec4<i32>(1i, 1i, -1i, 2147483647i), Struct_1(vec4<i32>(15114i, 18745i, 2147483647i, -1481i), vec4<i32>(-34843i, -1i, i32(-2147483648), 1i), 1i, 5278u)), Struct_2(vec2<f32>(-578f, 307f), vec2<bool>(false, false), Struct_1(vec4<i32>(58390i, 1662i, -36466i, 1i), vec4<i32>(0i, -13560i, 56841i, i32(-2147483648)), -23545i, 91492u), vec4<i32>(i32(-2147483648), 72725i, -1i, 0i), Struct_1(vec4<i32>(-36442i, -41403i, 1i, 6018i), vec4<i32>(-42944i, 0i, 0i, 17923i), i32(-2147483648), 4294967295u)), Struct_2(vec2<f32>(-800f, 353f), vec2<bool>(false, true), Struct_1(vec4<i32>(1i, 2147483647i, 1i, 34390i), vec4<i32>(17736i, -11525i, -1i, 22234i), i32(-2147483648), 0u), vec4<i32>(-17382i, 2147483647i, -26161i, 18400i), Struct_1(vec4<i32>(1i, -13370i, i32(-2147483648), 50885i), vec4<i32>(35171i, i32(-2147483648), -1i, 2147483647i), 1i, 75467u)), Struct_2(vec2<f32>(-1882f, 548f), vec2<bool>(false, true), Struct_1(vec4<i32>(-4658i, 8522i, 48727i, 1i), vec4<i32>(0i, 49474i, 5378i, -17372i), i32(-2147483648), 4294967295u), vec4<i32>(27789i, 0i, -12068i, -32252i), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -14505i, 0i), vec4<i32>(2147483647i, 49221i, -21802i, -59825i), -1i, 4294967295u)), Struct_2(vec2<f32>(-357f, -109f), vec2<bool>(true, false), Struct_1(vec4<i32>(-3060i, 1i, 14198i, -40843i), vec4<i32>(31116i, -1i, -11394i, -46711i), 12941i, 19672u), vec4<i32>(i32(-2147483648), -11159i, -40347i, 1003i), Struct_1(vec4<i32>(1072i, 2147483647i, i32(-2147483648), 8629i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, i32(-2147483648)), i32(-2147483648), 1u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-616f + 264f) - _wgslsmith_f_op_f32(f32(-1f) * -1801f)))), 1125f);
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-211f, 1668f))))));
    let var_1 = _wgslsmith_div_u32(4294967295u, ~countOneBits(~firstLeadingBit(14769u)));
    var var_2 = ~min(~67731u, 4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1, 77652u, u_input.d.x), ~vec4<u32>(var_1, var_1, u_input.b, u_input.d.x)) % 32u));
    var var_3 = !arg_1;
    return var_0.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1729f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -730f) + -288f), _wgslsmith_div_f32(-145f, _wgslsmith_f_op_f32(1514f + -474f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(688f, -160f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, arg_1.x, true), vec3<bool>(false, false, arg_3.a.x))) * _wgslsmith_f_op_f32(777f - 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -650f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-369f + -861f))), -1229f) + vec4<f32>(-545f, -1708f, 711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f) + _wgslsmith_f_op_f32(474f * -560f)))));
    let var_1 = _wgslsmith_add_vec3_u32(countOneBits(~abs(~arg_0)), _wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.b.d, arg_3.b.d, arg_3.b.d), arg_0, arg_0), _wgslsmith_mod_vec3_u32(arg_0, ~vec3<u32>(108701u, 0u, u_input.d.x))) >> (vec3<u32>(~u_input.b, ~1u, abs(reverseBits(u_input.d.x))) % vec3<u32>(32u)));
    global2 = array<Struct_2, 22>();
    var var_2 = var_1.x;
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~(92076u >> (min(var_1.x, var_1.x) % 32u)), 9u)] * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.yw, _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(arg_0.x, 9u)] + var_0.zw))))), vec2<bool>(all(vec4<bool>(!arg_1.x, any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_3.a.x)), true, arg_3.a.x)), arg_3.a.x), arg_3.b, -arg_2, arg_3.b);
    return firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_3.c.b, var_3.d), -26370i), -_wgslsmith_dot_vec3_i32(arg_3.b.a.yxz, arg_2.xww))) << (firstLeadingBit(46333u) % 32u);
}

fn func_1() -> u32 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(1150f, -424f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1135f, -533f)))), !(!vec2<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, false)))), Struct_1(~(-vec4<i32>(-20601i, 1i, 24025i, 1i)), countOneBits(~(vec4<i32>(-18328i, -1i, u_input.e, u_input.a) | vec4<i32>(-11814i, u_input.a, 0i, -1i))), ~(u_input.c & 2147483647i), u_input.d.x), _wgslsmith_div_vec4_i32(vec4<i32>(-13941i, -u_input.a, -9126i, 2534i), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.e, u_input.c, 1i, u_input.a) & vec4<i32>(4714i, u_input.e, 28203i, 536i), vec4<i32>(u_input.a, u_input.a, -23046i, u_input.e), vec4<bool>(true, true, true, true)), countOneBits(~vec4<i32>(-1i, 38173i, u_input.e, 2147483647i)))), Struct_1(vec4<i32>(_wgslsmith_add_i32(-7172i, ~45634i), min(-11434i, u_input.a << (u_input.b % 32u)), func_2(~vec3<u32>(u_input.d.x, 0u, 32766u), vec4<bool>(true, true, true, true), -vec4<i32>(-14264i, -1i, -16758i, u_input.e), Struct_3(vec2<bool>(false, false), Struct_1(vec4<i32>(-16080i, 0i, u_input.c, u_input.a), vec4<i32>(u_input.e, u_input.e, -1i, u_input.a), -9442i, 1u))), -1i), vec4<i32>(max(u_input.a, -2147483647i & u_input.a), _wgslsmith_sub_i32(abs(u_input.a), u_input.a), firstLeadingBit(_wgslsmith_div_i32(-2011i, u_input.a)), abs(-41773i)), -37742i, ~1u));
    let var_1 = var_0.b;
    let var_2 = true;
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, select(u_input.b << ((u_input.d.x | 80380u) % 32u), firstLeadingBit(u_input.d.x), any(vec4<bool>(select(false, true, var_1.x), var_2, select(var_2, var_0.b.x, true), all(var_0.b))))), 22u)];
    var var_3 = global2[_wgslsmith_index_u32(1u, 22u)];
    return _wgslsmith_add_u32(62935u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 9>();
    global0 = 50860i >> (~(func_1() << (~u_input.b % 32u)) % 32u);
    var var_0 = Struct_3(vec2<bool>(true, true), Struct_1(firstLeadingBit(countOneBits(vec4<i32>(u_input.c, u_input.a, -2147483647i, u_input.a)) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 32926i, u_input.a), vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.c))), -vec4<i32>(u_input.c << (u_input.d.x % 32u), -35285i, abs(0i), u_input.e), u_input.e, _wgslsmith_mult_u32(abs(24395u ^ u_input.d.x), min(select(u_input.d.x, 0u, false), 1u))));
    var var_1 = vec2<u32>(abs(~(_wgslsmith_sub_u32(u_input.b, 0u) & ~var_0.b.d)), var_0.b.d);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b.d, select(select(~3605u >> (var_0.b.d % 32u), _wgslsmith_div_u32(u_input.d.x & var_1.x, var_1.x | 40047u), true), _wgslsmith_mod_u32(~min(u_input.b, 11173u), ~4294967295u), true || any(vec4<bool>(var_0.a.x, false, true, var_0.a.x)))), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, 8893u & var_0.b.d, vec3<f32>(-1621f, _wgslsmith_f_op_f32(step(var_2.a.x, 375f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_2.a.x, 1324f)))) + var_2.a.x)), abs(var_0.b.b.wyx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.a.x)), _wgslsmith_f_op_f32(var_2.a.x + -609f), _wgslsmith_f_op_f32(trunc(var_2.a.x)))))));
}

