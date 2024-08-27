struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11>;

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec2<u32>(7504u, 1u), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -25027i, 1i, 72381i), -1i, 19553u, 6650u), Struct_1(vec4<i32>(8521i, 2147483647i, 21882i, 10408i), 2147483647i, 0u, 8580u), 0u, true), 1i, vec2<f32>(-516f, 1674f), -1000f), Struct_3(vec2<u32>(1u, 53773u), Struct_2(Struct_1(vec4<i32>(43482i, -1i, -24096i, 1i), 12838i, 38878u, 4294967295u), Struct_1(vec4<i32>(0i, 2147483647i, -1i, -24700i), -14667i, 52523u, 27039u), 19786u, true), 34296i, vec2<f32>(-301f, -1370f), 154f), Struct_3(vec2<u32>(44999u, 0u), Struct_2(Struct_1(vec4<i32>(1i, 2664i, i32(-2147483648), 0i), 9611i, 17953u, 0u), Struct_1(vec4<i32>(44485i, 12975i, -177i, 1i), -49845i, 2057u, 0u), 56711u, true), -1i, vec2<f32>(-1490f, 500f), 1339f), Struct_3(vec2<u32>(4294967295u, 88619u), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 29073i), 12357i, 10097u, 37974u), Struct_1(vec4<i32>(30996i, 36572i, 48035i, -1i), 0i, 8842u, 72772u), 55825u, true), -6081i, vec2<f32>(-806f, -272f), -980f), Struct_3(vec2<u32>(4294967295u, 130435u), Struct_2(Struct_1(vec4<i32>(-1i, 1i, 21648i, 2147483647i), -1i, 1u, 0u), Struct_1(vec4<i32>(21794i, 9183i, 36050i, -9508i), 1i, 37637u, 15986u), 89635u, true), i32(-2147483648), vec2<f32>(-274f, 1161f), -1747f), Struct_3(vec2<u32>(14297u, 10773u), Struct_2(Struct_1(vec4<i32>(19690i, 1i, 2147483647i, -32493i), -28412i, 11770u, 0u), Struct_1(vec4<i32>(7656i, 12046i, 17532i, -1i), -16782i, 0u, 69606u), 1u, true), i32(-2147483648), vec2<f32>(1483f, -2060f), 543f), Struct_3(vec2<u32>(24772u, 33970u), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -30958i, -37241i), -1i, 1u, 24639u), Struct_1(vec4<i32>(46402i, i32(-2147483648), 0i, 2147483647i), 18386i, 27640u, 0u), 4294967295u, false), 20361i, vec2<f32>(113f, 909f), 968f), Struct_3(vec2<u32>(28102u, 0u), Struct_2(Struct_1(vec4<i32>(-36004i, -39468i, i32(-2147483648), 0i), 55983i, 0u, 102029u), Struct_1(vec4<i32>(4279i, 2147483647i, 19323i, 1702i), 1i, 48203u, 1u), 21376u, false), 47847i, vec2<f32>(322f, -1352f), 641f), Struct_3(vec2<u32>(4294967295u, 72358u), Struct_2(Struct_1(vec4<i32>(3912i, 1i, -4896i, 2147483647i), -20950i, 17579u, 50856u), Struct_1(vec4<i32>(393i, -1i, -13203i, -59504i), 2147483647i, 20158u, 18059u), 4294967295u, true), 84457i, vec2<f32>(-683f, -576f), 715f), Struct_3(vec2<u32>(36744u, 0u), Struct_2(Struct_1(vec4<i32>(2147483647i, -17437i, -86945i, 0i), 3023i, 113610u, 3232u), Struct_1(vec4<i32>(1i, 0i, 50920i, 2147483647i), 0i, 42183u, 0u), 4294967295u, false), -7442i, vec2<f32>(1326f, 244f), -818f), Struct_3(vec2<u32>(0u, 0u), Struct_2(Struct_1(vec4<i32>(0i, 1i, -17151i, -39456i), -21899i, 38174u, 0u), Struct_1(vec4<i32>(5754i, 59009i, -12291i, i32(-2147483648)), 6757i, 9422u, 3713u), 47294u, false), 2147483647i, vec2<f32>(-692f, -689f), -1690f), Struct_3(vec2<u32>(37763u, 0u), Struct_2(Struct_1(vec4<i32>(-317i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), i32(-2147483648), 1u, 1u), Struct_1(vec4<i32>(16434i, -55891i, -26072i, 29472i), -19162i, 43657u, 1u), 20634u, false), 0i, vec2<f32>(1728f, 1194f), 738f), Struct_3(vec2<u32>(4294967295u, 75087u), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -6095i, 26861i), -34429i, 64051u, 28359u), Struct_1(vec4<i32>(-12784i, -32421i, -12674i, -1i), 17402i, 4294967295u, 69162u), 30985u, true), -10994i, vec2<f32>(-986f, -431f), -754f), Struct_3(vec2<u32>(4294967295u, 38375u), Struct_2(Struct_1(vec4<i32>(1i, -37801i, 2147483647i, 1398i), 1i, 0u, 59816u), Struct_1(vec4<i32>(0i, 1i, 1i, 2147483647i), 1i, 14680u, 0u), 21261u, false), 41061i, vec2<f32>(-1707f, -1292f), 405f), Struct_3(vec2<u32>(21637u, 4294967295u), Struct_2(Struct_1(vec4<i32>(25383i, 3772i, -8210i, 45787i), -7994i, 77974u, 4294967295u), Struct_1(vec4<i32>(-1i, -44712i, -2775i, -31209i), i32(-2147483648), 4294967295u, 63964u), 0u, false), 2147483647i, vec2<f32>(1029f, -665f), -1000f), Struct_3(vec2<u32>(0u, 6131u), Struct_2(Struct_1(vec4<i32>(-1i, -1i, 1i, -1i), -1i, 0u, 64361u), Struct_1(vec4<i32>(0i, -1i, -1i, -1i), -24505i, 4294967295u, 4294967295u), 42733u, true), 20496i, vec2<f32>(-516f, 251f), 1000f), Struct_3(vec2<u32>(0u, 0u), Struct_2(Struct_1(vec4<i32>(24014i, -31711i, 1i, -1i), 2147483647i, 0u, 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), -14253i, 1845i, -1i), 28406i, 1u, 1u), 127637u, true), 9960i, vec2<f32>(-210f, -1394f), -598f), Struct_3(vec2<u32>(39181u, 40464u), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 52665i, 11040i, 0i), 2147483647i, 0u, 1u), Struct_1(vec4<i32>(i32(-2147483648), 12174i, 0i, 8176i), -845i, 46522u, 39313u), 1u, false), -1317i, vec2<f32>(-680f, -336f), 765f), Struct_3(vec2<u32>(28848u, 43495u), Struct_2(Struct_1(vec4<i32>(2147483647i, -68058i, -697i, 2147483647i), 1i, 1u, 59459u), Struct_1(vec4<i32>(-41498i, 80680i, i32(-2147483648), 25605i), 25324i, 43755u, 1u), 12451u, false), -38716i, vec2<f32>(-1029f, -810f), -1336f), Struct_3(vec2<u32>(1u, 4294967295u), Struct_2(Struct_1(vec4<i32>(46506i, -7951i, 1i, 2147483647i), 1i, 84621u, 1u), Struct_1(vec4<i32>(2147483647i, 60935i, i32(-2147483648), -40217i), -21849i, 4294967295u, 20205u), 4922u, true), 7466i, vec2<f32>(-1681f, 1099f), 664f), Struct_3(vec2<u32>(50375u, 4294967295u), Struct_2(Struct_1(vec4<i32>(1i, 48385i, 0i, -42462i), 58971i, 84432u, 4294967295u), Struct_1(vec4<i32>(2147483647i, 10814i, -987i, 27617i), -21027i, 0u, 9832u), 0u, true), 2147483647i, vec2<f32>(229f, 227f), 158f), Struct_3(vec2<u32>(11648u, 28805u), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, -22068i), 0i, 43731u, 19855u), Struct_1(vec4<i32>(1i, 2147483647i, 2147483647i, 14971i), 0i, 25956u, 33674u), 82089u, false), -1i, vec2<f32>(1060f, 585f), 1737f), Struct_3(vec2<u32>(61191u, 8181u), Struct_2(Struct_1(vec4<i32>(0i, -37752i, 0i, 1i), i32(-2147483648), 24408u, 1u), Struct_1(vec4<i32>(4245i, 0i, 89165i, 37503i), 0i, 46097u, 75826u), 1u, false), -1i, vec2<f32>(746f, 404f), 454f), Struct_3(vec2<u32>(0u, 1u), Struct_2(Struct_1(vec4<i32>(2147483647i, 6664i, 1i, i32(-2147483648)), 2147483647i, 133274u, 1u), Struct_1(vec4<i32>(-20827i, 32166i, -5095i, 52969i), 12963i, 0u, 1u), 1u, true), 838i, vec2<f32>(1057f, 208f), 388f), Struct_3(vec2<u32>(45768u, 1u), Struct_2(Struct_1(vec4<i32>(-1i, 0i, 49813i, 38196i), -1i, 0u, 27740u), Struct_1(vec4<i32>(7497i, 22739i, 1i, 2147483647i), 3759i, 35355u, 1u), 4294967295u, true), 5137i, vec2<f32>(979f, -126f), 164f), Struct_3(vec2<u32>(38822u, 0u), Struct_2(Struct_1(vec4<i32>(19090i, -42721i, 1i, -15046i), 49650i, 41092u, 0u), Struct_1(vec4<i32>(-218i, -48999i, 54141i, i32(-2147483648)), -48588i, 0u, 39005u), 1u, false), 17075i, vec2<f32>(1532f, 3390f), -1902f), Struct_3(vec2<u32>(12482u, 4294967295u), Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, 0i, -3510i), -59939i, 4294967295u, 44065u), Struct_1(vec4<i32>(-11736i, 2147483647i, -27943i, -21195i), i32(-2147483648), 1u, 0u), 5026u, false), -1i, vec2<f32>(141f, -1143f), -2093f), Struct_3(vec2<u32>(22113u, 0u), Struct_2(Struct_1(vec4<i32>(1i, -40734i, -1346i, 2147483647i), 44278i, 4294967295u, 0u), Struct_1(vec4<i32>(37769i, -41351i, -1i, 1i), 2147483647i, 24976u, 18381u), 36078u, false), -13150i, vec2<f32>(-623f, -1864f), -585f), Struct_3(vec2<u32>(4055u, 1u), Struct_2(Struct_1(vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648)), 42833i, 0u, 4294967295u), Struct_1(vec4<i32>(-4265i, -16116i, 2147483647i, 4883i), 65409i, 12600u, 4294967295u), 1u, true), 19995i, vec2<f32>(-755f, -461f), -2898f));

