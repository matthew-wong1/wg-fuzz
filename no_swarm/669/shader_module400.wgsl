struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: bool = true;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    global0 = array<Struct_1, 4>();
    global1 = true;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-359f, _wgslsmith_f_op_f32(arg_0.a * 702f), _wgslsmith_f_op_f32(-299f + arg_0.a), arg_0.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1936f, arg_0.a, arg_0.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1120f, 2195f, -691f, 142f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a, arg_0.a, 689f, arg_0.a), vec4<f32>(arg_0.a, arg_0.a, -241f, arg_0.a))))), !any(vec2<bool>(true, true)))));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~51439u, 1u)), 4u)], vec2<u32>(~50554u, ~(~4294967295u)));
    let var_2 = select(true, true, false);
    return arg_0.b.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> i32 {
    global1 = all(select(select(!(!vec3<bool>(false, false, arg_3)), vec3<bool>(all(vec2<bool>(true, arg_2)), !arg_3, 713f > arg_0.b), !arg_2), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, arg_3, true), vec3<bool>(arg_3, false, true)), vec3<bool>(false, false, arg_2), false || arg_2), !(!vec3<bool>(true, true, arg_2)), vec3<bool>(arg_2 || true, false, !arg_2)), false));
    var var_0 = Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(sign(-631f))), firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(4294967295u, arg_0.a), vec2<u32>(arg_0.a, 21501u)), vec2<u32>(arg_0.a, arg_0.a)), (vec2<u32>(17543u, 0u) ^ vec2<u32>(arg_0.a, 31175u)) & ~vec2<u32>(arg_0.a, arg_0.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(459f * arg_0.b)) * arg_0.b), -167f));
    var var_2 = Struct_2(arg_0, _wgslsmith_sub_vec2_u32(firstLeadingBit(var_0.b), reverseBits(var_0.b)));
    var_2 = Struct_2(Struct_1(~var_2.a.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b)))), vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(arg_0.a, 1u)), ~arg_0.a));
    return 31511i;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    global0 = array<Struct_1, 4>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -228f), vec4<i32>(-(u_input.a.x ^ func_2(Struct_3(244f, vec4<i32>(2147483647i, u_input.a.x, -2147483647i, -1i)))), -func_3(Struct_1(0u, -726f), _wgslsmith_clamp_vec2_i32(vec2<i32>(104550i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(10630i, -2147483647i)), arg_1, true && arg_1), -u_input.a.x, 7650i));
    let var_1 = global0[_wgslsmith_index_u32(max(~_wgslsmith_sub_u32(abs(10166u), 8572u) | ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(12161u, 1u), vec2<u32>(1u, 63457u))), 1u), 4u)];
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(~var_1.a, 4u)], max(~_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(var_1.a, 4294967295u)), ~vec2<u32>(46531u, var_1.a)), ~(~abs(vec2<u32>(34074u, var_1.a)))));
    let var_3 = ~firstTrailingBit(~(-u_input.a.x));
    return 5333u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(func_1(vec4<bool>(true, true, false, u_input.a.x <= u_input.a.x), !any(vec3<bool>(true, false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), -3120f), vec2<u32>(23788u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 74871u)) & ~3984u)));
    var var_1 = Struct_3(var_0.a.b, -(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, 49139i, 21888i, u_input.a.x), -vec4<i32>(14742i, u_input.a.x, u_input.a.x, -1i)) << (abs(vec4<u32>(68205u, 7971u, 4294967295u, 1u)) % vec4<u32>(32u))));
    var var_2 = -60122i ^ u_input.a.x;
    let var_3 = var_0.a;
    var var_4 = Struct_3(var_0.a.b, vec4<i32>(~func_2(Struct_3(var_0.a.b, var_1.b)), ~(-23872i), ~(-max(var_1.b.x, var_1.b.x)), ~_wgslsmith_dot_vec2_i32(max(u_input.a, vec2<i32>(0i, -1i)), -var_1.b.yx)));
    let var_5 = ~var_0.b.x;
    let var_6 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.b, _wgslsmith_f_op_f32(step(var_0.a.b, _wgslsmith_f_op_f32(min(1170f, var_3.b))))), vec2<f32>(252f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) - _wgslsmith_f_op_f32(var_4.a * 546f)))), false));
    let var_7 = 12100i;
    var var_8 = var_1.b.zw;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_0.a.a, var_0.b.x), _wgslsmith_mult_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4952u, 48453u, 86341u, 8799u), vec4<u32>(21925u, 0u, 4294967295u, var_3.a))), vec4<u32>(var_5, var_5, _wgslsmith_add_u32(var_0.b.x, _wgslsmith_clamp_u32(var_5, 8422u, var_3.a)), var_0.b.x)), countOneBits(vec2<u32>(1u, 1u)) >> (~var_0.b % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(var_6)))));
}

