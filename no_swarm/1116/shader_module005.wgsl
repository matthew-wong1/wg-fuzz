struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<u32, 16>;

var<private> global3: array<f32, 27>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(~(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14703u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48089u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], 16u)], 4294967295u)) << (vec2<u32>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4315u, 16u)], 16u)]) % vec2<u32>(32u)))), vec2<u32>(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(57114u, 16u)], 55396u, global2[_wgslsmith_index_u32(1u, 16u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(20881u, 16u)], 99902u)), max(2635u, 7484u)), _wgslsmith_div_u32(108862u, max(14575u >> (0u % 32u), 7250u ^ global2[_wgslsmith_index_u32(15066u, 16u)]))), ~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54412u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49748u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)]) | vec2<u32>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)]), vec2<u32>(11151u, 0u)), vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(87351u, 16u)], 16u)], 16u)], 1411u), 16u)])));
    global2 = array<u32, 16>();
    let var_1 = Struct_4(Struct_2(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), Struct_1(select(min(var_0.x, var_0.x), 49729u & var_0.x, select(false, true, true))), vec4<i32>(u_input.a.x, 1i, u_input.e.x >> (9251u % 32u), -(u_input.b.x | u_input.b.x)), true), 18621u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_0.x ^ 52139u, 27u)], _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(27823u, 27u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1098f * global3[_wgslsmith_index_u32(23617u, 27u)]))), global3[_wgslsmith_index_u32(30655u, 27u)], _wgslsmith_f_op_f32(-193f + global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_0.x, 16u)], 16u)], 27u)])))));
    var var_2 = !vec3<bool>(true, true, var_1.a.d);
    global0 = array<Struct_4, 5>();
    return vec4<i32>(~(-(var_1.a.c.x << ((4294967295u & global2[_wgslsmith_index_u32(1u, 16u)]) % 32u))), -min(var_1.a.c.x, ~1015i), -firstLeadingBit(1i), ~(-9982i));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    var var_0 = Struct_2(all(vec3<bool>(true, true, true)), Struct_1(70020u), vec4<i32>(-54143i, max(1i, _wgslsmith_div_i32(u_input.e.x, 2147483647i)) ^ -1i, 0i, u_input.b.x), !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true), true)));
    var var_1 = Struct_2(false, Struct_1(global2[_wgslsmith_index_u32(var_0.b.a, 16u)]), _wgslsmith_add_vec4_i32(~var_0.c, abs(func_3())), !(!var_0.a));
    var var_2 = Struct_2((var_0.a & true) && select(!(!var_0.d), !all(vec2<bool>(true, true)), true), Struct_1(firstTrailingBit(abs(abs(var_1.b.a)))), vec4<i32>(~var_1.c.x, max(-2147483647i, ~1i), var_1.c.x, max(_wgslsmith_add_i32(-1i, i32(-1i) * -22966i), 34042i)), !(!var_1.a));
    var var_3 = 1i;
    var var_4 = u_input.d;
    return abs(~select(1u, 86934u >> (_wgslsmith_mod_u32(1u, 167u) % 32u), true));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> vec2<u32> {
    global2 = array<u32, 16>();
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(~abs(53883u), 16u)] | (func_2(reverseBits(vec3<u32>(54165u, 26908u, 26705u))) & reverseBits(func_2(vec3<u32>(52322u, 103281u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)])))));
    var var_1 = true;
    global3 = array<f32, 27>();
    var var_2 = Struct_3(-49750i, -304f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-240f, -255f)), vec2<f32>(global3[_wgslsmith_index_u32(1u, 27u)], 255f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(48715u, 27u)], -369f)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(var_0.a, 27u)])), _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(16284u, 27u)])))), 461f), !select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(false, false), false), vec2<bool>(true, true)))));
    return max(vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_add_u32(69648u, var_0.a)), 16u)], 43584u), ~vec2<u32>(6995u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5830u, 16u)], 16u)]), 27u)], _wgslsmith_f_op_f32(max(-2198f, 851f)), -268f, 524f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), global3[_wgslsmith_index_u32(~countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)]), 27u)], _wgslsmith_div_f32(1024f, global3[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 16u)]), 27u)]), global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 16u)] & 0u, 27u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(68858u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], 1887f, global3[_wgslsmith_index_u32(1u, 27u)])) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(0u, 27u)], -216f, 346f, -334f), vec4<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 27u)], 1000f, 1000f, -465f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22065u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 27u)], global3[_wgslsmith_index_u32(43496u, 27u)]) - vec4<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26741u, 16u)], 16u)], 27u)], -766f, global3[_wgslsmith_index_u32(62395u, 27u)], -998f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-136f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 27u)], 359f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 27u)]) * vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 27u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 27u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 27u)]))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(7434u, 27u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12278u, 16u)], 27u)], 1314f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43300u, 16u)], 16u)], 16u)], 16u)], 27u)]) + vec4<f32>(-317f, -720f, global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)])))))), 1254f <= _wgslsmith_f_op_f32(round(225f))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = Struct_1(~global2[_wgslsmith_index_u32(1u, 16u)]);
    var var_3 = (-(~firstTrailingBit(-2147483647i)) << (_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, var_2.a), 16u)], ~_wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21092u, 16u)], 16u)], 16u)])) % 32u)) & -19162i;
    var_3 = max(u_input.a.x, u_input.c);
    var_3 = 0i;
    var var_4 = vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(-987f - var_0.x) >= -686f)), false, !(any(vec4<bool>(true, false, true, false)) && (_wgslsmith_f_op_f32(903f - -425f) <= _wgslsmith_f_op_f32(-var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_2.a, var_2.a >> (16927u % 32u)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_2.a), vec2<u32>(56160u, global2[_wgslsmith_index_u32(var_2.a, 16u)])), func_1(false, vec2<i32>(u_input.d, 2147483647i)), true))));
}

