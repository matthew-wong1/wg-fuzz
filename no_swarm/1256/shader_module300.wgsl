struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
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

var<private> global0: Struct_2;

var<private> global1: array<bool, 25>;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(1122f, vec4<i32>(1i, -23289i, 0i, -9490i), 1176f), Struct_1(-307f, vec4<i32>(-18195i, 83217i, 1i, -11954i), -468f), Struct_1(-833f, vec4<i32>(-63252i, 30684i, 0i, 2147483647i), -1273f)), Struct_2(Struct_1(1221f, vec4<i32>(2147483647i, -9948i, 44204i, -6950i), -1124f), Struct_1(1676f, vec4<i32>(-1952i, 2147483647i, 26121i, -49682i), 1122f), Struct_1(1852f, vec4<i32>(15069i, -16508i, 1i, 1550i), -595f)), Struct_2(Struct_1(-241f, vec4<i32>(-49033i, 1i, -1i, 0i), -318f), Struct_1(-410f, vec4<i32>(-1i, 12488i, 12182i, 22687i), 1000f), Struct_1(630f, vec4<i32>(0i, -18927i, 40600i, -20694i), -1185f)), Struct_2(Struct_1(-1000f, vec4<i32>(-36057i, -68921i, 0i, -1i), 260f), Struct_1(-323f, vec4<i32>(2147483647i, 32851i, 1i, 2147483647i), -1000f), Struct_1(-1739f, vec4<i32>(-14932i, -48692i, -7753i, i32(-2147483648)), 318f)), Struct_2(Struct_1(-665f, vec4<i32>(-30460i, 0i, 53054i, -61913i), 692f), Struct_1(1000f, vec4<i32>(-60889i, 0i, 34272i, 0i), -884f), Struct_1(-137f, vec4<i32>(-1i, -1287i, 0i, 2147483647i), 1614f)), Struct_2(Struct_1(129f, vec4<i32>(18666i, -23941i, 1i, -16371i), 112f), Struct_1(1527f, vec4<i32>(-1i, i32(-2147483648), 1i, -51220i), -419f), Struct_1(-519f, vec4<i32>(16883i, 957i, 722i, 0i), -131f)), Struct_2(Struct_1(131f, vec4<i32>(-11337i, -1i, -6128i, -6505i), -503f), Struct_1(-651f, vec4<i32>(-18521i, 38425i, 2147483647i, -20411i), -478f), Struct_1(-180f, vec4<i32>(-27011i, 0i, -852i, 2147483647i), 578f)), Struct_2(Struct_1(412f, vec4<i32>(-57941i, 1i, -918i, 2147483647i), -2033f), Struct_1(1321f, vec4<i32>(14989i, 1i, 2147483647i, 57571i), 888f), Struct_1(-1000f, vec4<i32>(0i, -1i, i32(-2147483648), 68107i), -358f)), Struct_2(Struct_1(293f, vec4<i32>(1i, i32(-2147483648), 13817i, 11367i), 142f), Struct_1(-350f, vec4<i32>(i32(-2147483648), -32808i, 45641i, i32(-2147483648)), 825f), Struct_1(252f, vec4<i32>(1i, 15605i, 0i, 1i), 277f)), Struct_2(Struct_1(569f, vec4<i32>(-27948i, -61486i, 9029i, -53532i), -1024f), Struct_1(259f, vec4<i32>(83669i, 2147483647i, 2147483647i, -5209i), 209f), Struct_1(139f, vec4<i32>(-2836i, -18942i, 50017i, -45056i), -115f)), Struct_2(Struct_1(396f, vec4<i32>(-28291i, 0i, -19266i, 1i), -845f), Struct_1(-928f, vec4<i32>(0i, 64898i, -68775i, 1i), -282f), Struct_1(1598f, vec4<i32>(1i, 1i, 2147483647i, -33050i), 1308f)), Struct_2(Struct_1(894f, vec4<i32>(2147483647i, -782i, i32(-2147483648), 2147483647i), -1954f), Struct_1(-793f, vec4<i32>(1i, 17307i, 2147483647i, 0i), -1121f), Struct_1(254f, vec4<i32>(-1i, 14258i, 21320i, 0i), 1000f)), Struct_2(Struct_1(1058f, vec4<i32>(i32(-2147483648), i32(-2147483648), 11897i, -7678i), 743f), Struct_1(196f, vec4<i32>(0i, 2147483647i, 1i, -1i), -611f), Struct_1(-717f, vec4<i32>(-1i, -1i, 1i, -48320i), 163f)), Struct_2(Struct_1(-573f, vec4<i32>(i32(-2147483648), i32(-2147483648), -38263i, -7384i), -849f), Struct_1(312f, vec4<i32>(-1i, 2741i, 2147483647i, -2019i), 711f), Struct_1(974f, vec4<i32>(0i, -6089i, 2147483647i, 1i), -549f)), Struct_2(Struct_1(290f, vec4<i32>(-10402i, -1i, 55526i, 0i), 193f), Struct_1(-1751f, vec4<i32>(2147483647i, 0i, 2147483647i, -2644i), 227f), Struct_1(1000f, vec4<i32>(34160i, 1i, -37009i, 53279i), -632f)), Struct_2(Struct_1(-1210f, vec4<i32>(-6734i, 2122i, 2147483647i, 0i), 447f), Struct_1(651f, vec4<i32>(0i, -1i, 53665i, i32(-2147483648)), 1130f), Struct_1(-371f, vec4<i32>(-36105i, 2147483647i, 23939i, 1i), -249f)), Struct_2(Struct_1(-1450f, vec4<i32>(2147483647i, 2147483647i, 1i, 2147483647i), 1923f), Struct_1(681f, vec4<i32>(25169i, 62048i, 18326i, 2147483647i), 2052f), Struct_1(226f, vec4<i32>(-89843i, -1i, -1i, -28679i), 2116f)), Struct_2(Struct_1(788f, vec4<i32>(1i, i32(-2147483648), 1i, -1i), -1764f), Struct_1(-1162f, vec4<i32>(i32(-2147483648), -50061i, 0i, -18133i), -117f), Struct_1(-1002f, vec4<i32>(57754i, 54805i, 26669i, 0i), -373f)), Struct_2(Struct_1(2367f, vec4<i32>(1i, -28239i, 0i, 1i), 298f), Struct_1(1473f, vec4<i32>(1i, -17553i, -29724i, 5394i), 479f), Struct_1(-118f, vec4<i32>(-88252i, 39240i, -1032i, 60084i), -401f)), Struct_2(Struct_1(112f, vec4<i32>(2147483647i, 2147483647i, 2147483647i, -35747i), -254f), Struct_1(-161f, vec4<i32>(2147483647i, -19977i, -1i, -10489i), -645f), Struct_1(198f, vec4<i32>(-35831i, 1i, 40453i, -1i), 207f)), Struct_2(Struct_1(-239f, vec4<i32>(1i, -39106i, -6269i, -35881i), -1896f), Struct_1(621f, vec4<i32>(-33193i, 0i, 0i, 1i), 1661f), Struct_1(358f, vec4<i32>(1i, 0i, -1i, 54397i), 236f)), Struct_2(Struct_1(-554f, vec4<i32>(-41650i, 37848i, -6594i, 1i), -956f), Struct_1(700f, vec4<i32>(3508i, 26376i, -47976i, 37103i), -1685f), Struct_1(-1039f, vec4<i32>(-30289i, 2147483647i, 14025i, 2147483647i), 997f)), Struct_2(Struct_1(1000f, vec4<i32>(-1i, -1i, -29265i, 1i), 284f), Struct_1(-347f, vec4<i32>(14532i, 0i, -1i, -1i), -1000f), Struct_1(-461f, vec4<i32>(36910i, i32(-2147483648), i32(-2147483648), 0i), 385f)), Struct_2(Struct_1(-1793f, vec4<i32>(0i, 0i, -87300i, 1i), -939f), Struct_1(-322f, vec4<i32>(16651i, 0i, -1i, 1i), -757f), Struct_1(525f, vec4<i32>(2147483647i, -28352i, 2147483647i, i32(-2147483648)), -404f)), Struct_2(Struct_1(-2046f, vec4<i32>(0i, -11275i, 0i, 1i), 1660f), Struct_1(-1294f, vec4<i32>(-279i, 64742i, 1145i, -50271i), -1674f), Struct_1(834f, vec4<i32>(-30839i, 2147483647i, -1i, 2056i), 1321f)), Struct_2(Struct_1(1224f, vec4<i32>(-21144i, i32(-2147483648), -1i, 2147483647i), 959f), Struct_1(377f, vec4<i32>(29478i, 0i, 0i, 15548i), -427f), Struct_1(1000f, vec4<i32>(i32(-2147483648), 1i, -1i, -12742i), -978f)), Struct_2(Struct_1(897f, vec4<i32>(2147483647i, -10494i, 0i, -1i), 508f), Struct_1(-282f, vec4<i32>(1i, -1i, 0i, 2147483647i), 319f), Struct_1(-200f, vec4<i32>(-1063i, -2073i, -34596i, i32(-2147483648)), 1308f)), Struct_2(Struct_1(200f, vec4<i32>(34449i, -1187i, 16686i, 2147483647i), -1143f), Struct_1(1000f, vec4<i32>(-15736i, 2147483647i, i32(-2147483648), 0i), 820f), Struct_1(1710f, vec4<i32>(-1i, 8862i, 6722i, 0i), -1132f)), Struct_2(Struct_1(1283f, vec4<i32>(i32(-2147483648), 24796i, -1i, 1i), 1966f), Struct_1(426f, vec4<i32>(1i, 58723i, -1i, 39606i), -675f), Struct_1(-816f, vec4<i32>(-1414i, 2147483647i, 10817i, 1i), 1000f)), Struct_2(Struct_1(-181f, vec4<i32>(i32(-2147483648), 7400i, 31394i, 2147483647i), 541f), Struct_1(-1054f, vec4<i32>(1i, 32473i, i32(-2147483648), i32(-2147483648)), 913f), Struct_1(-203f, vec4<i32>(-11025i, i32(-2147483648), 50260i, 0i), 945f)), Struct_2(Struct_1(1018f, vec4<i32>(2147483647i, 2147483647i, 1i, i32(-2147483648)), 1372f), Struct_1(438f, vec4<i32>(15976i, 2147483647i, i32(-2147483648), 1i), -564f), Struct_1(-322f, vec4<i32>(i32(-2147483648), 85052i, -23859i, -4947i), 1013f)), Struct_2(Struct_1(966f, vec4<i32>(35258i, -38688i, -11371i, -14353i), -1003f), Struct_1(335f, vec4<i32>(-44368i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), -409f), Struct_1(634f, vec4<i32>(i32(-2147483648), 54998i, 0i, 2147483647i), 470f)));

