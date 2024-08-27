struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(14485i, vec4<u32>(8301u, 32902u, 1u, 1u), vec3<u32>(11759u, 0u, 76209u), Struct_1(vec3<i32>(1i, -5922i, i32(-2147483648)), vec2<f32>(464f, -680f), 41588u), vec4<bool>(true, true, false, false)), Struct_2(47034i, vec4<u32>(48295u, 14916u, 42332u, 6005u), vec3<u32>(53462u, 4294967295u, 0u), Struct_1(vec3<i32>(1i, 1i, -1i), vec2<f32>(104f, 111f), 30619u), vec4<bool>(false, true, true, false)), Struct_2(0i, vec4<u32>(4294967295u, 0u, 4294967295u, 27901u), vec3<u32>(3768u, 57021u, 4294967295u), Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec2<f32>(-1961f, 2556f), 75046u), vec4<bool>(false, true, true, true)), Struct_2(0i, vec4<u32>(0u, 7356u, 24993u, 1u), vec3<u32>(2333u, 45130u, 1u), Struct_1(vec3<i32>(-1i, 1i, -1i), vec2<f32>(293f, -1309f), 2545u), vec4<bool>(true, false, true, false)), Struct_2(2147483647i, vec4<u32>(20350u, 49134u, 80140u, 15644u), vec3<u32>(4294967295u, 36101u, 15611u), Struct_1(vec3<i32>(-3394i, -11856i, -1i), vec2<f32>(-1189f, 212f), 0u), vec4<bool>(true, false, true, false)), Struct_2(-2638i, vec4<u32>(0u, 0u, 4294967295u, 55745u), vec3<u32>(75902u, 1u, 1u), Struct_1(vec3<i32>(31523i, 1205i, 1071i), vec2<f32>(-533f, 1541f), 1u), vec4<bool>(false, true, true, true)), Struct_2(1i, vec4<u32>(48304u, 35838u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 1u), Struct_1(vec3<i32>(10080i, 25168i, 2988i), vec2<f32>(1713f, -1091f), 1u), vec4<bool>(true, true, false, true)), Struct_2(-50030i, vec4<u32>(0u, 4294967295u, 4294967295u, 9696u), vec3<u32>(1u, 39655u, 64207u), Struct_1(vec3<i32>(1920i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-443f, 350f), 4294967295u), vec4<bool>(false, true, true, true)), Struct_2(-12660i, vec4<u32>(4294967295u, 4294967295u, 0u, 23723u), vec3<u32>(1u, 2565u, 1u), Struct_1(vec3<i32>(1i, 9980i, 0i), vec2<f32>(1000f, 847f), 1u), vec4<bool>(true, true, false, true)), Struct_2(2147483647i, vec4<u32>(1u, 0u, 23105u, 69057u), vec3<u32>(7663u, 717u, 0u), Struct_1(vec3<i32>(2147483647i, 2147483647i, -40394i), vec2<f32>(-1000f, -1219f), 0u), vec4<bool>(false, false, false, true)), Struct_2(-26234i, vec4<u32>(1u, 0u, 29083u, 4294967295u), vec3<u32>(83858u, 44324u, 1u), Struct_1(vec3<i32>(-886i, -1i, 1i), vec2<f32>(-1062f, 1026f), 45356u), vec4<bool>(true, false, false, false)), Struct_2(-18488i, vec4<u32>(0u, 4294967295u, 1u, 20154u), vec3<u32>(4294967295u, 0u, 0u), Struct_1(vec3<i32>(2147483647i, -2964i, -1i), vec2<f32>(916f, -473f), 0u), vec4<bool>(false, true, true, true)), Struct_2(2147483647i, vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec3<u32>(1231u, 40722u, 4294967295u), Struct_1(vec3<i32>(-42299i, 11380i, 0i), vec2<f32>(-911f, 599f), 4294967295u), vec4<bool>(false, false, true, true)), Struct_2(48720i, vec4<u32>(0u, 4294967295u, 71271u, 0u), vec3<u32>(0u, 1u, 33500u), Struct_1(vec3<i32>(2147483647i, 1i, 1i), vec2<f32>(1270f, 403f), 1u), vec4<bool>(false, true, false, true)), Struct_2(21871i, vec4<u32>(32552u, 24400u, 1u, 34366u), vec3<u32>(44026u, 5401u, 76451u), Struct_1(vec3<i32>(22051i, -64381i, 1i), vec2<f32>(-1000f, 1049f), 1u), vec4<bool>(false, true, false, false)), Struct_2(1i, vec4<u32>(42336u, 0u, 2462u, 0u), vec3<u32>(12108u, 46465u, 1u), Struct_1(vec3<i32>(961i, -7966i, 84007i), vec2<f32>(121f, 1000f), 1u), vec4<bool>(true, true, true, false)), Struct_2(-1i, vec4<u32>(80981u, 58007u, 38874u, 1u), vec3<u32>(44819u, 81278u, 2684u), Struct_1(vec3<i32>(44264i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-259f, 1007f), 1u), vec4<bool>(false, false, true, true)), Struct_2(-31062i, vec4<u32>(867u, 4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 74247u), Struct_1(vec3<i32>(-19883i, -12301i, -50731i), vec2<f32>(-663f, -1213f), 49107u), vec4<bool>(false, true, false, false)), Struct_2(-1i, vec4<u32>(1u, 26403u, 13908u, 4294967295u), vec3<u32>(4294967295u, 52993u, 4294967295u), Struct_1(vec3<i32>(-32328i, 57106i, 74300i), vec2<f32>(493f, 1079f), 38439u), vec4<bool>(true, false, true, true)), Struct_2(26040i, vec4<u32>(1u, 4294967295u, 79806u, 86029u), vec3<u32>(4294967295u, 2962u, 23673u), Struct_1(vec3<i32>(-1i, -1i, 54434i), vec2<f32>(1000f, -559f), 35541u), vec4<bool>(false, true, true, false)), Struct_2(i32(-2147483648), vec4<u32>(55761u, 4294967295u, 0u, 0u), vec3<u32>(65616u, 1u, 18061u), Struct_1(vec3<i32>(-62296i, -22286i, -1i), vec2<f32>(-841f, -608f), 4294967295u), vec4<bool>(true, true, true, false)), Struct_2(-37742i, vec4<u32>(24831u, 4294967295u, 1u, 4294967295u), vec3<u32>(5060u, 76618u, 34337u), Struct_1(vec3<i32>(19210i, 20284i, i32(-2147483648)), vec2<f32>(-935f, 1682f), 23619u), vec4<bool>(false, false, false, true)), Struct_2(-1i, vec4<u32>(0u, 1u, 24071u, 8331u), vec3<u32>(74663u, 4294967295u, 30186u), Struct_1(vec3<i32>(37621i, -4261i, 7571i), vec2<f32>(-1336f, 332f), 4294967295u), vec4<bool>(true, false, true, true)), Struct_2(-3147i, vec4<u32>(7779u, 4294967295u, 39174u, 0u), vec3<u32>(7881u, 1u, 19405u), Struct_1(vec3<i32>(1i, i32(-2147483648), 45232i), vec2<f32>(-589f, -2872f), 26895u), vec4<bool>(true, false, true, true)), Struct_2(1i, vec4<u32>(63541u, 38884u, 108283u, 53177u), vec3<u32>(4294967295u, 1u, 20401u), Struct_1(vec3<i32>(2147483647i, 1i, 2147483647i), vec2<f32>(1504f, 179f), 0u), vec4<bool>(false, false, true, false)), Struct_2(0i, vec4<u32>(16694u, 54060u, 0u, 4294967295u), vec3<u32>(14793u, 0u, 14872u), Struct_1(vec3<i32>(-59382i, -7385i, i32(-2147483648)), vec2<f32>(348f, 678f), 1u), vec4<bool>(true, false, true, false)), Struct_2(1i, vec4<u32>(1430u, 50374u, 8348u, 0u), vec3<u32>(1u, 0u, 0u), Struct_1(vec3<i32>(32272i, i32(-2147483648), -1i), vec2<f32>(207f, 899f), 48982u), vec4<bool>(false, false, false, false)), Struct_2(i32(-2147483648), vec4<u32>(74409u, 45680u, 50526u, 0u), vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec3<i32>(-81544i, 1i, 0i), vec2<f32>(-1340f, -1000f), 87778u), vec4<bool>(false, false, false, true)), Struct_2(2147483647i, vec4<u32>(4294967295u, 1u, 0u, 5004u), vec3<u32>(13644u, 83447u, 1u), Struct_1(vec3<i32>(-47872i, -15257i, -45852i), vec2<f32>(-1354f, 1869f), 8143u), vec4<bool>(true, true, false, true)), Struct_2(20747i, vec4<u32>(46704u, 0u, 29901u, 62210u), vec3<u32>(79950u, 1u, 1u), Struct_1(vec3<i32>(-34953i, -44573i, -34266i), vec2<f32>(-295f, 1751f), 6318u), vec4<bool>(false, true, false, true)), Struct_2(-37595i, vec4<u32>(78485u, 9130u, 4294967295u, 23002u), vec3<u32>(4294967295u, 40316u, 4294967295u), Struct_1(vec3<i32>(27278i, 1i, 1373i), vec2<f32>(1725f, 132f), 1u), vec4<bool>(false, true, false, false)));

