struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<vec3<u32>, 9>;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(481f, vec2<i32>(58821i, -40345i), vec2<u32>(37452u, 57915u), vec4<f32>(239f, -1014f, 556f, 126f)), Struct_1(-170f, vec2<i32>(16145i, -25525i), vec2<u32>(1u, 78410u), vec4<f32>(-2692f, 751f, -195f, -529f)), Struct_1(1684f, vec2<i32>(-26508i, 1i), vec2<u32>(23825u, 27771u), vec4<f32>(-403f, 703f, 2079f, 929f)), Struct_1(1741f, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<u32>(118090u, 34403u), vec4<f32>(-716f, 1572f, -759f, -512f)), Struct_1(980f, vec2<i32>(i32(-2147483648), 0i), vec2<u32>(0u, 887u), vec4<f32>(801f, 2113f, 646f, -1342f)), Struct_1(426f, vec2<i32>(0i, 0i), vec2<u32>(17862u, 1u), vec4<f32>(1000f, 1000f, 2441f, -126f)), Struct_1(-1431f, vec2<i32>(-5461i, -85989i), vec2<u32>(0u, 34069u), vec4<f32>(497f, -853f, 1323f, -633f)), Struct_1(-589f, vec2<i32>(-34857i, 1i), vec2<u32>(34741u, 0u), vec4<f32>(-1000f, 252f, -541f, -669f)), Struct_1(981f, vec2<i32>(-1i, 0i), vec2<u32>(53805u, 4294967295u), vec4<f32>(861f, 1222f, -548f, -134f)), Struct_1(1464f, vec2<i32>(13327i, 2147483647i), vec2<u32>(0u, 1u), vec4<f32>(-1791f, 2148f, -1276f, 980f)), Struct_1(293f, vec2<i32>(-1i, -1i), vec2<u32>(0u, 30596u), vec4<f32>(222f, -879f, -106f, -922f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    global2 = array<vec3<u32>, 9>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.x)), select(_wgslsmith_mult_vec2_i32(max(vec2<i32>(-17401i, u_input.b), u_input.a), arg_1.b) ^ firstLeadingBit(vec2<i32>(u_input.c, u_input.a.x)), -vec2<i32>(-2147483647i, abs(u_input.c)), select(!any(vec3<bool>(false, false, true)), false, true)), arg_1.c << (arg_1.c % vec2<u32>(32u)), arg_1.d);
    let var_1 = ~reverseBits(abs(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], 42759u), vec4<u32>(global0[_wgslsmith_index_u32(arg_1.c.x, 27u)], 45107u, global0[_wgslsmith_index_u32(0u, 27u)], 10625u)))));
    var var_2 = global1[_wgslsmith_index_u32(var_0.c.x & ~var_0.c.x, 31u)];
    let var_3 = _wgslsmith_sub_vec2_i32(var_2.b | _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b.x, -1i), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.c))), ~select(vec2<i32>(-1i) * -vec2<i32>(arg_1.b.x, 6497i), -(vec2<i32>(-17402i, 10079i) << (var_0.c % vec2<u32>(32u))), false));
    return max(~firstLeadingBit(u_input.c | _wgslsmith_add_i32(1i, u_input.a.x)), _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_1.b.x, var_0.b.x, arg_1.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -68649i, 13830i), vec3<i32>(arg_1.b.x, 7118i, var_2.b.x)), u_input.c, ~var_2.b.x), countOneBits(max(vec4<i32>(1i, var_0.b.x, u_input.b, 2147483647i), vec4<i32>(arg_1.b.x, 1i, 5405i, 2147483647i))))));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(select(~global0[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 40766u), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 27u)], 58864u), vec3<u32>(30117u, 0u, 6023u)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(148311u, 27u)], 27u)]), vec2<u32>(global0[_wgslsmith_index_u32(56407u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])), 27u)], _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42191u, 27u)], 27u)])))), all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))) || (any(vec3<bool>(true, true, true)) | true)), 31u)];
    global3 = array<Struct_1, 11>();
    var var_1 = vec4<i32>(~arg_0.x, func_3(vec4<f32>(_wgslsmith_f_op_f32(-813f + 498f), var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1203f + -570f))), global3[_wgslsmith_index_u32(select(abs(var_0.c.x), max(1u, ~global0[_wgslsmith_index_u32(1u, 27u)]), true), 11u)]), _wgslsmith_sub_i32(u_input.a.x, ~7102i), _wgslsmith_clamp_i32(-8626i, _wgslsmith_mod_i32(2147483647i << (var_0.c.x % 32u), _wgslsmith_sub_i32(-var_0.b.x, var_0.b.x)), -1i));
    let var_2 = ~(~22593u);
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 31u)];
    return ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 9u)]), ~global2[_wgslsmith_index_u32(var_2, 9u)] << (vec3<u32>(var_3.c.x, var_0.c.x, 91953u) % vec3<u32>(32u))), 7020u);
}

fn func_1() -> u32 {
    global3 = array<Struct_1, 11>();
    global0 = array<u32, 27>();
    global1 = array<Struct_1, 31>();
    var var_0 = -u_input.a;
    var var_1 = -1i;
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(func_2(u_input.a), 27u)], global0[_wgslsmith_index_u32(~firstTrailingBit(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 27u)], 27u)])), 27u)]), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-637f + _wgslsmith_f_op_f32(1074f - -934f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 360f) + _wgslsmith_f_op_f32(f32(-1f) * -2465f))))), all(vec4<bool>(true, true, true, true))));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, ~func_1()), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~func_2(u_input.a), 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)]), 27u)], 27u)]), 27u)], 27u)], firstTrailingBit(~(~1u)), _wgslsmith_add_u32((4294967295u >> (global0[_wgslsmith_index_u32(24565u, 27u)] % 32u)) | _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(45760u, 27u)], global0[_wgslsmith_index_u32(24586u, 27u)]), _wgslsmith_mod_u32(51313u, 47016u)))), 11u)];
    let var_3 = var_2.c.x;
    global3 = array<Struct_1, 11>();
    var var_4 = vec2<u32>(~(~(~20095u)), var_2.c.x) | var_2.c;
    var var_5 = Struct_1(_wgslsmith_div_f32(var_2.a, 603f), var_2.b, var_2.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-187f, var_2.d.x, var_2.d.x, _wgslsmith_f_op_f32(select(1395f, -297f, false))))), var_2.d));
    var var_6 = global1[_wgslsmith_index_u32(0u, 31u)];
    global3 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~firstTrailingBit(var_5.c.x)), firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(96245u, var_4.x), 52240u)), 1u), var_6.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.d.x, 403f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(640f, var_6.d.x))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(348f)), _wgslsmith_f_op_f32(472f + 535f), _wgslsmith_f_op_f32(f32(-1f) * -1480f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.a, var_6.a, 454f)) * vec3<f32>(_wgslsmith_f_op_f32(-1562f - var_6.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_6.a))), var_2.c.x);
}

