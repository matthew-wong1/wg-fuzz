struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<u32>(4294967295u, 21130u), vec3<i32>(i32(-2147483648), -2945i, 44877i), vec2<i32>(2147483647i, 1i), vec2<f32>(757f, 1842f), 1i), Struct_1(vec2<u32>(15289u, 4294967295u), vec3<i32>(2147483647i, 1i, 1i), vec2<i32>(0i, 15835i), vec2<f32>(739f, -528f), 0i), Struct_1(vec2<u32>(3782u, 53926u), vec3<i32>(9588i, -54444i, -11422i), vec2<i32>(29311i, -72354i), vec2<f32>(-672f, -429f), 1i), Struct_1(vec2<u32>(58577u, 0u), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec2<i32>(-46420i, i32(-2147483648)), vec2<f32>(-145f, -490f), -6728i), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<i32>(-3438i, 1i, -13838i), vec2<i32>(-1427i, i32(-2147483648)), vec2<f32>(1000f, -189f), -1i), Struct_1(vec2<u32>(47596u, 68393u), vec3<i32>(9168i, 81203i, 53055i), vec2<i32>(-1i, -24388i), vec2<f32>(-1244f, -496f), -1i), Struct_1(vec2<u32>(53579u, 35434u), vec3<i32>(-1i, -1i, -12558i), vec2<i32>(-39086i, 0i), vec2<f32>(702f, -317f), 2147483647i), Struct_1(vec2<u32>(23136u, 30991u), vec3<i32>(-22409i, -22762i, 17010i), vec2<i32>(30538i, i32(-2147483648)), vec2<f32>(-853f, -1856f), -73028i), Struct_1(vec2<u32>(46914u, 1u), vec3<i32>(1i, 0i, -29475i), vec2<i32>(-6431i, 1i), vec2<f32>(2164f, 518f), 0i), Struct_1(vec2<u32>(0u, 31529u), vec3<i32>(-18767i, 4550i, -30202i), vec2<i32>(1i, 16297i), vec2<f32>(-724f, 1077f), 1i), Struct_1(vec2<u32>(38013u, 4386u), vec3<i32>(-1i, 9156i, 7741i), vec2<i32>(11629i, i32(-2147483648)), vec2<f32>(1000f, -593f), 0i), Struct_1(vec2<u32>(0u, 35733u), vec3<i32>(-53198i, -39402i, 39073i), vec2<i32>(i32(-2147483648), 24828i), vec2<f32>(1467f, 480f), 1i), Struct_1(vec2<u32>(24354u, 25561u), vec3<i32>(1i, -113403i, i32(-2147483648)), vec2<i32>(-48736i, -1i), vec2<f32>(-382f, 519f), 21013i), Struct_1(vec2<u32>(18879u, 28526u), vec3<i32>(-32740i, -1i, 1i), vec2<i32>(1i, -27625i), vec2<f32>(-2392f, 514f), -31743i), Struct_1(vec2<u32>(55259u, 12639u), vec3<i32>(6982i, 30143i, 1i), vec2<i32>(1i, 40324i), vec2<f32>(189f, 345f), 41329i));

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<u32>(0u, 25005u), vec3<i32>(0i, -41241i, 1i), vec2<i32>(i32(-2147483648), -17428i), vec2<f32>(-747f, 1984f), 22903i), Struct_1(vec2<u32>(51002u, 0u), vec3<i32>(41309i, 38169i, 0i), vec2<i32>(-11435i, 51718i), vec2<f32>(150f, 789f), 2147483647i), Struct_1(vec2<u32>(32096u, 0u), vec3<i32>(1i, 0i, 50974i), vec2<i32>(i32(-2147483648), 1i), vec2<f32>(598f, 1000f), 52629i), Struct_1(vec2<u32>(3153u, 21956u), vec3<i32>(-59347i, -1i, i32(-2147483648)), vec2<i32>(-27653i, -1i), vec2<f32>(-708f, 403f), 1i), Struct_1(vec2<u32>(0u, 45429u), vec3<i32>(-1i, 2511i, 5168i), vec2<i32>(-42677i, 41006i), vec2<f32>(-208f, 309f), 2147483647i), Struct_1(vec2<u32>(0u, 1u), vec3<i32>(2147483647i, -22507i, i32(-2147483648)), vec2<i32>(2976i, -10905i), vec2<f32>(-277f, 622f), -42335i));

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<u32>(4852u, 1u), vec3<i32>(-25609i, 14643i, 1i), vec2<i32>(-17430i, -1i), vec2<f32>(1000f, 1302f), 0i), Struct_1(vec2<u32>(65201u, 91593u), vec3<i32>(i32(-2147483648), i32(-2147483648), 22255i), vec2<i32>(i32(-2147483648), -1i), vec2<f32>(123f, 304f), 2147483647i), Struct_1(vec2<u32>(752u, 48823u), vec3<i32>(-6034i, -16448i, -1i), vec2<i32>(-12119i, i32(-2147483648)), vec2<f32>(1154f, -710f), 0i), Struct_1(vec2<u32>(16559u, 33201u), vec3<i32>(-43745i, 0i, -1i), vec2<i32>(26618i, 2147483647i), vec2<f32>(495f, -596f), 2147483647i), Struct_1(vec2<u32>(52268u, 0u), vec3<i32>(0i, -1i, 2147483647i), vec2<i32>(-31005i, 2147483647i), vec2<f32>(-243f, 188f), -1i), Struct_1(vec2<u32>(36567u, 0u), vec3<i32>(16618i, 2147483647i, i32(-2147483648)), vec2<i32>(-43761i, 1896i), vec2<f32>(-140f, -402f), 0i), Struct_1(vec2<u32>(1u, 14465u), vec3<i32>(-1i, 36531i, -24240i), vec2<i32>(739i, 5784i), vec2<f32>(-214f, 1187f), -4331i), Struct_1(vec2<u32>(1u, 4294967295u), vec3<i32>(-13359i, -67262i, -7499i), vec2<i32>(-19526i, i32(-2147483648)), vec2<f32>(2598f, -1743f), -22723i), Struct_1(vec2<u32>(0u, 99056u), vec3<i32>(-41114i, 2147483647i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<f32>(1493f, 504f), -11379i), Struct_1(vec2<u32>(2307u, 37308u), vec3<i32>(16279i, 43325i, 1i), vec2<i32>(0i, -1i), vec2<f32>(-931f, 886f), 2147483647i), Struct_1(vec2<u32>(1u, 13304u), vec3<i32>(-23383i, 14468i, i32(-2147483648)), vec2<i32>(-16568i, -1i), vec2<f32>(-1040f, -347f), 2147483647i), Struct_1(vec2<u32>(72240u, 20813u), vec3<i32>(i32(-2147483648), 1i, -6365i), vec2<i32>(-1i, 2147483647i), vec2<f32>(-2275f, 713f), 1i), Struct_1(vec2<u32>(2657u, 9651u), vec3<i32>(22895i, 2147483647i, i32(-2147483648)), vec2<i32>(30413i, 0i), vec2<f32>(772f, -1739f), 5572i), Struct_1(vec2<u32>(0u, 19790u), vec3<i32>(2147483647i, 1i, -29665i), vec2<i32>(1i, 2147483647i), vec2<f32>(1192f, 659f), i32(-2147483648)), Struct_1(vec2<u32>(38359u, 11023u), vec3<i32>(0i, -1534i, 2147483647i), vec2<i32>(-1i, 1i), vec2<f32>(-415f, 480f), 2147483647i), Struct_1(vec2<u32>(4294967295u, 63104u), vec3<i32>(41115i, 2147483647i, -26652i), vec2<i32>(27572i, -1i), vec2<f32>(1000f, -448f), i32(-2147483648)), Struct_1(vec2<u32>(1u, 89271u), vec3<i32>(0i, 60712i, 2147483647i), vec2<i32>(-97722i, -1i), vec2<f32>(-552f, 1063f), -15008i), Struct_1(vec2<u32>(0u, 77768u), vec3<i32>(33919i, 33058i, -17740i), vec2<i32>(-15387i, 0i), vec2<f32>(-590f, -988f), -21585i), Struct_1(vec2<u32>(1u, 1u), vec3<i32>(-49408i, -17438i, -1618i), vec2<i32>(i32(-2147483648), 16632i), vec2<f32>(1068f, 1347f), -27202i), Struct_1(vec2<u32>(12446u, 15268u), vec3<i32>(1i, -11980i, -1i), vec2<i32>(-74103i, 1i), vec2<f32>(261f, 370f), i32(-2147483648)), Struct_1(vec2<u32>(53146u, 10698u), vec3<i32>(2447i, i32(-2147483648), -8202i), vec2<i32>(-51i, -20264i), vec2<f32>(393f, 1395f), i32(-2147483648)), Struct_1(vec2<u32>(50341u, 4294967295u), vec3<i32>(2147483647i, 1i, -71901i), vec2<i32>(i32(-2147483648), -31315i), vec2<f32>(-1325f, 106f), 0i), Struct_1(vec2<u32>(4265u, 0u), vec3<i32>(i32(-2147483648), 1i, -11733i), vec2<i32>(22152i, 591i), vec2<f32>(-796f, 1141f), 2147483647i), Struct_1(vec2<u32>(78346u, 1u), vec3<i32>(-11180i, 1i, 55802i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<f32>(1117f, -122f), -11949i), Struct_1(vec2<u32>(0u, 4294967295u), vec3<i32>(-1i, i32(-2147483648), -22272i), vec2<i32>(-17910i, -9342i), vec2<f32>(986f, 1452f), 30403i), Struct_1(vec2<u32>(1u, 0u), vec3<i32>(-1i, 0i, -10627i), vec2<i32>(25616i, 2147483647i), vec2<f32>(401f, 1000f), -16004i), Struct_1(vec2<u32>(4294967295u, 7993u), vec3<i32>(2147483647i, 2147483647i, 1i), vec2<i32>(i32(-2147483648), -656i), vec2<f32>(570f, 1000f), 41603i), Struct_1(vec2<u32>(13139u, 4294967295u), vec3<i32>(-1i, 31168i, 28584i), vec2<i32>(i32(-2147483648), 0i), vec2<f32>(-1000f, -1000f), 2147483647i), Struct_1(vec2<u32>(1u, 0u), vec3<i32>(24229i, 0i, i32(-2147483648)), vec2<i32>(-33976i, 0i), vec2<f32>(-304f, 325f), 24306i), Struct_1(vec2<u32>(1u, 1u), vec3<i32>(-1i, -27509i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 18384i), vec2<f32>(-1761f, 1043f), 24380i), Struct_1(vec2<u32>(33825u, 25332u), vec3<i32>(i32(-2147483648), 1i, -1i), vec2<i32>(i32(-2147483648), -36027i), vec2<f32>(1000f, -1324f), -43474i), Struct_1(vec2<u32>(489u, 30187u), vec3<i32>(2147483647i, -5610i, 45643i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<f32>(1018f, 179f), 5696i));

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = !select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(global0.e == -1i, global0.b.x >= arg_2.b.x), true));
    var var_1 = false;
    var var_2 = global2[_wgslsmith_index_u32(47273u | _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(35677u, 4294967295u, arg_2.a.x), firstTrailingBit(vec3<u32>(arg_2.a.x, arg_2.a.x, u_input.c))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 7632u) << (u_input.a.zw % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(arg_0.zy, vec2<u32>(1u, arg_2.a.x)))), 1u), 6u)];
    var_2 = global2[_wgslsmith_index_u32(global0.a.x, 6u)];
    let var_3 = arg_2;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_3.d.x)), _wgslsmith_f_op_f32(742f * -836f)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 33397u;
    var var_1 = false;
    var var_2 = Struct_1(global0.a, global0.b, max(global0.b.xy, select(min(arg_0.c, arg_1.c), firstTrailingBit(_wgslsmith_div_vec2_i32(arg_1.c, vec2<i32>(-37163i, -32470i))), vec2<bool>(true, all(vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(397f * 314f), _wgslsmith_f_op_f32(sign(741f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(func_3(u_input.a.zwz, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, 228f) * vec2<f32>(-660f, arg_1.d.x)), global1[_wgslsmith_index_u32(~1u, 15u)]))))), -2147483647i);
    global1 = array<Struct_1, 15>();
    var var_3 = !(select(max(reverseBits(-24305i), _wgslsmith_mod_i32(55614i, -105509i)), arg_1.e, global0.d.x == var_2.d.x) <= _wgslsmith_sub_i32(1i, (-38508i ^ u_input.b) >> (arg_0.a.x % 32u)));
    return Struct_1(vec2<u32>(firstLeadingBit(~30448u), global0.a.x), vec3<i32>(-1i, -arg_1.e, -(~(i32(-1i) * -2147483647i))), arg_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1570f, var_2.d.x) * _wgslsmith_f_op_vec2_f32(step(global0.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.d.x, arg_1.d.x), vec2<f32>(572f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(292f, 3055f) - arg_0.d), all(vec3<bool>(true, true, true))))))), var_2.e);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0.d.x;
    let var_1 = func_2(global4[_wgslsmith_index_u32(61111u, 12u)], global4[_wgslsmith_index_u32(1u, 12u)]);
    global1 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2367f - var_0)), _wgslsmith_div_f32(1339f, _wgslsmith_f_op_f32(step(1017f, 1493f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, var_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -358f), _wgslsmith_f_op_f32(min(arg_0.d.x, var_0)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1220f, var_1.d.x, -670f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, 354f, global0.d.x) - vec3<f32>(1170f, var_0, var_1.d.x)))))));
    var var_3 = func_2(func_2(func_2(func_2(global3[_wgslsmith_index_u32(1u, 32u)], var_1), Struct_1(select(arg_0.a, arg_0.a, vec2<bool>(true, false)), arg_1.xzx, arg_1.xz, arg_0.d, var_1.e)), func_2(Struct_1(vec2<u32>(18157u, u_input.c) | vec2<u32>(32699u, var_1.a.x), ~vec3<i32>(-50532i, u_input.b, arg_1.x), global0.c >> (vec2<u32>(44796u, 1u) % vec2<u32>(32u)), vec2<f32>(1271f, var_0), u_input.b), Struct_1(~global0.a, _wgslsmith_clamp_vec3_i32(global0.b, global0.b, var_1.b), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, -35059i), arg_0.b.yx), arg_0.d, var_1.e ^ arg_1.x))), func_2(func_2(global2[_wgslsmith_index_u32(firstLeadingBit(46098u), 6u)], Struct_1(vec2<u32>(global0.a.x, 35041u), reverseBits(arg_1.yxx), -var_1.b.yx, var_2.yz, global0.e)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_1.a.x, ~global0.a.x) << (abs(75431u) % 32u), 6u)]));
    return Struct_1(arg_0.a | ~(arg_2 >> (~var_3.a % vec2<u32>(32u))), -select(~select(vec3<i32>(-3638i, global0.c.x, 36005i), var_3.b, false), reverseBits(global0.b), vec3<bool>(true, true, true)), ~firstTrailingBit(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(global0.c, vec2<i32>(27769i, var_3.e)), vec2<i32>(1i, -6349i))), var_1.d, countOneBits(var_1.c.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    let var_0 = !select(!select(select(vec4<bool>(true, arg_1.x, false, false), vec4<bool>(false, arg_1.x, false, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), select(vec4<bool>(false, true, arg_1.x, true), vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), true), select(select(vec4<bool>(true, true, false, arg_1.x), select(vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), false), vec4<bool>(false, arg_1.x, arg_1.x, true)), select(!vec4<bool>(false, false, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(false, true, arg_1.x, arg_1.x)), !arg_1.x), !vec4<bool>(true, true, arg_1.x, false)), !(false != !arg_1.x));
    var var_1 = global0.d.x;
    let var_2 = func_2(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 72072u), 32u)], func_1(global2[_wgslsmith_index_u32(0u, 6u)], reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, 41414i, 0i, 51103i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 58138i, u_input.d, arg_3.b.x), vec4<i32>(-2147483647i, arg_0.e, -2147483647i, -1i)))), vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a), abs(u_input.a)), u_input.e.x)));
    let var_3 = global3[_wgslsmith_index_u32(var_2.a.x, 32u)];
    var var_4 = arg_0;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-792f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2208f, global0.d.x))), 915f));
    var var_1 = global0.d.x;
    var var_2 = _wgslsmith_f_op_f32(-global0.d.x);
    let var_3 = vec2<bool>(true, false);
    let var_4 = select(vec4<bool>(true, global0.d.x > -157f, !var_3.x, var_3.x), vec4<bool>(!(-1000f >= _wgslsmith_f_op_f32(step(1000f, 154f))), var_3.x, var_3.x, any(!var_3)), vec4<bool>(all(vec4<bool>(all(var_3), global0.d.x <= global0.d.x, false & var_3.x, any(vec4<bool>(var_3.x, true, true, true)))), func_4(func_1(global2[_wgslsmith_index_u32(4294967295u, 6u)], -vec4<i32>(2147483647i, global0.e, -28409i, u_input.b), ~vec2<u32>(49202u, u_input.e.x)), !(!vec3<bool>(var_3.x, var_3.x, var_3.x)), reverseBits(firstLeadingBit(vec2<i32>(0i, global0.e))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.a.x, 33843u), 6u)]), _wgslsmith_f_op_f32(-func_2(Struct_1(vec2<u32>(4294967295u, 22071u), vec3<i32>(2147483647i, -27132i, 346i), global0.c, global0.d, u_input.d), global4[_wgslsmith_index_u32(u_input.a.x, 12u)]).d.x) >= _wgslsmith_f_op_f32(-global0.d.x), var_3.x));
    global4 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(-1i, 45039i), global0.c.x), -_wgslsmith_dot_vec2_i32(global0.c, vec2<i32>(global0.c.x, -1i))), 4294967295u, abs(_wgslsmith_mod_vec4_i32(~(vec4<i32>(-11589i, global0.b.x, u_input.b, -1i) & vec4<i32>(u_input.b, -81489i, u_input.d, u_input.d)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(global0.e, 55931i, global0.c.x, u_input.d)), vec4<i32>(u_input.b, -20144i, 55706i, -19318i)))));
}