var<private> global2: f32;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    let var_0 = ~4294967295u ^ select(select(_wgslsmith_dot_vec4_u32(vec4<u32>(95645u, 12642u, 48868u, 0u), ~vec4<u32>(13495u, 1u, 43182u, 20861u)), _wgslsmith_mod_u32(12964u, 1u), global3.x), ~17209u, global3.x);
    let var_1 = select(-1632f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-778f * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-931f)) + -927f)), true, false);
    var var_2 = Struct_1(vec3<i32>(2147483647i, 0i, 58133i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1154f, 1140f) * vec2<f32>(-715f, -517f))) * vec2<f32>(1f, 1f)), 4294967295u);
    global2 = -1177f;
    var_2 = Struct_1(~abs(firstLeadingBit(~vec3<i32>(u_input.a, var_2.a.x, u_input.a))), vec2<f32>(1543f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(261f * 126f)))), var_0);
    return Struct_1(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 28467i, var_2.a.x, var_2.a.x), -vec4<i32>(var_2.a.x, var_2.a.x, 4466i, var_2.a.x)), _wgslsmith_add_i32(u_input.a ^ u_input.a, _wgslsmith_mod_i32(-2147483647i, -48403i)), 2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, 2147483647i), vec2<i32>(u_input.a, 2147483647i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1597f - -1047f), -1105f)), var_0);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: f32) -> f32 {
    var var_0 = vec2<f32>(704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(946f, arg_2)))))));
    let var_1 = func_2();
    var var_2 = global3.zyy;
    var var_3 = var_1.b.x;
    let var_4 = var_1;
    return 1000f;
}