var<private> global2: array<u32, 9> = array<u32, 9>(21488u, 0u, 1u, 0u, 10921u, 23594u, 96351u, 0u, 4294967295u);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<i32>(0i, 48467i, i32(-2147483648), -1i), 2147483647i, 41461u, 42686u), Struct_1(vec4<i32>(-19120i, -1092i, -44330i, 34890i), 19198i, 37468u, 4294967295u), 1u, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    global0 = array<vec2<u32>, 11>();
    var var_0 = 753f;
    global2 = array<u32, 9>();
    var var_1 = all(!vec4<bool>(true, any(vec4<bool>(arg_0.b.d, global3.d, false, false)), true, !any(vec2<bool>(global3.d, false))));
    let var_2 = Struct_2(Struct_1(-abs(vec4<i32>(global3.b.b, 14559i, -25100i, global3.a.a.x)) << (~min(vec4<u32>(75276u, 35470u, 65456u, 1u), vec4<u32>(67811u, 60700u, 1u, 4294967295u)) % vec4<u32>(32u)), arg_0.b.b.a.x, 40434u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9930u, 85992u, 7109u, u_input.a), select(vec4<u32>(global2[_wgslsmith_index_u32(arg_0.a.x, 9u)], 29677u, global2[_wgslsmith_index_u32(804u, 9u)], 1u), vec4<u32>(1u, 1495u, 51223u, 4294967295u), vec4<bool>(true, false, true, arg_0.b.d))), arg_0.a.x)), arg_0.b.a, arg_0.b.c, true);
    return vec4<i32>(max(2147483647i, -20031i), -(~(-18591i)), arg_0.c, _wgslsmith_mult_i32(u_input.e.x, max(reverseBits(_wgslsmith_sub_i32(40386i, 2147483647i)), ~var_2.b.b)));
}

