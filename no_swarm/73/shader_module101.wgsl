struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-1452f, -826f, -2599f), vec3<f32>(175f, 629f, -1940f), vec3<f32>(159f, -542f, -147f), vec3<f32>(392f, -1733f, -1000f), vec3<f32>(978f, -1000f, 615f), vec3<f32>(321f, -875f, -142f), vec3<f32>(-184f, 172f, -761f), vec3<f32>(-229f, 283f, 718f), vec3<f32>(1050f, 1240f, 380f), vec3<f32>(265f, -1200f, -1830f), vec3<f32>(-645f, -648f, 153f), vec3<f32>(425f, 1263f, 516f), vec3<f32>(-257f, -1324f, -1281f), vec3<f32>(1000f, -222f, 903f), vec3<f32>(896f, -962f, -1526f), vec3<f32>(1389f, 583f, -786f), vec3<f32>(142f, 1204f, -992f), vec3<f32>(284f, 509f, -398f), vec3<f32>(-940f, -506f, -167f), vec3<f32>(-1321f, 571f, 334f), vec3<f32>(-369f, 464f, 1209f), vec3<f32>(-996f, -1326f, 2080f));

var<private> global1: vec3<f32> = vec3<f32>(448f, 211f, 1623f);

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(1u, 6026u, 30747u), vec3<u32>(7000u, 1u, 43644u), vec3<u32>(4294967295u, 0u, 41941u), vec3<u32>(27467u, 4294967295u, 45127u), vec3<u32>(4294967295u, 22900u, 4294967295u), vec3<u32>(13283u, 13807u, 1u), vec3<u32>(0u, 46881u, 103447u), vec3<u32>(0u, 70537u, 29932u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 0u, 36241u), vec3<u32>(29069u, 5390u, 0u), vec3<u32>(4294967295u, 7915u, 0u), vec3<u32>(7341u, 4294967295u, 1u));

var<private> global3: array<vec4<u32>, 8>;

