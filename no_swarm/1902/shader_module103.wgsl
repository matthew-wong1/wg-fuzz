struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(-70236i, -1i, vec2<f32>(-594f, -1000f), 4294967295u), 42598u, vec3<u32>(4294967295u, 4294967295u, 51122u));

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), 50502i);

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(10362i, 1i, vec2<f32>(-182f, -2177f), 11025u), 1u, vec3<u32>(1u, 1u, 1u)), Struct_2(Struct_1(-5520i, -11594i, vec2<f32>(1000f, 539f), 26339u), 0u, vec3<u32>(1u, 1u, 4294967295u)), Struct_2(Struct_1(-70435i, 1i, vec2<f32>(1024f, 1391f), 47941u), 21205u, vec3<u32>(0u, 1u, 33488u)), Struct_2(Struct_1(-30784i, -38929i, vec2<f32>(-568f, -1810f), 4294967295u), 57441u, vec3<u32>(108798u, 90740u, 60947u)), Struct_2(Struct_1(i32(-2147483648), 2147483647i, vec2<f32>(-398f, -867f), 54059u), 56042u, vec3<u32>(0u, 6783u, 0u)), Struct_2(Struct_1(1i, 5856i, vec2<f32>(-108f, -103f), 4294967295u), 1u, vec3<u32>(4294967295u, 938u, 32310u)), Struct_2(Struct_1(0i, 0i, vec2<f32>(970f, -746f), 41370u), 12044u, vec3<u32>(13430u, 0u, 27853u)), Struct_2(Struct_1(i32(-2147483648), 32024i, vec2<f32>(-1028f, -603f), 0u), 27102u, vec3<u32>(1u, 4294967295u, 1u)), Struct_2(Struct_1(43205i, -19048i, vec2<f32>(216f, -2145f), 0u), 128004u, vec3<u32>(4294967295u, 36116u, 35714u)), Struct_2(Struct_1(2147483647i, 14764i, vec2<f32>(-1453f, -106f), 0u), 1u, vec3<u32>(1u, 8717u, 1u)), Struct_2(Struct_1(1i, -1i, vec2<f32>(-480f, 268f), 18568u), 2614u, vec3<u32>(37487u, 0u, 1u)), Struct_2(Struct_1(i32(-2147483648), i32(-2147483648), vec2<f32>(-1450f, -1131f), 1u), 54811u, vec3<u32>(8516u, 4294967295u, 2160u)), Struct_2(Struct_1(i32(-2147483648), i32(-2147483648), vec2<f32>(-311f, -846f), 1u), 1u, vec3<u32>(0u, 30676u, 1u)), Struct_2(Struct_1(-23904i, 1i, vec2<f32>(226f, -1627f), 80190u), 39081u, vec3<u32>(1u, 1u, 18634u)), Struct_2(Struct_1(i32(-2147483648), -1205i, vec2<f32>(-242f, 2328f), 56892u), 38601u, vec3<u32>(4294967295u, 66u, 4294967295u)), Struct_2(Struct_1(-45057i, i32(-2147483648), vec2<f32>(-1277f, 623f), 4294967295u), 4294967295u, vec3<u32>(75321u, 37395u, 1u)), Struct_2(Struct_1(-34308i, -27280i, vec2<f32>(1205f, 1000f), 0u), 0u, vec3<u32>(79515u, 4294967295u, 0u)), Struct_2(Struct_1(2147483647i, 29316i, vec2<f32>(-1312f, 1443f), 74516u), 4294967295u, vec3<u32>(0u, 42867u, 10914u)), Struct_2(Struct_1(64798i, 2147483647i, vec2<f32>(-641f, 1565f), 65609u), 4294967295u, vec3<u32>(62674u, 17575u, 4294967295u)), Struct_2(Struct_1(-1i, 25702i, vec2<f32>(1736f, -693f), 4294967295u), 0u, vec3<u32>(0u, 1u, 60302u)), Struct_2(Struct_1(i32(-2147483648), 35736i, vec2<f32>(-575f, -1242f), 1u), 4294967295u, vec3<u32>(1u, 18815u, 1u)), Struct_2(Struct_1(-5369i, 1i, vec2<f32>(370f, -1049f), 0u), 72741u, vec3<u32>(4294967295u, 1u, 514u)), Struct_2(Struct_1(7018i, 12993i, vec2<f32>(1351f, -1852f), 0u), 4294967295u, vec3<u32>(51139u, 1u, 4294967295u)), Struct_2(Struct_1(13919i, -1i, vec2<f32>(442f, 753f), 25234u), 24399u, vec3<u32>(12775u, 56014u, 6521u)), Struct_2(Struct_1(5462i, 2147483647i, vec2<f32>(376f, 707f), 4294967295u), 0u, vec3<u32>(66849u, 0u, 94866u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    global1 = min(u_input.c.xww, ~(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c.wyx, u_input.c.yxy), select(u_input.c.xxz, vec3<i32>(global0.a.a, global0.a.a, 2147483647i), true)) >> (max(global0.c >> (global0.c % vec3<u32>(32u)), select(global0.c, global0.c, true)) % vec3<u32>(32u))));
    var var_0 = Struct_1(min(firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1, global1.x, -2147483647i), min(1i, arg_0), -6193i)), 21765i), max(-5175i, -18885i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.c.x, global0.a.c.x) + vec2<f32>(-711f, global0.a.c.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, global0.a.c.x), vec2<f32>(1956f, -1065f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-736f, global0.a.c.x) + _wgslsmith_f_op_vec2_f32(round(global0.a.c))), vec2<f32>(_wgslsmith_f_op_f32(296f * global0.a.c.x), _wgslsmith_f_op_f32(round(613f))))))), global0.c.x);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2008f, global0.a.c.x, var_0.c.x, global0.a.c.x)) - vec4<f32>(global0.a.c.x, -950f, 687f, global0.a.c.x)) * vec4<f32>(var_0.c.x, -334f, _wgslsmith_f_op_f32(round(global0.a.c.x)), _wgslsmith_f_op_f32(ceil(global0.a.c.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.a.c.x + var_0.c.x), -1116f, _wgslsmith_div_f32(182f, global0.a.c.x), _wgslsmith_f_op_f32(global0.a.c.x * global0.a.c.x)))), global2[_wgslsmith_index_u32(global0.b, 25u)]);
    var var_2 = Struct_2(global0.a, _wgslsmith_clamp_u32(select(var_0.d & 1u, 5135u, true), 1u, _wgslsmith_add_u32(~16606u, var_1.b.c.x)), firstTrailingBit(max(var_1.b.c, min(_wgslsmith_mod_vec3_u32(vec3<u32>(47380u, var_0.d, global0.b), var_1.b.c), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 36531u, 0u), global0.c)))));
    var var_3 = ~var_1.b.a.d;
    return any(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, false), _wgslsmith_mult_u32(4294967295u, var_2.c.x) >= 18719u), select(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_1 >= -9357i), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(true, false)), all(vec3<bool>(false, true, true))));
}

