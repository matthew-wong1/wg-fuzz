struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(970f, vec3<i32>(2147483647i, 14243i, 0i), 2147483647i, -2009f, Struct_1(vec4<i32>(-71688i, 10241i, 0i, 44451i), false, vec4<u32>(0u, 92230u, 36075u, 0u), 51558u, vec2<f32>(-488f, 666f)));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<i32>(0i, -7468i, 0i, i32(-2147483648)), true, vec4<u32>(1u, 0u, 4294967295u, 0u), 29894u, vec2<f32>(160f, -940f)), Struct_1(vec4<i32>(-15260i, 1i, -1i, 1i), false, vec4<u32>(73806u, 4294967295u, 9775u, 1u), 4294967295u, vec2<f32>(-281f, -685f)), Struct_1(vec4<i32>(-33972i, 74300i, -37117i, 2147483647i), false, vec4<u32>(48613u, 1u, 83562u, 37809u), 18272u, vec2<f32>(-1679f, 1141f)), Struct_1(vec4<i32>(73064i, 50434i, -6071i, -5058i), false, vec4<u32>(1u, 4294967295u, 56246u, 25887u), 0u, vec2<f32>(2411f, -170f)), Struct_1(vec4<i32>(-1i, 0i, 3630i, -22376i), false, vec4<u32>(0u, 4294967295u, 16236u, 4294967295u), 31417u, vec2<f32>(-1706f, -728f)), Struct_1(vec4<i32>(-1i, 20374i, -19816i, 1i), true, vec4<u32>(4294967295u, 5714u, 9949u, 45480u), 1u, vec2<f32>(-1000f, 2097f)), Struct_1(vec4<i32>(16912i, 0i, 13622i, -10706i), true, vec4<u32>(0u, 0u, 0u, 18634u), 4294967295u, vec2<f32>(-278f, 961f)), Struct_1(vec4<i32>(2147483647i, 0i, -23837i, 0i), false, vec4<u32>(11762u, 1u, 13583u, 67265u), 0u, vec2<f32>(300f, 1136f)), Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -26628i), true, vec4<u32>(1u, 0u, 60810u, 0u), 11410u, vec2<f32>(2032f, -1818f)), Struct_1(vec4<i32>(0i, -5447i, 77140i, 0i), false, vec4<u32>(0u, 36542u, 0u, 0u), 1u, vec2<f32>(485f, 1420f)), Struct_1(vec4<i32>(11552i, 5311i, i32(-2147483648), -1i), true, vec4<u32>(0u, 40670u, 1u, 17067u), 0u, vec2<f32>(1049f, -1000f)), Struct_1(vec4<i32>(27977i, 26198i, -26032i, -1i), false, vec4<u32>(1195u, 29329u, 4294967295u, 64050u), 4294967295u, vec2<f32>(-1514f, -920f)), Struct_1(vec4<i32>(-38115i, 0i, i32(-2147483648), 31129i), true, vec4<u32>(47475u, 0u, 5111u, 1u), 51271u, vec2<f32>(-912f, 439f)), Struct_1(vec4<i32>(7734i, i32(-2147483648), 8381i, -26199i), false, vec4<u32>(1u, 36018u, 27456u, 70173u), 52202u, vec2<f32>(-239f, 250f)), Struct_1(vec4<i32>(i32(-2147483648), -24174i, i32(-2147483648), -10939i), true, vec4<u32>(73105u, 1u, 68349u, 11804u), 3367u, vec2<f32>(-1000f, 1055f)), Struct_1(vec4<i32>(11087i, 100i, -1i, -1i), true, vec4<u32>(86962u, 1u, 0u, 50815u), 63639u, vec2<f32>(944f, -801f)), Struct_1(vec4<i32>(0i, 0i, 0i, -7312i), false, vec4<u32>(1u, 4294967295u, 1u, 8121u), 10655u, vec2<f32>(-289f, 1060f)), Struct_1(vec4<i32>(-9043i, 9559i, -1i, 26520i), false, vec4<u32>(4294967295u, 62988u, 4294967295u, 28450u), 12691u, vec2<f32>(2686f, -1144f)), Struct_1(vec4<i32>(10995i, 0i, -17989i, i32(-2147483648)), true, vec4<u32>(0u, 18298u, 0u, 4294967295u), 19090u, vec2<f32>(-417f, -630f)), Struct_1(vec4<i32>(1i, -58286i, -11989i, i32(-2147483648)), false, vec4<u32>(26449u, 0u, 13828u, 25448u), 1u, vec2<f32>(-798f, -126f)), Struct_1(vec4<i32>(1i, 38167i, i32(-2147483648), -1i), true, vec4<u32>(0u, 1u, 1u, 0u), 1u, vec2<f32>(283f, -1000f)), Struct_1(vec4<i32>(4856i, 2147483647i, 14705i, i32(-2147483648)), false, vec4<u32>(0u, 38995u, 4294967295u, 1u), 4294967295u, vec2<f32>(-900f, -1040f)), Struct_1(vec4<i32>(1i, -7384i, 1495i, 0i), true, vec4<u32>(4294967295u, 1u, 0u, 31526u), 0u, vec2<f32>(-1953f, -903f)), Struct_1(vec4<i32>(-1i, -26783i, 0i, 40685i), false, vec4<u32>(67123u, 37304u, 0u, 33140u), 1u, vec2<f32>(-442f, 469f)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2970i, 0i), false, vec4<u32>(91635u, 28203u, 38850u, 85140u), 39796u, vec2<f32>(-2770f, 567f)), Struct_1(vec4<i32>(i32(-2147483648), -939i, 32088i, -1i), false, vec4<u32>(12655u, 1u, 23015u, 28637u), 50707u, vec2<f32>(680f, -709f)), Struct_1(vec4<i32>(-15340i, 16309i, 2147483647i, 35523i), true, vec4<u32>(1u, 1u, 48690u, 0u), 26545u, vec2<f32>(437f, 655f)), Struct_1(vec4<i32>(-37003i, -21760i, 18575i, 30196i), false, vec4<u32>(156851u, 4294967295u, 1307u, 4294967295u), 4294967295u, vec2<f32>(-1952f, 1923f)), Struct_1(vec4<i32>(-55507i, 2147483647i, -3538i, -1595i), false, vec4<u32>(49174u, 4294967295u, 4294967295u, 29337u), 14508u, vec2<f32>(732f, -428f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = firstTrailingBit(global1.e.d);
    var var_0 = Struct_1(global1.e.a, false, select(~_wgslsmith_sub_vec4_u32(arg_2.c, ~vec4<u32>(0u, 4322u, 1u, 53295u)), min(~arg_3.c, ~(~vec4<u32>(arg_3.d, arg_2.d, 98671u, arg_2.d))), select(arg_2.b, !select(false, arg_2.b, arg_3.b), true)), abs(global1.e.d << ((10825u >> (0u % 32u)) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-506f * global1.a) - _wgslsmith_f_op_f32(f32(-1f) * -2735f))), 1150f));
    var_0 = arg_3;
    var_0 = arg_2;
    global2 = array<Struct_1, 29>();
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> Struct_2 {
    var var_0 = select(vec2<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x, false, true), func_3(vec4<f32>(-168f, -1887f, 739f, 1000f), vec2<i32>(-1i, -2147483647i), Struct_1(global1.e.a, true, vec4<u32>(49653u, global1.e.d, 1u, 16192u), 1u, global1.e.e), global2[_wgslsmith_index_u32(global1.e.c.x, 29u)])))), select(select(vec2<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), arg_0.x), !vec2<bool>(arg_0.x, arg_0.x), select(select(arg_0, vec2<bool>(arg_0.x, arg_0.x), global1.e.b), vec2<bool>(arg_0.x, false), select(arg_0, arg_0, arg_0))), vec2<bool>(global1.e.b, !(arg_3 >= global1.c)), arg_0.x), arg_0);
    global0 = max(_wgslsmith_add_u32(35107u, ~firstTrailingBit(_wgslsmith_mod_u32(1u, 257u))), global1.e.c.x);
    global1 = Struct_2(_wgslsmith_f_op_f32(abs(global1.e.e.x)), _wgslsmith_mult_vec3_i32(abs(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global1.e.a.zyy, vec3<i32>(-1660i, -61435i, 1284i)), global1.b)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, -36636i, arg_3) ^ vec3<i32>(1i, 2147483647i, -1i), global1.b & global1.e.a.zww), vec3<i32>(u_input.a.x, arg_3, 9470i) & -vec3<i32>(arg_1.x, global1.e.a.x, -13588i))), ~(~min(arg_3, min(43469i, arg_1.x))), global1.d, Struct_1(vec4<i32>(2147483647i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(global1.b.x, 8329i)), -select(global1.c, u_input.a.x, false), _wgslsmith_dot_vec2_i32(~global1.b.zz, vec2<i32>(arg_3, -1i))), !global1.e.b, ~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_2, 8640u, 11267u), global1.e.c)), global1.e.c.x >> (~4294967295u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.e.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(-905f, global1.a) + vec2<f32>(574f, global1.d))))));
    let var_1 = ~global1.e.c.wz;
    var var_2 = -231f;
    return Struct_2(global1.d, -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, -2147483647i, 1i), ~vec3<i32>(-1i, -10882i, -2147483647i), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3, -2147483647i, u_input.a.x), vec3<i32>(-5535i, arg_3, -1i)))), 0i, global1.d, global1.e);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_add_u32(~(~(~17033u)) ^ _wgslsmith_sub_u32(reverseBits(global1.e.c.x), firstLeadingBit(34945u)), firstLeadingBit(1u));
    let var_1 = func_2(!vec2<bool>(global1.e.b, all(select(vec4<bool>(global1.e.b, global1.e.b, global1.e.b, false), vec4<bool>(global1.e.b, false, false, global1.e.b), global1.e.b))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-14483i << (global1.e.d % 32u), ~u_input.a.x), global1.e.a.zx), _wgslsmith_mult_vec2_i32(select(-u_input.a, u_input.a, global1.e.b), -vec2<i32>(global1.c, u_input.a.x))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global1.e.d, 8057u), ~(~global1.e.c.yyz)), i32(-1i) * -1i);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(-480f)), ~var_1.e.a.zwy, 1i, _wgslsmith_f_op_f32(min(909f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1962f + 436f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * 1342f) - _wgslsmith_f_op_f32(-1177f - 1608f)))))), var_1.e);
    let var_3 = _wgslsmith_sub_vec4_i32(abs(_wgslsmith_add_vec4_i32(var_2.e.a & global1.e.a, _wgslsmith_clamp_vec4_i32(var_1.e.a, vec4<i32>(7626i, var_2.e.a.x, u_input.a.x, -1i), var_2.e.a))) ^ var_1.e.a, vec4<i32>(var_1.b.x, ~var_1.e.a.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_1.c, var_1.c)), ~var_1.b.x) & var_1.e.a);
    global1 = Struct_2(-1000f, var_3.ywz, var_2.e.a.x, -272f, func_2(select(select(vec2<bool>(true, true), vec2<bool>(var_2.e.b, var_1.e.b), select(vec2<bool>(global1.e.b, false), vec2<bool>(var_2.e.b, true), vec2<bool>(true, global1.e.b))), vec2<bool>(any(vec4<bool>(var_2.e.b, global1.e.b, false, var_1.e.b)), var_1.e.b & global1.e.b), true), -select(vec2<i32>(-2147483647i, 2147483647i), firstTrailingBit(vec2<i32>(var_2.c, 0i)), false), var_2.e.d, 75228i).e);
    return 22561u;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: i32, arg_3: bool) -> Struct_1 {
    global0 = ~global1.e.d;
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-187f, global1.a, -710f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1040f, global1.a, global1.e.e.x)))))), false, -1i, !vec4<bool>(_wgslsmith_f_op_f32(-global1.e.e.x) > -942f, !(arg_0.x != 56517u), true, select(true, false, arg_3) & global1.e.b));
    let var_1 = _wgslsmith_mult_vec2_i32(-(~(~(~u_input.a))), global1.b.xx & vec2<i32>(-1i, 1i));
    var var_2 = !select(select(!vec3<bool>(true, var_0.b, true), var_0.d.zzx, true), select(vec3<bool>(global1.e.b, all(vec3<bool>(true, arg_3, arg_3)), global1.e.b | global1.e.b), vec3<bool>(true, var_0.d.x, global1.e.b), any(select(vec3<bool>(false, global1.e.b, global1.e.b), var_0.d.zzy, var_0.d.zzx))), (arg_1 | (var_1.x ^ 0i)) <= 2147483647i);
    let var_3 = ~(~(_wgslsmith_add_u32(0u, arg_0.x) & _wgslsmith_sub_u32(arg_0.x, global1.e.d)));
    return Struct_1(-min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, arg_2, global1.c, -1i), vec4<i32>(20211i, 27489i, -1i, arg_1)), global1.e.a), func_2(vec2<bool>(_wgslsmith_f_op_f32(-var_0.a.x) != -1145f, select(false, all(var_0.d), all(vec2<bool>(var_2.x, var_2.x)))), -u_input.a, 5695u, 10015i).e.b, ~abs(max(~global1.e.c, global1.e.c)), _wgslsmith_sub_u32((_wgslsmith_div_u32(arg_0.x, arg_0.x) << (abs(global1.e.d) % 32u)) & select(_wgslsmith_clamp_u32(var_3, global1.e.c.x, 0u), ~global1.e.d, true), max(select(~730u, ~arg_0.x, false), ~firstLeadingBit(36208u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.a.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(-700f)), abs(vec3<i32>(2147483647i, ~global1.c, firstTrailingBit(global1.b.x)) | vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.a.x), 1i, u_input.a.x)), u_input.a.x | global1.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))), func_4(vec3<u32>(~global1.e.c.x, func_1(), ~34046u) & firstTrailingBit(vec3<u32>(global1.e.d, 0u, 1u)), select(~reverseBits(-1i), countOneBits(u_input.a.x), !global1.e.b && global1.e.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a.x, 1i), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(405f * global1.a)) >= global1.e.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_0.e.c.yxz, vec3<u32>(var_0.e.d, var_0.e.d, var_0.e.c.x)), reverseBits(var_0.e.c.xyw))));
}

