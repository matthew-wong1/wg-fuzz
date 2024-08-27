struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(8827u, 1u, 0u, 10303u), 0i, vec2<f32>(-761f, -836f), -1065f, vec4<i32>(-39216i, -30544i, 0i, i32(-2147483648)))), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(1u, 0u, 1u, 34522u), 47131i, vec2<f32>(-905f, 268f), 1170f, vec4<i32>(-14815i, 0i, 0i, -1i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(1u, 39821u, 4294967295u, 4294967295u), 0i, vec2<f32>(-1074f, 840f), 204f, vec4<i32>(5051i, 1i, 1i, 5013i))), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(1u, 48175u, 4294967295u, 34319u), -48301i, vec2<f32>(1000f, 1282f), -100f, vec4<i32>(-60210i, i32(-2147483648), 589i, 15187i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(6812u, 0u, 0u, 67590u), -1i, vec2<f32>(-1011f, 294f), 1000f, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -59602i))), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(66338u, 0u, 1u, 0u), i32(-2147483648), vec2<f32>(1000f, 590f), 801f, vec4<i32>(1i, 1i, 91083i, i32(-2147483648)))), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(38565u, 1u, 0u, 4205u), 79779i, vec2<f32>(1298f, 345f), -613f, vec4<i32>(2147483647i, 30098i, -34001i, 11413i))), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(0u, 1u, 103036u, 0u), 22713i, vec2<f32>(-1527f, -420f), -1471f, vec4<i32>(-14488i, 0i, i32(-2147483648), 2147483647i))), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(1u, 48307u, 76793u, 43946u), 0i, vec2<f32>(-112f, 925f), 605f, vec4<i32>(-1i, 6417i, -1i, 2147483647i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(20846u, 38188u, 53938u, 1u), -1i, vec2<f32>(921f, 678f), 719f, vec4<i32>(-8189i, 4538i, -22297i, 9065i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(62474u, 0u, 1u, 1u), 1i, vec2<f32>(879f, 1305f), -1000f, vec4<i32>(8251i, -1i, -27011i, 2147483647i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(1u, 0u, 1u, 0u), 3007i, vec2<f32>(977f, 167f), 581f, vec4<i32>(-1i, 1i, 4224i, -8274i))), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(0u, 1u, 52846u, 0u), 46784i, vec2<f32>(229f, 1441f), -772f, vec4<i32>(-74622i, 29959i, 27025i, 0i))), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(4294967295u, 4294967295u, 15769u, 4294967295u), 2147483647i, vec2<f32>(1000f, -1519f), -1000f, vec4<i32>(-16073i, -1i, 0i, 10964i))), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(50031u, 13647u, 0u, 0u), -15446i, vec2<f32>(-987f, -1140f), 1388f, vec4<i32>(i32(-2147483648), 2147483647i, 0i, -1i))), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(75618u, 4294967295u, 4294967295u, 4294967295u), 13858i, vec2<f32>(-2212f, -189f), 556f, vec4<i32>(-6948i, -2300i, -25091i, 2592i))), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(1u, 27316u, 25307u, 1u), i32(-2147483648), vec2<f32>(-115f, 688f), -1534f, vec4<i32>(47511i, -1i, i32(-2147483648), 1i))), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(44723u, 1u, 4294967295u, 94511u), 19305i, vec2<f32>(293f, -1000f), -730f, vec4<i32>(i32(-2147483648), i32(-2147483648), 46069i, 8047i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(4294967295u, 1u, 5502u, 1u), 1i, vec2<f32>(-909f, -1105f), -205f, vec4<i32>(i32(-2147483648), 0i, 2147483647i, 34481i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(4294967295u, 1u, 73087u, 1u), -23030i, vec2<f32>(-282f, 526f), 174f, vec4<i32>(2147483647i, 7648i, 13136i, 2147483647i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(11693u, 4029u, 4294967295u, 26270u), -1i, vec2<f32>(225f, -723f), -872f, vec4<i32>(-1i, -23301i, i32(-2147483648), -1i))), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(0u, 0u, 24799u, 48618u), -1i, vec2<f32>(-251f, 1686f), 819f, vec4<i32>(2147483647i, 1i, -1i, -1i))), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(0u, 57838u, 4294967295u, 24992u), -20699i, vec2<f32>(251f, -919f), 530f, vec4<i32>(0i, 2147483647i, -1i, -10330i))), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(1u, 4294967295u, 58880u, 61398u), -50443i, vec2<f32>(-2010f, -784f), 479f, vec4<i32>(-8733i, 63368i, i32(-2147483648), 24073i))), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(1u, 4294967295u, 50402u, 21570u), -307i, vec2<f32>(-610f, -207f), 1592f, vec4<i32>(20200i, -1i, i32(-2147483648), -29248i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(4294967295u, 24381u, 0u, 4294967295u), 7378i, vec2<f32>(719f, -957f), -1515f, vec4<i32>(1i, 24281i, i32(-2147483648), 23008i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(0u, 9371u, 1u, 1042u), 2147483647i, vec2<f32>(315f, -1545f), 988f, vec4<i32>(-13579i, 2147483647i, -36226i, i32(-2147483648)))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(37227u, 4294967295u, 4294967295u, 7268u), 0i, vec2<f32>(192f, 1000f), 1151f, vec4<i32>(i32(-2147483648), 2147483647i, -12716i, -41603i))), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(4294967295u, 17191u, 0u, 15504u), i32(-2147483648), vec2<f32>(1803f, 1626f), -745f, vec4<i32>(-3129i, 1i, 2147483647i, -1i))), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(10044u, 1u, 31488u, 1u), 1i, vec2<f32>(365f, -1205f), 943f, vec4<i32>(0i, i32(-2147483648), 1i, 22895i))), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), -1i, vec2<f32>(426f, 538f), -1382f, vec4<i32>(0i, -17308i, 1i, -22444i))));

