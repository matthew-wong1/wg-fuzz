struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(-33564i, 0i, i32(-2147483648), 3716i, 0i, 3308i, 1i, 0i, i32(-2147483648), 1i, 0i, -48520i, 1i, -1i, 1i, 1i, -32623i);

var<private> global1: f32 = -1000f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32) -> u32 {
    let var_0 = !(5106i >= (_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_2, 17u)], u_input.c.x, -1i) & vec3<i32>(-1i, -4444i, -11328i), -vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(69308u, 17u)])) ^ min(-53871i >> (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 15767i, 3000i), vec3<i32>(global0[_wgslsmith_index_u32(296u, 17u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 17u)])))));
    var var_1 = Struct_1(-38898i);
    let var_2 = reverseBits(~(~_wgslsmith_add_u32(u_input.a >> (19176u % 32u), ~1u)));
    let var_3 = select(select(!select(vec2<bool>(var_0, false), select(vec2<bool>(arg_1, false), vec2<bool>(var_0, arg_1), true), !arg_1), !select(!vec2<bool>(arg_1, true), vec2<bool>(false, var_0), arg_0 != arg_0), !vec2<bool>(true, select(false, var_0, false))), vec2<bool>(false, true), vec2<bool>(var_0, true));
    global0 = array<i32, 17>();
    return var_2;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> u32 {
    global0 = array<i32, 17>();
    let var_0 = Struct_1(16191i);
    global1 = _wgslsmith_f_op_f32(1536f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    let var_1 = var_0;
    var var_2 = var_0;
    return u_input.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~u_input.a, 17u)], 36763i));
    let var_1 = reverseBits(abs(min(vec3<i32>(1i, 0i, ~var_0.a), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, var_0.a) & vec3<i32>(u_input.b.x, arg_1.x, 18975i), firstTrailingBit(vec3<i32>(22926i, 0i, var_0.a))))));
    var var_2 = Struct_1(var_0.a);
    var var_3 = _wgslsmith_div_u32(~u_input.a, func_3(~vec4<i32>(69576i, u_input.c.x, var_0.a, global0[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 214f))), vec4<u32>(func_2(arg_0.x, false, 0u), ~u_input.a, ~u_input.a, u_input.a & u_input.a))) >> (u_input.a % 32u);
    var var_4 = Struct_1(-1i);
    return Struct_1(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-53451i);
    let var_1 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1469f, -277f), vec2<f32>(-181f, 1613f)))), vec2<f32>(1f, 1f)), u_input.b);
    global0 = array<i32, 17>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1000f)), 503f))))));
    let var_2 = var_0;
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    var var_3 = vec4<u32>(u_input.a, ~(~0u), ~(u_input.a >> (_wgslsmith_add_u32(u_input.a, 50370u) % 32u)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(_wgslsmith_mod_u32(u_input.a, var_3.x))), 4814u);
}

