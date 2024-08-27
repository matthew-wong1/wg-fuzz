struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 9930u, 25902u), vec3<u32>(869u, 39232u, 4294967295u), vec3<u32>(39540u, 4294967295u, 40737u), vec3<u32>(0u, 37996u, 1u), vec3<u32>(4294967295u, 1u, 17262u), vec3<u32>(4294967295u, 11561u, 4294967295u), vec3<u32>(6765u, 0u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 42717u, 54434u), vec3<u32>(44933u, 3992u, 0u), vec3<u32>(17341u, 4294967295u, 0u), vec3<u32>(26513u, 17081u, 0u), vec3<u32>(26449u, 47165u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 596u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 23101u, 53470u), vec3<u32>(71258u, 0u, 46471u), vec3<u32>(42277u, 1u, 59483u), vec3<u32>(24360u, 4294967295u, 4294967295u), vec3<u32>(58863u, 1u, 16905u), vec3<u32>(0u, 2748u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 33862u, 4294967295u), vec3<u32>(0u, 0u, 101218u), vec3<u32>(0u, 138542u, 0u), vec3<u32>(4294967295u, 39101u, 58828u), vec3<u32>(0u, 0u, 47248u), vec3<u32>(1533u, 42682u, 6345u), vec3<u32>(5207u, 1u, 4294967295u));

var<private> global1: array<f32, 11> = array<f32, 11>(1000f, -307f, 952f, -1190f, -118f, 923f, -309f, 256f, 677f, 1482f, 2248f);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(2147483647i, 0i), vec3<bool>(true, false, true), vec2<u32>(9598u, 0u));

var<private> global3: bool = true;

