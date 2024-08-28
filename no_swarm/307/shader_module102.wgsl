struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<i32>(59177i, 0i, -45407i), Struct_1(4294967295u, vec2<bool>(false, true), 0u, 4294967295u, vec3<f32>(-1093f, -1368f, -581f)), Struct_1(1u, vec2<bool>(false, false), 0u, 4294967295u, vec3<f32>(1100f, 673f, -862f)), Struct_1(30493u, vec2<bool>(true, false), 0u, 44223u, vec3<f32>(-387f, -1000f, 573f)), vec3<u32>(79703u, 0u, 35845u)), Struct_2(vec3<i32>(1i, 30485i, 11430i), Struct_1(4294967295u, vec2<bool>(false, false), 0u, 82238u, vec3<f32>(434f, 1000f, -156f)), Struct_1(6638u, vec2<bool>(false, true), 3435u, 15206u, vec3<f32>(1000f, -165f, 440f)), Struct_1(0u, vec2<bool>(false, false), 25389u, 40585u, vec3<f32>(-1359f, 946f, 2106f)), vec3<u32>(1u, 28320u, 4294967295u)), Struct_2(vec3<i32>(-41626i, -11876i, -20042i), Struct_1(17265u, vec2<bool>(true, true), 1u, 0u, vec3<f32>(-2337f, 495f, -1157f)), Struct_1(6055u, vec2<bool>(false, true), 10780u, 4294967295u, vec3<f32>(1000f, 398f, 400f)), Struct_1(0u, vec2<bool>(false, false), 4294967295u, 1u, vec3<f32>(1488f, 1920f, -822f)), vec3<u32>(0u, 0u, 4294967295u)), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), Struct_1(0u, vec2<bool>(false, false), 4294967295u, 0u, vec3<f32>(1840f, -990f, 734f)), Struct_1(1u, vec2<bool>(true, false), 610u, 1u, vec3<f32>(-1091f, -649f, 538f)), Struct_1(37171u, vec2<bool>(false, false), 57525u, 1u, vec3<f32>(944f, 1000f, 727f)), vec3<u32>(0u, 22351u, 4294967295u)), Struct_2(vec3<i32>(32213i, i32(-2147483648), i32(-2147483648)), Struct_1(4294967295u, vec2<bool>(true, true), 4294967295u, 2978u, vec3<f32>(-1323f, 588f, 1232f)), Struct_1(1u, vec2<bool>(false, false), 37453u, 4294967295u, vec3<f32>(210f, 706f, -847f)), Struct_1(42558u, vec2<bool>(false, false), 4294967295u, 95482u, vec3<f32>(1474f, -525f, 560f)), vec3<u32>(74419u, 36070u, 1u)), Struct_2(vec3<i32>(-34187i, -9918i, 65869i), Struct_1(32736u, vec2<bool>(false, true), 1u, 1u, vec3<f32>(-950f, 453f, -371f)), Struct_1(65631u, vec2<bool>(true, false), 34553u, 42105u, vec3<f32>(599f, 776f, -1000f)), Struct_1(25354u, vec2<bool>(false, false), 1u, 17871u, vec3<f32>(472f, -1000f, -1536f)), vec3<u32>(57242u, 4294967295u, 0u)), Struct_2(vec3<i32>(23822i, 0i, -31586i), Struct_1(4294967295u, vec2<bool>(false, true), 4294967295u, 0u, vec3<f32>(726f, -753f, 804f)), Struct_1(21845u, vec2<bool>(false, true), 37977u, 65578u, vec3<f32>(-974f, 508f, -685f)), Struct_1(34751u, vec2<bool>(true, true), 4294967295u, 4294967295u, vec3<f32>(-1122f, -1155f, 357f)), vec3<u32>(44986u, 21210u, 31959u)), Struct_2(vec3<i32>(1i, 6873i, 1i), Struct_1(59292u, vec2<bool>(false, true), 1u, 54209u, vec3<f32>(878f, 481f, 656f)), Struct_1(41459u, vec2<bool>(false, false), 0u, 1u, vec3<f32>(-788f, 1050f, 510f)), Struct_1(14180u, vec2<bool>(false, false), 28821u, 1u, vec3<f32>(291f, -410f, -650f)), vec3<u32>(79246u, 1u, 29721u)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), Struct_1(4294967295u, vec2<bool>(true, false), 1u, 1u, vec3<f32>(-482f, -1128f, -2077f)), Struct_1(4294967295u, vec2<bool>(true, false), 105837u, 0u, vec3<f32>(1865f, -694f, 1388f)), Struct_1(28134u, vec2<bool>(true, false), 4294967295u, 1u, vec3<f32>(805f, 276f, 1000f)), vec3<u32>(1u, 90386u, 28735u)), Struct_2(vec3<i32>(-7712i, i32(-2147483648), i32(-2147483648)), Struct_1(80850u, vec2<bool>(false, true), 2694u, 0u, vec3<f32>(-400f, 175f, -884f)), Struct_1(4294967295u, vec2<bool>(false, true), 1u, 33133u, vec3<f32>(1000f, -885f, 573f)), Struct_1(13357u, vec2<bool>(true, false), 4294967295u, 0u, vec3<f32>(187f, -932f, -966f)), vec3<u32>(26621u, 56659u, 44765u)), Struct_2(vec3<i32>(33226i, -1i, i32(-2147483648)), Struct_1(28163u, vec2<bool>(false, false), 0u, 4294967295u, vec3<f32>(687f, -1000f, -1243f)), Struct_1(1u, vec2<bool>(false, false), 28389u, 4294967295u, vec3<f32>(-894f, -1034f, 859f)), Struct_1(0u, vec2<bool>(true, false), 0u, 1u, vec3<f32>(939f, -312f, -1056f)), vec3<u32>(67503u, 40019u, 12222u)), Struct_2(vec3<i32>(0i, 1i, -73207i), Struct_1(17958u, vec2<bool>(false, true), 11371u, 28129u, vec3<f32>(359f, -1000f, 1068f)), Struct_1(4294967295u, vec2<bool>(false, false), 4294967295u, 45757u, vec3<f32>(1000f, -1319f, -858f)), Struct_1(4294967295u, vec2<bool>(false, false), 6994u, 42955u, vec3<f32>(-1091f, 633f, 1831f)), vec3<u32>(89544u, 62640u, 4294967295u)), Struct_2(vec3<i32>(37902i, 38492i, 0i), Struct_1(1u, vec2<bool>(true, true), 41097u, 38494u, vec3<f32>(-1690f, -608f, -1893f)), Struct_1(41852u, vec2<bool>(true, true), 2947u, 33936u, vec3<f32>(1165f, 613f, -535f)), Struct_1(72333u, vec2<bool>(true, true), 0u, 1u, vec3<f32>(-1000f, -378f, 321f)), vec3<u32>(1u, 1u, 1u)), Struct_2(vec3<i32>(-17951i, 39086i, 1i), Struct_1(4821u, vec2<bool>(true, false), 9088u, 30677u, vec3<f32>(-111f, 474f, -1325f)), Struct_1(1u, vec2<bool>(true, false), 4294967295u, 4294967295u, vec3<f32>(1253f, -1195f, 360f)), Struct_1(36746u, vec2<bool>(true, false), 4853u, 8642u, vec3<f32>(-1118f, -1000f, -400f)), vec3<u32>(58924u, 49039u, 592u)), Struct_2(vec3<i32>(-35749i, 2147483647i, -34144i), Struct_1(15678u, vec2<bool>(false, true), 0u, 0u, vec3<f32>(-1000f, 493f, -176f)), Struct_1(103658u, vec2<bool>(true, true), 1u, 22566u, vec3<f32>(1515f, 1916f, -1000f)), Struct_1(11513u, vec2<bool>(true, true), 0u, 1u, vec3<f32>(-300f, 2518f, 1000f)), vec3<u32>(38014u, 0u, 0u)), Struct_2(vec3<i32>(-1i, 22180i, -9779i), Struct_1(1u, vec2<bool>(true, false), 4294967295u, 1u, vec3<f32>(-918f, -1000f, -260f)), Struct_1(2954u, vec2<bool>(true, true), 4294967295u, 21565u, vec3<f32>(-1000f, 1222f, -164f)), Struct_1(23904u, vec2<bool>(false, true), 38248u, 60472u, vec3<f32>(957f, -1601f, -386f)), vec3<u32>(0u, 62475u, 5988u)));

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<Struct_2, 8>;

