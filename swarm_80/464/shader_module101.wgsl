struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_4,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21>;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(2147483647i, -10432i), Struct_1(vec2<i32>(i32(-2147483648), -3143i), 165f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> Struct_2 {
    let var_0 = global1.b;
    return Struct_2(var_0.a, Struct_1(var_0.a, var_0.b));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: bool) -> f32 {
    let var_0 = -_wgslsmith_sub_i32(arg_0.a.d.b.a.x, _wgslsmith_div_i32(~(-42641i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 25261i), vec3<i32>(global1.b.a.x, arg_0.a.d.b.a.x, 2147483647i)), firstTrailingBit(vec3<i32>(2147483647i, -27937i, 14488i)))));
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0.a.a))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -665f), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_1), select(select(!vec4<bool>(arg_2, arg_2, arg_2, arg_2), select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(true, false, true, arg_2)), vec4<bool>(arg_2, false, arg_2, arg_2)), vec4<bool>(false, arg_2 || arg_2, true, !arg_2), false))));
    return _wgslsmith_f_op_f32(sign(-2015f));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.b.b + _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(vec4<f32>(696f, global1.b.b, global1.b.b, arg_0.b.b), vec2<f32>(global1.b.b, global1.b.b), u_input.b.x, arg_0), -1000f, 25609u, 29620u), _wgslsmith_f_op_f32(-430f - -1851f), true))), _wgslsmith_f_op_f32(func_1().b.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b + global1.b.b))), 1089f));
    global1 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b.b, 323f, -2032f, arg_0.b.b))), _wgslsmith_f_op_vec2_f32(-var_0.xx), 4294967295u, arg_0), _wgslsmith_f_op_f32(-347f - _wgslsmith_f_op_f32(-global1.b.b)), ~max(37191u, u_input.b.x), _wgslsmith_add_u32(~u_input.b.x, 31799u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b.b, var_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.b) + _wgslsmith_f_op_f32(-var_0.x))), true)), arg_0.b.b));
    var var_2 = 0u;
    let var_3 = func_1().b;
    return _wgslsmith_f_op_f32(abs(var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 21>();
    var var_0 = global1.b;
    let var_1 = abs(-select(-var_0.a.x, u_input.a.x, true));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b + -176f)) * _wgslsmith_f_op_f32(func_2(func_1(), vec2<i32>(global1.b.a.x, 2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1032f, _wgslsmith_f_op_f32(round(1098f)))) + -697f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b, var_0.b)))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-398f, -1442f, global1.b.b, 1000f))) * vec4<f32>(var_0.b, 367f, global1.b.b, global1.b.b))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(662f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(sign(-508f)), _wgslsmith_f_op_f32(-global1.b.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 107f, var_0.b, var_0.b) * vec4<f32>(global1.b.b, global1.b.b, 225f, 1230f))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))))))));
    let var_3 = Struct_1(abs(~(-max(vec2<i32>(-26855i, -1i), var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -140f));
    var var_4 = -var_3.a.x;
    let var_5 = u_input.b.yy;
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))), var_0.b, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

