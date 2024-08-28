struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(15432i, i32(-2147483648), 46360i, 33284i, -1i, -47586i, 0i, -102699i, 1i, 31290i, -37864i, 1i, -1i, 2147483647i, -1i, -48667i, 19318i, 2147483647i, 0i, 1i, 41058i, 0i, -5086i, -1i, -10987i, 109238i, 2147483647i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = vec3<u32>(4294967295u, arg_0, arg_0);
    let var_1 = 35630u;
    global0 = array<i32, 27>();
    let var_2 = Struct_2(-379f, vec2<f32>(_wgslsmith_f_op_f32(-823f + _wgslsmith_f_op_f32(-1567f * _wgslsmith_f_op_f32(f32(-1f) * -707f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-502f)), _wgslsmith_f_op_f32(step(-149f, 703f)))) - -171f)), vec2<u32>(4294967295u, _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(u_input.a, arg_0), arg_0, _wgslsmith_mod_u32(arg_0, var_1))));
    global0 = array<i32, 27>();
    return var_2.a;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    let var_0 = vec3<i32>(-arg_3.a.b, 3951i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.b, arg_1, 1i, global0[_wgslsmith_index_u32(39012u, 27u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, -65549i, arg_3.a.b, arg_2.a.b), vec4<i32>(arg_3.a.b, 1i, arg_3.a.b, arg_2.a.b))), arg_3.a.b) << (1u % 32u));
    let var_1 = all(select(!select(vec2<bool>(false, true), !vec2<bool>(false, arg_3.b), arg_3.b || arg_3.b), !select(vec2<bool>(arg_3.b, true), vec2<bool>(arg_2.b, false), arg_2.b), vec2<bool>(~arg_3.a.a == arg_0.x, all(!vec3<bool>(arg_2.b, arg_2.b, false)))));
    global0 = array<i32, 27>();
    let var_2 = arg_3;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.c))), arg_2.a.c, !(1000f < var_2.a.d.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-861f + _wgslsmith_f_op_f32(-arg_2.a.c)), _wgslsmith_f_op_f32(-var_2.a.c))), vec2<u32>(76835u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, arg_0.x), vec3<u32>(arg_2.a.a, arg_2.a.a, 29579u)), 113673u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = vec3<i32>(2147483647i, -((global0[_wgslsmith_index_u32(4294967295u, 27u)] ^ -2147483647i) >> (_wgslsmith_sub_u32(4294967295u, u_input.a) % 32u)) | _wgslsmith_add_i32(~(~global0[_wgslsmith_index_u32(u_input.a, 27u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.a)), 27u)]), 0i & (i32(-1i) * -(-11044i ^ global0[_wgslsmith_index_u32(u_input.a, 27u)])));
    var var_1 = u_input.a > u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(_wgslsmith_div_u32(u_input.a, 1u), u_input.a >> (u_input.a % 32u), _wgslsmith_mult_u32(u_input.a, u_input.a)), var_0.x, Struct_3(Struct_1(u_input.a, 1i, arg_0.x, vec3<f32>(-764f, arg_1, arg_0.x)), false), Struct_3(Struct_1(93950u, -7601i, arg_0.x, vec3<f32>(-405f, arg_1, arg_1)), true)))));
    let var_3 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(76832u, 27u)], var_0.x);
    var var_4 = Struct_3(Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 25277u), abs(vec3<u32>(42789u, 4294967295u, u_input.a)) >> (~vec3<u32>(1184u, 1u, u_input.a) % vec3<u32>(32u))), var_3, _wgslsmith_f_op_f32(min(-633f, _wgslsmith_f_op_f32(-arg_1))), arg_0.xyy), false | (true == (_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 33530i, global0[_wgslsmith_index_u32(u_input.a, 27u)], 58919i), vec4<i32>(var_3, var_0.x, -1844i, 2147483647i)) > _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], var_0.x, -1i), vec4<i32>(var_3, var_0.x, var_3, 9969i)))));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.a)), -559f, -1745f, _wgslsmith_f_op_f32(1000f * 202f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-674f, 1935f, 358f, 619f) + vec4<f32>(-493f, -643f, -925f, 508f)))), 875f), select(false, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, 1u), ~0u) <= u_input.a, global0[_wgslsmith_index_u32(abs(u_input.a), 27u)] >= global0[_wgslsmith_index_u32(u_input.a, 27u)]));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a.c, var_0.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -772f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -106f)))) * var_0.a.c));
    var_0 = Struct_3(func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(22852u)) - 1616f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.x) + var_1), _wgslsmith_f_op_f32(f32(-1f) * -368f)), var_0.a.c), var_0.a.c > -496f);
    var var_2 = var_0.a.d.yz;
    var_0 = Struct_3(var_0.a, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a << (66459u % 32u)));
}