var<private> global3: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(62168u, 30020u, 1u), vec3<u32>(98855u, 71821u, 4294967295u), vec3<u32>(30897u, 1u, 2818u), vec3<u32>(0u, 4294967295u, 18709u), vec3<u32>(99168u, 0u, 37718u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1512u, 372u, 30925u), vec3<u32>(4294967295u, 48967u, 72030u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(13567u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 66995u), vec3<u32>(18222u, 0u, 4294967295u), vec3<u32>(41041u, 31511u, 14331u), vec3<u32>(0u, 24404u, 4915u), vec3<u32>(960u, 31179u, 22419u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> f32 {
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    var var_0 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(abs(reverseBits(-8258i)), max(global0.c.b.x << (u_input.e.x % 32u), arg_0), 59908i, _wgslsmith_div_i32(-37959i, u_input.a.x)), countOneBits(global0.a.b));
    global1 = array<bool, 25>();
    return global0.a.c;
}

fn func_2() -> f32 {
    global1 = array<bool, 25>();
    global0 = global2[_wgslsmith_index_u32(u_input.e.x, 32u)];
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-630f - 1f), global0.b.a), global0.c.b, -1000f), Struct_1(global0.c.c, vec4<i32>(u_input.b, firstLeadingBit(-44447i & global0.c.b.x), 44701i, 1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(i32(-1i) * -64814i, _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.c, global0.a.a, 1451f, global0.c.a), vec4<f32>(global0.a.c, 860f, global0.c.c, global0.b.c))))))), global0.a);
    global1 = array<bool, 25>();
    global3 = array<vec3<u32>, 15>();
    return var_0.a.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    global3 = array<vec3<u32>, 15>();
    let var_0 = ~32044i;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(291f, arg_0.x, 194f, arg_0.x) * vec4<f32>(971f, arg_1.a, -814f, global0.b.a)), vec4<f32>(1142f, 883f, arg_0.x, global0.b.c), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.e.x, 25u)], arg_2))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -2321f, -564f, arg_1.c) * vec4<f32>(155f, -135f, arg_0.x, 1447f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(func_2())))) + _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), false))), vec2<u32>(12719u << (1u % 32u), ~abs(min(8585u, 44137u))), vec4<f32>(global0.b.c, _wgslsmith_f_op_f32(-648f + _wgslsmith_f_op_f32(arg_0.x * -1154f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(global0.c.c + 1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1169f)), -3367f), countOneBits(~vec3<u32>(firstTrailingBit(u_input.e.x), u_input.e.x, u_input.e.x & 44355u)));
    let var_2 = countOneBits(-global0.a.b);
    var var_3 = global0.c;
    return global0.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_i32(-81632i, ~func_1(vec3<f32>(2222f, global0.b.a, -250f), global0.b, true));
    global3 = array<vec3<u32>, 15>();
    global0 = global2[_wgslsmith_index_u32(max(1u, u_input.e.x), 32u)];
    var var_1 = !select(!vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 25u)], false, global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)])), !global1[_wgslsmith_index_u32(u_input.e.x, 25u)]), vec2<bool>(any(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(39398u, 25u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(3148u, 25u)], false, global1[_wgslsmith_index_u32(68044u, 25u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 25u)], global1[_wgslsmith_index_u32(23639u, 25u)], global1[_wgslsmith_index_u32(20074u, 25u)], global1[_wgslsmith_index_u32(u_input.e.x, 25u)]))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 68018u, u_input.e.x), u_input.e.yxz) ^ ~u_input.e.x, 25u)]), global1[_wgslsmith_index_u32(~(~(~1u)), 25u)]);
    var var_2 = _wgslsmith_mult_i32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(105f, global0.a.a, -1226f), vec3<f32>(global0.c.a, global0.a.a, global0.b.c))))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.c.c), -1406f, -979f)), Struct_1(global0.c.c, ~select(global0.c.b, vec4<i32>(global0.a.b.x, 2147483647i, global0.c.b.x, -2147483647i), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 25u)], true, false)), -1241f), true), -_wgslsmith_mult_i32(-2147483647i, ~abs(global0.a.b.x)));
    global2 = array<Struct_2, 32>();
    var var_3 = u_input.a;
    let var_4 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, var_1.x), var_1.x), -1i == u_input.d.x), select(vec2<bool>(true, all(vec2<bool>(var_1.x, var_1.x))), !(!vec2<bool>(var_1.x, false)), true), all(select(!vec2<bool>(var_1.x, true), select(vec2<bool>(var_1.x, true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], var_1.x), vec2<bool>(true, false)), true)));
    var var_5 = all(!var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(reverseBits(0u)), ~(~93140u), _wgslsmith_div_u32(70294u, u_input.e.x), 652u), ~u_input.e));
}

