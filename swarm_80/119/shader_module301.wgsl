struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 1250i);

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-1559f, -1369f, 1000f, -1485f), vec4<f32>(2122f, 1503f, -1170f, 506f), vec4<f32>(803f, -1126f, -1000f, 1952f), vec4<f32>(1059f, -347f, 944f, 749f), vec4<f32>(1110f, 2429f, 1309f, 140f), vec4<f32>(-201f, -1131f, -2300f, -858f), vec4<f32>(527f, 522f, -965f, 371f), vec4<f32>(1857f, -247f, 439f, -1331f), vec4<f32>(1000f, 824f, -642f, 2127f), vec4<f32>(400f, -1000f, 1000f, -1010f), vec4<f32>(-768f, 1000f, -1468f, -1057f), vec4<f32>(425f, -1000f, -710f, -2011f), vec4<f32>(-890f, -1163f, 287f, -437f), vec4<f32>(1150f, 455f, -1491f, -200f), vec4<f32>(-1041f, 1000f, 783f, -463f), vec4<f32>(304f, -177f, 147f, 541f), vec4<f32>(304f, 479f, 1499f, -799f), vec4<f32>(-106f, 763f, 1329f, -1000f), vec4<f32>(-538f, 120f, 403f, -1134f), vec4<f32>(801f, 2041f, 208f, -1000f), vec4<f32>(449f, 1434f, 1253f, 234f), vec4<f32>(-936f, 145f, -1126f, 707f), vec4<f32>(-528f, -572f, 1918f, 419f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a | 1u, ~0u | abs(u_input.a)), _wgslsmith_mod_vec2_u32(select(~(vec2<u32>(81543u, u_input.a) >> (vec2<u32>(63365u, u_input.a) % vec2<u32>(32u))), select(reverseBits(vec2<u32>(u_input.a, 58510u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 0u)), vec2<bool>(true, false)), true), vec2<u32>(_wgslsmith_sub_u32(u_input.a, 22465u) << (0u % 32u), ~0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, ~u_input.a), min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a ^ 4294967295u))));
    global0 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(~global0.x, ~47825i) << (vec2<u32>(~1u, firstTrailingBit(var_0.x)) % vec2<u32>(32u)), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-40068i, global0.x, 2147483647i, 14845i), vec4<i32>(-2147483647i, -35138i, -1i, global0.x)), global0.x) ^ ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global0.x), vec2<i32>(44950i, global0.x), vec2<i32>(-6361i, global0.x)) << (firstLeadingBit(vec2<u32>(var_0.x, u_input.a)) % vec2<u32>(32u))), reverseBits(abs(select(vec2<i32>(11583i, global0.x), firstLeadingBit(vec2<i32>(global0.x, -1i)), vec2<bool>(true, true)))));
    global1 = array<vec4<f32>, 23>();
    global1 = array<vec4<f32>, 23>();
    global0 = vec2<i32>(1i, -_wgslsmith_mult_i32(-(global0.x & global0.x), global0.x));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(-406f * -251f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -480f), -1748f) * _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -540f), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-498f, -1000f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f))))), -696f);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec3<u32> {
    global1 = array<vec4<f32>, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1541f, 1096f, _wgslsmith_f_op_f32(f32(-1f) * -1939f))));
    global1 = array<vec4<f32>, 23>();
    global0 = vec2<i32>(0i, 2147483647i);
    global0 = select(vec2<i32>(0i, global0.x), vec2<i32>(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 2147483647i, global0.x, 1i), vec4<i32>(1i, -27207i, global0.x, global0.x) ^ vec4<i32>(global0.x, global0.x, -1i, global0.x))) | vec2<i32>(~(-8956i) << (0u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, global0.x), vec3<i32>(global0.x, -1i, -2147483647i)), ~vec3<i32>(-2147483647i, -101278i, -1i))), vec2<bool>((55066u <= max(u_input.a, 86950u)) | any(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, arg_1.x), vec2<bool>(false, false))), ~arg_0 == _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, 1u, u_input.a) ^ vec4<u32>(arg_0, arg_0, 7578u, u_input.a), select(vec4<u32>(u_input.a, 8182u, arg_0, 1u), vec4<u32>(1u, u_input.a, 4294967295u, 1u), vec4<bool>(arg_1.x, arg_1.x, true, false)))));
    return ~abs(select(_wgslsmith_mult_vec3_u32(vec3<u32>(3522u, arg_0, 4294967295u), vec3<u32>(u_input.a, 4294967295u, 1u)) ^ (vec3<u32>(u_input.a, arg_0, u_input.a) ^ vec3<u32>(34416u, 0u, 4294967295u)), min(abs(vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(u_input.a, arg_0, u_input.a)), vec3<bool>(any(arg_1), any(arg_1), false)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(~vec4<i32>(~(~arg_0.x), abs(global0.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.x, global0.x), countOneBits(arg_0)), global0.x), ~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, -1i, -38332i) << (vec4<u32>(1u, 52051u, 1u, arg_1.x) % vec4<u32>(32u)), vec4<i32>(arg_0.x, -1i, 6276i, arg_0.x), vec4<i32>(arg_0.x, global0.x, global0.x, -5012i)), vec4<i32>(global0.x ^ -22538i, -31259i, global0.x, _wgslsmith_mod_i32(-36391i, -2596i))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(481f, 2296f, 1046f, 296f)))), arg_1.xx), Struct_3(global1[_wgslsmith_index_u32(~select(arg_1.x, ~13783u, all(vec4<bool>(true, false, arg_2.x, arg_2.x))), 23u)], Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1094f, -1737f, 633f, 304f) + global1[_wgslsmith_index_u32(1u, 23u)]), abs(vec2<u32>(1u, 44342u))), arg_2.x, _wgslsmith_mult_vec2_u32(arg_1.zx, ~(~arg_1.yz)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1u, 23u)] + vec4<f32>(-854f, -1690f, -1445f, -399f))), arg_1.zz)), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(15199u, 23u)] - vec4<f32>(354f, -1013f, 825f, 477f))), vec4<f32>(1018f, _wgslsmith_div_f32(-1012f, 218f), -370f, _wgslsmith_div_f32(-257f, -1000f)), select(!vec4<bool>(arg_2.x, true, arg_2.x, true), !vec4<bool>(true, true, arg_2.x, arg_2.x), !arg_2.x))), arg_1.xy));
    var var_2 = vec2<f32>(var_1.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -780f));
    global0 = select(arg_0, -_wgslsmith_mod_vec2_i32(max(vec2<i32>(6674i, 1i), vec2<i32>(global0.x, var_0.x)) >> (select(vec2<u32>(u_input.a, u_input.a), var_1.a.b, var_1.b.c) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, var_0.x), vec2<i32>(56i, global0.x)), -arg_0, var_0.xz)), any(vec3<bool>(!var_1.b.c, var_1.b.c, !(!arg_2.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(-2245f, -1542f)), _wgslsmith_f_op_f32(var_1.b.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) + _wgslsmith_div_f32(var_1.c.a.x, var_2.x))), _wgslsmith_f_op_f32(select(var_1.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) + _wgslsmith_f_op_f32(310f * var_1.b.b.a.x)), all(arg_2.yz)))) * _wgslsmith_f_op_vec3_f32(floor(var_1.b.b.a.zyw)));
    return var_1.a;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_4) -> Struct_4 {
    var var_0 = arg_2;
    let var_1 = abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.b.b.x, 1u, arg_1.b.b.x) | vec3<u32>(u_input.a, 66u, 1u), ~vec3<u32>(1u, 4294967295u, 1714u) >> ((vec3<u32>(var_0.b.e.b.x, 4294967295u, 38860u) & vec3<u32>(arg_2.b.d.x, var_0.a.b.x, arg_2.b.d.x)) % vec3<u32>(32u))));
    var_0 = arg_2;
    var var_2 = var_0.c;
    var_0 = Struct_4(func_4(vec2<i32>(arg_0.x, ~arg_0.x), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.b.b.b.x, arg_1.b.b.x, 1u) | vec3<u32>(29374u, 1u, var_0.a.b.x), vec3<u32>(1u, u_input.a, 0u), ~vec3<u32>(10986u, arg_1.d.x, 45748u)), !vec3<bool>(true, true, !arg_2.b.c)), arg_2.b, var_0.c);
    return arg_2;
}