fn func_2() -> Struct_1 {
    return Struct_1(-(-func_3(global1[_wgslsmith_index_u32(u_input.b, 29u)]) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global3.b.d, 39812u, 86432u), vec4<u32>(u_input.a, 4294967295u, 2821u, 33786u)) % vec4<u32>(32u))), -20707i, u_input.b, 71968u);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    global3 = Struct_2(func_2(), func_2(), ~(~1u), any(!vec2<bool>(true, global3.d)));
    return vec2<u32>(1u, abs(arg_1.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = ~func_2().c;
    global1 = array<Struct_3, 29>();
    let var_1 = arg_0.b;
    let var_2 = countOneBits(~(~vec4<u32>(var_1.b.d, min(arg_0.a.x, arg_0.a.x), 1u, _wgslsmith_add_u32(72573u, 0u))));
    let var_3 = var_1;
    return var_3;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = -1955f;
    global0 = array<vec2<u32>, 11>();
    let var_1 = -11679i;
    let var_2 = Struct_1(select(select(vec4<i32>(u_input.d, select(u_input.d, u_input.d, false), ~u_input.e.x, countOneBits(1i)), -u_input.e, select(select(vec4<bool>(global3.d, true, global3.d, global3.d), vec4<bool>(global3.d, false, true, global3.d), global3.d), vec4<bool>(true, true, false, global3.d), select(vec4<bool>(global3.d, false, global3.d, global3.d), vec4<bool>(global3.d, global3.d, global3.d, global3.d), global3.d))), global3.a.a, !select(vec4<bool>(global3.d, global3.d, true, true), vec4<bool>(global3.d, global3.d, global3.d, global3.d), true)), ~(0i & var_1), ~reverseBits(global3.a.c | 29931u) & countOneBits(firstTrailingBit(_wgslsmith_add_u32(1u, 62381u))), min(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(arg_0.x, 9u)] & global3.b.d, ~global3.a.d, ~0u), ~26876u), 61290u));
    var_0 = 1005f;
    return func_5(Struct_3(func_4(u_input.c.x, arg_0, func_2(), min(u_input.b, 7008u)) ^ arg_0, Struct_2(Struct_1(-vec4<i32>(global3.a.b, -2147483647i, var_1, global3.b.b), global3.b.a.x, _wgslsmith_mult_u32(arg_0.x, 0u), 0u), global3.b, 0u | var_2.d, all(select(vec3<bool>(true, true, global3.d), vec3<bool>(global3.d, global3.d, true), false))), -(~var_1) << ((4294967295u << (min(arg_0.x, global3.b.c) % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, 1431f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1088f, 531f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -190f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(496f)) * _wgslsmith_f_op_f32(floor(541f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1006f + 1637f)), _wgslsmith_f_op_f32(f32(-1f) * -624f), true)), _wgslsmith_f_op_f32(-1f), -367f), true, select(vec3<bool>(any(select(vec4<bool>(false, global3.d, true, true), vec4<bool>(global3.d, true, true, global3.d), vec4<bool>(false, false, false, false))), any(!vec2<bool>(global3.d, global3.d)), true), select(select(vec3<bool>(global3.d, false, false), select(vec3<bool>(global3.d, global3.d, false), vec3<bool>(false, false, true), vec3<bool>(global3.d, true, true)), vec3<bool>(global3.d, global3.d, true)), vec3<bool>(global3.d, !global3.d, !global3.d), select(select(vec3<bool>(global3.d, true, global3.d), vec3<bool>(false, global3.d, global3.d), global3.d), vec3<bool>(false, true, global3.d), !vec3<bool>(global3.d, global3.d, global3.d))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 9>();
    global3 = func_1(~global0[_wgslsmith_index_u32(~4294967295u, 11u)]);
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, 108742u, min(global2[_wgslsmith_index_u32(4294967295u, 9u)], 76589u) << (abs(~global3.a.d) % 32u), firstTrailingBit(firstTrailingBit(829u) ^ 1u)), ~countOneBits(abs(38397i)), global3.a.a.xz);
}

