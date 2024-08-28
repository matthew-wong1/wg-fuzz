struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(27482i), Struct_1(0i), Struct_1(9932i), Struct_1(3578i), Struct_1(-61921i), Struct_1(1670i));

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<bool, 13>;

var<private> global3: vec4<i32> = vec4<i32>(42900i, -1i, -28168i, 27111i);

var<private> global4: vec2<f32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> bool {
    global1 = array<Struct_1, 15>();
    let var_0 = Struct_5(~(~(~54084u)));
    let var_1 = global1[_wgslsmith_index_u32(1u, 15u)];
    let var_2 = all(vec4<bool>(true || arg_2, (_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, var_1.a, 2147483647i), global3.wzw) >= -1078i) && true, !(!select(arg_2, true, false)), any(!(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(60642u, 13u)])))));
    let var_3 = any(select(vec4<bool>(var_2, true, arg_2, all(vec4<bool>(true, false, true, true))), !vec4<bool>(var_2, false, false, arg_2), select(select(vec4<bool>(var_2, global2[_wgslsmith_index_u32(1u, 13u)], false, false), vec4<bool>(var_2, true, true, true), vec4<bool>(var_2, var_2, var_2, true)), select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a, 13u)], false, var_2, true), vec4<bool>(true, false, arg_2, arg_2), false), false))) != true;
    return true;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = Struct_4(arg_0.a, any(select(vec2<bool>(arg_0.b, false), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 13u)])), !func_3(-886f, vec4<f32>(-1534f, 769f, global4.x, global4.x), arg_0.b))));
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_2))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1052f, -262f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, global4.x))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(ceil(global4.x)))) + _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(838f - 482f))))), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1357f));
    global0 = array<Struct_1, 8>();
    let var_2 = Struct_5(~(arg_0.a.d.a & ~(~arg_0.a.a)));
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = min(_wgslsmith_mult_u32(min(4294967295u, arg_0), 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~arg_0, 1u << (0u % 32u)), arg_0), ~vec2<u32>(arg_0, 72578u)));
    var var_1 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(~65601u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, arg_0, 37285u, 16078u), reverseBits(vec4<u32>(18637u, 1u, arg_0, 0u))), reverseBits(arg_0)), arg_0), true, firstTrailingBit(~u_input.a.x));
    global1 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0, _wgslsmith_mult_u32(arg_0, _wgslsmith_sub_u32(~30302u, func_2(Struct_4(Struct_3(var_0, 1i, global0[_wgslsmith_index_u32(arg_0, 8u)], Struct_2(5385u, false, var_1.c)), global2[_wgslsmith_index_u32(var_0, 13u)]), global3.wxx, -1229f, global4.x))), _wgslsmith_clamp_u32(select(var_0, ~var_1.a, true), 0u, var_0)), firstTrailingBit(select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 10483u, 8400u), vec4<u32>(14473u, var_1.a, 79286u, 505u) | vec4<u32>(30195u, arg_0, 4294967295u, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(29084u, 1u, 43270u, arg_0), vec4<u32>(1u, var_0, arg_0, 44129u)), !vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.a, 13u)], false, global2[_wgslsmith_index_u32(44197u, 13u)]))));
    global2 = array<bool, 13>();
    return Struct_2(~var_2.x >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(~var_0, var_1.a), ~_wgslsmith_mod_u32(499u, var_2.x)) % 32u), var_1.b && false, ~(-global3.x));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = Struct_4(Struct_3(65784u, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global3.xxw, vec3<i32>(u_input.a.x, u_input.a.x, global3.x)) & vec3<i32>(global3.x, 0i, u_input.a.x), -_wgslsmith_add_vec3_i32(u_input.a.xwx, vec3<i32>(9589i, global3.x, 1i))), Struct_1(1i), func_4(~func_2(Struct_4(Struct_3(0u, u_input.a.x, Struct_1(-22596i), Struct_2(39186u, global2[_wgslsmith_index_u32(1u, 13u)], 18791i)), arg_0), global3.wzx, -227f, global4.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(166f, -1476f), vec2<f32>(824f, global4.x), false))))), func_3(_wgslsmith_f_op_f32(-global4.x), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4.x + -144f), global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-301f))), _wgslsmith_f_op_f32(-1528f * _wgslsmith_f_op_f32(-1587f * global4.x)), _wgslsmith_f_op_f32(f32(-1f) * -606f)), all(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(0u, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], false), vec2<bool>(global2[_wgslsmith_index_u32(1u, 13u)], true))) | true));
    let var_1 = select(!vec3<bool>(false, true && var_0.b, func_3(_wgslsmith_f_op_f32(global4.x + 401f), vec4<f32>(1498f, global4.x, -1644f, -166f), any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 13u)], false, global2[_wgslsmith_index_u32(54931u, 13u)], true)))), !select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.d.a, 13u)], var_0.a.d.b, global2[_wgslsmith_index_u32(var_0.a.a, 13u)]), vec3<bool>(false, var_0.a.d.b, true), var_0.a.d.b), vec3<bool>(global2[_wgslsmith_index_u32(1u, 13u)], var_0.a.d.b, global2[_wgslsmith_index_u32(var_0.a.a, 13u)]), !vec3<bool>(false, var_0.a.d.b, true)), vec3<bool>(all(vec2<bool>(true, false)), true, var_0.a.d.b), var_0.a.d.b), vec3<bool>(true, var_0.a.d.b, !((11022u | var_0.a.d.a) != var_0.a.d.a)));
    let var_2 = -vec4<i32>(~(-1i), firstTrailingBit(_wgslsmith_clamp_i32(select(7435i, 1i, false), min(var_0.a.b, 7888i), 6551i)), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-2147483647i, 0i, -53396i)), vec3<i32>(0i, ~(-2147483647i), u_input.a.x << (40987u % 32u))), ~(~var_0.a.b) >> (var_0.a.a % 32u));
    let var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(abs(0u), var_0.a.d.a), ~var_0.a.d.a, _wgslsmith_sub_u32(var_0.a.a, 4294967295u)), vec3<u32>(~firstLeadingBit(68863u), _wgslsmith_mult_u32(~var_0.a.a, _wgslsmith_clamp_u32(var_0.a.d.a, 10574u, 87462u)), _wgslsmith_div_u32(var_0.a.d.a & 4294967295u, 4294967295u))), reverseBits(min(vec3<u32>(15973u, 0u, 9919u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 45255u), vec3<u32>(1u, 4294967295u, var_0.a.a))) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.d.a, var_0.a.d.a, var_0.a.d.a), vec3<u32>(var_0.a.d.a, 4457u, var_0.a.d.a), vec3<u32>(var_0.a.d.a, 101035u, 0u)) % vec3<u32>(32u))));
    let var_4 = _wgslsmith_f_op_f32(abs(-2187f));
    return -_wgslsmith_sub_i32(1i, -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b, u_input.a.x), vec2<i32>(var_0.a.c.a, -2147483647i)), ~var_0.a.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.x)) * global4.x);
    var var_1 = vec3<i32>(-func_1(!global2[_wgslsmith_index_u32(34050u, 13u)] || true), 33037i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, global3.x, global3.x, 29886i) | u_input.a)));
    var var_2 = vec4<i32>(~(-global3.x), ~(-1i), u_input.a.x, var_1.x);
    var_1 = max(-vec3<i32>(_wgslsmith_sub_i32(2147483647i, reverseBits(var_2.x)), 1i, ~select(-1i, 53699i, false)), var_2.zxy);
    global0 = array<Struct_1, 8>();
    let var_3 = firstLeadingBit(~_wgslsmith_mult_u32(1u, ~3419u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(~global3.zwz, ~vec3<i32>(-43269i, -2147483647i, 2147483647i)) & -var_1.x), ~vec4<u32>(_wgslsmith_clamp_u32(var_3, _wgslsmith_add_u32(7268u, var_3), _wgslsmith_clamp_u32(84647u, 3346u, var_3)), _wgslsmith_add_u32(14647u, var_3) ^ 19756u, 1u, min(32913u, max(0u, var_3))), u_input.a, (vec3<u32>(reverseBits(var_3), _wgslsmith_mod_u32(var_3, 0u), var_3) | reverseBits(~vec3<u32>(1u, var_3, 38728u))) ^ select(vec3<u32>(1u, ~4294967295u, 0u), ~min(vec3<u32>(32209u, var_3, 4294967295u), vec3<u32>(1u, 1u, 38997u)), !vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(8536u, 13u)])));
}

