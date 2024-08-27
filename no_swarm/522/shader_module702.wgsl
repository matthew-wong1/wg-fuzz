struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, false, false, false, true, true, false, true, true, true, true, false, false, true, false, true, true, false, false, true, false, true, false, true, false);

var<private> global1: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-821f, arg_0) - vec2<f32>(arg_0, 1414f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-625f, 373f) - vec2<f32>(888f, arg_0)), u_input.a > u_input.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -787f)))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -272f), arg_0)))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -2147483647i, reverseBits(-23803i), global1.b), abs(vec4<i32>(0i, global1.a.x, 0i, global1.c)), vec4<i32>(abs(2147483647i), -global1.b, _wgslsmith_add_i32(14874i, global1.b), global1.c)) >> (reverseBits(~vec4<u32>(u_input.b, 74276u, 1u, 4294967295u)) % vec4<u32>(32u)), abs(_wgslsmith_mult_i32(-30288i, -_wgslsmith_div_i32(global1.a.x, global1.c))), -(31719i ^ (_wgslsmith_clamp_i32(global1.b, global1.a.x, global1.a.x) >> (abs(u_input.b) % 32u))));
    return abs(var_1.a.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<bool, 26>();
    var var_0 = Struct_2(Struct_1(vec4<i32>(global1.c, -2147483647i, -(~global1.c), i32(-1i) * -global1.a.x), global1.a.x, func_3(_wgslsmith_f_op_f32(-arg_0.x), global0[_wgslsmith_index_u32(4294967295u, 26u)] | global0[_wgslsmith_index_u32(9634u, 26u)], global1.a.x != 18083i, global0[_wgslsmith_index_u32(arg_1 << (u_input.b % 32u), 26u)]) ^ max(0i | global1.b, global1.c)), Struct_1(vec4<i32>(_wgslsmith_sub_i32(~45081i, global1.b ^ -23358i), global1.a.x, global1.c, global1.a.x), global1.a.x, ~global1.c));
    var var_1 = _wgslsmith_mult_i32(~var_0.a.a.x, _wgslsmith_add_i32(-func_3(-559f, select(true, false, false), arg_0.x <= arg_0.x, !global0[_wgslsmith_index_u32(u_input.a, 26u)]), abs(min(-49402i, select(global1.b, global1.b, global0[_wgslsmith_index_u32(arg_2.x, 26u)])))));
    var var_2 = !vec2<bool>(all(vec3<bool>(true, !global0[_wgslsmith_index_u32(0u, 26u)], !global0[_wgslsmith_index_u32(82356u, 26u)])), any(select(vec2<bool>(global0[_wgslsmith_index_u32(4849u, 26u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 26u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 26u)], false), vec2<bool>(true, false)), !vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 26u)], global0[_wgslsmith_index_u32(arg_2.x, 26u)]))));
    global0 = array<bool, 26>();
    return var_0.b;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    global1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(990f, -369f, 1262f), vec3<f32>(1684f, -673f, 1818f), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(35228u, 26u)], false))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(516f, -390f, -560f), vec3<f32>(-1368f, 970f, 902f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(938f, -333f, 323f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1074f, -2565f, 553f) - vec3<f32>(-1069f, -275f, -1437f))))), u_input.b, vec3<u32>(_wgslsmith_mod_u32(~(~1u), arg_0), firstTrailingBit(1u), ~1u));
    var var_0 = Struct_1(~(-vec4<i32>(global1.c, -52168i, global1.b, 2147483647i) | -_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.c, 11618i, 2147483647i, global1.b), vec4<i32>(26813i, 1i, 2147483647i, 2147483647i))), firstLeadingBit(89783i), ~_wgslsmith_clamp_i32(max(1i, _wgslsmith_mult_i32(arg_2.b.a.x, 0i)), -19962i, -arg_2.b.a.x));
    let var_1 = vec4<u32>(arg_0, firstTrailingBit(~(~_wgslsmith_clamp_u32(37752u, u_input.b, arg_0))), 4294967295u, _wgslsmith_div_u32(~arg_0, arg_0));
    let var_2 = ~var_1;
    var_0 = arg_2.a;
    return vec4<u32>(~select(var_2.x, _wgslsmith_mult_u32(firstTrailingBit(5589u), ~1u), true), 4294967295u ^ ~max(~4294967295u, u_input.b), _wgslsmith_mult_u32(abs(31654u), var_2.x), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-(~global1.a), global1.c, -global1.a.x), Struct_1(vec4<i32>((global1.b & global1.b) >> (u_input.b % 32u), _wgslsmith_clamp_i32(1i, global1.b, global1.c), countOneBits(~global1.c), max(global1.a.x, _wgslsmith_mod_i32(global1.c, -1i))), _wgslsmith_add_i32(_wgslsmith_div_i32(global1.b, ~global1.a.x), 2147483647i), 1i));
    global1 = var_0.b;
    var var_1 = _wgslsmith_sub_u32(56801u, _wgslsmith_mod_u32(u_input.a, 0u));
    global0 = array<bool, 26>();
    var var_2 = (select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.b), vec4<u32>(39480u, 0u, 2065u, u_input.b)), func_1(u_input.a, Struct_1(var_0.b.a, global1.b, global1.b), Struct_2(Struct_1(vec4<i32>(var_0.b.b, -1i, var_0.b.b, 2147483647i), var_0.b.b, -2147483647i), Struct_1(vec4<i32>(-2147483647i, var_0.b.a.x, var_0.b.b, 0i), var_0.a.a.x, global1.a.x))), vec4<u32>(12080u, u_input.b, 24757u, 1u)), vec4<u32>(1u, ~u_input.b, u_input.a, ~u_input.b), true) >> (firstTrailingBit(~firstLeadingBit(vec4<u32>(u_input.b, 0u, u_input.a, u_input.a))) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(0u, 83708u, u_input.a, u_input.a)) % vec4<u32>(32u));
    var_1 = _wgslsmith_sub_u32(125425u, _wgslsmith_clamp_u32(reverseBits(~u_input.b), ~(~22040u), u_input.a ^ min(var_2.x, ~7288u)));
    let var_3 = Struct_1(-global1.a, _wgslsmith_div_i32(global1.b | 3598i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-31527i, global1.c, var_0.b.a.x, 23447i), vec4<i32>(2139i, 3585i, 24659i, var_0.a.c))) | 1i, -32826i);
    var_1 = abs(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_2.yy, vec2<u32>(u_input.b, u_input.a & 4294967295u)), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec2<i32>(global1.b, 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1410f, -1117f, 239f), vec3<f32>(1028f, -311f, -1087f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(949f, 404f, 177f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1494f, -523f, 1749f), vec3<f32>(393f, 339f, -918f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(443f, 1980f, -406f) * vec3<f32>(423f, 116f, -1274f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, 332f, -1628f)))), ~abs(firstLeadingBit(~vec4<u32>(34861u, u_input.a, 1u, 4294967295u))));
}