var<private> global1: array<i32, 23> = array<i32, 23>(1i, 0i, 1i, 2147483647i, -10638i, i32(-2147483648), -1i, 29906i, 24854i, -29902i, 50489i, 44737i, -47804i, -1410i, 0i, 2147483647i, -1i, 18776i, 23762i, -35734i, 25506i, 13275i, 32524i);

var<private> global2: array<vec2<f32>, 19>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec4<u32> {
    let var_0 = ~(~countOneBits(u_input.a.zw));
    global2 = array<vec2<f32>, 19>();
    var var_1 = ~u_input.a;
    var var_2 = Struct_1(select(vec4<u32>(var_0.x, _wgslsmith_sub_u32(~var_1.x, 17684u), ~u_input.a.x >> (_wgslsmith_add_u32(4565u, var_1.x) % 32u), reverseBits(u_input.a.x)), u_input.a, !all(vec2<bool>(false, arg_1.x))), global1[_wgslsmith_index_u32(~(~30254u << (0u % 32u)), 23u)] ^ -(-22384i << (max(var_1.x, 3639u) % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 265f) - global2[_wgslsmith_index_u32(u_input.a.x, 19u)])), global2[_wgslsmith_index_u32(~4294967295u, 19u)], !(14396u == var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1103f) + _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(0u, 19u)])) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1535f) + vec2<f32>(arg_0, arg_0)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 451f), vec2<f32>(-567f, arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2068f, 469f))), firstTrailingBit(vec4<i32>(13323i, abs(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), global1[_wgslsmith_index_u32(~firstTrailingBit(1u), 23u)], ~(-8904i))));
    let var_3 = min(firstLeadingBit(u_input.a.yz), var_1.xx);
    return vec4<u32>(89485u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(24286u, var_2.a.x), var_3.x << (4294967295u % 32u)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_2.a.x), var_2.a.xx))) >> (1u % 32u), abs(_wgslsmith_add_u32(~abs(u_input.a.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 51520u, 1u), vec3<u32>(9854u, var_1.x, 21279u)))), ~_wgslsmith_div_u32(~(~u_input.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_2.a.zw, vec2<u32>(4294967295u, 1u)), vec2<u32>(1u, var_1.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> u32 {
    global2 = array<vec2<f32>, 19>();
    global0 = array<Struct_2, 31>();
    let var_0 = 3221u;
    var var_1 = vec4<bool>(arg_0 || true, !(select(~0u, 2601u, arg_1.b.x >= -792f) < firstTrailingBit(103598u)), !arg_0, !arg_0);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(arg_1.b, vec3<f32>(-1310f, arg_1.b.x, 267f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(860f, arg_1.a.c.x, arg_1.b.x) * vec3<f32>(arg_1.b.x, arg_1.a.d, arg_1.b.x)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(863f, -905f, 271f))))), !var_1.ywx)), Struct_1(_wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(arg_3, vec4<u32>(arg_3.x, 67070u, 56434u, 35072u))), -firstTrailingBit(-852i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, -1129f)), _wgslsmith_f_op_f32(f32(-1f) * -582f), min(select(vec4<i32>(1i, arg_2, global1[_wgslsmith_index_u32(0u, 23u)], -4281i), vec4<i32>(arg_1.a.b, 2147483647i, -1i, 29713i), true) << (~vec4<u32>(arg_1.a.a.x, 0u, 0u, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(-vec4<i32>(1i, 1i, 53375i, 52729i)))), any(vec2<bool>(false, true)) && var_1.x);
    return _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~abs(~arg_3.x), var_0), ~1u, var_2.b.a.x ^ 1u);
}

