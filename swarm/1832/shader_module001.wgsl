struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30>;

var<private> global1: array<bool, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: Struct_1) -> vec4<u32> {
    global0 = array<vec2<i32>, 30>();
    var var_0 = vec4<i32>(~(~2147483647i), _wgslsmith_div_i32(firstLeadingBit(-90211i), arg_1.x), 30024i, -1i);
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_f_op_f32(step(-428f, -1549f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + arg_0.x) - arg_2.b.x), false);
    var_0 = arg_2.c;
    var_0 = max(vec4<i32>(-3007i, ~(-2147483647i), u_input.b, -49745i), -arg_2.c | ~_wgslsmith_div_vec4_i32(arg_2.c ^ vec4<i32>(-1i, var_0.x, arg_2.c.x, -2147483647i), vec4<i32>(-1i, -2147483647i, 9860i, 0i)));
    return ~arg_3.b;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), arg_3));
    global0 = array<vec2<i32>, 30>();
    global1 = array<bool, 25>();
    var var_1 = ~vec2<u32>(37595u, 39326u);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(287f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) - _wgslsmith_f_op_f32(-1382f * arg_3)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(460f, var_0.x, arg_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(f32(-1f) * -250f)), _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(-var_0.x)), true)) * 616f));
    return var_1.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = 1000f;
    global0 = array<vec2<i32>, 30>();
    return vec3<bool>(true, true, global1[_wgslsmith_index_u32(max(~1u, func_3(Struct_2(52105i), vec2<bool>(true, false), Struct_2(u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(1674f - -320f)))), 25u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-2147483647i, _wgslsmith_sub_vec4_u32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(194f, 1207f))), ~global0[_wgslsmith_index_u32(1u, 30u)], Struct_4(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 25u)], false, global1[_wgslsmith_index_u32(69308u, 25u)]), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1594f, -323f, -786f))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a, 0i), vec4<i32>(-62011i, -58221i, 19898i, u_input.b))), Struct_1(0i, vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 1545u, 13325u, 41537u), vec4<u32>(55563u, 22969u, 1u, 4294967295u), global1[_wgslsmith_index_u32(1u, 25u)]), countOneBits(vec4<u32>(20270u, 1u, 1u, 4294967295u))) | reverseBits(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_1 = func_2();
    let var_2 = var_0.a;
    var_1 = func_2();
    let var_3 = false;
    let var_4 = Struct_1(14193i, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(-338f)), _wgslsmith_f_op_f32(select(-1536f, -966f, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1328f)))))), ~(-1i));
}

