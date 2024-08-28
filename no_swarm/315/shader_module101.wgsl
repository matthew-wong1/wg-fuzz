struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(80441u, 35949u, 0u), vec3<u32>(72570u, 0u, 1u), vec3<u32>(21194u, 1u, 68155u), vec3<u32>(1u, 1927u, 2223u), vec3<u32>(3713u, 51157u, 74553u), vec3<u32>(0u, 1u, 19253u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(764u, 0u, 0u), vec3<u32>(0u, 74209u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(96256u, 40048u, 0u), vec3<u32>(60688u, 79198u, 1u), vec3<u32>(1106u, 0u, 31145u), vec3<u32>(31511u, 1u, 50847u), vec3<u32>(3784u, 0u, 54287u), vec3<u32>(0u, 10636u, 1u), vec3<u32>(21578u, 0u, 62428u), vec3<u32>(15915u, 35431u, 16939u), vec3<u32>(1u, 4294967295u, 1504u), vec3<u32>(1u, 0u, 36948u), vec3<u32>(0u, 4294967295u, 41325u), vec3<u32>(0u, 1u, 59968u), vec3<u32>(4294967295u, 81593u, 4294967295u));

var<private> global2: Struct_2;

var<private> global3: Struct_1;

var<private> global4: array<i32, 7> = array<i32, 7>(0i, 0i, i32(-2147483648), -38722i, -25836i, i32(-2147483648), 0i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> i32 {
    return ~1i;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    return 0u;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    global1 = array<vec3<u32>, 23>();
    let var_0 = vec4<u32>(func_3(Struct_3(arg_2.x), Struct_1(_wgslsmith_div_f32(global3.a, 1000f))), ~_wgslsmith_div_u32(65736u, _wgslsmith_add_u32(max(global2.a.x, 4294967295u), 10515u)), ~countOneBits(615u), ~global2.a.x);
    let var_1 = min(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, u_input.b.x) | _wgslsmith_sub_vec3_i32(vec3<i32>(-49877i, arg_1, global4[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<i32>(-1i, 5220i, 39033i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, -1i, 1i), vec3<i32>(1i, u_input.b.x, -36513i) | vec3<i32>(arg_1, 1i, global4[_wgslsmith_index_u32(var_0.x, 7u)]), max(vec3<i32>(arg_1, u_input.b.x, 1i), vec3<i32>(-42257i, global4[_wgslsmith_index_u32(arg_3, 7u)], arg_1))), firstLeadingBit(select(vec3<i32>(arg_1, global4[_wgslsmith_index_u32(arg_3, 7u)], -12461i), vec3<i32>(1i, 0i, arg_1), vec3<bool>(true, arg_0, false)))), vec3<i32>(global4[_wgslsmith_index_u32(47483u, 7u)] & arg_1, select(arg_1, i32(-1i) * -25285i, true), arg_1)), -(vec3<i32>(select(u_input.b.x, -1i, false), 1i, global4[_wgslsmith_index_u32(arg_3 ^ 54204u, 7u)]) | vec3<i32>(~(-36889i), firstTrailingBit(arg_1), global4[_wgslsmith_index_u32(~u_input.c.x, 7u)])));
    global3 = global2.c;
    var var_2 = arg_3;
    return Struct_2(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, 1u), arg_3, _wgslsmith_dot_vec3_u32(var_0.yzx, max(u_input.c, vec3<u32>(arg_3, 0u, arg_3)))), 43285u), all(select(!(!vec3<bool>(global2.b, arg_0, false)), vec3<bool>(any(vec4<bool>(false, global2.b, global2.b, arg_0)), global2.b, any(vec4<bool>(true, false, true, global2.b))), select(true, !arg_0, arg_0 && arg_0))), Struct_1(global3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(4294967295u == _wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), u_input.c.x), -_wgslsmith_clamp_i32(~global4[_wgslsmith_index_u32(376u, 7u)], func_1(), firstTrailingBit(u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-801f, _wgslsmith_div_f32(446f, global2.c.a), -1934f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a, 1842f, global3.a)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(283f, -1184f, 383f), vec3<f32>(global3.a, 1000f, global3.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(186f, global3.a, global2.c.a) + vec3<f32>(-382f, 132f, 1252f)), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(512f, global2.c.a, -1000f)))))), global2.a.x);
    global0 = false;
    global4 = array<i32, 7>();
    let var_1 = true;
    global3 = func_2(!all(select(select(vec3<bool>(global2.b, true, true), vec3<bool>(var_1, var_0.b, true), vec3<bool>(true, var_1, global2.b)), !vec3<bool>(global2.b, global2.b, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b))), abs(~(-2147483647i)), vec3<f32>(-1000f, var_0.c.a, var_0.c.a), var_0.a.x).c;
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.c.a, _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(global2.c.a + _wgslsmith_div_f32(1137f, global2.c.a))), global2.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.a, 3035f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a + -1056f) - _wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(111f + var_0.c.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(203f, global2.c.a, 1426f, -809f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(431f, 317f, -214f, -250f) + vec4<f32>(global2.c.a, global2.c.a, 166f, var_0.c.a))), vec4<f32>(var_0.c.a, var_0.c.a, -1208f, -104f), !vec4<bool>(global2.b, global2.b, false, false)))), u_input.c.x, ~(~(-vec4<i32>(global4[_wgslsmith_index_u32(u_input.c.x, 7u)], -2147483647i, -54080i, u_input.b.x))) & vec4<i32>(i32(-1i) * -2147483647i, global4[_wgslsmith_index_u32(~25713u, 7u)], global4[_wgslsmith_index_u32(~u_input.c.x, 7u)] >> (~4294967295u % 32u), ~(-2170i)));
}

