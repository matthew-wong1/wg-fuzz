struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(0u, 0u));

var<private> global2: vec3<u32> = vec3<u32>(1u, 52913u, 15033u);

var<private> global3: u32 = 4294967295u;

var<private> global4: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec4<bool>(false, true, false, true), 1324f, vec3<u32>(4294967295u, 59346u, 80721u), vec3<u32>(4786u, 58038u, 1u)), Struct_3(vec4<bool>(true, true, true, false), -1000f, vec3<u32>(16976u, 28926u, 4294967295u), vec3<u32>(23391u, 1u, 46904u)), Struct_3(vec4<bool>(false, false, false, true), 1215f, vec3<u32>(19374u, 62287u, 0u), vec3<u32>(6730u, 1u, 4294967295u)), Struct_3(vec4<bool>(false, false, false, false), -484f, vec3<u32>(75659u, 27610u, 19917u), vec3<u32>(1u, 13363u, 14209u)), Struct_3(vec4<bool>(true, false, false, false), 1591f, vec3<u32>(7296u, 5837u, 1u), vec3<u32>(1u, 1u, 4294967295u)), Struct_3(vec4<bool>(false, false, true, true), -1000f, vec3<u32>(1258u, 45626u, 0u), vec3<u32>(100702u, 31846u, 145086u)), Struct_3(vec4<bool>(false, false, true, false), 480f, vec3<u32>(0u, 16823u, 85183u), vec3<u32>(40756u, 28059u, 10621u)), Struct_3(vec4<bool>(false, true, true, false), 1251f, vec3<u32>(4294967295u, 17936u, 1u), vec3<u32>(60106u, 11565u, 0u)), Struct_3(vec4<bool>(true, false, true, false), 726f, vec3<u32>(5684u, 1u, 1u), vec3<u32>(11488u, 1u, 4294967295u)), Struct_3(vec4<bool>(false, false, true, true), -1870f, vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(42520u, 0u, 4617u)), Struct_3(vec4<bool>(false, false, false, true), 3134f, vec3<u32>(10331u, 4294967295u, 1u), vec3<u32>(60939u, 32138u, 21729u)), Struct_3(vec4<bool>(true, true, true, false), 344f, vec3<u32>(48916u, 3676u, 24907u), vec3<u32>(59916u, 1u, 61658u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<u32> {
    global4 = array<Struct_3, 12>();
    let var_0 = _wgslsmith_add_vec4_i32(reverseBits(max(vec4<i32>(-33819i, 2147483647i, -2147483647i, 1i) << (~vec4<u32>(42201u, u_input.a, 27074u, u_input.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, 2147483647i, -81142i, -2147483647i), -vec4<i32>(9582i, -2147483647i, -1i, 31240i), abs(vec4<i32>(0i, 40742i, 17038i, 2147483647i))))), _wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(~vec4<i32>(4720i, -2147483647i, -13141i, -24547i), countOneBits(vec4<i32>(-1i, -22062i, -22673i, -2147483647i))), ~(-vec4<i32>(1i, 1i, 1i, 1i)), abs(vec4<i32>(22953i >> (1u % 32u), -48086i, 1i, 3887i))));
    global1 = Struct_2(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(abs(~global2.xx), ~vec2<u32>(global1.a.x, 4294967295u) & vec2<u32>(15524u, global1.a.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global2.x, 4294967295u, global1.a.x, 53500u)), _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, u_input.a, u_input.a, 1u), vec4<u32>(global1.a.x, 4294967295u, 4294967295u, global2.x))), global2.x)));
    let var_1 = ~vec3<u32>(countOneBits(~countOneBits(u_input.a)), 1u, 25502u);
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global1.a.x), 12u)];
    return vec2<u32>(abs(1u), ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), _wgslsmith_sub_vec2_u32(var_2.c.yy, vec2<u32>(var_1.x, var_1.x)))));
}