fn func_2() -> Struct_4 {
    var var_0 = vec3<u32>(~(0u | ~u_input.a.x), u_input.a.x, firstLeadingBit(u_input.a.x));
    let var_1 = Struct_3(Struct_1(vec4<u32>(func_4(u_input.a.x >= 21678u, Struct_3(Struct_1(u_input.a, 54195i, vec2<f32>(-951f, -1364f), -389f, vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 23u)], 31900i, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)])), vec3<f32>(522f, -535f, -177f)), global1[_wgslsmith_index_u32(60776u, 23u)], func_3(339f, vec2<bool>(false, true))), 0u & u_input.a.x, var_0.x, 1u), 2147483647i, global2[_wgslsmith_index_u32(29971u, 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2650f))), firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(23595u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 23u)], -1i))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(751f - 327f), -1000f), _wgslsmith_f_op_f32(-530f + _wgslsmith_f_op_f32(max(1344f, 843f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1580f, 756f, false)), _wgslsmith_f_op_f32(f32(-1f) * -730f)))))));
    var var_2 = select(select(!vec3<bool>(false, all(vec2<bool>(false, false)), var_1.a.a.x < 1u), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(var_0.x, 23u)] <= select(max(var_1.a.e.x, global1[_wgslsmith_index_u32(var_1.a.a.x, 23u)]), -var_1.a.b, false)), vec3<bool>(all(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true))), all(vec3<bool>(u_input.a.x <= 20110u, true, false)), true), vec3<bool>(all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(true, all(vec2<bool>(true, true)), false), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var_2 = vec3<bool>(!(select(true, var_2.x, true) && any(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, true, true), var_2.x))), var_2.x, var_2.x);
    let var_3 = vec2<bool>(!(var_2.x | true), _wgslsmith_f_op_f32(-903f - _wgslsmith_f_op_f32(min(-109f, _wgslsmith_f_op_f32(-var_1.b.x)))) == -889f);
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - _wgslsmith_f_op_vec3_f32(-var_1.b)), var_1.a, var_2.x);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = 2701u;
    global1 = array<i32, 23>();
    global1 = array<i32, 23>();
    global1 = array<i32, 23>();
    var var_1 = Struct_3(Struct_1(firstLeadingBit(abs(u_input.a)), -select(~global1[_wgslsmith_index_u32(arg_2.b.a.x, 23u)], 2147483647i, !arg_0.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0.b.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-358f, arg_0.b.d) * global2[_wgslsmith_index_u32(5771u, 19u)]) - vec2<f32>(-198f, arg_2.b.c.x)), false && (639f != arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.c.x, 525f, false)) - 1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -1327f))), vec4<i32>(arg_0.b.b, -abs(arg_0.b.e.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yzx, vec3<u32>(arg_2.b.a.x, 91228u, 33915u)) & (var_0 >> (30526u % 32u)), 23u)], arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a)))));
    return func_2().b;
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    var var_0 = ~vec4<i32>(_wgslsmith_div_i32(arg_0.b, func_5(Struct_4(vec3<f32>(arg_0.c.x, -1000f, 3082f), arg_0, false), _wgslsmith_add_vec2_i32(arg_0.e.yy, arg_0.e.yw), Struct_4(vec3<f32>(arg_0.d, arg_1, arg_1), Struct_1(arg_0.a, global1[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(1u, 19u)], 2349f, arg_0.e), true)).e.x), _wgslsmith_add_i32(0i, -reverseBits(arg_0.e.x)), countOneBits(_wgslsmith_mod_i32(min(arg_0.e.x, 2147483647i), select(20677i, global1[_wgslsmith_index_u32(4294967295u, 23u)], false))), -7001i);
    var var_1 = select(select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, any(vec2<bool>(false, false)), all(vec2<bool>(false, false)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, all(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true)), false)), vec4<bool>(any(vec3<bool>(true, true, true)), false, all(vec3<bool>(false, false, false)), true)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, 28432i > arg_0.b), all(vec3<bool>(false, true, true))), vec4<bool>(select(false, true, true) || true, select(true, true, global1[_wgslsmith_index_u32(4294967295u, 23u)] == 2147483647i), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), true), false), !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false))));
    let var_2 = ~func_2().b.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-419f, arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.d))))));
    var_0 = _wgslsmith_clamp_vec4_i32(-(vec4<i32>(var_2, 19893i, ~41585i, -36716i) ^ ~_wgslsmith_mod_vec4_i32(vec4<i32>(20137i, var_0.x, arg_0.b, 0i), arg_0.e)), arg_0.e, _wgslsmith_mod_vec4_i32(arg_0.e, -vec4<i32>(-44704i, 0i, arg_0.b, 24187i)));
    return Struct_3(func_2().b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3 - vec3<f32>(arg_0.c.x, 1000f, -1559f)))));
}

