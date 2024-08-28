struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: bool;

var<private> global2: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false));

var<private> global3: array<vec2<f32>, 10>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(657f, !(!(!select(vec2<bool>(true, true), vec2<bool>(arg_0.b.x, true), arg_0.b))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32) -> bool {
    var var_0 = Struct_1(arg_1, select(vec2<bool>(global0[_wgslsmith_index_u32(countOneBits(u_input.c.x >> (u_input.c.x % 32u)), 8u)], select(true, global0[_wgslsmith_index_u32(69574u, 8u)], false) && true), vec2<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], false)), false), !vec2<bool>(global0[_wgslsmith_index_u32(~0u, 8u)], global0[_wgslsmith_index_u32(1735u, 8u)] & false)));
    global0 = array<bool, 8>();
    global2 = array<vec4<bool>, 24>();
    global0 = array<bool, 8>();
    global3 = array<vec2<f32>, 10>();
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global3 = array<vec2<f32>, 10>();
    global2 = array<vec4<bool>, 24>();
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(247f, arg_1.a.a)) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0)), -1713f), vec2<bool>(!(arg_1.a.a > -1000f), func_3((i32(-1i) * -1i) << (u_input.c.x % 32u), _wgslsmith_div_f32(-112f, _wgslsmith_f_op_f32(-arg_0)), 46882i)));
    return Struct_2(Struct_1(var_0.a, var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global2[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(firstTrailingBit(0u), u_input.c.x), 11734u), 24u)]);
    global2 = array<vec4<bool>, 24>();
    let var_1 = _wgslsmith_f_op_f32(1f + -1396f);
    global3 = array<vec2<f32>, 10>();
    var var_2 = _wgslsmith_sub_vec3_u32(~u_input.e.wxw, u_input.e.yyw);
    var var_3 = func_2(-1432f, Struct_2(func_1(Struct_1(_wgslsmith_f_op_f32(step(var_1, -821f)), vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 8u)], true)))), ~42018u);
    let var_4 = u_input.e.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-667f)) * _wgslsmith_f_op_f32(select(-326f, var_1, var_2.x <= u_input.e.x))), var_1), _wgslsmith_clamp_i32(u_input.d.x, -24820i & _wgslsmith_dot_vec4_i32(u_input.b >> (vec4<u32>(1u, u_input.c.x, var_4.x, var_4.x) % vec4<u32>(32u)), -u_input.b), countOneBits(i32(-1i) * -17464i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, 495f, var_3.a.a, var_1))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-753f, var_3.a.a, var_3.a.a, -1721f), vec4<f32>(-180f, 1325f, 334f, -524f)))))), ~u_input.b);
}

