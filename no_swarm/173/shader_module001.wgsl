struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_add_u32(15341u, u_input.d ^ u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-613f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1079f + 234f) + _wgslsmith_f_op_f32(436f - 325f)), _wgslsmith_f_op_f32(ceil(300f))) + _wgslsmith_f_op_f32(222f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) * -514f))));
    var_0 = 0u;
    var var_2 = Struct_2(vec4<f32>(-1177f, 1498f, _wgslsmith_f_op_f32(231f + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-849f - 1088f)))), Struct_1(~countOneBits(vec4<u32>(u_input.a.x, 1u, u_input.d, 71743u)) & vec4<u32>(min(4294967295u, 42150u), u_input.a.x, ~u_input.d, 0u), vec2<u32>(u_input.b | ~0u, firstTrailingBit(u_input.d) >> (~u_input.d % 32u))));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, _wgslsmith_f_op_f32(select(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x * var_2.a.x), false)), _wgslsmith_f_op_f32(-122f - -2491f)) - _wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_div_vec4_f32(vec4<f32>(504f, var_2.a.x, var_2.a.x, var_2.a.x), var_2.a))), Struct_1(countOneBits(~vec4<u32>(44142u, 1u, 1u, 68520u)), vec2<u32>(1u, 0u)));
    return var_2.b.a.x;
}

fn func_2() -> u32 {
    var var_0 = vec3<f32>(-1039f, _wgslsmith_f_op_f32(sign(-1019f)), -261f);
    var var_1 = _wgslsmith_div_u32(abs(u_input.d), 1u);
    var_1 = ~31259u;
    global0 = array<vec2<bool>, 6>();
    var_1 = countOneBits(select(u_input.a.x, u_input.a.x, select(true, any(select(vec2<bool>(false, false), global0[_wgslsmith_index_u32(3308u, 6u)], true)), true)));
    return func_3();
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = arg_0 >> (u_input.d % 32u);
    var_0 = ~(~_wgslsmith_mod_u32(49835u, _wgslsmith_clamp_u32(u_input.b | 27105u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b, 4294967295u)), func_2())));
    var_0 = _wgslsmith_dot_vec4_u32(arg_1.a, countOneBits(vec4<u32>(arg_1.b.x, max(firstLeadingBit(0u), _wgslsmith_mult_u32(1u, u_input.d)), firstLeadingBit(firstLeadingBit(25735u)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.b, vec2<u32>(1u, u_input.a.x), u_input.a), ~vec2<u32>(0u, u_input.a.x)))));
    global0 = array<vec2<bool>, 6>();
    var_0 = 1u;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), ~vec4<u32>(22884u, arg_0, _wgslsmith_add_u32(arg_1.a.x, 4294967295u), _wgslsmith_add_u32(1u, 0u & arg_1.b.x)));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    global0 = array<vec2<bool>, 6>();
    global0 = array<vec2<bool>, 6>();
    let var_0 = ~4294967295u;
    let var_1 = vec3<u32>(select(arg_0.b.x, countOneBits(_wgslsmith_div_u32(1u | u_input.a.x, countOneBits(var_0))), !(any(vec4<bool>(true, true, false, false)) && true)), 26668u, arg_0.b.x);
    global0 = array<vec2<bool>, 6>();
    return Struct_1(arg_0.b, vec2<u32>(_wgslsmith_mult_u32(arg_0.b.x, ~_wgslsmith_sub_u32(arg_0.b.x, var_1.x)), ~_wgslsmith_add_u32(var_0, _wgslsmith_mult_u32(var_0, 12809u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, false, all(select(vec4<bool>(all(global0[_wgslsmith_index_u32(30784u, 6u)]), select(false, true, false), true, any(global0[_wgslsmith_index_u32(u_input.b, 6u)])), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global0 = array<vec2<bool>, 6>();
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-960f, -1089f, 2074f, 1274f), _wgslsmith_f_op_vec4_f32(vec4<f32>(809f, 722f, -1168f, -1325f) - vec4<f32>(-1793f, 179f, 525f, -116f))))), func_4(func_1(_wgslsmith_mult_u32(0u, u_input.d), Struct_1(vec4<u32>(u_input.d, 22226u, 1u, u_input.d), vec2<u32>(1u, u_input.b))), max(0i, firstLeadingBit(u_input.c)))));
    var_1 = Struct_4(Struct_2(var_1.a.a, Struct_1(abs(var_1.a.b.a), vec2<u32>(0u, 1u) & _wgslsmith_add_vec2_u32(vec2<u32>(24778u, 40383u), u_input.a))));
    var_1 = Struct_4(Struct_2(vec4<f32>(var_1.a.a.x, -134f, _wgslsmith_f_op_f32(var_1.a.a.x - -460f), _wgslsmith_f_op_f32(-1000f + var_1.a.a.x)), func_4(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a.x, var_1.a.a.x) - vec2<f32>(395f, 316f)), func_1(var_1.a.b.b.x, var_1.a.b).b), u_input.c)));
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_1.a.b.a.x, 18041u, abs(abs(u_input.d)), _wgslsmith_dot_vec3_u32(~var_1.a.b.a.xww, ~var_1.a.b.a.yyw)), vec4<i32>(-76019i, 0i, -_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, u_input.c)), -(~1i)));
}