fn func_1() -> f32 {
    var var_0 = func_5(vec4<i32>(global0.x, ~(-1i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, global0.x, -2147483647i), vec3<i32>(global0.x, global0.x, -2050i), ~vec3<i32>(2147483647i, global0.x, 7285i)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0.x, -42087i), vec3<i32>(78087i, -33904i, global0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, 2147483647i, global0.x), vec3<i32>(-1i, -15063i, 9962i)))), global0.x), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(872f)), _wgslsmith_f_op_f32(max(-1117f, 1249f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-107f + -393f), -1527f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -772f))), _wgslsmith_f_op_f32(-848f * -543f)), func_4(select(vec2<i32>(0i, 0i) & vec2<i32>(12812i, global0.x), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, global0.x), vec2<i32>(global0.x, 14764i)), any(vec2<bool>(true, true))), func_2(abs(u_input.a), vec2<bool>(true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), !any(vec4<bool>(true, false, true, true)), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(12439u, u_input.a)), (vec2<u32>(1u, u_input.a) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) | abs(vec2<u32>(1u, u_input.a))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global1[_wgslsmith_index_u32(66994u, 23u)])) + global1[_wgslsmith_index_u32(u_input.a & u_input.a, 23u)]), ~vec2<u32>(u_input.a, u_input.a))), Struct_4(func_4(vec2<i32>(global0.x, 45045i) >> (firstTrailingBit(vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u)), countOneBits(vec3<u32>(27147u, 92728u, u_input.a)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1u, 23u)] + global1[_wgslsmith_index_u32(58058u, 23u)]), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.a, 23u)] - global1[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<bool>(false, true, true, false))), func_4(vec2<i32>(-1i, global0.x), reverseBits(vec3<u32>(u_input.a, 78730u, 28812u)), vec3<bool>(false, false, false)), true, vec2<u32>(~1u, abs(u_input.a)), func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(2465i, global0.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 27451u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(false, true, true))), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(38284u, 31194u), func_2(51146u, vec2<bool>(false, false)).x), 23u)], _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(2394u, 1u), vec2<u32>(36003u, 4294967295u))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.a.x + -1301f), -1000f), _wgslsmith_f_op_f32(step(var_0.a.a.x, _wgslsmith_f_op_f32(-var_0.a.a.x))), var_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -666f))))), _wgslsmith_div_vec2_u32(func_5(vec4<i32>(global0.x, global0.x, ~global0.x, reverseBits(global0.x)), var_0.b, func_5(vec4<i32>(19724i, 4823i, 1i, global0.x), Struct_3(var_0.a.a, Struct_1(vec4<f32>(var_0.a.a.x, var_0.a.a.x, 1000f, 355f), vec2<u32>(4294967295u, var_0.b.e.b.x)), false, var_0.b.d, var_0.c), Struct_4(var_0.a, Struct_3(global1[_wgslsmith_index_u32(39306u, 23u)], Struct_1(global1[_wgslsmith_index_u32(0u, 23u)], var_0.b.e.b), true, vec2<u32>(4294967295u, 4294967295u), var_0.b.b), Struct_1(var_0.a.a, var_0.a.b)))).b.b.b, vec2<u32>(var_0.b.d.x, u_input.a ^ ~1u)));
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-27179i, firstLeadingBit(_wgslsmith_mult_i32(global0.x, -1i))), select(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global0.x), vec2<i32>(22068i, global0.x), vec2<i32>(2147483647i, 18531i)) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), vec2<i32>(global0.x, 0i) >> (~vec2<u32>(1u, 51851u) % vec2<u32>(32u))), select(vec2<i32>(-2147483647i | global0.x, ~(-15732i)), -(vec2<i32>(-1i, -23359i) ^ vec2<i32>(global0.x, global0.x)), true), vec2<bool>(!any(vec2<bool>(true, true)), var_0.b.c)));
    var var_2 = Struct_2(func_4(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, -1i), vec2<i32>(global0.x, global0.x) << (var_1.b % vec2<u32>(32u))), max(vec2<i32>(global0.x, 63120i), vec2<i32>(2147483647i, global0.x)) >> (vec2<u32>(var_1.b.x, u_input.a) % vec2<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(21857u, var_0.a.b.x, 6592u)), func_2(var_1.b.x, vec2<bool>(var_0.b.c, var_0.b.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(11716u, 0u, 75571u), vec3<u32>(0u, u_input.a, 16348u))), !vec3<bool>(-1381i > global0.x, true, all(vec4<bool>(true, true, var_0.b.c, var_0.b.c)))), func_5(vec4<i32>(_wgslsmith_clamp_i32(-global0.x, 1i, countOneBits(-32322i)), countOneBits(i32(-1i) * -21274i), global0.x, -2147483647i), Struct_3(var_0.a.a, func_4(~vec2<i32>(global0.x, global0.x), vec3<u32>(22099u, u_input.a, 0u) << (vec3<u32>(u_input.a, 59098u, 0u) % vec3<u32>(32u)), vec3<bool>(var_0.b.c, false, var_0.b.c)), true, ~(vec2<u32>(1u, var_1.b.x) ^ vec2<u32>(u_input.a, 4294967295u)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.x, 1000f, -741f, -2009f) + var_0.a.a), vec2<u32>(var_0.a.b.x, var_1.b.x) >> (vec2<u32>(var_0.a.b.x, u_input.a) % vec2<u32>(32u)))), Struct_4(Struct_1(var_0.c.a, ~var_1.b), var_0.b, func_5(abs(vec4<i32>(-3049i, 1i, global0.x, global0.x)), var_0.b, func_5(vec4<i32>(-2147483647i, -58552i, global0.x, global0.x), var_0.b, Struct_4(Struct_1(vec4<f32>(var_0.c.a.x, -404f, 771f, -1280f), var_1.b), Struct_3(vec4<f32>(-1012f, -212f, var_0.c.a.x, -1002f), var_0.a, false, vec2<u32>(0u, var_0.c.b.x), Struct_1(var_0.a.a, vec2<u32>(var_1.b.x, 1u))), var_1))).c)).b.e, _wgslsmith_div_vec4_f32(var_1.a, vec4<f32>(-375f, -556f, -1783f, _wgslsmith_f_op_f32(-var_0.b.e.a.x))));
    var var_3 = 0i;
    return _wgslsmith_div_f32(var_2.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(356f)) * _wgslsmith_div_f32(var_2.a.a.x, var_1.a.x)));
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    global0 = vec2<i32>(_wgslsmith_mult_i32(1i, 26420i), global0.x);
    let var_0 = Struct_1(vec4<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), arg_0.b.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(vec2<i32>(global0.x, 17587i), vec3<u32>(u_input.a, arg_0.b.b.x, arg_0.b.b.x), vec3<bool>(arg_0.c, false, arg_0.c)).a.x * arg_1), _wgslsmith_f_op_f32(arg_0.e.a.x * arg_0.a.x), false))), arg_0.d);
    let var_1 = Struct_3(var_0.a, func_5(~min(vec4<i32>(global0.x, global0.x, 33980i, -1i), ~vec4<i32>(0i, 1i, 0i, global0.x)), arg_0, func_5(vec4<i32>(2147483647i, 1i, ~2147483647i, firstLeadingBit(global0.x)), Struct_3(var_0.a, func_4(vec2<i32>(1i, global0.x), vec3<u32>(64257u, u_input.a, u_input.a), vec3<bool>(true, true, true)), arg_0.c, select(vec2<u32>(u_input.a, 4294967295u), var_0.b, false), func_5(vec4<i32>(global0.x, global0.x, -1261i, global0.x), arg_0, Struct_4(Struct_1(var_0.a, vec2<u32>(1u, var_0.b.x)), arg_0, Struct_1(vec4<f32>(-600f, -1160f, -479f, 532f), var_0.b))).c), func_5(firstLeadingBit(vec4<i32>(global0.x, -16457i, global0.x, -714i)), Struct_3(global1[_wgslsmith_index_u32(47237u, 23u)], arg_0.e, false, var_0.b, Struct_1(vec4<f32>(-1953f, arg_0.a.x, 736f, var_0.a.x), vec2<u32>(0u, 69910u))), Struct_4(Struct_1(arg_0.e.a, arg_0.d), Struct_3(vec4<f32>(var_0.a.x, 1859f, arg_0.a.x, var_0.a.x), arg_0.e, arg_0.c, arg_0.e.b, var_0), Struct_1(var_0.a, vec2<u32>(arg_0.e.b.x, 0u)))))).b.e, (_wgslsmith_div_i32(-global0.x, reverseBits(2147483647i)) | 37013i) >= select(countOneBits(global0.x), 1i, !arg_0.c), vec2<u32>(~4294967295u, var_0.b.x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(1f, -194f)), _wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(max(arg_0.a.x, -2745f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))), vec2<u32>(21115u, 0u)));
    global0 = vec2<i32>(_wgslsmith_clamp_i32(2147483647i | firstLeadingBit(_wgslsmith_mod_i32(14678i, global0.x)), _wgslsmith_dot_vec3_i32(max(~vec3<i32>(global0.x, global0.x, 8740i), vec3<i32>(global0.x, global0.x, global0.x)), -(vec3<i32>(global0.x, global0.x, -9083i) >> (vec3<u32>(var_0.b.x, arg_0.d.x, arg_0.d.x) % vec3<u32>(32u)))), global0.x), 25080i);
    var var_2 = select(select(select(vec3<bool>(all(vec3<bool>(arg_0.c, var_1.c, arg_0.c)), true, true), vec3<bool>(any(vec4<bool>(var_1.c, var_1.c, arg_0.c, var_1.c)), !arg_0.c, arg_0.c), true), select(!vec3<bool>(true, false, arg_0.c), !vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(arg_0.c, all(vec3<bool>(true, true, var_1.c)), global0.x == global0.x)), select(select(select(vec3<bool>(false, true, arg_0.c), vec3<bool>(false, var_1.c, var_1.c), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(arg_0.c, var_1.c, true), vec3<bool>(var_1.c, var_1.c, arg_0.c), vec3<bool>(var_1.c, true, arg_0.c))), select(select(vec3<bool>(false, true, var_1.c), vec3<bool>(arg_0.c, false, var_1.c), var_1.c), select(vec3<bool>(true, false, true), vec3<bool>(arg_0.c, var_1.c, false), false), true))), vec3<bool>(var_1.c, true & ((478f <= var_1.a.x) != (16063u > u_input.a)), any(select(!vec3<bool>(arg_0.c, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(var_1.c, arg_0.c, false)), true))), !(!select(select(vec3<bool>(var_1.c, var_1.c, arg_0.c), vec3<bool>(arg_0.c, var_1.c, true), vec3<bool>(false, var_1.c, var_1.c)), !vec3<bool>(true, true, arg_0.c), vec3<bool>(true, true, true))));
    return func_4(vec2<i32>(_wgslsmith_div_i32(reverseBits(global0.x), ~global0.x), -firstLeadingBit(~(-2147483647i))), vec3<u32>(var_0.b.x, arg_0.b.b.x, u_input.a), !vec3<bool>(any(select(vec4<bool>(var_1.c, var_1.c, arg_0.c, arg_0.c), vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, false, false, arg_0.c))), var_1.c, arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(920f * 688f))), _wgslsmith_f_op_f32(func_1()), -1112f, -671f), Struct_1(vec4<f32>(-400f, -1036f, 358f, _wgslsmith_f_op_f32(-1783f - -821f)), firstLeadingBit(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)))), false, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 12197u) ^ ~vec2<u32>(19637u, 0u), ~abs(vec2<u32>(u_input.a, u_input.a))), Struct_1(vec4<f32>(-474f, _wgslsmith_div_f32(-590f, 794f), -1490f, _wgslsmith_div_f32(1739f, -723f)), vec2<u32>(_wgslsmith_mod_u32(u_input.a, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(180389u, 0u, 1u), vec3<u32>(u_input.a, 4294967295u, 1u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2125f, 109f, true)) + _wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1012f, 978f) * 436f))) - _wgslsmith_f_op_f32(f32(-1f) * -1279f)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.a), func_5(vec4<i32>(-2147483647i, -23586i, 0i, 1i), Struct_3(var_0.a, Struct_1(vec4<f32>(-461f, -1000f, var_0.a.x, -731f), var_0.b), false, var_0.b, var_0), Struct_4(Struct_1(vec4<f32>(890f, var_0.a.x, -1286f, -727f), var_0.b), Struct_3(var_0.a, Struct_1(vec4<f32>(var_0.a.x, 336f, var_0.a.x, 1000f), var_0.b), false, vec2<u32>(u_input.a, u_input.a), var_0), var_0)).c.a)) * vec4<f32>(-1025f, _wgslsmith_f_op_f32(floor(118f)), _wgslsmith_f_op_f32(var_0.a.x - 2514f), 716f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_6(Struct_3(var_0.a, var_0, true, vec2<u32>(1u, 0u), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 23u)], vec2<u32>(0u, 28153u))), 846f).a.x, -1376f, _wgslsmith_div_f32(976f, -272f), _wgslsmith_f_op_f32(-872f + 1000f)))), var_0, true, func_5(vec4<i32>(0i, ~(-18082i), -2515i, global0.x | 16953i) & min(firstTrailingBit(vec4<i32>(global0.x, global0.x, -8792i, 16927i)), max(vec4<i32>(global0.x, global0.x, -2147483647i, -57626i), vec4<i32>(-2147483647i, global0.x, global0.x, global0.x))), func_5(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -3241i), vec2<i32>(-2147483647i, -1i)), abs(global0.x), global0.x, 9282i), func_5(select(vec4<i32>(1842i, 22246i, global0.x, global0.x), vec4<i32>(1i, global0.x, -1i, global0.x), vec4<bool>(true, false, true, false)), func_5(vec4<i32>(global0.x, 1i, global0.x, global0.x), Struct_3(vec4<f32>(-1000f, var_0.a.x, -389f, var_0.a.x), Struct_1(global1[_wgslsmith_index_u32(var_0.b.x, 23u)], vec2<u32>(4294967295u, 1u)), true, var_0.b, Struct_1(var_0.a, var_0.b)), Struct_4(var_0, Struct_3(vec4<f32>(-2018f, 3489f, 1183f, var_0.a.x), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 23u)], var_0.b), false, vec2<u32>(58449u, 1u), var_0), Struct_1(var_0.a, var_0.b))).b, Struct_4(Struct_1(vec4<f32>(1850f, -2291f, var_0.a.x, 1252f), vec2<u32>(4294967295u, 0u)), Struct_3(vec4<f32>(-522f, 928f, var_0.a.x, var_0.a.x), Struct_1(vec4<f32>(452f, 854f, var_0.a.x, 234f), var_0.b), false, var_0.b, Struct_1(global1[_wgslsmith_index_u32(u_input.a, 23u)], vec2<u32>(u_input.a, 15353u))), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec2<u32>(30554u, 4294967295u)))).b, func_5(~vec4<i32>(global0.x, global0.x, global0.x, -2018i), Struct_3(vec4<f32>(var_0.a.x, -1387f, var_0.a.x, 505f), var_0, true, var_0.b, Struct_1(var_0.a, var_0.b)), Struct_4(var_0, Struct_3(vec4<f32>(var_0.a.x, 1694f, var_0.a.x, 1203f), Struct_1(vec4<f32>(460f, -949f, -1000f, 1525f), vec2<u32>(4294967295u, u_input.a)), false, vec2<u32>(u_input.a, var_0.b.x), Struct_1(global1[_wgslsmith_index_u32(var_0.b.x, 23u)], var_0.b)), Struct_1(global1[_wgslsmith_index_u32(var_0.b.x, 23u)], vec2<u32>(40877u, var_0.b.x))))).b, Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.a.x, -578f, var_0.a.x) * var_0.a), vec2<u32>(u_input.a, u_input.a)), func_5(vec4<i32>(global0.x, -1i, -34765i, 1i) << (vec4<u32>(0u, 4294967295u, u_input.a, 4294967295u) % vec4<u32>(32u)), func_5(vec4<i32>(global0.x, global0.x, 1i, 0i), Struct_3(var_0.a, var_0, true, vec2<u32>(4294967295u, 1u), var_0), Struct_4(Struct_1(vec4<f32>(-1763f, 1842f, var_0.a.x, var_0.a.x), var_0.b), Struct_3(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -193f), Struct_1(var_0.a, vec2<u32>(var_0.b.x, 4294967295u)), false, vec2<u32>(53581u, 112665u), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, 596f, 761f), var_0.b)), var_0)).b, Struct_4(Struct_1(vec4<f32>(614f, var_0.a.x, -875f, var_0.a.x), vec2<u32>(u_input.a, var_0.b.x)), Struct_3(var_0.a, var_0, false, vec2<u32>(1u, 0u), var_0), Struct_1(var_0.a, vec2<u32>(17737u, 4294967295u)))).b, var_0)).a.b, func_5((vec4<i32>(-1i) * -vec4<i32>(global0.x, global0.x, global0.x, 1i)) | _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, 29224i, global0.x, global0.x)), vec4<i32>(-18666i, 2147483647i, global0.x, -2147483647i)), Struct_3(_wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(u_input.a, 23u)])), func_6(Struct_3(var_0.a, Struct_1(vec4<f32>(926f, var_0.a.x, var_0.a.x, -2085f), var_0.b), true, vec2<u32>(var_0.b.x, u_input.a), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 23u)], var_0.b)), -865f), true, ~(vec2<u32>(var_0.b.x, 4209u) ^ vec2<u32>(57200u, 411u)), func_6(func_5(vec4<i32>(global0.x, global0.x, 28079i, global0.x), Struct_3(var_0.a, var_0, false, var_0.b, var_0), Struct_4(Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec2<u32>(4294967295u, 0u)), Struct_3(global1[_wgslsmith_index_u32(var_0.b.x, 23u)], Struct_1(var_0.a, var_0.b), true, vec2<u32>(118026u, var_0.b.x), Struct_1(vec4<f32>(386f, var_0.a.x, var_0.a.x, 1619f), vec2<u32>(var_0.b.x, var_0.b.x))), Struct_1(vec4<f32>(-609f, 823f, var_0.a.x, var_0.a.x), vec2<u32>(1u, u_input.a)))).b, -468f)), Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.a, 23u)] - global1[_wgslsmith_index_u32(u_input.a, 23u)]), vec2<u32>(u_input.a, 26461u) >> (vec2<u32>(var_0.b.x, 0u) % vec2<u32>(32u))), func_5(vec4<i32>(global0.x, 19048i, global0.x, -2147483647i) & vec4<i32>(global0.x, -28362i, global0.x, 80853i), func_5(vec4<i32>(global0.x, 1i, global0.x, -12502i), Struct_3(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), Struct_1(vec4<f32>(-524f, var_0.a.x, 1515f, -244f), var_0.b), false, var_0.b, Struct_1(vec4<f32>(-460f, var_0.a.x, var_0.a.x, -353f), vec2<u32>(u_input.a, var_0.b.x))), Struct_4(Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -463f), var_0.b), Struct_3(var_0.a, Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b), false, vec2<u32>(u_input.a, var_0.b.x), var_0), var_0)).b, Struct_4(Struct_1(vec4<f32>(-644f, var_0.a.x, var_0.a.x, var_0.a.x), vec2<u32>(u_input.a, u_input.a)), Struct_3(vec4<f32>(var_0.a.x, -1041f, var_0.a.x, var_0.a.x), Struct_1(vec4<f32>(1605f, 375f, -1000f, 265f), var_0.b), true, vec2<u32>(u_input.a, 1u), Struct_1(vec4<f32>(-226f, var_0.a.x, -606f, -956f), vec2<u32>(4294967295u, 20485u))), Struct_1(vec4<f32>(325f, var_0.a.x, -662f, var_0.a.x), var_0.b))).b, func_6(func_5(vec4<i32>(global0.x, global0.x, -8671i, 13197i), Struct_3(var_0.a, Struct_1(var_0.a, var_0.b), false, vec2<u32>(var_0.b.x, 37622u), var_0), Struct_4(var_0, Struct_3(var_0.a, Struct_1(global1[_wgslsmith_index_u32(var_0.b.x, 23u)], var_0.b), false, vec2<u32>(1u, 4294967295u), var_0), var_0)).b, func_4(vec2<i32>(54160i, global0.x), vec3<u32>(0u, 15950u, u_input.a), vec3<bool>(true, true, true)).a.x))).b.b);
    global0 = countOneBits(_wgslsmith_div_vec2_i32(select(~(~vec2<i32>(0i, 1i)), min(abs(vec2<i32>(global0.x, 41628i)), ~vec2<i32>(global0.x, global0.x)), !(!vec2<bool>(var_1.c, false))), _wgslsmith_sub_vec2_i32(max(vec2<i32>(global0.x, -12790i) ^ vec2<i32>(global0.x, global0.x), vec2<i32>(2147483647i, -5951i)), countOneBits(vec2<i32>(global0.x, -38351i)))));
    var var_2 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(var_0.a.x)), 878f, var_0.a.x), vec4<f32>(-1299f, var_1.b.a.x, var_1.b.a.x, var_1.a.x), select(!vec4<bool>(var_1.c, var_1.c, true, var_1.c), !vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c), !vec4<bool>(var_1.c, var_1.c, var_1.c, false)))), ~var_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.a.x, var_0.a.x, var_0.a.x, 1080f), vec4<f32>(-637f, 352f, var_1.b.a.x, -549f)) - var_1.b.a) * vec4<f32>(_wgslsmith_f_op_f32(step(440f, var_0.a.x)), -1000f, _wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -586f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.a.x, -1661f, -1000f, _wgslsmith_f_op_f32(-222f - var_1.e.a.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.b.a.x)), 130f, _wgslsmith_f_op_f32(var_1.e.a.x + var_0.a.x), _wgslsmith_f_op_f32(min(var_1.e.a.x, 186f))), vec4<bool>(true, var_1.c, !var_1.c, any(vec2<bool>(false, var_1.c)))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a), var_2.a, !func_5(~(~vec4<i32>(global0.x, -10916i, 2147483647i, 2147483647i)), func_5(~vec4<i32>(-2147483647i, global0.x, global0.x, 1i), func_5(vec4<i32>(global0.x, -1i, global0.x, global0.x), var_1, Struct_4(var_1.e, Struct_3(vec4<f32>(var_1.a.x, 1690f, 903f, var_1.a.x), Struct_1(var_0.a, vec2<u32>(var_2.b.b.x, 0u)), true, vec2<u32>(27246u, 4294967295u), Struct_1(var_0.a, var_0.b)), Struct_1(var_2.b.a, var_0.b))).b, Struct_4(var_0, Struct_3(var_2.b.a, var_2.a, var_1.c, var_1.b.b, var_0), var_0)).b, func_5(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -7247i, global0.x, global0.x), vec4<i32>(2147483647i, 57960i, 1i, -2147483647i)), func_5(vec4<i32>(8518i, 2147483647i, global0.x, global0.x), var_1, Struct_4(Struct_1(var_2.b.a, var_0.b), var_1, var_1.e)).b, Struct_4(Struct_1(vec4<f32>(-899f, 308f, var_0.a.x, var_0.a.x), var_2.b.b), Struct_3(var_0.a, Struct_1(vec4<f32>(var_1.b.a.x, 896f, 733f, var_1.a.x), var_1.d), false, vec2<u32>(var_2.b.b.x, var_0.b.x), Struct_1(vec4<f32>(1255f, var_1.e.a.x, var_0.a.x, -483f), vec2<u32>(u_input.a, 1u))), var_0))).b.c, reverseBits(~abs(func_4(vec2<i32>(1i, global0.x), vec3<u32>(68978u, var_0.b.x, var_2.b.b.x), vec3<bool>(var_1.c, false, var_1.c)).b)), func_4(vec2<i32>(_wgslsmith_mult_i32(global0.x & -17786i, global0.x), _wgslsmith_sub_i32(reverseBits(global0.x), -1i)), ~(~firstLeadingBit(vec3<u32>(var_1.e.b.x, u_input.a, var_1.d.x))), select(select(vec3<bool>(false, var_1.c, true), vec3<bool>(false, var_1.c, true), vec3<bool>(false, false, var_1.c)), vec3<bool>(var_0.a.x == var_0.a.x, var_1.c, !var_1.c), !select(vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(false, false, var_1.c), vec3<bool>(true, true, true)))));
    let var_4 = select(vec4<u32>(~(~var_0.b.x), ~1u, reverseBits(_wgslsmith_mod_u32(var_3.e.b.x, 0u)), 1u) ^ select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, var_1.d.x, 17734u), vec4<u32>(9695u, 3997u, var_3.e.b.x, 0u)), abs(~vec4<u32>(var_3.b.b.x, u_input.a, var_1.d.x, var_1.e.b.x)), !vec4<bool>(false, true, var_1.c, var_1.c)), vec4<u32>(1437u, ~var_2.b.b.x, 4294967295u, ~_wgslsmith_div_u32(firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1234u, var_2.a.b.x, var_1.e.b.x, var_3.d.x), vec4<u32>(44080u, u_input.a, 9555u, 14884u)))), !vec4<bool>(!(false | var_3.c), func_6(var_3, 1233f).a.x == 1f, true, var_1.c));
    let var_5 = max((abs(vec3<i32>(-17150i, 6396i, -7738i)) ^ (select(vec3<i32>(global0.x, 0i, global0.x), vec3<i32>(global0.x, 22321i, global0.x), vec3<bool>(true, false, true)) << ((var_4.yyw & vec3<u32>(var_4.x, var_3.b.b.x, var_3.e.b.x)) % vec3<u32>(32u)))) ^ min(firstLeadingBit(vec3<i32>(global0.x, -48279i, global0.x)), vec3<i32>(global0.x, 2147483647i, global0.x)), ~(~vec3<i32>(abs(global0.x), _wgslsmith_mult_i32(-1i, global0.x), select(1i, 0i, false))));
    var var_6 = ~max(~var_4, _wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.b.b.x, 4294967295u, var_1.e.b.x, var_1.b.b.x)), ~select(vec4<u32>(var_0.b.x, var_3.b.b.x, var_2.a.b.x, var_3.b.b.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 123526u), vec4<bool>(true, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(select(~abs(vec2<u32>(var_2.a.b.x, var_2.b.b.x)), func_5(vec4<i32>(2147483647i, global0.x, var_5.x, var_5.x), Struct_3(var_0.a, Struct_1(vec4<f32>(var_3.e.a.x, -372f, -731f, 505f), var_3.e.b), var_3.c, vec2<u32>(72223u, u_input.a), Struct_1(vec4<f32>(var_3.a.x, var_0.a.x, var_0.a.x, 2090f), vec2<u32>(var_6.x, 1u))), Struct_4(var_1.e, var_3, Struct_1(vec4<f32>(var_2.a.a.x, var_1.b.a.x, var_3.b.a.x, var_1.e.a.x), var_6.zy))).c.b ^ ~vec2<u32>(var_2.a.b.x, 1u), vec2<bool>(true, true)), firstTrailingBit(reverseBits(firstLeadingBit(var_4.wz))), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_1.b.b.x, 14629u)), u_input.a)), var_4.x, max(20287u, var_4.x));
}

