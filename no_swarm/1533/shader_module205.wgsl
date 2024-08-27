struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(4294967295u, 4294967295u, -12015i), Struct_1(115u, 39383u, 1i), Struct_1(0u, 37147u, 0i), Struct_1(1u, 4294967295u, 2147483647i), Struct_1(23934u, 4294967295u, 12239i), Struct_1(50693u, 53403u, 15696i), Struct_1(0u, 25028u, -47423i), Struct_1(0u, 60925u, i32(-2147483648)), Struct_1(13902u, 4294967295u, -6579i), Struct_1(4294967295u, 4294967295u, 21949i), Struct_1(558u, 56697u, -1i), Struct_1(17201u, 48687u, 7078i), Struct_1(24168u, 42657u, 25933i), Struct_1(0u, 4294967295u, -1i), Struct_1(0u, 8864u, 0i), Struct_1(6833u, 52808u, 2147483647i), Struct_1(37982u, 41618u, i32(-2147483648)), Struct_1(0u, 97984u, 2147483647i), Struct_1(4294967295u, 4294967295u, 29493i));

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec2<u32>(3931u, 43872u), true, 34567u, 2147483647i, vec4<f32>(-641f, -1020f, -143f, -2069f)), Struct_3(vec2<u32>(1u, 4294967295u), true, 0u, 84i, vec4<f32>(938f, -512f, 2011f, 581f)), Struct_3(vec2<u32>(8934u, 0u), false, 1u, -1i, vec4<f32>(1000f, -300f, -650f, 1776f)), Struct_3(vec2<u32>(6636u, 97327u), false, 49853u, 1i, vec4<f32>(-1000f, 1142f, 1000f, 792f)), Struct_3(vec2<u32>(4294967295u, 54213u), false, 26763u, -56677i, vec4<f32>(-1000f, -414f, -387f, -2728f)), Struct_3(vec2<u32>(4294967295u, 54254u), false, 1u, -21005i, vec4<f32>(-417f, -445f, 228f, 419f)), Struct_3(vec2<u32>(1u, 14724u), false, 4294967295u, -2455i, vec4<f32>(1000f, -480f, -195f, 198f)), Struct_3(vec2<u32>(0u, 1u), true, 1u, -1i, vec4<f32>(-946f, -691f, 626f, -819f)), Struct_3(vec2<u32>(4294967295u, 0u), true, 1u, 62808i, vec4<f32>(-1000f, -1338f, -810f, -1492f)), Struct_3(vec2<u32>(46550u, 28499u), false, 4294967295u, 12836i, vec4<f32>(1734f, -526f, 134f, 1246f)), Struct_3(vec2<u32>(34101u, 1u), false, 1u, -42432i, vec4<f32>(-1000f, 1000f, -1144f, -1808f)), Struct_3(vec2<u32>(0u, 1u), true, 23065u, -15709i, vec4<f32>(504f, -635f, 219f, -364f)), Struct_3(vec2<u32>(8244u, 7225u), true, 4294967295u, 29579i, vec4<f32>(-694f, 165f, 1167f, 196f)), Struct_3(vec2<u32>(3547u, 17176u), false, 4294967295u, -31578i, vec4<f32>(-2838f, 134f, -539f, -1078f)), Struct_3(vec2<u32>(0u, 4294967295u), false, 0u, -7898i, vec4<f32>(-783f, -702f, 135f, 1151f)), Struct_3(vec2<u32>(14571u, 0u), true, 1u, 0i, vec4<f32>(746f, -2361f, 1035f, -1585f)), Struct_3(vec2<u32>(1u, 0u), false, 28519u, 54943i, vec4<f32>(243f, 1182f, 766f, 379f)), Struct_3(vec2<u32>(9294u, 18582u), true, 117762u, 0i, vec4<f32>(1450f, -1136f, -1849f, -1000f)), Struct_3(vec2<u32>(6542u, 70693u), true, 1u, 0i, vec4<f32>(-1018f, 369f, -1000f, -1000f)), Struct_3(vec2<u32>(1u, 1u), false, 17333u, 16117i, vec4<f32>(1311f, -584f, 567f, 773f)));