fn func_7(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_3) -> Struct_5 {
    let var_0 = !(!all(!select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x))));
    global2 = array<vec2<f32>, 19>();
    var var_1 = vec4<i32>(1i | global1[_wgslsmith_index_u32(~arg_2.a.a.x, 23u)], ~80789i, -1i, global1[_wgslsmith_index_u32(1u, 23u)]);
    global0 = array<Struct_2, 31>();
    var var_2 = var_0;
    return Struct_5(u_input.a.wxw, arg_2.a.e.yw, arg_2.a, ~_wgslsmith_clamp_vec4_u32(u_input.a, ~vec4<u32>(4294967295u, arg_2.a.a.x, 0u, 30482u), vec4<u32>(~55962u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 32677u), vec4<u32>(4294967295u, 10157u, 0u, 4294967295u)), ~arg_2.a.a.x)));
}

fn func_8(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(arg_2.c.a.x), ~_wgslsmith_clamp_u32(arg_2.d.x, u_input.a.x, 4294967295u), 1u), 19u)] - vec2<f32>(func_7(vec2<bool>(false, false), _wgslsmith_f_op_f32(max(arg_3, arg_2.c.d)), Struct_3(arg_2.c, vec3<f32>(497f, arg_3, 1180f))).c.d, -1644f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1168f, -703f))) - global2[_wgslsmith_index_u32(arg_2.d.x, 19u)])));
    let var_1 = ~vec3<u32>(1u << (u_input.a.x % 32u), max(func_5(func_2(), ~vec2<i32>(arg_1.x, arg_1.x), Struct_4(vec3<f32>(arg_3, arg_3, arg_3), Struct_1(arg_2.c.a, 50921i, vec2<f32>(575f, 1008f), arg_0.x, vec4<i32>(arg_2.b.x, -31881i, global1[_wgslsmith_index_u32(546u, 23u)], 14793i)), false)).a.x, _wgslsmith_add_u32(~56279u, u_input.a.x)), 0u);
    let var_2 = func_6(Struct_1(u_input.a, 7613i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_0.zz + vec2<f32>(arg_0.x, arg_2.c.d)))))), var_0.x, -_wgslsmith_mod_vec4_i32(arg_2.c.e << (arg_2.c.a % vec4<u32>(32u)), arg_2.c.e)), var_0.x);
    let var_3 = vec3<f32>(234f, -2521f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1806f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1403f - -1314f) + var_2.b.x)))));
    global2 = array<vec2<f32>, 19>();
    return Struct_3(func_7(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, select(false, true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_3)))))), func_6(Struct_1(u_input.a, global1[_wgslsmith_index_u32(51178u, 23u)] >> (0u % 32u), func_7(vec2<bool>(false, true), arg_2.c.d, Struct_3(arg_2.c, var_3)).c.c, _wgslsmith_f_op_f32(f32(-1f) * -1579f), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(97266u, 23u)], 12814i, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))).c, arg_0.zwy);
}

fn func_1() -> Struct_3 {
    global1 = array<i32, 23>();
    global1 = array<i32, 23>();
    global1 = array<i32, 23>();
    global2 = array<vec2<f32>, 19>();
    global1 = array<i32, 23>();
    return func_8(vec4<f32>(1f, 1f, 1f, 1f), ~vec3<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(23484u, u_input.a.x), 23u)], global1[_wgslsmith_index_u32(18929u, 23u)]), _wgslsmith_mult_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -12605i), countOneBits(global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), 0i), func_7(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(u_input.a.x < u_input.a.x, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-398f * 1154f), func_6(func_5(func_2(), vec2<i32>(1i, 56817i), func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1050f + 1475f)))), _wgslsmith_div_f32(-1434f, -494f));
}

