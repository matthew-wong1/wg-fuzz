struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(0u, 36909u, 3192u, 11153u, 16503u, 1u, 4294967295u, 22001u, 61591u, 4294967295u, 25730u, 23358u, 0u, 41125u, 99491u, 1u, 13571u);

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(430f, Struct_1(true, vec3<u32>(117303u, 1u, 1u)), vec3<f32>(454f, -302f, -444f), Struct_1(true, vec3<u32>(55433u, 4178u, 10150u)), vec4<i32>(-1i, 0i, 0i, -1i)), Struct_2(371f, Struct_1(true, vec3<u32>(68428u, 0u, 0u)), vec3<f32>(638f, 366f, -1213f), Struct_1(false, vec3<u32>(108858u, 1u, 1u)), vec4<i32>(66207i, 0i, 52940i, 23261i)), Struct_2(833f, Struct_1(false, vec3<u32>(24886u, 47246u, 1u)), vec3<f32>(728f, -930f, 1000f), Struct_1(true, vec3<u32>(0u, 9921u, 13717u)), vec4<i32>(-1i, 1i, 1i, -86188i)), Struct_2(-928f, Struct_1(false, vec3<u32>(1u, 10285u, 5033u)), vec3<f32>(-1205f, -1773f, -282f), Struct_1(true, vec3<u32>(65033u, 9379u, 30331u)), vec4<i32>(1i, i32(-2147483648), 1i, 57962i)), Struct_2(1720f, Struct_1(false, vec3<u32>(0u, 4294967295u, 6669u)), vec3<f32>(-1000f, 184f, 559f), Struct_1(false, vec3<u32>(48682u, 4294967295u, 0u)), vec4<i32>(-1i, -5164i, 2147483647i, -31780i)), Struct_2(423f, Struct_1(false, vec3<u32>(72349u, 0u, 46930u)), vec3<f32>(769f, -1986f, -161f), Struct_1(true, vec3<u32>(0u, 96917u, 1u)), vec4<i32>(-19329i, -1i, 39905i, -28838i)), Struct_2(969f, Struct_1(true, vec3<u32>(4294967295u, 0u, 11790u)), vec3<f32>(-978f, 1115f, 1563f), Struct_1(true, vec3<u32>(0u, 31471u, 4294967295u)), vec4<i32>(6034i, 30642i, -8643i, -1i)), Struct_2(575f, Struct_1(false, vec3<u32>(33809u, 3126u, 54670u)), vec3<f32>(1045f, 421f, -1692f), Struct_1(false, vec3<u32>(85278u, 3602u, 72083u)), vec4<i32>(2147483647i, -2972i, -2752i, 44970i)), Struct_2(171f, Struct_1(false, vec3<u32>(1u, 22297u, 4294967295u)), vec3<f32>(-181f, 248f, 1000f), Struct_1(true, vec3<u32>(0u, 14122u, 39173u)), vec4<i32>(27214i, -41289i, 27903i, 0i)), Struct_2(-566f, Struct_1(true, vec3<u32>(1u, 90401u, 21041u)), vec3<f32>(405f, -1196f, 823f), Struct_1(false, vec3<u32>(4294967295u, 0u, 20342u)), vec4<i32>(i32(-2147483648), 2147483647i, -14361i, 24114i)), Struct_2(918f, Struct_1(false, vec3<u32>(4294967295u, 59360u, 2319u)), vec3<f32>(156f, -450f, 846f), Struct_1(false, vec3<u32>(22736u, 4294967295u, 4294967295u)), vec4<i32>(9339i, -19680i, 9640i, 0i)), Struct_2(1331f, Struct_1(true, vec3<u32>(1u, 1u, 0u)), vec3<f32>(588f, -1035f, 417f), Struct_1(true, vec3<u32>(69744u, 103834u, 1u)), vec4<i32>(-13496i, i32(-2147483648), 0i, i32(-2147483648))), Struct_2(271f, Struct_1(false, vec3<u32>(87169u, 1u, 66363u)), vec3<f32>(1306f, -208f, 727f), Struct_1(true, vec3<u32>(44862u, 12291u, 4294967295u)), vec4<i32>(1i, 2147483647i, 1i, -18855i)), Struct_2(-376f, Struct_1(true, vec3<u32>(35486u, 1u, 10622u)), vec3<f32>(1363f, -1303f, 878f), Struct_1(false, vec3<u32>(16389u, 9339u, 38194u)), vec4<i32>(-28630i, i32(-2147483648), 26285i, 2147483647i)), Struct_2(196f, Struct_1(true, vec3<u32>(4294967295u, 73003u, 24877u)), vec3<f32>(-1279f, -625f, -350f), Struct_1(false, vec3<u32>(93421u, 4294967295u, 0u)), vec4<i32>(-26832i, 0i, 40812i, -17392i)), Struct_2(-754f, Struct_1(true, vec3<u32>(4294967295u, 12937u, 16378u)), vec3<f32>(-312f, -708f, -912f), Struct_1(false, vec3<u32>(67507u, 1u, 0u)), vec4<i32>(14846i, -24108i, 35837i, 0i)), Struct_2(176f, Struct_1(false, vec3<u32>(11450u, 0u, 1u)), vec3<f32>(325f, 2300f, -146f), Struct_1(false, vec3<u32>(18572u, 4294967295u, 4294967295u)), vec4<i32>(2756i, -20693i, -42424i, -41457i)), Struct_2(-139f, Struct_1(false, vec3<u32>(18886u, 0u, 1u)), vec3<f32>(616f, -317f, -1651f), Struct_1(true, vec3<u32>(0u, 7629u, 0u)), vec4<i32>(11248i, -1i, -19326i, i32(-2147483648))), Struct_2(1000f, Struct_1(false, vec3<u32>(49916u, 46739u, 37424u)), vec3<f32>(588f, -2395f, 1000f), Struct_1(true, vec3<u32>(22739u, 50771u, 28834u)), vec4<i32>(26963i, 20873i, -49931i, -16811i)), Struct_2(2248f, Struct_1(false, vec3<u32>(27794u, 22591u, 41697u)), vec3<f32>(672f, 171f, -906f), Struct_1(true, vec3<u32>(1639u, 1u, 0u)), vec4<i32>(1i, -2977i, -33689i, 2147483647i)), Struct_2(1016f, Struct_1(true, vec3<u32>(51167u, 0u, 0u)), vec3<f32>(1570f, 1566f, 174f), Struct_1(false, vec3<u32>(1u, 1u, 1u)), vec4<i32>(2147483647i, -29175i, 1i, 1i)), Struct_2(2774f, Struct_1(true, vec3<u32>(1u, 159740u, 20371u)), vec3<f32>(1299f, 758f, 1238f), Struct_1(true, vec3<u32>(4294967295u, 1u, 4294967295u)), vec4<i32>(2147483647i, 37752i, 12376i, 0i)), Struct_2(1685f, Struct_1(true, vec3<u32>(0u, 47172u, 4381u)), vec3<f32>(-148f, -1127f, -534f), Struct_1(false, vec3<u32>(48095u, 3622u, 0u)), vec4<i32>(19455i, -35050i, i32(-2147483648), 27856i)), Struct_2(-844f, Struct_1(false, vec3<u32>(55933u, 4294967295u, 4294967295u)), vec3<f32>(-794f, -440f, -329f), Struct_1(false, vec3<u32>(1u, 4294967295u, 37037u)), vec4<i32>(2147483647i, 15904i, 27669i, -11720i)), Struct_2(-928f, Struct_1(true, vec3<u32>(1u, 17736u, 20026u)), vec3<f32>(649f, -1000f, 1040f), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 648u)), vec4<i32>(-3692i, 63258i, -94593i, -48480i)), Struct_2(-885f, Struct_1(false, vec3<u32>(21521u, 30773u, 1u)), vec3<f32>(466f, 527f, 1689f), Struct_1(false, vec3<u32>(0u, 1u, 135712u)), vec4<i32>(23918i, -34899i, 2147483647i, 4732i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global0 = array<u32, 17>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~99433u, _wgslsmith_dot_vec4_u32(~vec4<u32>(15865u, 1u, 4294967295u, 38249u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u), vec4<u32>(u_input.a, 65746u, global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)])))), 17u)], 13973u), 2u)];
    global2 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-851f - -542f)), _wgslsmith_f_op_f32(ceil(-379f)), -239f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 2547f, -721f))) - vec3<f32>(1f, 1f, 1f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-210f - -900f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-388f)))), _wgslsmith_f_op_f32(-1320f * _wgslsmith_f_op_f32(max(1000f, 240f))))));
    let var_2 = Struct_3(var_0.a | true, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(7997u, 26u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(1201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-101f, var_1.x))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, -708f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-672f - -743f), _wgslsmith_f_op_f32(select(-795f, var_1.x, false)))), Struct_1(var_0.a, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c.wzz, vec3<u32>(4294967295u, u_input.c.x, 18419u)), vec3<u32>(1u, var_0.b.x, 4294967295u))), vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f))), global1[_wgslsmith_index_u32(60314u, 2u)], ~(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, 28818i), vec4<i32>(u_input.b, 2581i, u_input.b, -60546i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b, u_input.b), vec4<i32>(2147483647i, 1i, u_input.b, u_input.b)))));
    return 1u;
}

