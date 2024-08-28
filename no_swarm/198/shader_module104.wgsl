struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = ~(-15789i);
    let var_1 = Struct_1(~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 27743u), u_input.b) ^ arg_1.c.x), !(!arg_0.x), ~arg_1.c);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-539f, 572f), _wgslsmith_f_op_f32(-2603f + 680f), -530f)) + vec3<f32>(1f, 1f, 1f)), var_1, -2147483647i | select(41715i, -52233i, true), vec2<f32>(-985f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -605f)))), arg_1);
    var_0 = -u_input.a;
    global1 = array<Struct_1, 2>();
    return global0[_wgslsmith_index_u32(1u, 9u)];
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: u32) -> bool {
    var var_0 = func_2(arg_0, func_2(vec4<bool>(arg_0.x, arg_2.d.x, any(!arg_2.d.xx), any(arg_2.d.yx)), func_2(select(arg_0, select(arg_0, vec4<bool>(arg_0.x, false, true, true), arg_2.c.e.b), select(arg_0, vec4<bool>(false, true, true, false), vec4<bool>(arg_2.d.x, false, true, true))), Struct_1(_wgslsmith_div_u32(0u, u_input.c.x), arg_2.a <= arg_2.e, select(vec2<u32>(885u, arg_2.c.b.a), vec2<u32>(u_input.b.x, 2896u), arg_0.xx))).c.e).c.e).c.e;
    global0 = array<Struct_3, 9>();
    var_0 = Struct_1(var_0.a, true, vec2<u32>(reverseBits(arg_2.b.x), countOneBits(u_input.c.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(min(1555f, arg_2.e))));
    let var_2 = !arg_0.xwz;
    return false;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = vec2<i32>(0i, max(u_input.a, u_input.a) | 11191i);
    global1 = array<Struct_1, 2>();
    global0 = array<Struct_3, 9>();
    let var_1 = select(vec4<bool>(true, !any(vec2<bool>(true, false)), false, !(!(u_input.a <= -1443i))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, arg_2), true), vec4<bool>(true, true, true, true), vec4<bool>(arg_2, true, arg_2, func_3(select(vec4<bool>(arg_2, true, false, false), vec4<bool>(false, false, true, arg_2), vec4<bool>(false, false, true, arg_2)), vec2<i32>(var_0.x, var_0.x) & var_0, func_2(vec4<bool>(true, arg_2, arg_2, arg_2), global1[_wgslsmith_index_u32(0u, 2u)]), ~u_input.c.x))), true);
    var var_2 = func_2(var_1, Struct_1(u_input.e, false, arg_3.xw));
    return func_2(!vec4<bool>(true, func_3(select(var_1, var_1, var_1), _wgslsmith_mod_vec2_i32(var_0, vec2<i32>(-1i, 13189i)), global0[_wgslsmith_index_u32(arg_3.x, 9u)], 35228u), true, _wgslsmith_sub_i32(1i, -1i) == (19833i & var_0.x)), Struct_1(max(u_input.d.x, var_2.b.x), var_2.c.b.b, ~vec2<u32>(5957u, 85426u))).c;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> u32 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec2<u32>(func_4(_wgslsmith_mult_u32(u_input.e, u_input.b.x), true, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -108f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1483f, -565f, 342f, -360f) + vec4<f32>(-787f, 351f, -266f, -1745f)), 4294967295u == u_input.d.x, u_input.d)), u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(-816f);
}

