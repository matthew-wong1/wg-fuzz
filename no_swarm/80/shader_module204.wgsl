struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -3084f);

var<private> global1: array<Struct_2, 31>;

var<private> global2: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(i32(-2147483648), -31477i, -43892i), vec3<i32>(-27658i, -45081i, -1i), vec3<i32>(-2123i, 0i, 2147483647i), vec3<i32>(2147483647i, -5649i, -37959i), vec3<i32>(0i, -1i, 6374i), vec3<i32>(13122i, 401i, 7381i), vec3<i32>(1858i, i32(-2147483648), 2147483647i), vec3<i32>(-1649i, -12568i, 1i), vec3<i32>(0i, 22826i, 0i), vec3<i32>(0i, 1i, 1i), vec3<i32>(-31510i, -9316i, -1i), vec3<i32>(13028i, 2147483647i, 33516i), vec3<i32>(40820i, -6214i, -1i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(1i, -78355i, 1i), vec3<i32>(-801i, i32(-2147483648), -43580i), vec3<i32>(0i, -36222i, -51841i), vec3<i32>(-1i, -17147i, -5631i), vec3<i32>(-14988i, 24491i, 48278i), vec3<i32>(i32(-2147483648), -20312i, i32(-2147483648)), vec3<i32>(0i, -28172i, 0i), vec3<i32>(34813i, 2475i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 19415i), vec3<i32>(-1i, 1i, 0i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = false;
    global1 = array<Struct_2, 31>();
    var var_1 = -633f;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), select(~vec3<u32>(28375u, 95169u, 0u), ~vec3<u32>(1u, 1u, 1u), all(vec4<bool>(var_0, var_0, false, var_0)) && true)));
    global1 = array<Struct_2, 31>();
    return var_2;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = func_2(_wgslsmith_add_i32(select(u_input.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, u_input.a.x), -u_input.a), !arg_1.x), firstTrailingBit(u_input.b.x)));
    var var_1 = global0.x;
    var var_2 = _wgslsmith_f_op_f32(round(global0.x));
    var var_3 = 7336i;
    let var_4 = Struct_3(!select(arg_1.xz, !arg_1.xy, arg_1.x), select(select(arg_1.xy, vec2<bool>(true, true), false), vec2<bool>(true, arg_1.x), arg_1.zz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f - global0.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec2<u32>) -> vec4<f32> {
    global2 = array<vec3<i32>, 24>();
    let var_0 = reverseBits(-2147483647i);
    var var_1 = func_2(-1i);
    var_1 = arg_0;
    global2 = array<vec3<i32>, 24>();
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(func_3(arg_3, !vec3<bool>(arg_2.b.x, true, arg_2.b.x))), _wgslsmith_f_op_f32(ceil(2325f))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(640f - global0.x) + global0.x), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 24>();
    var var_0 = ~firstLeadingBit(select(_wgslsmith_mod_u32(0u, countOneBits(19396u)), select(1u, 1u, false), !any(vec3<bool>(true, false, false))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) + _wgslsmith_f_op_f32(1441f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -563f), 829f)))), global0.x);
    var var_1 = global0.x;
    var_1 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1340f, global0.x, -170f, -461f) - vec4<f32>(-1280f, 2072f, 1565f, global0.x)) + _wgslsmith_f_op_vec4_f32(func_1(Struct_1(111911u), vec4<i32>(u_input.c.x, 0i, -11913i, u_input.a.x), Struct_3(vec2<bool>(false, false), vec2<bool>(true, true)), vec2<u32>(22918u, 4294967295u))))))), ~4294967295u, ~vec4<u32>(~1u, _wgslsmith_add_u32(~33119u, 0u >> (1u % 32u)), 72649u, ~(~37045u)));
}

