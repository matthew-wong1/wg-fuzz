struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(39380u, 18189u, 18825u), vec3<u32>(0u, 1063u, 0u), vec3<u32>(7670u, 84334u, 0u), vec3<u32>(20672u, 1u, 0u), vec3<u32>(62758u, 0u, 4294967295u), vec3<u32>(1174u, 1u, 1u), vec3<u32>(88353u, 31199u, 19735u), vec3<u32>(4294967295u, 6298u, 4294967295u), vec3<u32>(1u, 1u, 26269u), vec3<u32>(1u, 88214u, 12396u), vec3<u32>(1u, 1u, 24577u), vec3<u32>(55174u, 24261u, 53807u), vec3<u32>(4294967295u, 40069u, 14733u), vec3<u32>(0u, 4294967295u, 33189u), vec3<u32>(9642u, 53708u, 4294967295u), vec3<u32>(1u, 24013u, 0u), vec3<u32>(13271u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 135754u));

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(13911u, 23284u), vec2<u32>(36609u, 53416u), vec2<u32>(76809u, 94806u), vec2<u32>(1u, 76112u), vec2<u32>(18923u, 19212u), vec2<u32>(1u, 0u), vec2<u32>(8104u, 1u), vec2<u32>(15512u, 0u), vec2<u32>(1u, 42137u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<u32> {
    global0 = array<vec3<u32>, 18>();
    var var_0 = Struct_2(Struct_1(!((0i ^ u_input.a) < abs(0i)), _wgslsmith_mod_vec4_i32(select(~vec4<i32>(u_input.e.x, 1i, 2147483647i, u_input.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.e.x, -2147483647i, -1i), vec4<i32>(-1i, u_input.d.x, -34613i, u_input.c)), any(vec4<bool>(false, true, true, true))), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.e.x, -27477i, -49168i), vec4<i32>(u_input.e.x, u_input.a, -2147483647i, 17103i), vec4<i32>(1i, -1i, 1i, -81754i))))), ~_wgslsmith_mod_vec4_u32(~max(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(4294967295u, 36951u, u_input.b.x, u_input.b.x)), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 14899u, u_input.b.x), global0[_wgslsmith_index_u32(35989u, 18u)]), ~u_input.b.x, 1u)), Struct_1(true, -vec4<i32>(1i, 0i, ~(-1i), u_input.e.x)), Struct_1(any(vec2<bool>(true, all(vec4<bool>(true, false, true, false)))), min(max(vec4<i32>(36493i, 1i, 47166i, -37571i) ^ vec4<i32>(81375i, u_input.d.x, u_input.e.x, 21091i), -vec4<i32>(u_input.c, u_input.a, 2147483647i, 2147483647i)), -(~vec4<i32>(-1i, u_input.d.x, u_input.d.x, -1i)))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-405f, -1000f) - vec2<f32>(-746f, 1364f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1052f, 1281f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f)))));
    let var_2 = Struct_1(true, var_0.d.b);
    return select(~var_0.b, _wgslsmith_mod_vec4_u32(firstLeadingBit(var_0.b), ~(abs(vec4<u32>(4294967295u, 4294967295u, 62207u, var_0.b.x)) >> (var_0.b % vec4<u32>(32u)))), !(!(!(!vec4<bool>(true, var_2.a, false, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<u32> {
    global1 = true;
    global1 = !any(vec3<bool>(true, arg_1, true));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(690f, 1195f, -1339f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-956f, -1417f, -277f) - vec3<f32>(1000f, -311f, 1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(406f, 148f, 353f)) * vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1077f, -165f, 1000f), vec3<f32>(686f, -1275f, 251f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(161f, 1206f, -189f) + vec3<f32>(-2275f, 1719f, 366f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2097f, -1728f, 1048f)))), vec3<bool>(any(vec4<bool>(arg_1, true, false, true)), false || arg_2.d.a, arg_2.a.a)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(578f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 292f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(var_0.x - -1630f), _wgslsmith_f_op_f32(ceil(var_0.x)))), select(!select(vec3<bool>(true, arg_3.x, arg_2.c.a), vec3<bool>(false, arg_3.x, arg_1), false), select(!vec3<bool>(arg_1, true, arg_2.c.a), vec3<bool>(true, arg_0.a, false), all(vec3<bool>(arg_0.a, false, arg_3.x))), false))));
    let var_1 = vec3<u32>(11325u, 1u, u_input.b.x);
    return vec4<u32>(_wgslsmith_clamp_u32(firstLeadingBit(~_wgslsmith_clamp_u32(4617u, 1u, 10459u)), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~(~39057u), 9u)], vec2<u32>(0u, abs(1u))), 22639u), ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 3364u, 15664u), vec4<u32>(4294967295u, u_input.b.x, 15575u, var_1.x)), ~28997u), ~(53599u | arg_2.b.x), _wgslsmith_add_u32(var_1.x, var_1.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = 38458i;
    var var_1 = false;
    let var_2 = all(!vec4<bool>(false, arg_1.a, arg_0.a, arg_0.a)) | arg_1.a;
    let var_3 = Struct_2(Struct_1(arg_2, abs(~vec4<i32>(-1i, 0i, u_input.a, 1i) >> ((vec4<u32>(51616u, u_input.b.x, 0u, u_input.b.x) ^ vec4<u32>(u_input.b.x, 16376u, 4554u, u_input.b.x)) % vec4<u32>(32u)))), ~func_4(arg_0, var_2, Struct_2(Struct_1(true, arg_1.b), func_3(), arg_1, arg_0), select(!vec2<bool>(true, arg_2), vec2<bool>(false, true), select(vec2<bool>(var_2, var_2), vec2<bool>(false, true), vec2<bool>(arg_1.a, false)))), Struct_1(all(vec2<bool>(true, arg_2)), arg_1.b), arg_1);
    let var_4 = -1583f;
    return 15960u;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = ~global0[_wgslsmith_index_u32(max(5387u, ~_wgslsmith_sub_u32(func_2(Struct_1(false, vec4<i32>(u_input.a, 27676i, -1i, 0i)), Struct_1(true, vec4<i32>(-1i, 0i, u_input.e.x, u_input.c)), true), u_input.b.x | 0u)), 18u)];
    global2 = array<vec2<u32>, 9>();
    global1 = !any(!vec4<bool>(false, all(vec4<bool>(true, true, true, false)), true, true));
    let var_1 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), !(-44679i == u_input.c)), select(vec4<bool>(false, true, true, all(vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, false))), any(vec2<bool>(true, true))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false)), select(vec4<bool>(all(vec2<bool>(false, true)), true, 43328i <= u_input.e.x, -36340i != u_input.d.x), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_1(var_1.x, (vec4<i32>(1i, -1i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1224i, -5653i, 32003i), vec4<i32>(u_input.d.x, 26499i, -1i, -21237i))) << (firstTrailingBit(~vec4<u32>(var_0.x, u_input.b.x, 4294967295u, 0u)) % vec4<u32>(32u))) ^ reverseBits(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.c), 1i, u_input.e.x, u_input.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 9>();
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-849f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), -639f))), vec4<u32>(~(4294967295u | u_input.b.x), u_input.b.x, u_input.b.x, 4294967295u), func_1(-589f), Struct_1(false, -func_1(-866f).b));
    global1 = true;
    global2 = array<vec2<u32>, 9>();
    var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-313f - _wgslsmith_f_op_f32(f32(-1f) * -778f))))), max(vec4<u32>(abs(_wgslsmith_mult_u32(2775u, var_0.b.x)), firstTrailingBit(u_input.b.x), ~55276u | var_0.b.x, min(_wgslsmith_clamp_u32(1u, var_0.b.x, var_0.b.x), ~1u)), var_0.b << (countOneBits(_wgslsmith_div_vec4_u32(var_0.b, vec4<u32>(21988u, 4294967295u, 55292u, 0u))) % vec4<u32>(32u))), Struct_1(!var_0.c.a, reverseBits(var_0.c.b) & countOneBits(vec4<i32>(-44500i, u_input.c, u_input.d.x, var_0.d.b.x))), var_0.a);
    var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(911f, 100f, true)))), min(firstLeadingBit(vec4<u32>(~u_input.b.x, var_0.b.x >> (21123u % 32u), _wgslsmith_clamp_u32(4294967295u, 1u, 33832u), firstTrailingBit(50538u))), var_0.b), var_0.c, var_0.d);
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-873f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(966f, 1000f) * 1f)) + -438f));
    var var_2 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.b.xwx, vec3<u32>(u_input.b.x, 50544u, ~var_0.b.x)), func_4(func_1(255f), true, Struct_2(var_0.c, vec4<u32>(u_input.b.x, 21952u, u_input.b.x, 4294967295u), var_0.d, Struct_1(false, vec4<i32>(0i, var_0.a.b.x, var_1.b.x, var_1.b.x))), !(!vec2<bool>(var_1.a, var_1.a))).x);
    let x = u_input.a;
    s_output = StorageBuffer(-(var_1.b.x & 30669i), var_0.b.x, _wgslsmith_mod_u32(reverseBits(~(~u_input.b.x)), (~var_0.b.x ^ var_0.b.x) & _wgslsmith_div_u32(~4294967295u, var_0.b.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(418f + -972f), _wgslsmith_f_op_f32(select(1396f, 2023f, var_1.a)), _wgslsmith_div_f32(1000f, -481f), _wgslsmith_f_op_f32(min(1284f, 441f))))))));
}

