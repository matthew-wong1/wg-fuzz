struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> i32 {
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    let var_0 = Struct_4(u_input.c.x, arg_1, ~u_input.a.x, arg_1.b);
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    return _wgslsmith_add_i32(firstLeadingBit(firstTrailingBit(u_input.c.x)), _wgslsmith_div_i32(11163i, 1i));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_3 {
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    let var_0 = _wgslsmith_mod_i32(~(~_wgslsmith_dot_vec2_i32(~arg_3, max(arg_3, arg_2.zy))), func_3(arg_1, Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x << (34670u % 32u), arg_1.x, ~4294967295u), 18u)], Struct_2(Struct_1(vec3<f32>(arg_0.x, -443f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, 1581f), vec3<bool>(false, false, false), vec2<f32>(-201f, -309f), -615f), true, vec4<u32>(1u, 28956u, 1u, u_input.b), _wgslsmith_f_op_f32(trunc(1719f)), Struct_1(arg_0.yzy, vec3<f32>(-829f, 1201f, arg_0.x), vec3<bool>(true, false, true), vec2<f32>(arg_0.x, -207f), -1101f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec4<u32>(1u, abs(u_input.a.x), 33560u, u_input.b))));
    let var_1 = 42670u;
    global0 = array<vec4<bool>, 18>();
    return Struct_3(select(!vec4<bool>(arg_2.x > -7622i, arg_0.x <= -1379f, true, true), select(vec4<bool>(true, any(vec3<bool>(true, true, true)), all(global0[_wgslsmith_index_u32(u_input.b, 18u)]), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), true), select(vec4<bool>(true, true, true, true), select(global0[_wgslsmith_index_u32(firstLeadingBit(36605u), 18u)], vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), all(global0[_wgslsmith_index_u32(arg_1.x, 18u)]) && true)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.wwy) + _wgslsmith_f_op_vec3_f32(min(arg_0.xwy, arg_0.xxz))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2069f), arg_0.x), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xx), arg_0.yx), arg_0.x), true, u_input.a, 1249f, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(arg_0.xww)), vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), arg_0.x, arg_0.x), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, -585f))), _wgslsmith_f_op_f32(f32(-1f) * -525f))), select(vec3<bool>(false, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), vec3<bool>(false, _wgslsmith_f_op_f32(exp2(arg_0.x)) <= _wgslsmith_f_op_f32(-arg_0.x), true), all(vec2<bool>(true, true))), vec4<u32>(var_1, ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(31538u, var_1, arg_1.x, 0u)), u_input.a), _wgslsmith_mod_u32(63463u, ~arg_1.x), arg_1.x));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 468f, 274f, -1816f)) + vec4<f32>(arg_2.d.x, arg_0, arg_1, arg_2.e)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1852f, arg_0, -143f, -664f))))) + vec4<f32>(_wgslsmith_f_op_f32(454f - arg_2.e), _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(sign(-362f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), ~((vec2<u32>(1u, 1u) ^ vec2<u32>(1043u, u_input.b)) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), -abs(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, -1i), u_input.c.x, u_input.c.x)), vec2<i32>(~1i, ~14915i));
    var var_1 = !any(arg_2.c);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.b.x)));
}