fn func_2() -> bool {
    global2 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.a, global1.a.x) ^ countOneBits(vec3<u32>(0u, 51070u, 0u) << (vec3<u32>(u_input.a, global1.a.x, 4294967295u) % vec3<u32>(32u))), vec3<u32>(firstTrailingBit(1u), ~5880u >> ((39962u & global1.a.x) % 32u), _wgslsmith_dot_vec2_u32(func_3(), abs(vec2<u32>(global1.a.x, 1u))))), firstTrailingBit(vec3<u32>(global1.a.x, _wgslsmith_sub_u32(u_input.a >> (0u % 32u), 0u), 0u)));
    let var_0 = Struct_2(vec2<u32>(1u & ~_wgslsmith_clamp_u32(u_input.a, 4294967295u, global2.x), 7193u & ~_wgslsmith_mod_u32(global1.a.x, 1u)));
    global0 = firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, ~34060u, var_0.a.x), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(global2.x, 6797u, global2.x)), vec3<u32>(var_0.a.x >> (global1.a.x % 32u), 60666u >> (u_input.a % 32u), u_input.a))));
    let var_1 = Struct_2(global1.a);
    let var_2 = Struct_4(max(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, abs(2147483647i), -8942i), countOneBits(~(-13885i))), 1i), true, Struct_2(~_wgslsmith_mult_vec2_u32(~vec2<u32>(global2.x, 1u), ~vec2<u32>(1u, var_1.a.x))));
    return var_2.a == _wgslsmith_div_i32(~var_2.a, -2147483647i << (0u % 32u));
}

fn func_1() -> u32 {
    var var_0 = Struct_3(!vec4<bool>(!all(vec2<bool>(false, false)), true, func_2(), true), _wgslsmith_f_op_f32(f32(-1f) * -408f), abs(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global2.x, global1.a.x, 0u), vec3<u32>(global2.x, 48910u, global2.x)), vec3<u32>(global2.x, u_input.a, global2.x))), select(~min(~vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(global1.a.x, 19689u, global2.x)), firstLeadingBit(max(firstLeadingBit(vec3<u32>(55068u, 4294967295u, global1.a.x)), abs(vec3<u32>(u_input.a, global1.a.x, u_input.a)))), vec3<bool>(false | all(vec2<bool>(false, true)), true, true)));
    global2 = ~vec3<u32>(79477u, _wgslsmith_dot_vec3_u32(select(select(var_0.d, vec3<u32>(2618u, 4294967295u, u_input.a), vec3<bool>(true, var_0.a.x, false)), ~vec3<u32>(u_input.a, 35551u, var_0.d.x), var_0.a.xxz), _wgslsmith_add_vec3_u32(~vec3<u32>(global1.a.x, 27198u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(51962u, global1.a.x, 50147u), vec3<u32>(u_input.a, 4294967295u, var_0.c.x)))), 0u);
    var_0 = Struct_3(!vec4<bool>(var_0.a.x, !select(false, true, var_0.a.x), var_0.a.x, true), _wgslsmith_div_f32(var_0.b, var_0.b), ~_wgslsmith_clamp_vec3_u32(var_0.c, abs(var_0.c), abs(vec3<u32>(122692u, 0u, global1.a.x))), var_0.d);
    let var_1 = countOneBits(_wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(1i, 27467i), -21249i, 1i), abs(countOneBits(abs(vec3<i32>(21194i, -25050i, -2147483647i))))));
    let var_2 = global4[_wgslsmith_index_u32(global1.a.x, 12u)];
    return global1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_sub_i32(1i, min(1i, -15074i)));
    global4 = array<Struct_3, 12>();
    let var_1 = false;
    global4 = array<Struct_3, 12>();
    global3 = u_input.a;
    var var_2 = 1u;
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(-2147483647i, -(i32(-1i) * -2147483647i)), -(-select(-2147483647i, 38128i, true) | reverseBits(-11802i)), -(~vec2<i32>(i32(-1i) * -7960i, -2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-904f + -1458f), _wgslsmith_f_op_f32(f32(-1f) * -390f)))), 1u);
}

