struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-1000f, 298f, 384f, -420f, -615f, 1000f, 299f, 2222f, -1081f, -898f, 1943f, -953f, 165f, -368f, -1000f, -803f, -1585f, 527f, -1000f, -1315f, 421f, 539f, 805f, 1494f, 461f, 2092f, -431f);

var<private> global1: array<u32, 30>;

var<private> global2: array<Struct_1, 30>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-642f, 1506f, -524f, 1295f), -57554i, 227f, vec2<bool>(false, true));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = global3.a.xw;
    let var_1 = _wgslsmith_f_op_f32(623f + _wgslsmith_f_op_f32(840f - _wgslsmith_f_op_f32(ceil(var_0.x))));
    global2 = array<Struct_1, 30>();
    var var_2 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, 0u), 30u)], 30u)], 30u)], 30u)];
    global3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, global3.c)), global0[_wgslsmith_index_u32(~0u << (_wgslsmith_sub_u32(u_input.a.x, 26906u >> (u_input.a.x % 32u)) % 32u), 27u)], var_2.a.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 27u)]), firstLeadingBit(var_2.b), _wgslsmith_f_op_f32(min(236f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(0u), 27u)]))), !arg_1);
    return abs(u_input.a.xz) & reverseBits(~u_input.a.yx);
}

fn func_2() -> bool {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(var_0, 1u), _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(var_0, 51139u))), ~(select(vec2<u32>(u_input.a.x, var_0), vec2<u32>(15119u, u_input.a.x), vec2<bool>(global3.d.x, false)) >> (min(vec2<u32>(1u, var_0), u_input.a.xx) % vec2<u32>(32u))), ~u_input.a.xx) | _wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), u_input.a.zx), vec2<u32>(u_input.a.x, 54035u)), func_3(-716f, select(global3.d, !global3.d, false)));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    global1 = array<u32, 30>();
    return true;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool) -> vec4<f32> {
    var var_0 = 693f;
    var var_1 = firstTrailingBit(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a.x, 77853u, 1u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(52345u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], global1[_wgslsmith_index_u32(0u, 30u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], global1[_wgslsmith_index_u32(0u, 30u)], 10187u, u_input.a.x)))) & vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19890u, 30u)], 30u)], global1[_wgslsmith_index_u32(74093u, 30u)]), u_input.a.yz), _wgslsmith_mult_u32(33198u ^ _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(10434u, 122638u)), 1u), max(u_input.a.x, select(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.a.x, 30u)], 30u)], 30u)], true)), 4294967295u);
    let var_2 = countOneBits(u_input.b.www) ^ vec3<i32>(-32321i, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-1i, 35906i, global3.b, 2147483647i)), u_input.b >> (~vec4<u32>(global1[_wgslsmith_index_u32(64710u, 30u)], u_input.a.x, var_1.x, 25779u) % vec4<u32>(32u))), global3.b);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(747f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1, 1437f)), _wgslsmith_f_op_f32(-global3.c)))), select(vec2<bool>(true, all(global3.d) && !arg_0), select(select(global3.d, global3.d, select(vec2<bool>(arg_0, false), global3.d, true)), !(!vec2<bool>(arg_2, arg_2)), !(!arg_2)), vec2<bool>(false, true)));
    global2 = array<Struct_1, 30>();
    return vec4<f32>(global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 933f) * -178f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-563f * 669f), _wgslsmith_f_op_f32(-arg_1), true)))) - global0[_wgslsmith_index_u32(var_1.x, 27u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -428f) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-817f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 27u)])));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(global3.d.x, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7981u, 30u)], 30u)], 27u)])), func_2())) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), _wgslsmith_f_op_f32(ceil(211f)), _wgslsmith_f_op_f32(-783f + global3.c)))), _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(u_input.b.zzy, u_input.b.zyz), u_input.b.x) ^ global3.b, global3.c, arg_0);
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    return _wgslsmith_mod_u32(~(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17027u, 30u)], 30u)], abs(u_input.a.x), _wgslsmith_sub_u32(4232u, global1[_wgslsmith_index_u32(u_input.a.x, 30u)]))), 3312u);
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: f32) -> StorageBuffer {
    global0 = array<f32, 27>();
    let var_0 = global2[_wgslsmith_index_u32(arg_2, 30u)];
    global1 = array<u32, 30>();
    var var_1 = u_input.b.x;
    let var_2 = firstTrailingBit(select(-u_input.b, abs(reverseBits(-vec4<i32>(u_input.b.x, arg_0, 2147483647i, u_input.b.x))), select(global3.d.x, global3.d.x, false)));
    return StorageBuffer(u_input.a.xy, arg_1, -countOneBits(reverseBits(firstTrailingBit(var_2))), -178f, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(-544f, _wgslsmith_f_op_f32(trunc(2153f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3 - 481f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a) - global3.a) * vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(77606u, 27u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 27u)]), -648f, _wgslsmith_f_op_f32(-754f - 901f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(301f, global3.c, global3.d.x)), 527f, _wgslsmith_f_op_f32(284f * global0[_wgslsmith_index_u32(18691u, 27u)]), global3.a.x))));
    let var_1 = u_input.b.xw;
    let x = u_input.a;
    s_output = func_5(2147483647i, ~global1[_wgslsmith_index_u32(u_input.a.x, 30u)], func_1(global3.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global3.a.x, 1088f)), _wgslsmith_f_op_f32(-global3.a.x))));
}

