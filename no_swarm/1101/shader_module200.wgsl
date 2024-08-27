struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: array<Struct_2, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global0 = array<vec3<u32>, 2>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(~(~4294967295u), 1u)), vec2<u32>(1u, 1u)), 2u)];
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-910f + -903f))))), 568f));
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_add_u32(var_0.x | max(_wgslsmith_mult_u32(var_0.x, ~8388u), ~1u), _wgslsmith_div_u32(var_0.x, 12943u ^ ~var_0.x) ^ _wgslsmith_div_u32(19883u, ~(~var_0.x)));
    return max(~81588u, var_3) | select(var_3, var_3, false);
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = abs(firstTrailingBit(func_3() ^ _wgslsmith_mult_u32(~57152u, firstTrailingBit(35474u))));
    global1 = array<Struct_2, 12>();
    var var_1 = vec3<u32>(~var_0, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~(~vec2<u32>(var_0, 4294967295u)))));
    global1 = array<Struct_2, 12>();
    let var_2 = 1i;
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1606f, arg_0) * vec4<f32>(3329f, arg_0, arg_0, 179f)))))), Struct_1(0i, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -2684f))), ~_wgslsmith_add_i32(-18271i >> (var_0 % 32u), var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) + arg_0)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4) -> bool {
    let var_0 = func_2(-1349f);
    global0 = array<vec3<u32>, 2>();
    let var_1 = 482f;
    global1 = array<Struct_2, 12>();
    let var_2 = all(vec3<bool>(select(select(any(vec2<bool>(arg_1.b.b, arg_1.b.b)), !arg_1.b.b, true), !arg_0.x, false | all(vec2<bool>(var_0.b.b, true))), all(!arg_0), func_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(var_0.a.x - var_1)))).b.b));
    return arg_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1209f, _wgslsmith_div_f32(-1728f, -351f)))), _wgslsmith_f_op_f32(f32(-1f) * -1481f))));
    global1 = array<Struct_2, 12>();
    var var_1 = Struct_5(Struct_3(Struct_2(Struct_1(u_input.a & 2147483647i, func_1(vec2<bool>(true, true), Struct_4(vec4<f32>(-376f, -1000f, var_0, var_0), Struct_1(u_input.a, true, var_0, u_input.a, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -418f), -18489i, _wgslsmith_f_op_f32(672f + 291f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_0), var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 291f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 340f) - vec2<f32>(-1173f, 1630f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, -932f))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-339f, var_0)))).b, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(8639u, _wgslsmith_sub_u32(4294967295u, ~1u)), 12u)]));
    let var_2 = 39791u;
    global1 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(func_2(906f).a.xyx)), -183f, -u_input.a, 760f, var_2);
}