var<private> global4: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(65667u, 7488u, 0u, 0u), vec4<u32>(0u, 0u, 0u, 18579u), vec4<u32>(42737u, 22048u, 1u, 103985u), vec4<u32>(1u, 0u, 3196u, 1u), vec4<u32>(38159u, 1u, 76889u, 26266u), vec4<u32>(48778u, 1u, 1u, 4294967295u), vec4<u32>(0u, 1u, 54242u, 34922u), vec4<u32>(80417u, 4294967295u, 8250u, 1u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(29594u, 61215u, 1u, 52327u), vec4<u32>(78334u, 4294967295u, 33486u, 1u), vec4<u32>(0u, 20204u, 1u, 33855u), vec4<u32>(4294967295u, 73303u, 4294967295u, 1u), vec4<u32>(36050u, 10920u, 55308u, 1u), vec4<u32>(1u, 4294967295u, 2475u, 7608u), vec4<u32>(23927u, 4294967295u, 75207u, 1u), vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(0u, 0u, 4294967295u, 40400u), vec4<u32>(30536u, 60558u, 4294967295u, 0u), vec4<u32>(32342u, 0u, 0u, 1u), vec4<u32>(4294967295u, 91577u, 10561u, 44602u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    global4 = array<vec4<u32>, 21>();
    global2 = array<vec3<u32>, 13>();
    let var_0 = ~min(~vec3<u32>(4294967295u, ~arg_3.b.b, ~arg_3.b.b), countOneBits(vec3<u32>(~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.a), _wgslsmith_mod_u32(1u, arg_3.b.b))));
    global0 = array<vec3<f32>, 22>();
    let var_1 = Struct_3(Struct_2(false, arg_3.b, _wgslsmith_mod_i32(arg_1, arg_3.e.x | arg_2), global1.yz, arg_3.e), -_wgslsmith_div_vec3_i32(countOneBits(~vec3<i32>(arg_3.c, arg_1, arg_2)), -(vec3<i32>(arg_2, arg_3.e.x, arg_3.e.x) & vec3<i32>(arg_3.e.x, 1588i, -41254i))));
    return Struct_1(vec2<bool>(true, true), var_1.a.b.b);
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<vec3<f32>, 22>();
    var var_0 = arg_0.b.a.x;
    var var_1 = vec4<bool>(arg_0.b.a.x, arg_0.b.a.x | true, arg_0.b.a.x && arg_0.a, _wgslsmith_div_f32(global1.x, -451f) <= -1098f);
    var_0 = reverseBits(arg_0.e.x) != (-32937i << (reverseBits(u_input.b.x) % 32u));
    let var_2 = arg_0.c;
    return all(vec4<bool>(max(8364u, ~13978u) == (~u_input.b.x & (1u | arg_0.b.b)), (349f > _wgslsmith_f_op_f32(trunc(1864f))) || var_1.x, (_wgslsmith_div_f32(global1.x, arg_0.d.x) >= _wgslsmith_f_op_f32(-603f + global1.x)) | true, arg_0.a));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = func_2(vec3<bool>(true, arg_0.x, true), ~(-((1i >> (u_input.b.x % 32u)) | (i32(-1i) * -35730i))), ~abs(_wgslsmith_mult_i32(1i, ~22083i)), Struct_2(false, Struct_1(vec2<bool>(arg_0.x & false, true), 63903u), -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, global1.x)), _wgslsmith_f_op_vec2_f32(round(global1.zy)))), firstLeadingBit(abs(-vec2<i32>(-32818i, 0i)))));
    let var_1 = Struct_2(func_3(Struct_2(any(vec4<bool>(true, false, var_0.a.x, true)), func_2(vec3<bool>(true, true, arg_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(64450i, -8382i), vec2<i32>(-1i, -24188i)), ~(-8571i), Struct_2(true, var_0, 2147483647i, vec2<f32>(-467f, -666f), vec2<i32>(8980i, 36122i))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -2147483647i, -3897i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 14306i, 14168i, 1i), vec4<i32>(19560i, -62924i, -32571i, -2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-851f, global1.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -33221i), select(vec2<i32>(-29097i, 13766i), vec2<i32>(-30307i, -2147483647i), vec2<bool>(var_0.a.x, false))))), func_2(!vec3<bool>(all(arg_0), true | arg_0.x, arg_0.x), -_wgslsmith_div_i32(reverseBits(-1i), 1i), ~1i, Struct_2(any(!vec4<bool>(var_0.a.x, arg_0.x, true, false)), Struct_1(vec2<bool>(false, arg_0.x), 63788u), _wgslsmith_div_i32(-2147483647i, i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, 1103f), vec2<f32>(1360f, -288f))), vec2<i32>(1i, 1i))), max(~_wgslsmith_mod_i32(-10010i, ~(-2147483647i)), -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, -448i, 21051i)), vec3<i32>(-25858i, 2147483647i, -1i) << (vec3<u32>(var_0.b, 84088u, var_0.b) % vec3<u32>(32u)))), global1.xy, vec2<i32>(~(~(~(-7591i))), _wgslsmith_clamp_i32(select(abs(-2147483647i), abs(0i), true), -31791i, -63813i)));
    let var_2 = var_0;
    var var_3 = 4294967295u;
    var var_4 = _wgslsmith_add_vec3_u32(countOneBits(((global2[_wgslsmith_index_u32(38529u, 13u)] ^ global2[_wgslsmith_index_u32(35577u, 13u)]) | _wgslsmith_add_vec3_u32(vec3<u32>(10621u, u_input.a, 20037u), vec3<u32>(18170u, 38265u, var_2.b))) & vec3<u32>(var_0.b & 1u, ~14475u, var_0.b & u_input.b.x)), select(~(~_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(var_2.b, 13u)], global2[_wgslsmith_index_u32(var_0.b, 13u)])), firstLeadingBit(~vec3<u32>(var_2.b, u_input.a, 4294967295u)), !(!(!vec3<bool>(true, true, arg_0.x)))));
    return 1541f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(422f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false))), _wgslsmith_f_op_f32(max(global1.x, -544f))), global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2591f, -731f, global1.x) + global0[_wgslsmith_index_u32(0u, 22u)])) * vec3<f32>(_wgslsmith_f_op_f32(min(global1.x, global1.x)), -744f, 199f))));
    global2 = array<vec3<u32>, 13>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(662f - _wgslsmith_f_op_f32(909f * 795f)))), _wgslsmith_f_op_f32(func_1(vec2<bool>(u_input.b.x >= 4294967295u, true)))));
    var_0 = global1.x;
    global0 = array<vec3<f32>, 22>();
    let var_1 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(-global1.x) == _wgslsmith_f_op_f32(sign(-204f)), func_2(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), _wgslsmith_add_i32(-1i, 2147483647i), -2147483647i << (u_input.a % 32u), Struct_2(true, Struct_1(vec2<bool>(false, true), 10337u), -1i, vec2<f32>(global1.x, global1.x), vec2<i32>(13521i, -2147483647i))), 1i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(global1.yx)), _wgslsmith_f_op_vec2_f32(-global1.zz))), _wgslsmith_add_vec2_i32(~vec2<i32>(-1i, -2167i), vec2<i32>(9687i, -25944i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -39461i, -1i), select(vec4<i32>(-1i, -2896i, 37722i, 5128i), vec4<i32>(0i, 0i, 1i, 2147483647i), vec4<bool>(false, false, false, false))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-31048i, 2147483647i), _wgslsmith_mult_i32(1573i, 0i), -12730i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -26275i), vec2<i32>(221i, 1i)), ~vec2<i32>(5977i, 6861i)))), Struct_2((func_2(vec3<bool>(false, false, false), 2147483647i, 68791i, Struct_2(false, Struct_1(vec2<bool>(true, true), u_input.b.x), 1i, global1.xx, vec2<i32>(-28734i, 2147483647i))).a.x | true) & any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), ~(~4294967295u)), min(-12979i, min(2147483647i, -2147483647i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global1.x)), global1.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.yz - global1.yz))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(35994i, 2147483647i, 38094i, 31403i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, 1i, 4326i), vec4<i32>(1i, -1i, 25123i, 29543i))), 0i >> (u_input.a % 32u))));
    let var_2 = countOneBits(vec2<u32>(var_1.b.b.b, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(4294967295u, 8u)], global1.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)])) - global0[_wgslsmith_index_u32(u_input.a | var_1.b.b.b, 22u)]))), global0[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~var_2.x, abs(u_input.b.x)), ~u_input.b.x, !func_2(vec3<bool>(var_1.a.a.b.a.x, false, false), 1i, -29669i, Struct_2(false, Struct_1(var_1.a.a.b.a, u_input.a), -18901i, var_1.a.a.d, var_1.b.e)).a.x), 22u)])), ~(firstTrailingBit(_wgslsmith_mod_u32(30959u, 81195u)) << (65218u % 32u)), 1243u);
}

