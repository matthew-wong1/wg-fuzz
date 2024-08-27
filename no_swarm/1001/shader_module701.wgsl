struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec3<u32>(1u, 0u, 4294967295u)), vec3<f32>(-1556f, 783f, 450f)), Struct_2(Struct_1(vec3<u32>(26866u, 4294967295u, 13203u)), vec3<f32>(-1000f, 2627f, -872f)), Struct_2(Struct_1(vec3<u32>(20200u, 0u, 0u)), vec3<f32>(-1000f, 671f, -1505f)), Struct_2(Struct_1(vec3<u32>(19712u, 4294967295u, 4294967295u)), vec3<f32>(-510f, 271f, -1192f)), Struct_2(Struct_1(vec3<u32>(39364u, 45259u, 1u)), vec3<f32>(-1217f, 581f, 580f)), Struct_2(Struct_1(vec3<u32>(1u, 40720u, 51914u)), vec3<f32>(-1353f, -1443f, 839f)), Struct_2(Struct_1(vec3<u32>(23735u, 179u, 88848u)), vec3<f32>(369f, -528f, 659f)), Struct_2(Struct_1(vec3<u32>(37743u, 1u, 28637u)), vec3<f32>(-1300f, 1454f, 292f)), Struct_2(Struct_1(vec3<u32>(3026u, 1u, 1u)), vec3<f32>(-1003f, -876f, -1275f)), Struct_2(Struct_1(vec3<u32>(4294967295u, 10421u, 4294967295u)), vec3<f32>(-450f, 692f, 1000f)), Struct_2(Struct_1(vec3<u32>(22403u, 1u, 1u)), vec3<f32>(1985f, -462f, 1082f)), Struct_2(Struct_1(vec3<u32>(4294967295u, 18813u, 41418u)), vec3<f32>(-1000f, -553f, 535f)), Struct_2(Struct_1(vec3<u32>(21911u, 8739u, 7196u)), vec3<f32>(-487f, -213f, -1000f)), Struct_2(Struct_1(vec3<u32>(58605u, 120960u, 49303u)), vec3<f32>(842f, 343f, -991f)), Struct_2(Struct_1(vec3<u32>(43019u, 53580u, 48347u)), vec3<f32>(-608f, -283f, 396f)), Struct_2(Struct_1(vec3<u32>(0u, 61u, 0u)), vec3<f32>(517f, -822f, -1150f)), Struct_2(Struct_1(vec3<u32>(18291u, 29288u, 13919u)), vec3<f32>(1322f, 1079f, 350f)), Struct_2(Struct_1(vec3<u32>(51789u, 0u, 27390u)), vec3<f32>(170f, 334f, -395f)), Struct_2(Struct_1(vec3<u32>(41840u, 62566u, 4294967295u)), vec3<f32>(750f, -410f, -1000f)), Struct_2(Struct_1(vec3<u32>(43657u, 4294967295u, 68297u)), vec3<f32>(-465f, -1586f, -1202f)), Struct_2(Struct_1(vec3<u32>(11531u, 89202u, 159438u)), vec3<f32>(1000f, 464f, -181f)), Struct_2(Struct_1(vec3<u32>(0u, 0u, 0u)), vec3<f32>(174f, 522f, 1010f)), Struct_2(Struct_1(vec3<u32>(1u, 0u, 16767u)), vec3<f32>(-2232f, -311f, 1000f)), Struct_2(Struct_1(vec3<u32>(37135u, 0u, 0u)), vec3<f32>(-632f, 1509f, -824f)), Struct_2(Struct_1(vec3<u32>(16093u, 0u, 4294967295u)), vec3<f32>(1103f, -2354f, 810f)), Struct_2(Struct_1(vec3<u32>(1u, 12126u, 1u)), vec3<f32>(876f, -277f, 2890f)), Struct_2(Struct_1(vec3<u32>(39806u, 23982u, 45310u)), vec3<f32>(535f, -389f, 675f)), Struct_2(Struct_1(vec3<u32>(12816u, 0u, 4294967295u)), vec3<f32>(691f, -1189f, -2357f)), Struct_2(Struct_1(vec3<u32>(32374u, 28021u, 11016u)), vec3<f32>(-1790f, 765f, -794f)), Struct_2(Struct_1(vec3<u32>(26132u, 4294967295u, 1u)), vec3<f32>(-1130f, 945f, -945f)), Struct_2(Struct_1(vec3<u32>(37235u, 4294967295u, 4294967295u)), vec3<f32>(-705f, 103f, -1017f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    return Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~(~1u), 1u, ~min(0u, 29270u)), ~firstTrailingBit(vec3<u32>(0u, 4294967295u, 59828u))));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = select(firstTrailingBit(1i), u_input.b, false);
    var var_1 = (~vec2<u32>(arg_0, 0u) & vec2<u32>(0u, arg_0)) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(arg_0, 4294967295u)) >> (~vec2<u32>(0u, 0u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0, arg_0), reverseBits(vec2<u32>(arg_0, 15781u)))), vec2<u32>(0u, firstTrailingBit(arg_0) >> (58208u % 32u)));
    var_1 = select(_wgslsmith_mult_vec2_u32(firstTrailingBit(reverseBits(vec2<u32>(4294967295u, arg_0)) << (_wgslsmith_div_vec2_u32(vec2<u32>(28546u, 107820u), vec2<u32>(arg_0, 1u)) % vec2<u32>(32u))), vec2<u32>(reverseBits(1u), ~0u)), ~countOneBits(reverseBits(vec2<u32>(17612u, 10506u) >> (vec2<u32>(62990u, arg_0) % vec2<u32>(32u)))), !(!(1u > (var_1.x | 61093u))));
    var_0 = u_input.b;
    var_1 = ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_1.x, 67311u))) << (abs(max(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 6321u), vec2<u32>(arg_0, var_1.x)), ~vec2<u32>(arg_0, 1u)) << (vec2<u32>(arg_0, ~arg_0) % vec2<u32>(32u))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1250f, -962f)), _wgslsmith_f_op_f32(select(-960f, 780f, false))), _wgslsmith_f_op_f32(f32(-1f) * -440f))))));
}

