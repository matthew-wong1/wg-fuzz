struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(0u, 4294967295u, 9967u, 19360u), vec4<u32>(4294967295u, 1u, 42628u, 34182u), vec4<u32>(24418u, 34483u, 0u, 82889u), vec4<u32>(47094u, 4294967295u, 4294967295u, 34413u), vec4<u32>(0u, 4294967295u, 4294967295u, 55459u), vec4<u32>(11185u, 0u, 1u, 87399u), vec4<u32>(0u, 34817u, 39107u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 50874u), vec4<u32>(29145u, 18854u, 0u, 30651u), vec4<u32>(9636u, 55885u, 46434u, 4294967295u), vec4<u32>(94747u, 33387u, 4294967295u, 4294967295u), vec4<u32>(45976u, 0u, 1u, 7733u), vec4<u32>(39009u, 63411u, 1u, 4294967295u), vec4<u32>(36297u, 75687u, 4294967295u, 1u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(1u, 0u, 4294967295u, 51047u), vec4<u32>(59114u, 22673u, 1u, 62056u), vec4<u32>(4294967295u, 62502u, 0u, 17297u), vec4<u32>(0u, 34830u, 93190u, 87190u), vec4<u32>(0u, 14132u, 4294967295u, 20581u), vec4<u32>(1u, 4294967295u, 7441u, 0u), vec4<u32>(4294967295u, 66325u, 4294967295u, 69253u), vec4<u32>(1u, 20016u, 32780u, 19803u), vec4<u32>(6803u, 1654u, 16682u, 16158u), vec4<u32>(65715u, 1u, 1u, 7913u), vec4<u32>(32843u, 4294967295u, 42729u, 58704u), vec4<u32>(37088u, 1u, 1u, 23402u));

var<private> global2: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(1i, 0i, 1i, i32(-2147483648)), vec4<i32>(-35619i, -28691i, 0i, 0i), vec4<i32>(0i, 7171i, 1i, -14641i), vec4<i32>(1i, 0i, 0i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, 0i, 3161i), vec4<i32>(-1i, 24624i, -45717i, -1i), vec4<i32>(-12916i, -19795i, i32(-2147483648), 31566i), vec4<i32>(-26190i, -32506i, 0i, -2413i), vec4<i32>(6714i, 0i, 26437i, 28317i), vec4<i32>(-26689i, i32(-2147483648), 46716i, 1i), vec4<i32>(-1i, -47385i, -2527i, 23063i), vec4<i32>(6280i, 32995i, -1i, -11071i), vec4<i32>(i32(-2147483648), 10754i, -1i, -1i), vec4<i32>(1i, 25639i, -65304i, 20021i));

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec3<f32>(875f, 580f, 533f), Struct_1(-1236f, -1i, vec2<u32>(1u, 58097u)), Struct_1(-809f, 9890i, vec2<u32>(20179u, 4294967295u))), Struct_2(vec3<f32>(1661f, 1037f, -731f), Struct_1(489f, 2147483647i, vec2<u32>(1367u, 5407u)), Struct_1(-729f, -50416i, vec2<u32>(0u, 24408u))), Struct_2(vec3<f32>(1300f, 469f, 1319f), Struct_1(-1338f, 19971i, vec2<u32>(19982u, 0u)), Struct_1(751f, 1i, vec2<u32>(26274u, 6469u))), Struct_2(vec3<f32>(-1138f, 1189f, 1085f), Struct_1(534f, -10266i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(720f, 0i, vec2<u32>(21554u, 49923u))), Struct_2(vec3<f32>(-1952f, 1996f, -1288f), Struct_1(-1000f, i32(-2147483648), vec2<u32>(1u, 0u)), Struct_1(-270f, 14650i, vec2<u32>(6801u, 4294967295u))), Struct_2(vec3<f32>(-262f, -1000f, -223f), Struct_1(-2118f, -1i, vec2<u32>(15554u, 18559u)), Struct_1(-1675f, 19765i, vec2<u32>(30168u, 4294967295u))), Struct_2(vec3<f32>(-1000f, -497f, 1390f), Struct_1(1110f, 0i, vec2<u32>(0u, 53862u)), Struct_1(-414f, -12419i, vec2<u32>(42642u, 4294967295u))), Struct_2(vec3<f32>(1000f, -1017f, 282f), Struct_1(573f, -28085i, vec2<u32>(26389u, 0u)), Struct_1(1032f, 24208i, vec2<u32>(4294967295u, 123318u))), Struct_2(vec3<f32>(1000f, -1000f, -1635f), Struct_1(-1000f, 47663i, vec2<u32>(0u, 0u)), Struct_1(1000f, 33017i, vec2<u32>(4294967295u, 1u))), Struct_2(vec3<f32>(1000f, 804f, 538f), Struct_1(-504f, -30920i, vec2<u32>(1u, 0u)), Struct_1(-1000f, 1i, vec2<u32>(0u, 4294967295u))), Struct_2(vec3<f32>(-921f, 525f, -487f), Struct_1(-1161f, 54371i, vec2<u32>(30081u, 13414u)), Struct_1(246f, -57151i, vec2<u32>(1u, 36237u))), Struct_2(vec3<f32>(301f, -221f, 1124f), Struct_1(444f, i32(-2147483648), vec2<u32>(4294967295u, 42135u)), Struct_1(-1756f, 4255i, vec2<u32>(3454u, 23761u))), Struct_2(vec3<f32>(1368f, 643f, 1569f), Struct_1(849f, 57807i, vec2<u32>(0u, 1u)), Struct_1(240f, -36306i, vec2<u32>(4294967295u, 14270u))), Struct_2(vec3<f32>(150f, 304f, -1501f), Struct_1(-842f, 0i, vec2<u32>(59800u, 1u)), Struct_1(-175f, -1i, vec2<u32>(1979u, 0u))), Struct_2(vec3<f32>(1258f, -801f, 2275f), Struct_1(1247f, 1i, vec2<u32>(16132u, 10584u)), Struct_1(-568f, -11099i, vec2<u32>(0u, 53741u))));

