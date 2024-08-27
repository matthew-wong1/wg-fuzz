struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(0u, vec2<u32>(1u, 1u), vec4<u32>(1u, 1u, 0u, 1u), vec2<f32>(1335f, 1099f)), vec4<i32>(-22476i, 0i, -17675i, -15212i));

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(4294967295u, vec2<u32>(41192u, 1u), vec4<u32>(15143u, 10329u, 33834u, 57894u), vec2<f32>(-1000f, 265f)), vec4<i32>(-1i, 17616i, -27276i, 2147483647i)), Struct_2(Struct_1(18847u, vec2<u32>(4294967295u, 107769u), vec4<u32>(9904u, 4294967295u, 4294967295u, 10928u), vec2<f32>(1007f, -914f)), vec4<i32>(9493i, 0i, i32(-2147483648), -4160i)), Struct_2(Struct_1(4294967295u, vec2<u32>(0u, 0u), vec4<u32>(1u, 1u, 25793u, 0u), vec2<f32>(1707f, -731f)), vec4<i32>(40860i, -1i, -1i, 3688i)), Struct_2(Struct_1(8950u, vec2<u32>(0u, 38846u), vec4<u32>(4294967295u, 0u, 54092u, 4294967295u), vec2<f32>(323f, -588f)), vec4<i32>(i32(-2147483648), 0i, 28217i, 3866i)), Struct_2(Struct_1(61601u, vec2<u32>(1u, 46777u), vec4<u32>(7729u, 0u, 4294967295u, 44417u), vec2<f32>(1794f, -1574f)), vec4<i32>(21841i, 5029i, -1i, i32(-2147483648))), Struct_2(Struct_1(25344u, vec2<u32>(36642u, 0u), vec4<u32>(29089u, 28759u, 60367u, 31558u), vec2<f32>(-484f, -533f)), vec4<i32>(-1614i, i32(-2147483648), i32(-2147483648), 1i)), Struct_2(Struct_1(42978u, vec2<u32>(0u, 65913u), vec4<u32>(38219u, 45259u, 51588u, 31109u), vec2<f32>(-712f, -754f)), vec4<i32>(37254i, i32(-2147483648), -2997i, 4171i)), Struct_2(Struct_1(30361u, vec2<u32>(30023u, 1u), vec4<u32>(4294967295u, 6177u, 0u, 1u), vec2<f32>(-522f, 528f)), vec4<i32>(1i, i32(-2147483648), -26797i, 0i)), Struct_2(Struct_1(0u, vec2<u32>(43477u, 3286u), vec4<u32>(32281u, 27477u, 4294967295u, 4884u), vec2<f32>(827f, 252f)), vec4<i32>(36566i, 20414i, 1i, 2147483647i)), Struct_2(Struct_1(0u, vec2<u32>(1u, 4294967295u), vec4<u32>(35486u, 4294967295u, 670u, 23699u), vec2<f32>(-1226f, -500f)), vec4<i32>(-3391i, 2147483647i, -1i, 2147483647i)), Struct_2(Struct_1(1630u, vec2<u32>(52165u, 0u), vec4<u32>(0u, 0u, 4014u, 0u), vec2<f32>(458f, 1000f)), vec4<i32>(43548i, -1i, 0i, 2147483647i)), Struct_2(Struct_1(4294967295u, vec2<u32>(4240u, 137709u), vec4<u32>(4294967295u, 5369u, 1737u, 4294967295u), vec2<f32>(-1280f, 205f)), vec4<i32>(0i, -6719i, -33177i, -68581i)), Struct_2(Struct_1(33907u, vec2<u32>(16141u, 21296u), vec4<u32>(0u, 59001u, 31007u, 1293u), vec2<f32>(719f, -381f)), vec4<i32>(-16819i, -22289i, 0i, 2147483647i)), Struct_2(Struct_1(0u, vec2<u32>(0u, 38788u), vec4<u32>(17800u, 1u, 1u, 0u), vec2<f32>(297f, -632f)), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_2(Struct_1(81u, vec2<u32>(4294967295u, 1u), vec4<u32>(4294967295u, 1u, 54091u, 13270u), vec2<f32>(1283f, 1014f)), vec4<i32>(-17685i, i32(-2147483648), 33606i, -1180i)), Struct_2(Struct_1(82737u, vec2<u32>(80829u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec2<f32>(573f, -1150f)), vec4<i32>(-10868i, 29502i, 60313i, 54363i)), Struct_2(Struct_1(35113u, vec2<u32>(53115u, 4294967295u), vec4<u32>(4030u, 18327u, 32261u, 13638u), vec2<f32>(830f, 975f)), vec4<i32>(-12992i, 0i, i32(-2147483648), -1i)), Struct_2(Struct_1(1u, vec2<u32>(4294967295u, 1u), vec4<u32>(1u, 0u, 24678u, 1u), vec2<f32>(146f, 472f)), vec4<i32>(-15483i, -1i, -47379i, 13755i)), Struct_2(Struct_1(4294967295u, vec2<u32>(0u, 6498u), vec4<u32>(4731u, 9840u, 1032u, 37934u), vec2<f32>(-1413f, -1610f)), vec4<i32>(0i, 17337i, -4373i, -12763i)), Struct_2(Struct_1(4294967295u, vec2<u32>(42196u, 44971u), vec4<u32>(58525u, 1u, 47144u, 18671u), vec2<f32>(321f, -1095f)), vec4<i32>(-22330i, 1i, 3691i, 9456i)), Struct_2(Struct_1(0u, vec2<u32>(4294967295u, 1u), vec4<u32>(60653u, 4294967295u, 4294967295u, 0u), vec2<f32>(-205f, -250f)), vec4<i32>(-49623i, 0i, -29113i, -5831i)), Struct_2(Struct_1(4294967295u, vec2<u32>(35689u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 6197u), vec2<f32>(-704f, -956f)), vec4<i32>(17374i, 2147483647i, 2147483647i, 23400i)));

var<private> global2: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(global0.a.d.x, global0.a.d.x)), global0.a.d.x))))));
    global2 = array<vec2<bool>, 22>();
    let var_1 = ~(~reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(u_input.a, u_input.a, 98152u)), min(global0.a.c.zxy, global0.a.c.ywz))));
    global1 = array<Struct_2, 22>();
    var var_2 = -982f;
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(909f - var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.a.d.x, var_0.x))))), _wgslsmith_f_op_f32(-856f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1238f, global0.a.d.x))))));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
    global2 = array<vec2<bool>, 22>();
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(min(global0.a.a, abs(1u)), 22u)], global0.a.c.xwy, Struct_1(global0.a.b.x, _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a, global0.a.c.x), _wgslsmith_clamp_vec2_u32(~global0.a.b, reverseBits(global0.a.c.xy), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 45330u), vec2<u32>(global0.a.c.x, 0u)))), ~global0.a.c, global0.a.d), firstTrailingBit(vec2<u32>(~(~57594u), ~1u)), vec4<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), true, select(all(vec2<bool>(true, true)), var_0.x < _wgslsmith_f_op_f32(abs(135f)), true), !any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f)), var_0.x, 684f);
    return vec2<u32>(u_input.a, _wgslsmith_add_u32(global0.a.c.x, ~var_1.d.x ^ u_input.a));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    global1 = array<Struct_2, 22>();
    global0 = Struct_2(global0.a, global0.b);
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    var var_0 = abs(~firstLeadingBit(arg_1.x));
    return global0.a;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    global1 = array<Struct_2, 22>();
    var var_0 = func_4(select(-2147483647i, _wgslsmith_mult_i32(1i, ~reverseBits(-2147483647i)), select(false, false, global0.b.x >= global0.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, arg_0.x) >> (vec2<u32>(92863u, u_input.a) % vec2<u32>(32u)), vec2<i32>(firstTrailingBit(global0.b.x), _wgslsmith_div_i32(arg_0.x, -74537i))) ^ (_wgslsmith_mult_vec2_i32(-vec2<i32>(arg_0.x, -31039i), vec2<i32>(global0.b.x, global0.b.x) ^ vec2<i32>(2147483647i, arg_0.x)) >> (func_2() % vec2<u32>(32u))));
    var var_1 = min(min(global0.b.x, 0i), arg_0.x);
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 22u)], vec3<u32>(~global0.a.b.x, 83086u, 93132u ^ (~global0.a.a ^ ~30002u)), Struct_1(461u, vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(global0.a.c, var_0.c), ~var_0.c), 14462u), ~(~vec4<u32>(28838u, 113u, 0u, 0u)) >> (vec4<u32>(4294967295u, ~4294967295u, 9254u, ~u_input.a) % vec4<u32>(32u)), global0.a.d), ~_wgslsmith_mult_vec2_u32(select(var_0.b, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), var_0.c.wy), true), max(global0.a.b, ~var_0.c.wy)), select(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(global2[_wgslsmith_index_u32(global0.a.a, 22u)])), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, false), var_0.d.x < -939f), vec4<bool>(true, true, true, true)), false));
    var var_3 = -(1i << (u_input.a % 32u));
    return ~min(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, var_0.b.x, 94901u, 4294967295u), global0.a.c)) | _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(reverseBits(var_0.a), global0.a.a), ~_wgslsmith_mult_u32(global0.a.a, 38857u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1028f, 1722f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.d.x) + global0.a.d.x)), 568f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f + 1035f)))), vec3<f32>(_wgslsmith_f_op_f32(global0.a.d.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 753f, _wgslsmith_f_op_f32(-global0.a.d.x))));
    let var_1 = firstTrailingBit(global0.a.c.zyy);
    global0 = global1[_wgslsmith_index_u32(~(1u << (func_1(global0.b.yz) % 32u)) << (1u % 32u), 22u)];
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1970i, global0.b.x, -2147483647i), ~max(vec3<i32>(global0.b.x, global0.b.x, -10146i), global0.b.xwz)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0.b.x, 101810i), vec3<i32>(global0.b.x, ~_wgslsmith_mult_i32(2423i, -37927i), ~(~46829i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec2<u32>(global0.a.c.x, 16991u) ^ (~global0.a.b << (vec2<u32>(var_1.x, global0.a.b.x) % vec2<u32>(32u)))), var_1.x, vec2<i32>(~(global0.b.x >> (u_input.a % 32u)), global0.b.x), ~abs(max(global0.b, ~global0.b)));
}