fn func_9(arg_0: Struct_3, arg_1: i32, arg_2: Struct_5, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(sign(func_2().b.d));
    global0 = array<Struct_2, 31>();
    let var_1 = 0u | func_5(Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.b, arg_0.b)) * func_1().b), arg_2.c, _wgslsmith_dot_vec2_u32(arg_0.a.a.wy, u_input.a.yz) != ~arg_0.a.a.x), arg_0.a.e.xx, func_2()).a.x;
    var var_2 = arg_0.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -464f), _wgslsmith_f_op_f32(-969f - 358f), _wgslsmith_f_op_f32(641f * 1629f), func_5(Struct_4(arg_0.b, Struct_1(vec4<u32>(1u, 1u, 4294967295u, arg_3.b.a.x), -33828i, vec2<f32>(arg_0.a.c.x, 867f), var_0, arg_2.c.e), arg_3.a.x), vec2<i32>(2147483647i, arg_2.c.e.x), Struct_4(vec3<f32>(var_2.x, -575f, arg_2.c.d), arg_0.a, false)).d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 425f, var_2.x, var_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-566f, arg_2.c.c.x, -212f, arg_2.c.d), vec4<f32>(-397f, var_2.x, var_2.x, arg_3.b.d), true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-430f, _wgslsmith_f_op_f32(-arg_2.c.d), _wgslsmith_f_op_f32(680f * 202f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return vec4<u32>(_wgslsmith_mult_u32(~var_1, max(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, 63742u, 50989u, 0u), ~arg_2.c.a))), 10542u, max(func_7(!select(vec2<bool>(false, true), arg_3.a, false), arg_0.b.x, func_8(vec4<f32>(arg_2.c.c.x, arg_0.a.d, -402f, var_3.x), arg_0.a.e.ywy, Struct_5(arg_2.d.zxx, vec2<i32>(global1[_wgslsmith_index_u32(1u, 23u)], 75577i), Struct_1(vec4<u32>(1u, u_input.a.x, arg_2.d.x, arg_3.b.a.x), 0i, arg_2.c.c, 191f, arg_3.b.e), vec4<u32>(u_input.a.x, 19433u, arg_3.b.a.x, u_input.a.x)), -222f)).c.a.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(abs(1301u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a.x, 24949u), vec2<u32>(4294967295u, var_1))), ~4294967295u)), _wgslsmith_sub_u32(arg_2.c.a.x, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(func_9(func_1(), firstLeadingBit(0i), Struct_5(u_input.a.zyy, vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), Struct_1(vec4<u32>(52123u, u_input.a.x, u_input.a.x, 66475u), -1i, global2[_wgslsmith_index_u32(15082u, 19u)], 1000f, vec4<i32>(1i, -1i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), vec4<u32>(1u, u_input.a.x, 68577u, u_input.a.x)), Struct_2(vec2<bool>(false, true), Struct_1(u_input.a, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(1u, 19u)], 438f, vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(54621u, 23u)], 0i, 1i)))), vec4<u32>(~62417u, ~0u, ~u_input.a.x, _wgslsmith_sub_u32(0u, u_input.a.x))), func_5(func_2(), abs(vec2<i32>(-9432i, 1i)), func_2()).a & ~vec4<u32>(u_input.a.x, u_input.a.x, 175u, 52356u)), abs(select(func_8(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(652f, 1945f, 1140f, 369f), vec4<f32>(-2071f, 951f, 104f, -1000f))), vec3<i32>(0i, 2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), func_7(vec2<bool>(false, true), -1943f, Struct_3(Struct_1(vec4<u32>(38796u, 45226u, 67555u, 74662u), 2147483647i, vec2<f32>(786f, -514f), 854f, vec4<i32>(1842i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -33944i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), vec3<f32>(-2086f, 1000f, 145f))), _wgslsmith_f_op_f32(f32(-1f) * -737f)).a.b, 28798i, any(vec4<bool>(true, true, true, true)))), vec2<f32>(_wgslsmith_f_op_f32(abs(-1299f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f * -1171f)))), 1344f, vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_5(Struct_4(vec3<f32>(-174f, 1000f, -261f), Struct_1(u_input.a, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], vec2<f32>(136f, 494f), 673f, vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -521i, global1[_wgslsmith_index_u32(47598u, 23u)], 0i)), false), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -19418i), vec2<i32>(-9299i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec2<i32>(-22434i, 0i)), Struct_4(vec3<f32>(1170f, 718f, 900f), Struct_1(u_input.a, -2147483647i, vec2<f32>(175f, -1292f), -539f, vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(9833u, 23u)], 2147483647i)), false)).a, u_input.a), 23u)], _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -1i, global1[_wgslsmith_index_u32(16826u, 23u)]), vec4<i32>(-1i, 0i, -2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), select(_wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 23u)]), abs(-1i), true)), min(~func_2().b.e.x, global1[_wgslsmith_index_u32(~4294967295u, 23u)]), func_6(func_1().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f * -560f))).a.b));
    var var_1 = !(!select(vec2<bool>(false, all(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), func_2().c)));
    var var_2 = Struct_4(vec3<f32>(_wgslsmith_div_f32(-477f, func_6(Struct_1(vec4<u32>(u_input.a.x, var_0.a.x, var_0.a.x, 10525u), var_0.e.x, global2[_wgslsmith_index_u32(var_0.a.x, 19u)], var_0.d, vec4<i32>(var_0.e.x, -1i, -1i, var_0.e.x)), 1451f).b.x), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, 122f))), var_0.c.x), var_0, (any(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x))) && !var_1.x) & true);
    var var_3 = var_0;
    let var_4 = func_7(vec2<bool>(var_2.c, var_1.x), _wgslsmith_f_op_f32(-364f + -887f), Struct_3(var_2.b, func_6(func_6(var_2.b, 769f).a, var_2.a.x).b));
    let var_5 = _wgslsmith_f_op_f32(ceil(319f));
    var var_6 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1205f, -863f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, 1229f)))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2526f, var_0.d), var_0.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-878f, 760f))))))));
    var var_7 = func_8(vec4<f32>(-691f, func_6(Struct_1(select(var_3.a, vec4<u32>(u_input.a.x, 14072u, var_4.d.x, var_0.a.x), false), var_4.c.e.x | 11749i, vec2<f32>(735f, var_4.c.c.x), _wgslsmith_f_op_f32(-var_5), vec4<i32>(var_2.b.e.x, -1i, global1[_wgslsmith_index_u32(var_3.a.x, 23u)], 0i)), 682f).b.x, func_7(vec2<bool>(var_2.c, any(vec2<bool>(var_2.c, var_2.c))), 1f, Struct_3(var_2.b, vec3<f32>(1001f, var_6.x, var_6.x))).c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5 + _wgslsmith_f_op_f32(trunc(1558f))))), -(~var_3.e.xzx), Struct_5(var_0.a.xxw, _wgslsmith_mod_vec2_i32(var_0.e.xw | var_0.e.zx, ~vec2<i32>(var_2.b.e.x, var_2.b.b)) & -var_0.e.yz, func_8(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_4.c.d), -160f, _wgslsmith_div_f32(1367f, var_5)), vec3<i32>(firstTrailingBit(var_3.b), 40984i, var_4.c.b), Struct_5(~var_0.a.ywz, var_0.e.wx, Struct_1(vec4<u32>(var_2.b.a.x, var_0.a.x, 4294967295u, var_0.a.x), var_3.b, global2[_wgslsmith_index_u32(1u, 19u)], -1134f, var_3.e), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f + 260f))).a, _wgslsmith_div_vec4_u32(~func_6(Struct_1(var_0.a, 23092i, var_2.a.zy, var_2.a.x, var_2.b.e), var_6.x).a.a, func_9(func_1(), global1[_wgslsmith_index_u32(var_4.c.a.x, 23u)] << (var_0.a.x % 32u), Struct_5(u_input.a.yww, vec2<i32>(1i, var_2.b.e.x), var_0, vec4<u32>(25945u, var_0.a.x, var_2.b.a.x, 1u)), global0[_wgslsmith_index_u32(11843u, 31u)]))), _wgslsmith_f_op_f32(-2308f + _wgslsmith_f_op_f32(1664f + _wgslsmith_f_op_f32(-var_5)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1125f, _wgslsmith_f_op_f32(step(-626f, -559f)), 1452f) + var_2.a), _wgslsmith_add_vec2_u32(~select(u_input.a.yx, ~var_2.b.a.zw, !var_2.c), var_2.b.a.ww));
}