var<private> global4: array<f32, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_2) -> i32 {
    let var_0 = !vec4<bool>(true, false, 1i >= firstTrailingBit(-2147483647i), true);
    let var_1 = -868f;
    let var_2 = select(select(vec2<bool>(all(vec3<bool>(true, false, var_0.x)), var_0.x), !var_0.xz, !var_0.zx), select(!(!vec2<bool>(false, var_0.x)), var_0.xy, !var_0.x), !vec2<bool>(false, _wgslsmith_mod_u32(arg_1.x, 1u) < abs(6438u)));
    let var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.c.a + -185f), arg_0.x))), _wgslsmith_f_op_f32(min(549f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + global0[_wgslsmith_index_u32(28108u, 23u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 23u)] * 1000f))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-var_1)), -223f), _wgslsmith_mod_i32(-2147483647i, ~arg_2.b.b) >> (5906u % 32u), abs(min(vec2<u32>(u_input.c.x, arg_2.c.c.x) << (u_input.c.zz % vec2<u32>(32u)), u_input.c.yx))), Struct_1(var_1, select(~arg_2.c.b, u_input.b, u_input.b > u_input.b), arg_2.b.c));
    return -2147483647i;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    global3 = array<Struct_2, 15>();
    var var_0 = arg_3.a.yx;
    var var_1 = !select(vec4<bool>(arg_0.x <= ~17759u, any(!vec4<bool>(arg_1, arg_1, false, true)), false, _wgslsmith_mult_u32(arg_3.c.c.x, 4294967295u) == _wgslsmith_mod_u32(arg_3.b.c.x, u_input.c.x)), !(!(!vec4<bool>(true, false, arg_1, true))), !(!(!vec4<bool>(arg_1, arg_1, true, false))));
    var_0 = arg_3.a.zz;
    let var_2 = arg_0.wxy ^ ~(~u_input.c);
    return _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~(u_input.c.x << (arg_0.x % 32u)), 28u)] + 906f);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(u_input.a, 27u)], true, select(vec3<i32>(u_input.b, ~50346i, max(19638i, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -52054i, u_input.b), vec3<i32>(u_input.b, 2147483647i, 1i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.a, 28u)], 879f, global0[_wgslsmith_index_u32(1u, 23u)])), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), -1i, firstTrailingBit(u_input.c.xz)), Struct_1(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(u_input.c.x, 28u)])), func_3(vec4<f32>(1460f, -586f, 1000f, global4[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec3<u32>(u_input.c.x, 4294967295u, 12328u), Struct_2(vec3<f32>(global4[_wgslsmith_index_u32(19027u, 28u)], -119f, -1424f), Struct_1(-1287f, u_input.b, vec2<u32>(40211u, u_input.c.x)), Struct_1(751f, -1i, vec2<u32>(0u, u_input.a)))), u_input.c.xy >> (vec2<u32>(34452u, u_input.c.x) % vec2<u32>(32u)))))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-4471i, -39285i, -1305i) << (u_input.c % vec3<u32>(32u)), -vec3<i32>(u_input.b, u_input.b, 4945i)), -7170i), vec2<u32>(abs(1u), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(7542u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), vec4<u32>(u_input.c.x, 76329u, 4294967295u, u_input.c.x)), ~(~31741u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1101f))) - -1000f) + global4[_wgslsmith_index_u32(var_0.c.x, 28u)]), _wgslsmith_mod_i32(u_input.b, -9586i), reverseBits(vec2<u32>(u_input.c.x, var_0.c.x)));
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~(i32(-1i) * -2147483647i), var_0.b, u_input.b), -vec3<i32>(-1i, reverseBits(var_0.b), -1i), select((min(vec3<i32>(-10380i, var_1.b, u_input.b), vec3<i32>(var_1.b, -2147483647i, 1i)) << (vec3<u32>(var_1.c.x, 0u, u_input.c.x) % vec3<u32>(32u))) & vec3<i32>(var_1.b, 66982i, 1i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.b, var_0.b, u_input.b), vec4<i32>(var_1.b, -23688i, 0i, -2147483647i)), select(_wgslsmith_sub_i32(var_1.b, 31723i), u_input.b, select(false, true, false)), _wgslsmith_mod_i32(~35712i, -13734i >> (var_0.c.x % 32u))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f)), _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(5094u, var_1.c.x), 14u)] << (~vec4<u32>(0u, u_input.c.x, 0u, 49476u) % vec4<u32>(32u)), vec4<i32>(abs(u_input.b), 10158i, var_1.b, -2147483647i)), abs(~(var_0.c | (vec2<u32>(28597u, 0u) & var_1.c))));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-495f)))));
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(40452u, _wgslsmith_mult_u32(var_0.c.x, 13473u), _wgslsmith_mod_u32(var_0.c.x, 4294967295u)), ~_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(var_0.c.x, 0u, var_0.c.x)), u_input.c)) ^ (~_wgslsmith_clamp_u32(reverseBits(4294967295u), var_3.c.x ^ 11863u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, var_0.c.x, var_3.c.x), u_input.c)) >> (~55114u % 32u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(341f, global0[_wgslsmith_index_u32(1u, 23u)], 1444f), vec3<f32>(-895f, 503f, arg_1.b.a))))))), arg_1.c, arg_1.c);
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = Struct_3(func_5(global3[_wgslsmith_index_u32(62792u, 15u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(countOneBits(85989u), func_2()), ~(~u_input.c.x)), 15u)]));
    let var_1 = _wgslsmith_f_op_f32(round(-576f));
    global2 = array<vec4<i32>, 14>();
    global1 = array<vec4<u32>, 27>();
    global0 = array<f32, 23>();
    return global0[_wgslsmith_index_u32(0u, 23u)];
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    global4 = array<f32, 28>();
    let var_0 = ~arg_2.c.c.x;
    global3 = array<Struct_2, 15>();
    global1 = array<vec4<u32>, 27>();
    var var_1 = countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(1u & var_0, 14109u), ~(1u >> (u_input.c.x % 32u))), 14u)] & ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(31368u, ~var_0), 14u)]);
    return Struct_3(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global3 = array<Struct_2, 15>();
    var var_1 = ~abs(31196u);
    let var_2 = global3[_wgslsmith_index_u32(~u_input.a, 15u)];
    var var_3 = func_6(Struct_1(_wgslsmith_f_op_f32(func_1(false)), 33394i, var_2.b.c), ~u_input.b & 0i, global3[_wgslsmith_index_u32(~23995u, 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(abs(global1[_wgslsmith_index_u32(1u, 27u)]), any(vec4<bool>(true, false, true, true)), min(vec3<i32>(var_2.b.b, 2147483647i, -1i), vec3<i32>(-16256i, 0i, var_2.b.b)), func_5(global3[_wgslsmith_index_u32(u_input.a, 15u)], global3[_wgslsmith_index_u32(var_2.c.c.x, 15u)]))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-348f + 1308f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(5036u, 23u)], -450f), true))) < _wgslsmith_f_op_f32(-1f));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<u32>(6879u, var_3.a.b.c.x, 56858u, 0u) | ~vec4<u32>(var_3.a.b.c.x, 1u, 18691u, var_3.a.b.c.x), true, max(vec3<i32>(53040i, var_3.a.b.b, -2147483647i), -vec3<i32>(-16501i, 2147483647i, u_input.b)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(201f, global0[_wgslsmith_index_u32(var_2.c.c.x, 23u)], global0[_wgslsmith_index_u32(33562u, 23u)])), func_6(var_3.a.b, var_2.b.b, Struct_2(vec3<f32>(-225f, var_3.a.c.a, -1862f), var_2.b, Struct_1(var_3.a.b.a, u_input.b, var_3.a.b.c)), false).a.b, var_2.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a)))));
    var_0 = -2147483647i;
    var var_5 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec2<bool>(true, false)))), vec2<bool>(var_2.a.x >= _wgslsmith_f_op_f32(f32(-1f) * -487f), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_6 = abs(~vec3<u32>(~var_2.b.c.x, u_input.c.x >> (var_3.a.c.c.x % 32u), var_3.a.c.c.x)) >> (countOneBits(vec3<u32>(~0u, firstTrailingBit(73516u), u_input.a) ^ u_input.c) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(func_5(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(649f, -1069f, -1000f))), var_2.c, var_2.b), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.c.x, 28u)], 566f, var_2.a.x)), var_3.a.b, Struct_1(global4[_wgslsmith_index_u32(var_2.b.c.x, 28u)], u_input.b, u_input.c.zz))).b.b, _wgslsmith_div_i32(-min(var_3.a.b.b, 2147483647i), var_3.a.c.b << (1u % 32u))), global4[_wgslsmith_index_u32(~u_input.a, 28u)], var_3.a.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-3144f)), _wgslsmith_f_op_f32(var_3.a.b.a - var_2.c.a))))));
}