var<private> global3: Struct_1 = Struct_1(0u, vec2<bool>(false, false), 0u, 4294967295u, vec3<f32>(-854f, -286f, -1188f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global2 = array<Struct_2, 8>();
    global2 = array<Struct_2, 8>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 8u)];
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<u32>) -> bool {
    global0 = array<Struct_2, 16>();
    var var_0 = Struct_1(global3.a, vec2<bool>(false, true), max(_wgslsmith_div_u32(countOneBits(~78373u), 4294967295u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(select(1u, u_input.c.x, false), firstLeadingBit(u_input.b)), 34356u & global3.c)), _wgslsmith_sub_u32(func_3(), 1u), global3.e);
    let var_1 = min(4294967295u & _wgslsmith_div_u32(~var_0.c, select(arg_2.x & arg_2.x, global3.d, false)), 19062u);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(countOneBits(max(arg_0, var_1)), arg_2.x ^ max(91066u, var_1)), ~_wgslsmith_clamp_vec2_u32(~min(vec2<u32>(global3.c, arg_2.x), u_input.c.xz), vec2<u32>(global3.c, 12443u), ~u_input.c.ww << (_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, u_input.c.x), vec2<u32>(80425u, arg_2.x)) % vec2<u32>(32u)))), 8u)];
    return !(var_0.b.x != (false || any(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    global2 = array<Struct_2, 8>();
    return _wgslsmith_dot_vec2_u32(~u_input.c.zy, u_input.c.xx) | 4294967295u;
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 16>();
    let var_0 = ~u_input.c.x;
    global2 = array<Struct_2, 8>();
    global1 = array<Struct_1, 7>();
    let var_1 = vec2<u32>(func_4(select(vec2<bool>(func_2(u_input.c.x, vec2<bool>(global3.b.x, global3.b.x), u_input.c), global3.b.x & global3.b.x), vec2<bool>(false, global3.b.x), global3.b), global1[_wgslsmith_index_u32(1u, 7u)]), var_0 << (_wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, var_0), u_input.c.x) % 32u));
    return global1[_wgslsmith_index_u32(~(~4294967295u), 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b;
    var var_1 = func_1();
    let var_2 = _wgslsmith_mod_vec4_u32(~(min(~vec4<u32>(4294967295u, 0u, 0u, var_1.d), vec4<u32>(var_1.a, 3895u, 1u, 35027u)) ^ _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b, 35186u, 1233u, u_input.b), u_input.c), vec4<u32>(50646u, var_1.c, 0u, 0u))), firstTrailingBit(min(vec4<u32>(~4294967295u, 4294967295u, 1u, ~93061u), u_input.c)));
    let var_3 = !(!select(vec3<bool>(global3.b.x, global3.b.x, var_0.x), !(!vec3<bool>(var_0.x, false, var_1.b.x)), (var_1.c > var_2.x) && true));
    global2 = array<Struct_2, 8>();
    global0 = array<Struct_2, 16>();
    var var_4 = reverseBits(min(_wgslsmith_add_i32(_wgslsmith_mult_i32(select(u_input.a.x, u_input.a.x, global3.b.x), u_input.a.x), 17250i), -62250i));
    let var_5 = func_1().b.x;
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(countOneBits(u_input.a), reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), 269f, vec2<f32>(246f, func_1().e.x), 30238u);
}

