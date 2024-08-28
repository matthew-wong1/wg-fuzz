struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<u32, 4> = array<u32, 4>(104401u, 0u, 0u, 8446u);

var<private> global2: array<vec2<bool>, 31>;

var<private> global3: array<vec4<f32>, 23>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = false;
    let var_1 = any(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34015u, 4u)], 4u)] ^ 4010u, u_input.a, 0u) << (vec3<u32>(1975u, global1[_wgslsmith_index_u32(11536u, 4u)], firstLeadingBit(u_input.a)) % vec3<u32>(32u)), reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60104u, 4u)] & 4294967295u, 4u)], _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.a, 4294967295u)), u_input.a))), 4u)], 31u)]);
    var var_2 = arg_0;
    var var_3 = arg_0;
    global0 = array<i32, 4>();
    return ~_wgslsmith_mult_u32(u_input.a, global1[_wgslsmith_index_u32(u_input.d.x, 4u)]);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec4<f32> {
    global3 = array<vec4<f32>, 23>();
    global3 = array<vec4<f32>, 23>();
    global1 = array<u32, 4>();
    var var_0 = vec4<bool>(all(global2[_wgslsmith_index_u32(u_input.a, 31u)]), false, !any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), global2[_wgslsmith_index_u32(u_input.a, 31u)], global2[_wgslsmith_index_u32(19617u, 31u)]), true)), false);
    let var_1 = _wgslsmith_f_op_f32(round(arg_0));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(154f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1003f, 260f), -316f))), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 4u)], 23u)]) + vec4<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(776f)), _wgslsmith_f_op_f32(-1294f - -513f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 2064f) - var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(831f + var_1)), arg_0));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0.a;
    let var_1 = arg_0;
    global2 = array<vec2<bool>, 31>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(118f + var_0), var_1.a, var_1.a, _wgslsmith_f_op_f32(-1925f * var_0)))), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(func_2(Struct_1(-1008f), abs(vec3<i32>(1i, 28140i, 1i)), var_1), 23u)] + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(var_0, vec4<u32>(65363u, arg_3.x, 4294967295u, 43230u))) - _wgslsmith_f_op_vec4_f32(exp2(global3[_wgslsmith_index_u32(0u, 23u)])))))));
    let var_3 = _wgslsmith_dot_vec4_i32(firstTrailingBit(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 4u)], arg_2.x, arg_2.x, -59570i), vec4<i32>(arg_2.x, arg_2.x, global0[_wgslsmith_index_u32(arg_3.x, 4u)], u_input.b.x), ~vec4<i32>(u_input.b.x, 21793i, -2147483647i, -1i))), vec4<i32>(39469i, 30138i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(73496i, 2147483647i, 0i), ~vec3<i32>(u_input.b.x, u_input.c, u_input.b.x)), 1i, countOneBits(-51803i)));
    return arg_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> vec3<f32> {
    global3 = array<vec4<f32>, 23>();
    var var_0 = ~(~(~select(vec3<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], u_input.a, 0u), ~vec3<u32>(u_input.d.x, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 4u)]), true)));
    let var_1 = u_input.d.x;
    let var_2 = _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(var_1, 4u)], i32(-1i) * -36346i, u_input.b.x), _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, global0[_wgslsmith_index_u32(26799u, 4u)], 1i, u_input.b.x), -vec4<i32>(global0[_wgslsmith_index_u32(1u, 4u)], -15219i, u_input.c, 1i)))), reverseBits(_wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(1u, 4u)], max(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 4u)])))));
    global1 = array<u32, 4>();
    return arg_0.wxx;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(trunc(global3[_wgslsmith_index_u32(1u, 23u)])), func_1(Struct_1(1000f), vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.a, 4u)], u_input.d.x, 13776u), u_input.b, vec2<u32>(66370u, 55397u)), false, true)))))), _wgslsmith_f_op_f32(step(276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(520f, _wgslsmith_div_f32(-1295f, 203f)))))));
}