fn func_1() -> u32 {
    let var_0 = !any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !all(vec2<bool>(false, false))));
    let var_1 = func_2();
    global0 = array<Struct_2, 31>();
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_f32(func_3(25998u)), ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, var_1.a.x), vec4<u32>(32882u, var_1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(6498u, var_1.a.x, 69279u, 1u))) ^ ~(~(~vec4<u32>(var_1.a.x, var_1.a.x, 0u, var_1.a.x))), _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.b, abs(u_input.a), max(u_input.a, u_input.b)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, u_input.b, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.b, 1i), vec3<i32>(u_input.b, 14604i, 31963i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<i32>(46565i, u_input.b, u_input.a))), all(!vec2<bool>(var_0, var_0))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -73074i, u_input.b), vec3<i32>(u_input.b, u_input.a, u_input.a)) << (~abs(vec3<u32>(var_1.a.x, 0u, var_1.a.x)) % vec3<u32>(32u))));
    let var_3 = -79479i;
    return countOneBits(1u);
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(arg_0.a.x, 31u)], _wgslsmith_f_op_f32(step(-1167f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-970f + _wgslsmith_f_op_f32(f32(-1f) * -615f)) + _wgslsmith_f_op_f32(min(-1099f, _wgslsmith_f_op_f32(1548f + 223f)))))), select(vec4<u32>(select(~arg_0.a.x, arg_0.a.x & arg_0.a.x, true), 23526u, countOneBits(4294967295u), reverseBits(arg_0.a.x) & ~arg_0.a.x), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 70774u, arg_0.a.x), vec4<u32>(57839u, arg_0.a.x, 15178u, 1u)), firstLeadingBit(arg_0.a.x)), _wgslsmith_mult_u32(~arg_0.a.x, ~arg_0.a.x), ~(~arg_0.a.x), ~arg_0.a.x), _wgslsmith_mult_i32(u_input.b | u_input.b, u_input.b) <= -2147483647i), -vec3<i32>(-(56441i | u_input.a), -firstTrailingBit(1i), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(u_input.b, u_input.a, 42569i)))));
    var var_1 = global0[_wgslsmith_index_u32(~(12089u ^ arg_0.a.x), 31u)];
    var_0 = Struct_3(global0[_wgslsmith_index_u32(abs(45508u) << (var_1.a.a.x % 32u), 31u)], var_1.b.x, abs(vec4<u32>(~1u, _wgslsmith_mod_u32(arg_0.a.x, ~var_1.a.a.x), ~abs(1u), ~(~var_0.a.a.a.x))), ~(~(~var_0.d)) | _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(37493i, 13787i, var_0.d.x), ~vec3<i32>(-36921i, u_input.b, u_input.a)), vec3<i32>(countOneBits(var_0.d.x), 13233i, -u_input.a)));
    global0 = array<Struct_2, 31>();
    var var_2 = 2147483647i;
    return 53318u <= ~_wgslsmith_div_u32(4294967295u << (_wgslsmith_sub_u32(1u, 1u) % 32u), firstLeadingBit(var_0.c.x) ^ var_1.a.a.x);
}

