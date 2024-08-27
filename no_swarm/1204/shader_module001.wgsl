struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec4<f32>, 4>;

var<private> global2: f32;

var<private> global3: array<bool, 9> = array<bool, 9>(true, true, true, false, false, false, true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-341f, 1854f)));
    global3 = array<bool, 9>();
    global3 = array<bool, 9>();
    global0 = array<Struct_1, 16>();
    global1 = array<vec4<f32>, 4>();
    return !vec3<bool>(all(vec2<bool>(!arg_0, true)), ~max(arg_1.x, u_input.b.x) > 4294967295u, global3[_wgslsmith_index_u32(arg_1.x, 9u)]);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec2<u32> {
    global1 = array<vec4<f32>, 4>();
    global1 = array<vec4<f32>, 4>();
    let var_0 = Struct_2(-12676i);
    var var_1 = vec2<f32>(arg_1.c.a.x, arg_1.c.a.x);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), var_1.x, -321f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(816f, -1586f, arg_1.c.a.x)))))))), arg_1.c.a.xyw);
    return vec2<u32>(_wgslsmith_div_u32(1u, firstTrailingBit(arg_1.a.x)), _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(~u_input.b.x, ~reverseBits(14600u), 49825u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> f32 {
    var var_0 = arg_2 << (u_input.a % 32u);
    var var_1 = func_4(Struct_2(_wgslsmith_mod_i32(~u_input.e.x, i32(-1i) * -1i)), Struct_3(vec2<u32>(~1u, countOneBits(_wgslsmith_mod_u32(arg_1, 0u))), reverseBits(vec3<u32>(select(arg_1, arg_2, true), arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 24u), vec3<u32>(1091u, u_input.a, 1u)))), global0[_wgslsmith_index_u32(4294967295u, 16u)], vec4<bool>(true, true | all(vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 9u)], false, false)), all(func_3(true, vec3<u32>(1u, 62013u, u_input.a), arg_0.a.x, Struct_2(u_input.e.x))), global3[_wgslsmith_index_u32(~(~arg_1), 9u)]), Struct_2(-u_input.d.x)));
    global1 = array<vec4<f32>, 4>();
    var_1 = ~firstTrailingBit(_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.b.x, 0u)), reverseBits(u_input.b)));
    var var_2 = ~vec2<u32>(abs(73936u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b ^ u_input.b, u_input.b), (u_input.b << (u_input.b % vec2<u32>(32u))) >> (~u_input.b % vec2<u32>(32u))));
    return 909f;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2740f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(818f * 931f), 707f, true))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], u_input.a, 1u))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1109f) + _wgslsmith_f_op_f32(130f * var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var var_1 = u_input.c;
    global0 = array<Struct_1, 16>();
    let var_2 = Struct_2(23428i ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.x, 10153i, var_1.x, u_input.c.x), min(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(u_input.e.x, var_1.x, -22192i, u_input.c.x)), firstTrailingBit(vec4<i32>(var_1.x, -21139i, var_1.x, 27289i)))));
    return Struct_2(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1760f * -688f) - _wgslsmith_f_op_f32(-773f + -1090f))) + -1220f));
    let var_1 = -717f;
    global3 = array<bool, 9>();
    var var_2 = Struct_2(u_input.c.x ^ 2147483647i);
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(-399f, var_1)), global3[_wgslsmith_index_u32(34313u, 9u)]))))));
    let var_4 = func_1();
    var var_5 = Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), vec3<u32>(38402u, var_0, var_0)), ~vec3<u32>(var_0, u_input.a, var_0))), ~(~(u_input.b | u_input.b))), ~vec3<u32>(~u_input.b.x ^ ~u_input.b.x, max(abs(var_0), 15420u), _wgslsmith_dot_vec2_u32(min(u_input.b, vec2<u32>(var_0, 13330u)), firstTrailingBit(u_input.b))), global0[_wgslsmith_index_u32(reverseBits(21730u), 16u)], !vec4<bool>(!any(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 9u)])), !(!global3[_wgslsmith_index_u32(7186u, 9u)]), (true != global3[_wgslsmith_index_u32(u_input.b.x, 9u)]) && !global3[_wgslsmith_index_u32(u_input.b.x, 9u)], any(select(vec4<bool>(global3[_wgslsmith_index_u32(var_0, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(8635u, 9u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(var_0, 9u)], global3[_wgslsmith_index_u32(var_0, 9u)], global3[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(var_0, 9u)], global3[_wgslsmith_index_u32(66679u, 9u)])))), func_1());
    var var_6 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(98599u, 4u)] - var_5.c.a), vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(-768f)), _wgslsmith_f_op_f32(round(-2461f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(18500u, ~var_5.a.x), var_5.c.a.x);
}