fn func_3() -> vec2<f32> {
    var var_0 = ~(select(0u, firstLeadingBit(min(1u, 55635u)), global3.x) >> (65162u % 32u));
    var_0 = countOneBits(466u);
    let var_1 = !global3.x;
    var var_2 = -_wgslsmith_add_i32(-2147483647i, u_input.a);
    let var_3 = func_2();
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_3.b.x)))), var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(2081f, _wgslsmith_f_op_f32(func_1(-vec4<i32>(9110i, 1i, -1i, -1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-485f, 895f, -358f, 2750f) * vec4<f32>(263f, 111f, 595f, -553f)), _wgslsmith_f_op_f32(round(1000f))))) + vec2<f32>(339f, _wgslsmith_f_op_f32(ceil(-1328f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(747f, -1767f), _wgslsmith_f_op_vec2_f32(func_3())), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1411f, 728f) + vec2<f32>(-968f, 850f))), vec2<f32>(-364f, _wgslsmith_f_op_f32(-927f - 1821f)), false))))));
    global3 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, global3.x, global3.x, true), vec4<bool>(false, false, true, false)), vec4<bool>(global3.x, true, global3.x, false || global3.x), true));
    var var_1 = vec4<u32>(~4294967295u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(24814u, ~19493u), ~vec2<u32>(4294967295u, 67244u))), _wgslsmith_mod_u32(1u, firstTrailingBit(0u)), 4294967295u);
    global1 = array<Struct_2, 31>();
    var var_2 = abs(-_wgslsmith_mult_vec4_i32(-max(vec4<i32>(-66511i, u_input.a, u_input.a, -2147483647i), vec4<i32>(-2147483647i, u_input.a, 1i, 31627i)), vec4<i32>(~u_input.a, -2147483647i, i32(-1i) * -1i, -51223i << (var_1.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(1u & var_1.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1251f, var_0.x))))));
}