fn func_2(arg_0: bool) -> vec3<i32> {
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    var var_0 = _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~568u, 17u)], func_3()), ~54426u)) >= ~_wgslsmith_mod_u32(~u_input.c.x ^ u_input.c.x, ~0u);
    return vec3<i32>(select(-2147483647i, ~(-1i), arg_0), u_input.b, -55858i);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: u32) -> Struct_1 {
    let var_0 = ~countOneBits(_wgslsmith_sub_vec2_u32(reverseBits(arg_2.a) ^ _wgslsmith_mod_vec2_u32(arg_2.a, u_input.c.yx), vec2<u32>(firstLeadingBit(4258u), ~5651u)));
    let var_1 = 0i < _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~(-1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.b, -60951i), vec3<i32>(2147483647i, arg_0, 26684i))), 6290i, u_input.b);
    var var_2 = global2[_wgslsmith_index_u32(var_0.x, 26u)];
    var var_3 = _wgslsmith_add_i32(_wgslsmith_div_i32(41174i, i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(func_2(var_2.d.a), vec3<i32>(select(abs(var_2.e.x), arg_0, true), firstTrailingBit(-67086i) ^ arg_0, var_2.e.x)));
    global2 = array<Struct_2, 26>();
    return global1[_wgslsmith_index_u32(abs(9791u), 2u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    global1 = array<Struct_1, 2>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_2);
    var var_1 = Struct_4(u_input.c.xy);
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.b, 11226i, firstLeadingBit(2147483647i)) & func_2(arg_1.a || arg_1.a), vec3<i32>(u_input.b, -1i, -u_input.b) | (vec3<i32>(-1i) * -vec3<i32>(u_input.b, 43021i, u_input.b))), abs(firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(u_input.b, -47801i), abs(-5933i), -u_input.b))));
    global0 = array<u32, 17>();
    return var_0.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: f32) -> StorageBuffer {
    var var_0 = !(!vec2<bool>(all(vec3<bool>(true, true, true)), true));
    global1 = array<Struct_1, 2>();
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1.xww)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 346f, 1679f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1059f, -1325f, arg_2)))) * arg_1.zxx), vec3<f32>(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1071f, arg_2)))), arg_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(214f - arg_1.x))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) * -225f))), _wgslsmith_f_op_f32(ceil(-364f)))));
    global2 = array<Struct_2, 26>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zx) + vec2<f32>(arg_1.x, arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 2>();
    let var_0 = 0i;
    var var_1 = -431f;
    global1 = array<Struct_1, 2>();
    global0 = array<u32, 17>();
    var_1 = -1000f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 335f, -1768f, 615f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-686f, 1000f, -1062f, -1664f)))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-417f, 1649f, -523f, -330f), vec4<f32>(1f, 1f, 1f, 1f))))));
    let x = u_input.a;
    s_output = func_5(vec4<i32>(firstLeadingBit(~_wgslsmith_sub_i32(var_0, var_0)), abs(reverseBits(~u_input.b)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(41052i, u_input.b, 2147483647i), vec3<i32>(u_input.b, var_0, var_0)), ~1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-140f, var_2.x, -516f, _wgslsmith_f_op_f32(-var_2.x)), vec4<f32>(var_2.x, var_2.x, 836f, _wgslsmith_f_op_f32(func_4(func_1(-2147483647i, vec4<bool>(false, true, false, true), Struct_4(u_input.c.yy), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52380u, 17u)], 17u)]), Struct_1(true, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], 4294967295u)), _wgslsmith_f_op_vec2_f32(var_2.xy - vec2<f32>(-584f, 1777f))))), true)), var_2.x);
}