fn func_5(arg_0: bool, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_2, 31>();
    var var_0 = 0u;
    let var_1 = Struct_4(func_2(), Struct_3(global0[_wgslsmith_index_u32(6980u, 31u)], 1004f, vec4<u32>(max(_wgslsmith_sub_u32(91664u, 37998u), _wgslsmith_mod_u32(17559u, 59628u)), _wgslsmith_clamp_u32(75199u, 46746u, 34800u) << (_wgslsmith_add_u32(0u, 0u) % 32u), 0u, 73704u), abs(firstLeadingBit(vec3<i32>(u_input.a, 1i, 1i)))), Struct_3(Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(620f, 205f, 230f), vec3<f32>(-1042f, 447f, 1000f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(799f, 926f, 347f) + vec3<f32>(-553f, 1000f, -1142f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -226f)))), ~(~(~vec4<u32>(4294967295u, 30923u, 25305u, 0u))), ~(-firstLeadingBit(vec3<i32>(0i, 45312i, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1732f + -663f), _wgslsmith_f_op_f32(-587f - -892f), all(vec2<bool>(false, arg_1)))) - 1000f)), func_2());
    let var_2 = Struct_4(var_1.b.a.a, Struct_3(var_1.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(step(-1117f, var_1.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a.b.x))), select(vec4<u32>(_wgslsmith_clamp_u32(var_1.b.c.x, var_1.a.a.x, 1233u), 102386u, _wgslsmith_clamp_u32(var_1.b.c.x, 28435u, 4294967295u), var_1.e.a.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1.a.a.x, var_1.b.c.x, var_1.c.a.a.a.x), vec4<u32>(38310u, 0u, var_1.c.a.a.a.x, var_1.a.a.x)), arg_0), vec3<i32>(~(-31338i), -1i, u_input.b ^ -2147483647i)), Struct_3(Struct_2(Struct_1(var_1.a.a), vec3<f32>(_wgslsmith_f_op_f32(select(var_1.b.a.b.x, 536f, false)), -783f, _wgslsmith_f_op_f32(var_1.c.b * var_1.d))), _wgslsmith_f_op_f32(var_1.c.b - _wgslsmith_f_op_f32(f32(-1f) * -318f)), var_1.b.c, var_1.b.d), var_1.d, Struct_1(vec3<u32>(~31253u, 1u, var_1.b.c.x) ^ _wgslsmith_sub_vec3_u32(var_1.a.a, vec3<u32>(var_1.c.a.a.a.x, var_1.b.a.a.a.x, var_1.e.a.x))));
    var_0 = _wgslsmith_mod_u32(var_2.a.a.x, ((var_1.b.a.a.a.x & abs(var_2.a.a.x)) >> (4294967295u % 32u)) >> (0u % 32u));
    return Struct_1(var_2.c.a.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_1(vec3<u32>(1u, abs(97088u), func_1()))), !(!(_wgslsmith_clamp_i32(2147483647i, -27735i, u_input.b) != u_input.a)));
    var var_1 = ~(-31549i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(i32(-1i) * -u_input.a, firstLeadingBit(28120i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-231f, -1251f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-386f)))))) * 1096f);
    var_2 = -2547f;
    let var_3 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(vec3<f32>(-1329f, 1392f, 367f), vec3<f32>(1751f, -904f, 833f)), true)), vec3<f32>(_wgslsmith_f_op_f32(func_3(1u)), _wgslsmith_f_op_f32(-712f * 389f), -762f)))), min(~_wgslsmith_dot_vec3_u32(var_0.a & vec3<u32>(4294967295u, 10945u, var_0.a.x), ~vec3<u32>(44016u, 0u, 65936u)), var_0.a.x));
}

