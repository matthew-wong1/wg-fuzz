struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec3<i32>) -> bool {
    var var_0 = arg_2.x;
    let var_1 = Struct_3(true, vec3<i32>(-15658i, u_input.e, ~(~0i)), Struct_1(select(true, true, true), arg_1, u_input.a));
    var_0 = u_input.a & 1u;
    var var_2 = var_1.c;
    var var_3 = Struct_3(var_2.a, reverseBits(vec3<i32>(u_input.e, 15127i, _wgslsmith_add_i32(abs(2147483647i), -2147483647i))), var_1.c);
    return all(vec2<bool>(all(var_2.b), 2147483647i >= ((i32(-1i) * -1i) & var_3.b.x)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<vec3<bool>, 10>();
    var var_0 = Struct_1(arg_0.a, vec2<bool>(arg_0.b.x, arg_0.a), 1u);
    var_0 = Struct_1(1f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-810f - -862f))))), !(!select(select(vec2<bool>(true, var_0.b.x), var_0.b, vec2<bool>(true, var_0.a)), vec2<bool>(true, false), select(vec2<bool>(arg_0.a, arg_0.b.x), arg_0.b, var_0.b))), u_input.b.x);
    var_0 = arg_0;
    var var_1 = Struct_3(true, -vec3<i32>(~_wgslsmith_sub_i32(u_input.e, u_input.c.x), _wgslsmith_div_i32(1i, u_input.c.x) >> (1u % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(-35634i, 0i), ~u_input.c.yx)), Struct_1(true, !select(var_0.b, var_0.b, var_0.a), arg_0.c | var_0.c));
    return arg_0.b.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = !vec4<bool>(select(any(vec4<bool>(false, false, true, true)), all(vec4<bool>(arg_0.x, true, true, false)), true) && any(!global0[_wgslsmith_index_u32(25110u, 10u)]), !(all(vec4<bool>(arg_1.a, true, arg_1.a, false)) == arg_1.c.a), !(!func_2(1u, vec2<bool>(true, false), u_input.b, u_input.c.wzz)), true);
    let var_1 = 17339i;
    var_0 = vec4<bool>(false || func_3(arg_2.a), arg_1.a, arg_0.x, !arg_0.x);
    global0 = array<vec3<bool>, 10>();
    let var_2 = -2130f;
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(623f, -929f) - 1257f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2 - -388f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(589f, 354f, 1000f, -1418f) * vec4<f32>(-1030f, -1576f, -1000f, 1000f)) * _wgslsmith_f_op_vec4_f32(func_1(vec2<bool>(true, false), Struct_3(false, u_input.c.wyz, Struct_1(false, vec2<bool>(true, true), u_input.a)), Struct_2(Struct_1(false, vec2<bool>(true, false), u_input.b.x))))))));
    var var_1 = u_input.b;
    global0 = array<vec3<bool>, 10>();
    var var_2 = u_input.e;
    var_1 = (~select(u_input.b, vec3<u32>(0u, u_input.a, u_input.b.x), all(vec2<bool>(false, true))) & (~vec3<u32>(4294967295u, var_1.x, 49886u) << (u_input.b % vec3<u32>(32u)))) ^ (vec3<u32>(_wgslsmith_clamp_u32(var_1.x, ~var_1.x, ~var_1.x), ~_wgslsmith_div_u32(80840u, 21762u), u_input.a) >> (~(~(u_input.b | u_input.b)) % vec3<u32>(32u)));
    var_2 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, -u_input.c.ww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.wwy)), _wgslsmith_f_op_vec3_f32(-var_0.ywz))), -491f);
}

