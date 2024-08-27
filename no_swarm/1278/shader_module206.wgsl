struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: Struct_5 = Struct_5(Struct_1(-423f, vec4<f32>(-1878f, -1365f, -268f, 628f), vec4<f32>(595f, -779f, 1267f, 704f), 37965u), vec2<bool>(true, true), -16866i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32) -> vec4<f32> {
    return global1.a.b;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> vec3<bool> {
    global1 = Struct_5(Struct_1(-1000f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_1.a.a, 286f, arg_1.a.a))))), vec4<f32>(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-arg_0.x)), -674f, _wgslsmith_f_op_f32(-1000f * 1f), 502f), 51918u), !(!vec2<bool>(global1.b.x || false, any(global1.b))), u_input.b.x ^ 0i);
    var var_0 = vec2<u32>(~(~1u), 1u);
    let var_1 = global1.c;
    var var_2 = max(abs(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 18245u)), min(max(vec2<u32>(arg_2, 19298u), vec2<u32>(1u, arg_1.a.d)), vec2<u32>(arg_1.a.d, 31807u) | vec2<u32>(global1.a.d, global1.a.d)))), 8209u);
    let var_3 = Struct_5(arg_1.a, select(select(select(select(vec2<bool>(false, global1.b.x), global1.b, global1.b), select(global1.b, global1.b, global1.b.x), !vec2<bool>(global1.b.x, global1.b.x)), select(select(vec2<bool>(global1.b.x, true), vec2<bool>(true, global1.b.x), global1.b), select(vec2<bool>(true, global1.b.x), vec2<bool>(false, global1.b.x), vec2<bool>(false, global1.b.x)), true), select(!vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(true, global1.b.x), global1.b)), select(select(!global1.b, global1.b, arg_1.a.d < global1.a.d), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false), var_0.x >= arg_1.a.d), arg_0.x < -195f), global1.b.x), 16950i);
    return !(!select(vec3<bool>(global1.a.d != arg_2, var_3.a.d <= var_0.x, any(vec3<bool>(false, false, true))), !select(vec3<bool>(global1.b.x, global1.b.x, global1.b.x), vec3<bool>(false, true, true), vec3<bool>(false, var_3.b.x, var_3.b.x)), true));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec3<bool>) -> vec4<f32> {
    let var_0 = vec4<u32>(3611u, ~0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_1.a.d), ~vec2<u32>(42962u, 63958u))), firstLeadingBit(vec2<u32>(abs(37405u), global1.a.d))), 38306u);
    let var_1 = global0[_wgslsmith_index_u32(1u, 1u)];
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 1u)];
    let var_3 = var_1.d.yx;
    let var_4 = abs(vec2<u32>(~54090u, 0u));
    return arg_1.a.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> vec3<u32> {
    var var_0 = vec3<bool>(global1.b.x, global1.b.x, !(-(i32(-1i) * -2147483647i) <= select(~27492i, -4549i, all(vec4<bool>(global1.b.x, true, true, global1.b.x)))));
    global0 = array<Struct_3, 1>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.a, -476f, 1013f, 802f), arg_0), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-951f, -1099f, global1.a.b.x, -431f)), true))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -942f))), _wgslsmith_f_op_vec4_f32(func_4(~arg_1.d, Struct_5(Struct_1(arg_0.x, arg_0, arg_0, 1u), global1.b, global1.c), func_3(global1.a.c.ywz, Struct_2(arg_1), global1.a.d, vec4<f32>(-1606f, -225f, 861f, 149f)))))), global1.a.b, min(global1.a.d << ((global1.a.d << (~23986u % 32u)) % 32u), ~_wgslsmith_mod_u32(~global1.a.d, _wgslsmith_div_u32(arg_1.d, global1.a.d))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1464f)), 249f)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(227f + arg_1.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f) - _wgslsmith_f_op_f32(f32(-1f) * -137f)))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d, global1.a.d, 1u), ~vec3<u32>(4294967295u, arg_1.d, 4294967295u)) << (_wgslsmith_add_u32(var_1.d, arg_1.d ^ global1.a.d) % 32u), Struct_5(Struct_1(global1.a.b.x, arg_0, _wgslsmith_f_op_vec4_f32(ceil(global1.a.c)), countOneBits(0u)), vec2<bool>(var_0.x && true, global1.b.x), min(u_input.b.x, u_input.a)), !(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(global1.b.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false))))), var_1.b, global1.a.d);
    return reverseBits(vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.d, 4294967295u), _wgslsmith_div_u32(57693u, arg_1.d)), _wgslsmith_div_u32(abs(abs(39889u)), ~(arg_1.d << (4294967295u % 32u))), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(global1.a.d | global1.a.d);
    let var_1 = u_input.b.wxx >> (_wgslsmith_clamp_vec3_u32(func_1(_wgslsmith_f_op_vec4_f32(ceil(global1.a.b)), global1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1.a.a, global1.a.a))))), vec3<u32>(_wgslsmith_mod_u32(max(global1.a.d, 1u), 1u), global1.a.d, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 26244u, 4294967295u), vec3<u32>(1u, 0u, var_0)))), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_0, 4294967295u, var_0)), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 20723u, 73635u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, var_0, 4294967295u), vec3<u32>(1u, var_0, global1.a.d), vec3<u32>(4294967295u, global1.a.d, var_0))))) % vec3<u32>(32u));
    global1 = Struct_5(Struct_1(_wgslsmith_div_f32(global1.a.c.x, -661f), global1.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.c)), 4294967295u), select(func_3(vec3<f32>(-970f, -1215f, _wgslsmith_f_op_f32(trunc(global1.a.a))), Struct_2(Struct_1(global1.a.a, global1.a.b, global1.a.c, 4294967295u)), ~4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.b.x, global1.a.b.x, global1.a.b.x, 319f), vec4<f32>(555f, global1.a.b.x, -1000f, global1.a.c.x)))).xy, !(!select(global1.b, global1.b, global1.b.x)), global1.b), -1i);
    let var_2 = true;
    global1 = Struct_5(global1.a, global1.b, -1i);
    let var_3 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(~(~vec2<i32>(-2147483647i, -1i)), var_1.zy)), var_1.xz >> (~(reverseBits(vec2<u32>(global1.a.d, global1.a.d)) | ~vec2<u32>(global1.a.d, 0u)) % vec2<u32>(32u)), u_input.b.yz);
    global1 = Struct_5(Struct_1(global1.a.b.x, global1.a.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(845f, 271f, global1.a.c.x, global1.a.b.x))), global1.a.b), 1u ^ global1.a.d), global1.b, _wgslsmith_div_i32(-1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b), var_0, vec4<u32>(firstLeadingBit(~max(17835u, var_0)), ~abs(0u), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_0, 4294967295u))), ~(~global1.a.d)));
}