fn func_4(arg_0: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-489f))));
    let var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-192f, _wgslsmith_f_op_f32(f32(-1f) * -425f), Struct_1(vec3<f32>(653f, arg_0, -996f), vec3<f32>(var_0, var_0, arg_0), vec3<bool>(true, false, false), vec2<f32>(var_0, 544f), var_0), u_input.c & u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-var_0))) + 1026f), -864f, arg_0), ~vec2<u32>(38034u, firstTrailingBit(u_input.a.x)), -(~vec3<i32>(~u_input.c.x, -15515i >> (u_input.a.x % 32u), ~(-1i))), firstTrailingBit(vec2<i32>(2147483647i, i32(-1i) * -2147483647i) >> (((vec2<u32>(72272u, u_input.a.x) | u_input.a.xz) ^ vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u)))).b.a;
    return vec3<u32>(select(min(u_input.a.x, select(u_input.a.x, 70996u ^ u_input.b, false)), ~firstLeadingBit(4294967295u), var_1.c.x), firstTrailingBit(~(u_input.a.x & _wgslsmith_div_u32(47787u, 1u))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 18>();
    let var_0 = vec3<u32>(u_input.b, 6035u, 38801u);
    var var_1 = ~abs(vec3<u32>(~36558u, 4294967295u, select(_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(4294967295u, 4294967295u, u_input.b)), 36855u, true)));
    var_1 = func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(1332f, -613f, Struct_1(vec3<f32>(1000f, 2172f, -232f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, 393f, 1000f) + vec3<f32>(2243f, -1375f, 1010f)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec2<f32>(1927f, -1131f), _wgslsmith_f_op_f32(f32(-1f) * -1475f)), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c.x, u_input.c.x)), -vec2<i32>(-2147483647i, 17113i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1216f))), true)));
    var var_2 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-616f + -855f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) * -485f), -1036f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(881f, -1092f, 320f) * vec3<f32>(-938f, -3242f, -575f)))), select(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-355f, -1086f, -2765f, -695f)), var_0.zz, vec3<i32>(2595i, u_input.c.x, u_input.c.x), select(vec2<i32>(19877i, u_input.c.x), u_input.c, false)).c, vec3<bool>(any(vec2<bool>(false, true)), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), all(vec3<bool>(false, false, false)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(463f, -198f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(238f, -715f))), vec2<bool>(true, true))), vec2<f32>(1f, 1f)), -126f), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(all(vec2<bool>(false, true)), true))), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 56715u), u_input.a.x), 4294967295u, 1u, _wgslsmith_dot_vec4_u32(u_input.a, func_2(vec4<f32>(-1000f, 381f, 610f, -325f), vec2<u32>(u_input.a.x, var_1.x), vec3<i32>(2147483647i, 0i, u_input.c.x), u_input.c).b.c)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, var_1.x, u_input.a.x), ~vec4<u32>(var_1.x, var_1.x, 4294967295u, 4202u))), _wgslsmith_f_op_f32(f32(-1f) * -577f), Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(1f + -729f), -118f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(194f, -780f, 718f) + vec3<f32>(437f, 884f, -293f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(244f, -437f, 578f)), vec3<bool>(true, true, false))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(155f, 1368f, -367f)), vec3<f32>(-389f, -508f, -514f))), func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 738f, -878f, -2914f)), vec4<f32>(660f, -1401f, 1449f, -1851f))), ~(~vec2<u32>(28661u, var_1.x)), ~vec3<i32>(-1260i, u_input.c.x, -2543i), vec2<i32>(min(u_input.c.x, u_input.c.x), -15191i)).b.e.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - 503f), _wgslsmith_f_op_f32(f32(-1f) * -470f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1263f, 543f) - vec2<f32>(1000f, -1060f)), vec2<f32>(-1819f, 736f))), _wgslsmith_f_op_f32(637f * -181f)));
    var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1012f, 1534f, -1750f, 823f) + vec4<f32>(var_2.d, var_2.d, -610f, var_2.d)) * vec4<f32>(var_2.e.b.x, var_2.a.a.x, var_2.d, -1333f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(888f, -349f, 1466f, var_2.d)))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_2.d, _wgslsmith_f_op_f32(var_2.a.b.x + var_2.a.b.x), _wgslsmith_f_op_f32(-var_2.a.d.x), _wgslsmith_f_op_f32(f32(-1f) * -2565f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.d, -673f, var_2.d, 180f))) - vec4<f32>(var_2.a.e, var_2.e.d.x, 1000f, var_2.d)))), min(_wgslsmith_add_vec2_u32(var_0.xy, vec2<u32>(~u_input.b, 1u)), _wgslsmith_add_vec2_u32(var_1.yz, ~var_2.c.zw >> (select(var_2.c.ww, vec2<u32>(var_1.x, 4294967295u), vec2<bool>(true, var_2.b)) % vec2<u32>(32u)))), vec3<i32>(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, -1i), u_input.c.x), u_input.c.x ^ u_input.c.x, ~(~u_input.c.x) >> (_wgslsmith_sub_u32(var_0.x, abs(6511u)) % 32u)), vec2<i32>(abs(u_input.c.x | u_input.c.x) ^ -2147483647i, u_input.c.x)).b;
    let var_3 = Struct_4(u_input.c.x, func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(351f, var_2.a.a.x, 595f, var_2.a.e), vec4<f32>(-2441f, 1554f, var_2.a.b.x, var_2.d), global0[_wgslsmith_index_u32(var_0.x, 18u)])) + vec4<f32>(636f, var_2.d, var_2.e.a.x, var_2.a.b.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-436f, -140f, var_2.a.b.x, var_2.a.e))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(20850u, _wgslsmith_sub_u32(u_input.a.x, 4294967295u)), 18u)])), var_1.xz, max(vec3<i32>(u_input.c.x | -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-24613i, -1i), vec2<i32>(1i, u_input.c.x)), -19063i), firstLeadingBit(reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, 0i)))), firstTrailingBit(min(vec2<i32>(u_input.c.x, 2147483647i), u_input.c)) >> (func_4(_wgslsmith_f_op_f32(round(-1000f))).yz % vec2<u32>(32u))), var_1.x, func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-783f, 659f, var_2.d, 1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(135f, 193f, -1154f, -308f) * vec4<f32>(-321f, -259f, -1766f, var_2.e.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1297f, -1287f, -1000f, 631f))))), max(vec2<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), u_input.a.x << (var_1.x % 32u)), ~vec2<u32>(0u, var_2.c.x)), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), select(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 37917i, -1i), vec3<i32>(u_input.c.x, 3038i, u_input.c.x)), vec3<i32>(24377i, u_input.c.x, 51643i), true)), ~u_input.c).b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-select(3417i | var_3.a, countOneBits(u_input.c.x), var_2.a.c.x | true), _wgslsmith_sub_i32(2147483647i, -abs(var_3.a)), _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 0i, var_3.a), vec3<i32>(u_input.c.x, var_3.a, 0i)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(610u, 0u, var_3.b.d.x), vec3<u32>(4294967295u, var_1.x, var_0.x), vec3<u32>(var_3.c, 53426u, var_0.x)) % vec3<u32>(32u))) ^ abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_3.a, u_input.c.x, u_input.c.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, var_3.a, u_input.c.x), vec3<i32>(var_3.a, u_input.c.x, -45667i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, var_3.a), vec3<i32>(42471i, u_input.c.x, 21406i), vec3<i32>(2147483647i, var_3.a, var_3.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(var_3.b.b.e.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_3.b.b.a.a.x, -985f, -677f), var_3.b.b.a.b)))))), _wgslsmith_f_op_f32(floor(var_3.d.a.a.x)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~var_2.c, vec4<u32>(var_3.c, u_input.a.x, var_3.c, 1u)), var_2.c, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 1u, 1u, var_2.c.x), vec4<u32>(var_0.x, u_input.a.x, var_1.x, 47560u))));
}

