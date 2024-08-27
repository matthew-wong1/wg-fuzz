struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: array<i32, 7> = array<i32, 7>(-1i, 1i, 16090i, 1i, 2147483647i, -47407i, 0i);

var<private> global2: array<bool, 1>;

var<private> global3: i32;

var<private> global4: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-610f, -1511f), vec2<f32>(1829f, -121f), vec2<f32>(551f, 757f), vec2<f32>(759f, -1813f), vec2<f32>(-1425f, 750f), vec2<f32>(-1416f, 1693f), vec2<f32>(1452f, 499f), vec2<f32>(802f, -1123f), vec2<f32>(-1793f, -569f), vec2<f32>(1045f, -583f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = -(~global1[_wgslsmith_index_u32(u_input.a.x, 7u)]);
    global4 = array<vec2<f32>, 10>();
    let var_1 = -(vec3<i32>(-61263i, firstTrailingBit(-u_input.b), -_wgslsmith_dot_vec2_i32(vec2<i32>(-3067i, 1i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(1u, 7u)]))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.c, 17336u), 0u, ~u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.c)) % vec3<u32>(32u)));
    var var_2 = ~(~(_wgslsmith_mult_i32(-var_1.x, reverseBits(-1i)) >> ((u_input.a.x >> (1u % 32u)) % 32u)));
    var_0 = abs(-5129i);
    return true;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_5) -> vec3<i32> {
    global1 = array<i32, 7>();
    var var_0 = -13446i >> ((_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_3.a.c, arg_3.c.c) ^ vec3<u32>(arg_3.a.c.x, 37471u, 43044u), vec3<u32>(_wgslsmith_mult_u32(99882u, 1u), ~1u, _wgslsmith_clamp_u32(u_input.a.x, arg_2.x, u_input.a.x))) >> (_wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a) % 32u)) % 32u);
    global1 = array<i32, 7>();
    var_0 = countOneBits(min(firstLeadingBit(0i), ~(_wgslsmith_div_i32(u_input.b, arg_1.x) << (7156u % 32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(arg_0.x, 225f), arg_3.a.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-790f, _wgslsmith_f_op_f32(-arg_0.x)))))), _wgslsmith_f_op_vec3_f32(-arg_3.a.b.wzw), !(!(arg_1.x > arg_1.x))));
    return ~arg_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = Struct_5(Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2, arg_1.a.b.d.x, arg_3.b.b.x, arg_1.c.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.b.d, arg_1.b.d))), ~(~reverseBits(vec3<u32>(u_input.a.x, 0u, u_input.a.x))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(1412f, _wgslsmith_f_op_f32(515f + arg_2), arg_3.d <= arg_3.b.c.x)), -1070f, 1799f)), arg_0, Struct_1(false, arg_3.b.d, arg_1.a.b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.b.b)))), _wgslsmith_sub_u32(arg_1.e.x, countOneBits(arg_3.b.c.x) ^ (~1u ^ u_input.a.x)));
    var var_1 = -1i;
    var_1 = _wgslsmith_clamp_i32(28345i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-6914i, -92983i, _wgslsmith_sub_i32(arg_3.a.x, 11175i)), -(-arg_3.a & countOneBits(arg_3.a))), -1227i);
    var_1 = -1i;
    let var_2 = 1u < firstLeadingBit(var_0.c.c.x);
    return vec3<bool>(any(vec4<bool>((true || global2[_wgslsmith_index_u32(arg_1.a.d, 1u)]) & var_0.b.x, var_2, true, true)), !var_2, all(var_0.b.yw));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    global2 = array<bool, 1>();
    global4 = array<vec2<f32>, 10>();
    global0 = select(vec3<bool>(true, select(true, all(vec4<bool>(global0.x, false, false, global0.x)), false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(4294967295u, 1u, 0u, u_input.a.x), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)), abs(firstTrailingBit(vec4<u32>(u_input.a.x, 11482u, u_input.c, u_input.a.x)))), 1u)]), !func_4(vec4<bool>(func_2(global1[_wgslsmith_index_u32(4294967295u, 7u)]), global2[_wgslsmith_index_u32(3607u, 1u)], false, global2[_wgslsmith_index_u32(u_input.c, 1u)]), Struct_4(Struct_2(arg_0.zxz, Struct_1(global0.x, vec4<f32>(-2265f, 328f, -763f, 1364f), vec3<u32>(u_input.c, u_input.a.x, 3028u), vec4<f32>(1225f, -464f, -205f, 753f)), true, 1u), Struct_1(global0.x, vec4<f32>(1462f, 964f, -847f, -116f), vec3<u32>(0u, 1u, u_input.a.x), vec4<f32>(-421f, 259f, -1000f, 1000f)), vec3<f32>(1221f, 1955f, 1469f), -1i, u_input.a & u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-312f, -505f, true)), _wgslsmith_f_op_f32(trunc(820f)))), Struct_2(func_3(global4[_wgslsmith_index_u32(0u, 10u)], vec3<i32>(arg_0.x, arg_0.x, 10965i), vec2<u32>(u_input.c, 0u), Struct_5(Struct_1(true, vec4<f32>(2145f, -953f, 354f, 120f), vec3<u32>(0u, u_input.a.x, 4294967295u), vec4<f32>(316f, 1596f, 519f, -1983f)), vec4<bool>(true, true, true, global0.x), Struct_1(true, vec4<f32>(-300f, 1000f, -492f, 548f), vec3<u32>(1u, 0u, u_input.c), vec4<f32>(1481f, -1084f, 2270f, -316f)), u_input.c)), Struct_1(global2[_wgslsmith_index_u32(34586u, 1u)], vec4<f32>(-502f, 170f, -1000f, 165f), vec3<u32>(u_input.a.x, 7755u, u_input.a.x), vec4<f32>(2796f, -467f, -225f, 1705f)), true, ~0u)), !global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c, ~7320u), 1u)]);
    global1 = array<i32, 7>();
    let var_0 = vec4<u32>(reverseBits(67873u), ~select(~reverseBits(u_input.c), max(2092u, 10589u), true), ~23197u, _wgslsmith_dot_vec4_u32(firstTrailingBit(~select(vec4<u32>(7011u, 1u, u_input.c, u_input.a.x), vec4<u32>(u_input.c, u_input.a.x, 4294967295u, u_input.a.x), vec4<bool>(true, global0.x, global0.x, true))), vec4<u32>(~reverseBits(u_input.c), ~_wgslsmith_clamp_u32(1u, u_input.c, 16173u), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c, u_input.c), u_input.a.x & 0u), firstTrailingBit(u_input.a.x))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-895f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-369f, _wgslsmith_f_op_f32(1000f - 517f))))), 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1848f + -1000f), -361f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(660f, -1000f, -1246f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))) - vec3<f32>(-1269f, -460f, _wgslsmith_f_op_f32(func_1(vec4<i32>(34634i, u_input.b, 1i, 18169i)))))), -1008f, abs(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, u_input.a.x) & _wgslsmith_div_u32(4294967295u, u_input.a.x), 7u)]) >> (abs(~_wgslsmith_div_u32(51846u, 1u)) % 32u), vec4<i32>(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(39389i, -2498i, global1[_wgslsmith_index_u32(25834u, 7u)], -38324i), -vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(35952u, 7u)], 3495i, -1i), global0.x), vec4<i32>(_wgslsmith_sub_i32(0i, -15272i), ~0i, countOneBits(global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), ~u_input.b)), -func_3(global4[_wgslsmith_index_u32(select(38093u, 4294967295u, true), 10u)], min(vec3<i32>(2147483647i, u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec3<i32>(global1[_wgslsmith_index_u32(26124u, 7u)], u_input.b, global1[_wgslsmith_index_u32(35775u, 7u)])), vec2<u32>(u_input.c, 1u), Struct_5(Struct_1(global2[_wgslsmith_index_u32(1u, 1u)], vec4<f32>(-1383f, 145f, -644f, 240f), vec3<u32>(43833u, u_input.c, u_input.a.x), vec4<f32>(1260f, -134f, 709f, 548f)), vec4<bool>(global0.x, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global0.x, global2[_wgslsmith_index_u32(0u, 1u)]), Struct_1(global2[_wgslsmith_index_u32(1u, 1u)], vec4<f32>(1312f, -1000f, 394f, -3651f), vec3<u32>(u_input.a.x, 1u, u_input.c), vec4<f32>(1028f, -172f, -1000f, 1043f)), 4294967295u)).x, -select(-35501i, -2147483647i, true) & ~global1[_wgslsmith_index_u32(abs(u_input.c), 7u)], abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, u_input.b), max(-7043i, 25171i)))));
}

