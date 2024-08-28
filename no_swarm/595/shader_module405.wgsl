struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(71999u, 42977u, 1u), vec3<u32>(4294967295u, 24322u, 4294967295u));

var<private> global2: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(55155u, 5818u, 1u, 1u), vec4<u32>(28556u, 4294967295u, 25163u, 0u), vec4<u32>(1u, 0u, 60006u, 78011u), vec4<u32>(4294967295u, 70641u, 4294967295u, 39457u), vec4<u32>(1u, 11682u, 17794u, 78130u), vec4<u32>(46431u, 4932u, 12845u, 0u), vec4<u32>(90566u, 22213u, 74667u, 1u), vec4<u32>(24688u, 46084u, 30729u, 48402u), vec4<u32>(20667u, 105051u, 1u, 12713u), vec4<u32>(0u, 0u, 0u, 25604u), vec4<u32>(4294967295u, 9664u, 4294967295u, 81674u), vec4<u32>(0u, 24524u, 6041u, 34108u), vec4<u32>(0u, 65648u, 4416u, 11333u), vec4<u32>(33371u, 42858u, 4294967295u, 11830u), vec4<u32>(19677u, 10077u, 5027u, 16158u), vec4<u32>(0u, 0u, 6698u, 1u), vec4<u32>(73518u, 6817u, 1u, 62245u), vec4<u32>(1u, 12819u, 0u, 43500u), vec4<u32>(70847u, 40247u, 46743u, 35837u), vec4<u32>(28195u, 78165u, 8267u, 99042u), vec4<u32>(4294967295u, 77499u, 0u, 97830u), vec4<u32>(1u, 0u, 0u, 111847u), vec4<u32>(18082u, 55849u, 26363u, 20958u), vec4<u32>(7286u, 28767u, 5006u, 122391u), vec4<u32>(0u, 0u, 1u, 59105u), vec4<u32>(13536u, 15647u, 34498u, 0u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(55009u, 0u, 12501u, 0u), vec4<u32>(6971u, 43240u, 1u, 1u), vec4<u32>(11669u, 93386u, 1u, 19899u), vec4<u32>(0u, 4294967295u, 53332u, 14952u));

var<private> global3: i32 = 1i;

var<private> global4: i32 = 14949i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<f32> {
    global3 = global0[_wgslsmith_index_u32(0u ^ _wgslsmith_mult_u32(9101u, _wgslsmith_div_u32(u_input.c, u_input.d)), 21u)];
    global2 = array<vec4<u32>, 31>();
    var var_0 = Struct_5(_wgslsmith_mod_i32(-37163i, global0[_wgslsmith_index_u32(20889u, 21u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-252f, 365f, -731f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2714f, 2873f, -911f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-166f, -938f, 1000f))))))), ~firstLeadingBit(abs(7432u)) >> (1u % 32u), (vec2<u32>(u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.d), vec2<u32>(u_input.d, 81561u))) >> ((~vec2<u32>(u_input.c, u_input.c) & vec2<u32>(51968u, u_input.d)) % vec2<u32>(32u))) << (reverseBits(reverseBits(vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(select(1i, var_0.a, !any(vec2<bool>(true, false))), _wgslsmith_add_i32(var_0.a << (4294967295u % 32u), firstLeadingBit(-4323i))), ~1i);
    global0 = array<i32, 21>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(1502f - var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = true;
    let var_1 = _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.d >> (u_input.c % 32u), 3u)], firstLeadingBit(vec3<u32>(u_input.c, 2629u, (u_input.d | 0u) | _wgslsmith_sub_u32(u_input.d, 26461u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-896f, 1729f, 825f, 1156f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-946f, 821f, 1209f, -1311f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(177f, -508f, 335f, -723f), vec4<f32>(1743f, -588f, 403f, 2135f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1277f, -430f, -590f, 450f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(356f, -2224f, -187f, 1000f), vec4<f32>(-914f, -1232f, 331f, -1050f), false))))));
    let var_3 = Struct_5(~(-_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(10149i, u_input.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), var_2.x, -190f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(779f, var_2.x, 472f) * _wgslsmith_f_op_vec3_f32(exp2(var_2.wzy))))), ~u_input.d ^ var_1, _wgslsmith_mult_vec2_u32(~max(vec2<u32>(5757u, 0u), vec2<u32>(5u, u_input.c)) & vec2<u32>(~21004u, 12736u), vec2<u32>(1u, 1u)));
    var var_4 = var_3.d;
    return global0[_wgslsmith_index_u32(var_4.x, 21u)] | ~arg_0.x;
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<u32>, 31>();
    var var_0 = ~(_wgslsmith_mod_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(0u, 21u)], u_input.b) & (vec2<i32>(u_input.b, -42402i) >> (vec2<u32>(42098u, 51467u) % vec2<u32>(32u))), vec2<i32>(-1i, func_2(vec3<i32>(u_input.a, u_input.b, u_input.a), vec4<bool>(true, true, true, false)))) | min(countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 21u)], 0i)), max(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 21u)], u_input.b), ~vec2<i32>(-15805i, 1i))));
    let var_1 = false;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(-880f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-138f + 1886f), -1442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(321f + 1573f)))), -1657f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-639f * -1432f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-256f)))))));
    let var_3 = vec2<u32>(countOneBits(_wgslsmith_clamp_u32(~4294967295u, ~_wgslsmith_mod_u32(u_input.d, 0u), ~1u)), ~_wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 3100u, u_input.d, u_input.d) & global2[_wgslsmith_index_u32(0u, 31u)], _wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], vec4<u32>(56218u, 4294967295u, u_input.c, 0u)))));
    return Struct_1(_wgslsmith_mult_i32(~select(u_input.a, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(117547u, 21u)], -28943i), true), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -30509i;
    let var_1 = func_1();
    global2 = array<vec4<u32>, 31>();
    var var_2 = func_1();
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + -112f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(517f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -618f))), 146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(174f, -857f)) - _wgslsmith_f_op_f32(round(-353f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1137f, 1000f, 2030f, -1758f))) - vec4<f32>(-1198f, 1000f, -827f, 1462f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -104f, 243f, -905f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, 1434f, 1316f, -210f)), true))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(195f, -285f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1251f, -1000f) * vec2<f32>(-227f, 224f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1326f, 1697f))))))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, u_input.c), global2[_wgslsmith_index_u32(1u, 31u)]), countOneBits(vec4<u32>(u_input.d, 22099u, u_input.d, 11846u))), firstLeadingBit(vec4<u32>(1u, 3356u, 8509u, u_input.d))), 1526f);
}

