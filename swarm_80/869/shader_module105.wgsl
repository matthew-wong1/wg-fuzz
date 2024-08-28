struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: f32;

var<private> global2: f32;

var<private> global3: array<f32, 10> = array<f32, 10>(-1029f, 580f, 1000f, -359f, -127f, -940f, 182f, -1094f, -1099f, 675f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_div_f32(921f, _wgslsmith_f_op_f32(-273f - _wgslsmith_f_op_f32(abs(arg_1.c))));
    let var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(353f + -1179f), -1013f, arg_2.a.x);
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(395f)) * arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_1.x + arg_0)), _wgslsmith_f_op_vec4_f32(-var_1));
    var var_3 = arg_1.b.yy;
    global1 = 961f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f));
}

fn func_2(arg_0: vec2<bool>) -> StorageBuffer {
    global0 = array<Struct_2, 16>();
    return StorageBuffer(vec3<f32>(_wgslsmith_div_f32(336f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.a, 10u)] * global3[_wgslsmith_index_u32(~u_input.a, 10u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(u_input.a), 10u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(515f * _wgslsmith_f_op_f32(step(172f, 331f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1550f, 154f, any(vec2<bool>(true, false))))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 18126u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 69681u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 51323u)))), 10u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-139f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f)))), _wgslsmith_f_op_f32(-var_0), -848f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 10u)]), -1487f, _wgslsmith_f_op_f32(sign(-150f)), _wgslsmith_f_op_f32(-1000f * var_0))))));
    var var_2 = vec2<f32>(-896f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -1000f))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_1.x, Struct_1(vec3<bool>(false, true, true), vec4<i32>(-50983i, u_input.b, u_input.b, -4203i), var_2.x, vec4<bool>(true, false, false, false), false), Struct_2(vec3<f32>(-1753f, 1229f, -538f)), var_1.zwx)) * var_1.x), _wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -861f), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.a, 10u)])), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(~u_input.a, 10u)], _wgslsmith_f_op_f32(-var_0))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(259f)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 52759u), true), vec4<u32>(_wgslsmith_div_u32(96928u, 1u), select(2856u, 62291u, true), abs(30414u), 10528u)), 10u)]);
    let var_4 = global0[_wgslsmith_index_u32(u_input.a, 16u)];
    let var_5 = _wgslsmith_add_i32(0i, abs(abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, 31894i, 1i), vec3<i32>(u_input.b, u_input.b, u_input.b)))));
    let x = u_input.a;
    s_output = func_2(vec2<bool>(all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), all(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
}

