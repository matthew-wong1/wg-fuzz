struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<bool>) -> u32 {
    global0 = array<bool, 16>();
    let var_0 = Struct_1(!all(arg_2.wxy), select(vec4<bool>(any(select(vec4<bool>(true, false, false, true), arg_2, arg_1.e)), !all(vec4<bool>(true, false, arg_1.a.a, false)), true, true), arg_1.e, arg_2.x), arg_1.a.c & _wgslsmith_mult_u32(4294967295u, 1u));
    let var_1 = var_0;
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    return 0u;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: u32) -> i32 {
    var var_0 = Struct_3(vec4<u32>(arg_2, arg_0.x, 48917u, ~(~func_3(Struct_3(arg_0, 1i, arg_1.d.yx), Struct_4(arg_1.a, arg_1.b, arg_1.e.x, vec3<i32>(8762i, arg_1.d.x, -2147483647i), arg_1.e), arg_1.a.b))), _wgslsmith_mult_i32(abs(~arg_1.d.x), 13948i) | arg_1.d.x, vec2<i32>(1i, ~(-1i)));
    var var_1 = Struct_5(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.b))) + arg_1.b) + vec4<f32>(-736f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x))), arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.x))))), 2040f);
    global0 = array<bool, 16>();
    var var_2 = arg_1.e;
    var_1 = Struct_5(var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.x + -1012f), _wgslsmith_f_op_f32(sign(arg_1.b.x)), 381f, _wgslsmith_f_op_f32(abs(var_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, 1000f, -1000f, var_1.b.x), vec4<f32>(var_1.c, 896f, arg_1.b.x, arg_1.b.x))), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.x, _wgslsmith_f_op_f32(sign(var_1.c)))) + -1487f));
    return -abs(countOneBits(min(u_input.a.x, arg_1.d.x) << (var_0.a.x % 32u)));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = -(~firstTrailingBit(abs(u_input.c.x << (0u % 32u))));
    var var_1 = select(!(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(21324u, 16u)], false), true))), select(vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], false)), true, func_2(vec4<u32>(4294967295u, 4294967295u, 101230u, 71485u), Struct_4(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 16u)], vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], true, global0[_wgslsmith_index_u32(8551u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), 2728u), vec4<f32>(-1000f, 263f, arg_0, 241f), global0[_wgslsmith_index_u32(93077u, 16u)], u_input.a.zxy, vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(23085u, 16u)], true)), 0u) > u_input.b), select(!vec3<bool>(global0[_wgslsmith_index_u32(29384u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(51478u, 16u)]), vec3<bool>(!global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(24761u, 0u), 16u)], global0[_wgslsmith_index_u32(0u, 16u)] != global0[_wgslsmith_index_u32(14211u, 16u)]), any(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(32774u, 16u)], false))), select(vec3<bool>(any(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 16u)], false, true)), global0[_wgslsmith_index_u32(~39u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)])), select(select(vec3<bool>(false, true, false), vec3<bool>(global0[_wgslsmith_index_u32(6860u, 16u)], global0[_wgslsmith_index_u32(31286u, 16u)], true), global0[_wgslsmith_index_u32(28u, 16u)]), select(vec3<bool>(true, false, true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 16u)]), false), select(vec3<bool>(global0[_wgslsmith_index_u32(45757u, 16u)], true, global0[_wgslsmith_index_u32(36205u, 16u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], false, global0[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]))))), select(false, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 0u, countOneBits(3479u)), 16u)], (global0[_wgslsmith_index_u32(1u, 16u)] != global0[_wgslsmith_index_u32(~1u, 16u)]) & true));
    let var_2 = 1u;
    var_0 = -2147483647i;
    let var_3 = Struct_4(Struct_1(false, vec4<bool>(!all(vec3<bool>(var_1.x, false, true)), all(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(32005u, 16u)])), var_1.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_2, var_2), var_2, 49695u, var_2), ~countOneBits(vec4<u32>(73724u, 41217u, 1u, var_2)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), arg_0, -356f, -1549f)), 0u >= ~abs(var_2), vec3<i32>(u_input.a.x, countOneBits(u_input.b), -31329i), !(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false, true, var_1.x), vec4<bool>(var_1.x, false, false, true), var_1.x), !vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 16u)], true, global0[_wgslsmith_index_u32(35937u, 16u)], var_1.x))));
    return var_3.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global0[_wgslsmith_index_u32(~1u << (~_wgslsmith_clamp_u32(41127u, 1u, ~1u) % 32u), 16u)], true, true, any(!vec4<bool>(global0[_wgslsmith_index_u32(func_1(-1417f), 16u)], !global0[_wgslsmith_index_u32(0u, 16u)], all(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 16u)], false)), true)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1581f * -570f))), 1255f)), _wgslsmith_f_op_f32(floor(-859f)), select(true, all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true)) & global0[_wgslsmith_index_u32(func_3(Struct_3(vec4<u32>(34918u, 4294967295u, 16281u, 4294967295u), -1i, u_input.c.yy), Struct_4(Struct_1(false, vec4<bool>(false, var_0.x, false, var_0.x), 0u), vec4<f32>(-851f, -126f, 2228f, -1252f), false, vec3<i32>(0i, 1i, 33973i), vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, true, true)), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], false, true, true)), 16u)], all(!var_0.yw)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1609f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1752f * 1254f) - _wgslsmith_f_op_f32(ceil(-1479f))))))));
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    var var_2 = _wgslsmith_mod_u32(92852u, ~2981u);
    var_2 = 1u;
    let var_3 = 54917u;
    let var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(313f + 1440f), _wgslsmith_f_op_f32(f32(-1f) * -2140f))), vec2<f32>(_wgslsmith_f_op_f32(floor(515f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1714f, 1f), _wgslsmith_f_op_f32(1185f * -109f), !global0[_wgslsmith_index_u32(var_3, 16u)])))));
    var_2 = countOneBits(1u);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec2_u32(abs(select(vec2<u32>(var_3, 4294967295u), vec2<u32>(92283u, 4294967295u), var_0.zw)), vec2<u32>(var_3, abs(var_3))), firstLeadingBit(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(0u, 1u)), vec2<u32>(4294967295u, var_3)))), var_3);
}