fn func_2() -> vec3<i32> {
    global2 = array<Struct_2, 25>();
    var var_0 = select(vec3<bool>(all(vec3<bool>(true, true, select(true, false, false))), true, !(global1.x < u_input.a)), vec3<bool>(_wgslsmith_f_op_f32(global0.a.c.x - _wgslsmith_f_op_f32(f32(-1f) * -389f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1165f + global0.a.c.x) + -1000f), ~global1.x < _wgslsmith_dot_vec2_i32(u_input.c.zy, u_input.c.wz >> (global0.c.xy % vec2<u32>(32u))), false), select(!vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true), !vec3<bool>(func_3(0i, 2147483647i), false, false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), true)));
    global1 = u_input.c.ywz;
    global1 = vec3<i32>(firstTrailingBit(-(-global0.a.b >> (~34822u % 32u))), max(global1.x, -1i), firstTrailingBit(-_wgslsmith_clamp_i32(global0.a.b, 1i, select(-7326i, global0.a.b, var_0.x))));
    let var_1 = -26424i;
    return reverseBits(-(~vec3<i32>(max(1i, 31361i), -2147483647i, 2147483647i ^ u_input.c.x)));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(~(-(37566i ^ firstTrailingBit(12425i))), -43087i, _wgslsmith_f_op_vec2_f32(-global0.a.c), _wgslsmith_div_u32(global0.b | (_wgslsmith_div_u32(25072u, global0.c.x) >> (~41351u % 32u)), 4294967295u));
    global2 = array<Struct_2, 25>();
    let var_1 = countOneBits(~vec3<u32>(global0.a.d, global0.c.x, countOneBits(_wgslsmith_add_u32(var_0.d, 21766u))));
    let var_2 = ~(~_wgslsmith_mod_vec3_i32(func_2() >> (vec3<u32>(global0.b, 33346u, global0.c.x) % vec3<u32>(32u)), u_input.c.zww));
    global2 = array<Struct_2, 25>();
    return var_0;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = global0.c.x <= _wgslsmith_mod_u32(1552u, ~1u);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, -1000f, global0.a.c.x))), vec4<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(global0.a.c.x * _wgslsmith_f_op_f32(round(-1750f))), _wgslsmith_f_op_f32(-1000f - 1493f), -2038f), vec4<bool>(!(arg_0.c.x > arg_0.c.x), !var_0, var_0, var_0))), Struct_2(func_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, global1.x, global0.a.b), u_input.c.yyx), global0.a.a), abs(arg_0.a.d), vec3<u32>(countOneBits(global0.b), ~arg_0.a.d | ~global0.c.x, ~1u)));
    var var_2 = ~arg_0.c;
    global1 = vec3<i32>(_wgslsmith_mult_i32(~abs(abs(26323i)), -1i), -69593i, u_input.c.x);
    global2 = array<Struct_2, 25>();
    return Struct_2(func_1(-32048i, global0.a.b), 1104u, var_1.b.c);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = !select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false))), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), ~global1.x != func_2().x), 1i != (arg_1.a.a & 2147483647i));
    global2 = array<Struct_2, 25>();
    let var_1 = func_4(arg_1).a.a <= (_wgslsmith_clamp_i32(abs(-22993i), ~_wgslsmith_add_i32(arg_1.a.b, 15160i), -1372i) << (15137u % 32u));
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.b, 6977u), arg_1.c.yx))), 25u)];
    var_0 = vec2<bool>(true, var_1);
    return func_4(Struct_2(func_4(Struct_2(func_4(Struct_2(Struct_1(1i, -3738i, arg_1.a.c, global0.b), arg_0, global0.c)).a, max(59012u, 4294967295u), global0.c)).a, 4294967295u, ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b, 0u, global0.a.d), arg_1.c))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global0.b;
    let var_1 = Struct_2(global0.a, 66969u, vec3<u32>(global0.c.x >> (4294967295u % 32u), abs(~global0.b >> (global0.a.d % 32u)), 4294967295u | global0.a.d));
    let var_2 = global2[_wgslsmith_index_u32(~var_1.c.x, 25u)];
    global0 = global2[_wgslsmith_index_u32(reverseBits(firstLeadingBit(var_2.c.x)), 25u)];
    let var_3 = u_input.c;
    var_0 = 35920u;
    let var_4 = 45277u;
    let var_5 = Struct_2(func_5(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(var_1.c, var_1.c ^ vec3<u32>(var_2.a.d, 0u, 1u))), func_4(Struct_2(func_1(global0.a.a, var_3.x), global0.b, global0.c ^ vec3<u32>(var_2.b, var_1.b, 11357u))), firstTrailingBit(~vec2<u32>(var_1.c.x, 4294967295u)) ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.a.d, 1u), vec2<u32>(var_1.c.x, 4294967295u) | vec2<u32>(0u, 2832u)), -_wgslsmith_div_vec3_i32(var_3.zyw, vec3<i32>(-25054i, 2147483647i, var_1.a.b))), var_2.a.d, reverseBits(var_1.c));
    global2 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~var_4), _wgslsmith_add_u32(_wgslsmith_mod_u32(~var_4, 4294967295u), ~1u), var_4));
}

