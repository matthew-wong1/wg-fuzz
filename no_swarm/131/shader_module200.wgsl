struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

var<private> global1: array<bool, 2>;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<bool, 6> = array<bool, 6>(false, false, true, true, true, false);

var<private> global4: array<Struct_3, 8>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    global0 = array<vec4<bool>, 12>();
    var var_0 = abs(-2147483647i);
    global4 = array<Struct_3, 8>();
    global4 = array<Struct_3, 8>();
    var var_1 = global4[_wgslsmith_index_u32(~(~u_input.a.x ^ u_input.c.x), 8u)];
    return ~0u;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, arg_0, arg_2, arg_2), vec4<u32>(1u, u_input.c.x, abs(u_input.c.x) & ~1u, ~u_input.a.x));
    let var_1 = ~(func_2(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), reverseBits(vec2<i32>(4697i, -50058i)), _wgslsmith_add_vec4_u32(~vec4<u32>(25239u, var_0.x, u_input.a.x, var_0.x), countOneBits(vec4<u32>(21276u, arg_0, arg_0, 14521u))), any(!vec3<bool>(global1[_wgslsmith_index_u32(120615u, 2u)], false, true))) << (17669u % 32u));
    var var_2 = Struct_4(global2[_wgslsmith_index_u32(~10036u, 13u)]);
    global0 = array<vec4<bool>, 12>();
    var var_3 = global2[_wgslsmith_index_u32(29339u, 13u)];
    return vec3<bool>(1i != _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a, var_2.a.a), vec2<i32>(-var_2.a.a, 32325i)), false, true);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: i32) -> vec2<f32> {
    global4 = array<Struct_3, 8>();
    var var_0 = !(!any(select(arg_2.yx, vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 6u)], false), global1[_wgslsmith_index_u32(46384u, 2u)])) && true);
    global2 = array<Struct_1, 13>();
    global4 = array<Struct_3, 8>();
    var var_1 = select(global0[_wgslsmith_index_u32(37280u, 12u)], !global0[_wgslsmith_index_u32(~59679u, 12u)], global0[_wgslsmith_index_u32(0u | u_input.c.x, 12u)]);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, 1002f)) * vec2<f32>(894f, 271f)), vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-606f, 346f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-143f, -965f))))), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 12>();
    global3 = array<bool, 6>();
    global4 = array<Struct_3, 8>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(!(_wgslsmith_clamp_u32(u_input.a.x, 47625u, u_input.b) > 72459u) || ((true && !global1[_wgslsmith_index_u32(1u, 2u)]) || any(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], false, global3[_wgslsmith_index_u32(54992u, 6u)]))), 1i, select(vec3<bool>(global3[_wgslsmith_index_u32(countOneBits(0u), 6u)], false, global1[_wgslsmith_index_u32(u_input.b ^ u_input.a.x, 2u)] || true), !(!select(vec3<bool>(false, false, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], false, false), global3[_wgslsmith_index_u32(u_input.b, 6u)])), !func_1(~u_input.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(1029f, -509f), vec2<f32>(-262f, 171f)), u_input.a.x)), -_wgslsmith_clamp_i32(-_wgslsmith_add_i32(-3317i, 1i), 1i, 4369i)));
    global4 = array<Struct_3, 8>();
    var var_1 = Struct_2(var_0.x, var_0.x);
    global4 = array<Struct_3, 8>();
    var var_2 = global4[_wgslsmith_index_u32(u_input.a.x, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.b, var_0.x), _wgslsmith_f_op_f32(170f + var_1.a), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_div_f32(var_1.a, var_0.x))))), i32(-1i) * -var_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, var_0.x, 1332f, var_1.b), vec4<f32>(var_1.b, 196f, 781f, var_0.x), vec4<bool>(true, false, false, true)))))))), _wgslsmith_sub_i32(-625i, var_2.a), ~_wgslsmith_mult_u32(u_input.a.x, abs(u_input.b)));
}

