struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(8224u), Struct_2(48626u), Struct_2(35069u), Struct_2(1u), Struct_2(40328u), Struct_2(52622u), Struct_2(0u), Struct_2(37113u), Struct_2(1u), Struct_2(1u), Struct_2(65716u), Struct_2(98506u), Struct_2(9243u), Struct_2(4294967295u), Struct_2(32529u), Struct_2(18502u), Struct_2(1780u), Struct_2(4294967295u), Struct_2(1u), Struct_2(31524u), Struct_2(4294967295u), Struct_2(13918u), Struct_2(1u), Struct_2(1u), Struct_2(1u), Struct_2(40411u), Struct_2(0u), Struct_2(1u), Struct_2(4294967295u));

var<private> global3: array<Struct_2, 15>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = vec2<u32>(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.c, u_input.b.wxy)), firstLeadingBit(54536u), ~1u), u_input.c.x);
    let var_1 = arg_3.a;
    let var_2 = firstLeadingBit(min(~(var_0.x ^ 86165u), _wgslsmith_mult_u32(1u, 34814u & var_0.x)));
    var var_3 = !vec3<bool>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2, 31u)]) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 31u)] + global0[_wgslsmith_index_u32(global1.a, 31u)])) > _wgslsmith_f_op_f32(floor(-1810f)), arg_3.a);
    var_3 = !arg_2;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(565f)), 301f, 1159f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(29381u, 31u)], 292f, -541f) - vec3<f32>(global0[_wgslsmith_index_u32(19326u, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]))))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-502f, 1648f, 1489f) - vec3<f32>(1826f, 1000f, 904f)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(~u_input.d, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.d, 31u)]))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(select(943f, var_0.x, true))))), global0[_wgslsmith_index_u32(global1.a, 31u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(min(var_0.x, global0[_wgslsmith_index_u32(global1.a, 31u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1376f, 509f)), global0[_wgslsmith_index_u32(global1.a, 31u)])) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(1i, 1i), Struct_1(false, vec4<i32>(1i, 17714i, 0i, 19407i), vec2<bool>(true, false)), vec3<bool>(true, true, true), Struct_1(true, vec4<i32>(35335i, 1i, 39335i, 0i), vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(-34579i, -23448i), Struct_1(true, vec4<i32>(46660i, 63210i, 69104i, 1i), vec2<bool>(true, true)), vec3<bool>(false, true, false), Struct_1(false, vec4<i32>(60426i, 0i, -1i, -2147483647i), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(373f, global0[_wgslsmith_index_u32(1u, 31u)], 777f) + vec3<f32>(var_0.x, -2510f, 1478f))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)))));
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_mod_u32(var_1.x, ~39752u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2189f * var_0.x)));
    return Struct_1(all(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-63829i, -15954i, -36055i), vec3<i32>(1i, -69056i, -1i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, 41038i), firstLeadingBit(0i)), 45851i), vec4<i32>(1i, 1i, 1i, 1i)), select(select(vec2<bool>(false, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), any(vec3<bool>(true, false, false))), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(61983u, 31u)]));
    let var_1 = vec4<bool>(arg_0.a, false, func_2().a | arg_0.c.x, all(func_2().c));
    global0 = array<f32, 31>();
    let var_2 = _wgslsmith_clamp_u32(43392u, u_input.a, abs(~_wgslsmith_mod_u32(0u, global1.a))) >> (~((1u & (u_input.b.x >> (global1.a % 32u))) ^ ~29108u) % 32u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(557f, 1328f, 1169f, 1095f) + vec4<f32>(1344f, 1230f, var_0, var_0)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 806f, -123f, global0[_wgslsmith_index_u32(4294967295u, 31u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], 648f, -431f, 252f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-963f, 1532f, global0[_wgslsmith_index_u32(35800u, 31u)], global0[_wgslsmith_index_u32(var_2, 31u)]) + vec4<f32>(var_0, 1788f, -126f, var_0)))))));
    return global2[_wgslsmith_index_u32(84140u, 29u)];
}

fn func_1() -> Struct_2 {
    global1 = func_4(func_2(), -4975i);
    global3 = array<Struct_2, 15>();
    var var_0 = func_2();
    var var_1 = Struct_2(~func_4(func_2(), -1i).a);
    let var_2 = ~(~select(vec2<u32>(var_1.a, abs(20949u)), ~(~vec2<u32>(12002u, var_1.a)), !(!var_0.c)));
    return func_4(Struct_1(var_0.c.x, ~var_0.b, var_0.c), var_0.b.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    var var_0 = vec2<u32>(~arg_1.a, select(17601u, reverseBits(~global1.a), !(~0u != u_input.a)));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(2066i, ~func_2().b.x << (arg_1.a % 32u)), -19213i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(-1247f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(61860u, 31u)])))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 31u)]) * -364f)), 1012f);
    let var_3 = ~vec2<u32>(global1.a, 0u);
    var var_4 = ~0i;
    return _wgslsmith_div_u32(38707u, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 15>();
    var var_0 = global0[_wgslsmith_index_u32(func_5(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -636f))), global0[_wgslsmith_index_u32(1u, 31u)]), func_1()), 31u)] == 2109f;
    var var_1 = -2147483647i;
    var var_2 = global2[_wgslsmith_index_u32(u_input.d | 5933u, 29u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(763f, global0[_wgslsmith_index_u32(43919u, 31u)], global0[_wgslsmith_index_u32(global1.a, 31u)], 208f))), vec4<f32>(-674f, _wgslsmith_f_op_f32(-528f * global0[_wgslsmith_index_u32(1u, 31u)]), -1622f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(38866u, 31u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(329f, global0[_wgslsmith_index_u32(u_input.d, 31u)], global0[_wgslsmith_index_u32(var_2.a, 31u)], -1067f))), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1246f, global0[_wgslsmith_index_u32(global1.a, 31u)], 670f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.a, 31u)] + global0[_wgslsmith_index_u32(6403u, 31u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(abs(924f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x))))), 4294967295u);
}