var<private> global4: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-391f, 1217f, 1270f, global1[_wgslsmith_index_u32(4294967295u, 11u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(512f, global4.x, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], -1440f), vec4<f32>(global4.x, -339f, global4.x, 281f)) + vec4<f32>(350f, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], -2408f, global4.x))) - vec4<f32>(2069f, global4.x, 1348f, global1[_wgslsmith_index_u32(4294967295u, 11u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1244f, global4.x, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], -178f) * vec4<f32>(-590f, -1178f, global1[_wgslsmith_index_u32(global2.c.x, 11u)], -344f))))));
    var var_0 = Struct_1(abs(vec2<i32>(u_input.b.x ^ -16808i, _wgslsmith_dot_vec4_i32(arg_0, arg_0)) >> (~abs(global2.c) % vec2<u32>(32u))), global2.b, ~u_input.a.zy);
    let var_1 = Struct_2(true, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4.x, _wgslsmith_f_op_f32(f32(-1f) * -951f), global4.x, -1138f), vec4<f32>(1832f, global4.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), _wgslsmith_f_op_f32(f32(-1f) * -425f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(586f, global4.x, var_0.b.x)), _wgslsmith_f_op_f32(select(-364f, -1375f, true))))))), Struct_1(var_0.a, select(select(var_0.b, !vec3<bool>(global2.b.x, global2.b.x, var_0.b.x), global2.b), vec3<bool>(true, false, var_0.b.x), global2.b.x), ~var_0.c), u_input.a.x, arg_0);
    var var_2 = firstTrailingBit(~(-420i)) & countOneBits(2147483647i);
    global1 = array<f32, 11>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = max(vec4<i32>(~_wgslsmith_dot_vec3_i32(-u_input.b, u_input.b), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, 0i, global2.a.x, global2.a.x), vec4<i32>(arg_0, u_input.b.x, u_input.b.x, -2147483647i)) ^ arg_0, 41583i, -2147483647i), _wgslsmith_add_i32(~u_input.b.x, -23538i), ~(-abs(1i))), vec4<i32>(global2.a.x | global2.a.x, ~global2.a.x, arg_0, ~(-2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(13664u, 11u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f * 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 11u)])))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1752f, global1[_wgslsmith_index_u32(global2.c.x, 11u)], global1[_wgslsmith_index_u32(18118u, 11u)], -946f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-299f, 592f, global1[_wgslsmith_index_u32(global2.c.x, 11u)], -453f))))) * vec4<f32>(_wgslsmith_f_op_f32(2214f * global4.x), _wgslsmith_f_op_f32(trunc(429f)), 185f, -826f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2.c.x, 11u)], -1192f, global4.x, global4.x) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 207f, -446f, global4.x)))))), vec4<f32>(global4.x, _wgslsmith_f_op_f32(-1237f - _wgslsmith_f_op_f32(f32(-1f) * -549f)), -590f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(499f * _wgslsmith_f_op_f32(ceil(211f))) + _wgslsmith_f_op_f32(func_3(-vec4<i32>(4533i, -67776i, u_input.b.x, 0i)))))));
    global2 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(1i, arg_0), -global2.a.x) & max(~_wgslsmith_mod_vec2_i32(var_0.zy, var_0.yz), _wgslsmith_clamp_vec2_i32(~global2.a, vec2<i32>(global2.a.x, var_0.x) << (vec2<u32>(global2.c.x, global2.c.x) % vec2<u32>(32u)), var_0.yz & vec2<i32>(arg_0, 0i))), global2.b, firstTrailingBit(u_input.a.xy));
    let var_3 = vec3<bool>(true, global2.b.x, global2.b.x);
    return -938f;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, -1841f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -2855f) + _wgslsmith_f_op_f32(-global4.x)))), -280f, 1446f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(global2.c.x), 47511u), 11u)]);
    var var_1 = true;
    return Struct_1(_wgslsmith_add_vec2_i32(u_input.b.yz, vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 2539i)), vec3<bool>(arg_0.x != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), all(vec2<bool>(global2.b.x, false | global2.b.x)), !(!arg_1.x)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u) & u_input.a.x, 4294967295u), abs(~global2.c.x)));
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_2(true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(0u, 11u)])), -2069f, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], _wgslsmith_f_op_f32(ceil(-627f)))))), func_4(vec4<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(2591u, 31u)], u_input.a), 11u)], _wgslsmith_f_op_f32(func_2(-2147483647i)), 965f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 11u)])))), global2.b.xy), ~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a.x, global2.c.x, u_input.a.x, global2.c.x)), vec4<u32>(global2.c.x << (u_input.a.x % 32u), ~76309u, _wgslsmith_clamp_u32(global2.c.x, 10330u, 0u), max(u_input.a.x, 0u))), ~(~firstTrailingBit(vec4<i32>(2147483647i, -35326i, u_input.b.x, u_input.b.x))));
    global0 = array<vec3<u32>, 31>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(reverseBits(1u), 0u, 1u, 1u)), vec4<u32>(0u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(global2.c.x, 72835u, global2.c.x, var_0.c.c.x)), u_input.a.x) << (countOneBits(vec4<u32>(42146u, u_input.a.x, global2.c.x, var_0.c.c.x)) % vec4<u32>(32u))), 47336u << (firstTrailingBit(_wgslsmith_clamp_u32(var_0.c.c.x, _wgslsmith_sub_u32(u_input.a.x, 47314u), var_0.d)) % 32u));
    let var_2 = _wgslsmith_f_op_f32(-global4.x);
    let var_3 = !(!var_0.c.b);
    return ~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 27436u, var_0.d, var_0.c.c.x) & max(vec4<u32>(global2.c.x, 12802u, global2.c.x, var_0.d), vec4<u32>(1u, var_0.c.c.x, var_0.c.c.x, global2.c.x)), vec4<u32>(5035u, ~u_input.a.x, ~76539u, max(0u, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a.x, u_input.b.x, -2147483647i, -abs(global2.a.x)) >> (firstLeadingBit(func_1()) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)) << (1u % 32u), _wgslsmith_clamp_i32(~(-63199i), select(1i, u_input.b.x | 34760i, global2.b.x), ~_wgslsmith_mult_i32(-1i, u_input.b.x)), u_input.b.x, _wgslsmith_mod_i32(global2.a.x, i32(-1i) * -57779i)), abs(vec4<i32>(global2.a.x >> (global2.c.x % 32u), _wgslsmith_mod_i32(-1i, -10964i), -31168i, global2.a.x) << (vec4<u32>(min(0u, u_input.a.x), u_input.a.x, 4294967295u, 1u) % vec4<u32>(32u))));
    global3 = all(!global2.b.yx);
    var var_1 = global2.a.x;
    let var_2 = 56003u;
    let var_3 = func_4(vec4<f32>(-170f, -114f, global4.x, _wgslsmith_f_op_f32(f32(-1f) * -1389f)), !select(!func_4(vec4<f32>(global1[_wgslsmith_index_u32(var_2, 11u)], global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(13643u, 11u)], 193f), vec2<bool>(global2.b.x, global2.b.x)).b.yx, !global2.b.zx, global2.b.zy));
    var_1 = 45695i;
    global0 = array<vec3<u32>, 31>();
    global3 = false & (14734u <= _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(var_3.c, global2.c, global2.b.x), global2.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.c.x, u_input.a.x, 19035u, 55508u), ~vec4<u32>(1u, var_3.c.x, 55982u, var_3.c.x))));
    let var_4 = Struct_2(var_3.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 556f, -1244f, global1[_wgslsmith_index_u32(1u, 11u)])), vec4<f32>(global4.x, -1000f, 195f, global4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(21411u, 11u)], global4.x, global1[_wgslsmith_index_u32(4294967295u, 11u)], 407f)))))), Struct_1(abs(abs(vec2<i32>(17766i, 1i))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-893f, global4.x, global1[_wgslsmith_index_u32(var_3.c.x, 11u)], global4.x) + vec4<f32>(-489f, global1[_wgslsmith_index_u32(var_2, 11u)], -1268f, 258f))), global2.b.yx).b, global2.c), _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x), 1u), max(var_0, firstTrailingBit(var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(29696u, 42211u), global2.c), _wgslsmith_div_vec2_u32(var_4.c.c, vec2<u32>(4294967295u, global2.c.x) | var_3.c)), ~vec2<u32>(4294967295u << (var_2 % 32u), 28115u | var_4.d)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_4.b.zxy))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1106f * global4.x), -910f, -497f, 436f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.x, -1000f, 1000f, 187f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(var_4.b)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, -487f, global4.x, var_4.b.x), var_4.b, vec4<bool>(global2.b.x, true, global2.b.x, global2.b.x))), global2.b.x && global2.b.x)))), ~abs(var_3.c.x >> (29662u % 32u)), -1253f);
}