var<private> global3: vec2<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0.c;
    var var_1 = ~(~4294967295u);
    global2 = array<Struct_3, 20>();
    global1 = Struct_3(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.a, global1.a, vec2<u32>(arg_0.a, 38138u)), vec2<u32>(1u, arg_0.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b, 14483u), global1.a)) ^ global1.a, !global1.b, 1u, _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global3.x, var_0), select(u_input.a.zxx, u_input.a.wyy, true)), select(_wgslsmith_dot_vec3_i32(u_input.a.xxx, vec3<i32>(40761i, arg_0.c, -60737i)), i32(-1i) * -41053i, !global1.b)), u_input.a.xyy), global1.e);
    var var_2 = global1.e;
    return max(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 4294967295u, arg_0.a), ~vec4<u32>(66064u, arg_0.a, 4294967295u, arg_0.b)) | 0u, firstLeadingBit(arg_0.b)) & global1.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(abs(arg_0.c), _wgslsmith_sub_i32(4593i, global1.d), ~_wgslsmith_mult_i32(global3.x, 22186i)), vec3<i32>(u_input.a.x, -55738i, firstTrailingBit(arg_0.c >> (arg_0.b % 32u)))) << (_wgslsmith_clamp_vec3_u32(~(vec3<u32>(arg_0.b, arg_0.b, global1.c) | ~vec3<u32>(global1.a.x, arg_0.a, 40157u)), reverseBits(vec3<u32>(_wgslsmith_sub_u32(52919u, global1.a.x), arg_0.b ^ 1u, 1u << (arg_0.a % 32u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global1.c, arg_0.a, global1.a.x), ~vec3<u32>(4294967295u, 59074u, global1.a.x), ~vec3<u32>(arg_0.b, 4294967295u, arg_0.a)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.x, 4294967295u, arg_0.b), vec3<u32>(global1.a.x, 35471u, 19279u)), ~vec3<u32>(1u, arg_0.b, 17010u))) % vec3<u32>(32u));
    var var_1 = vec4<bool>(arg_1.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(849f, -879f), -1174f, true)) * global1.e.x), any(!(!vec2<bool>(global1.b, false))), arg_0.a <= arg_0.a, global1.b);
    let var_2 = vec2<i32>(arg_0.c, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~firstTrailingBit(u_input.a.zz), u_input.a.yx), -countOneBits(var_0.zz) | u_input.a.zw));
    var var_3 = ~firstLeadingBit(_wgslsmith_div_u32(global1.c, arg_0.a));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, 151f), _wgslsmith_f_op_f32(-444f * global1.e.x)))), global1.e.x)) <= 819f;
    return ~(~8393i | var_0.x);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> vec3<bool> {
    global2 = array<Struct_3, 20>();
    var var_0 = ~8959u << ((firstLeadingBit(global1.a.x) | 1u) % 32u);
    global2 = array<Struct_3, 20>();
    let var_1 = vec4<i32>(1i, ~_wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(-10142i, global3.x, global3.x, arg_2))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a), u_input.a ^ u_input.a)), ~1i, countOneBits(-1i) & _wgslsmith_dot_vec2_i32((u_input.a.yz ^ vec2<i32>(global3.x, global3.x)) >> (vec2<u32>(global1.a.x, global1.a.x) % vec2<u32>(32u)), -u_input.a.xw));
    var var_2 = global2[_wgslsmith_index_u32(32579u, 20u)];
    return arg_1.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<i32>) -> bool {
    global2 = array<Struct_3, 20>();
    global2 = array<Struct_3, 20>();
    var var_0 = Struct_2(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2041f, -541f, arg_0.x)), -639f), Struct_2(vec3<bool>(arg_0.x, 1u <= global1.a.x, true), global1.e.x), func_4(Struct_1(func_3(Struct_1(arg_1.x, 1u, arg_3.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, arg_1.x, 4294967295u, global1.c), vec4<u32>(0u, 82u, arg_1.x, 25619u)), -1i), vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(sign(global1.e.x)), _wgslsmith_f_op_f32(-global1.e.x)))), _wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.e.x, global1.e.x, arg_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -537f))));
    let var_1 = ~global3.x;
    var var_2 = Struct_3(global1.a, all(var_0.a), arg_1.x, reverseBits(20470i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.e)), global1.e)));
    return !select(true, var_2.b, !(u_input.a.x == var_1) || (var_0.b > _wgslsmith_f_op_f32(var_0.b + var_2.e.x)));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec2<u32> {
    global2 = array<Struct_3, 20>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(492f - _wgslsmith_f_op_f32(min(657f, -137f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(858f - arg_1.x) * _wgslsmith_f_op_f32(-global1.e.x)))) + _wgslsmith_f_op_f32(arg_1.x - arg_1.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x * _wgslsmith_div_f32(-407f, -1826f))))) + 194f);
    var var_1 = Struct_2(arg_0, _wgslsmith_div_f32(global1.e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(358f * _wgslsmith_f_op_f32(867f + -1000f))))));
    global3 = reverseBits(abs(firstTrailingBit(u_input.a.yz >> (vec2<u32>(41090u, global1.a.x) % vec2<u32>(32u))))) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, i32(-1i) * -5240i), u_input.a.yw);
    return select(~(countOneBits(~global1.a) << (~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 67597u), global1.a) % vec2<u32>(32u))), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, ~57189u, ~global1.c), ~(~vec3<u32>(global1.c, 7598u, global1.a.x)))), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(var_1.a.x, arg_0.x), global1.a.x > global1.c)), true));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> vec4<u32> {
    var var_0 = -1147f;
    global1 = Struct_3(func_6(vec3<bool>(!arg_1.x, arg_0, func_2(select(vec2<bool>(true, arg_1.x), vec2<bool>(false, arg_1.x), vec2<bool>(true, true)), ~vec3<u32>(global1.c, 3755u, 4294967295u), 39468i, vec2<i32>(-52176i, global1.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.e.x, global1.e.x), global1.e.wz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, -1496f) * global1.e.yy)))), (u_input.a.x > ~firstTrailingBit(-251i)) || !(firstLeadingBit(global1.a.x) <= 0u), ~(7444u ^ _wgslsmith_div_u32(abs(global1.c), global1.c)), -21860i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1476f)), _wgslsmith_f_op_f32(min(global1.e.x, -1407f)), _wgslsmith_f_op_f32(-global1.e.x), 1911f) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(972f, global1.e.x, global1.e.x, -2704f), _wgslsmith_div_vec4_f32(vec4<f32>(global1.e.x, -178f, global1.e.x, -929f), global1.e)), global1.e)));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global1.c ^ max(~0u << (global1.c % 32u), 57686u), ~abs(4294967295u)), 20u)];
    let var_2 = true;
    var var_3 = Struct_1(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, _wgslsmith_add_u32(12708u, global1.c)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), var_1.a) | firstLeadingBit(var_1.a))), 4294967295u, -2147483647i);
    return vec4<u32>(~0u, global1.a.x, global1.a.x, ~_wgslsmith_sub_u32(var_3.a, 4294967295u)) ^ vec4<u32>(13080u, firstTrailingBit(_wgslsmith_mult_u32(34573u, ~global1.a.x)), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(16728u, var_1.c)), global1.a), ~global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(1u, 19u)];
    var var_1 = ~69636u;
    var var_2 = ~((((vec4<u32>(global1.c, 38874u, global1.a.x, var_0.b) & vec4<u32>(32282u, global1.c, var_0.b, var_0.a)) ^ vec4<u32>(var_0.b, global1.c, 26318u, global1.a.x)) >> (_wgslsmith_mod_vec4_u32(func_1(global1.b, vec2<bool>(true, false), global1.b), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, var_0.a, var_0.b, global1.a.x), vec4<u32>(44528u, global1.c, 89854u, global1.a.x))) % vec4<u32>(32u))) | (~firstTrailingBit(vec4<u32>(var_0.a, 1u, 56114u, 0u)) << (vec4<u32>(var_0.b, countOneBits(global1.a.x), 1u >> (var_0.b % 32u), var_0.a & 57246u) % vec4<u32>(32u))));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(41499u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(16346u, 1u, var_2.x), 0u), global1.a.x), false), ~global1.a.x), 20u)];
    var var_3 = global1.e.x;
    let var_4 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, var_2.x) & ~vec4<u32>(1u, global1.c, global1.c, var_2.x), vec4<u32>(0u, global1.c << (4294967295u % 32u), _wgslsmith_mult_u32(4294967295u, global1.a.x), global1.c & 1u)));
    let var_5 = global0[_wgslsmith_index_u32(var_0.a, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(select(~func_6(vec3<bool>(global1.b, global1.b, global1.b), vec2<f32>(global1.e.x, global1.e.x)).x, ~42275u, reverseBits(var_0.b) != func_6(vec3<bool>(true, global1.b, true), vec2<f32>(1455f, global1.e.x)).x), _wgslsmith_dot_vec2_u32(global1.a, ~global1.a >> (vec2<u32>(52777u, global1.c) % vec2<u32>(32u))), abs(var_0.a), 19780u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.e.x + global1.e.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * 1000f))), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), -427f, global1.e.x)), global1.e.x);
}

