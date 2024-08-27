struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_1(arg_1.c.wx, -1184f);
    global0 = !vec3<bool>(false, all(vec4<bool>(!arg_1.c.x, !global0.x, all(vec4<bool>(false, global0.x, true, arg_1.c.x)), global1.a.x)), true);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1517f), _wgslsmith_f_op_f32(-621f + -1000f)))), _wgslsmith_f_op_f32(sign(-358f)));
    let var_2 = i32(-1i) * -1i;
    global0 = vec3<bool>(false, arg_1.c.x, var_0.a.x);
    return _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -900f))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = !(!((1i & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, u_input.a.x), vec4<i32>(-33054i, 2147483647i, arg_2.x, -38533i))) == 27730i));
    global0 = !(!vec3<bool>(1u > firstTrailingBit(4294967295u), global1.a.x, true));
    var var_1 = Struct_3(Struct_1(vec2<bool>(var_0, global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) * _wgslsmith_f_op_f32(f32(-1f) * -1564f)))), _wgslsmith_f_op_f32(f32(-1f) * -1067f));
    global0 = select(!vec3<bool>(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(16771i, u_input.d, u_input.a.x, arg_2.x)) > 68493i, !var_1.a.a.x, all(select(vec4<bool>(var_1.a.a.x, false, false, var_0), vec4<bool>(var_0, false, true, true), vec4<bool>(true, true, true, true)))), !select(vec3<bool>(u_input.a.x == -11266i, !var_1.a.a.x, all(global1.a)), select(!vec3<bool>(false, global1.a.x, global1.a.x), !vec3<bool>(false, global0.x, true), vec3<bool>(global1.a.x, false, true)), !(arg_2.x > 0i)), vec3<bool>(firstTrailingBit(~4294967295u) <= 29569u, !(var_1.a.a.x && true), any(select(select(vec3<bool>(var_1.a.a.x, global1.a.x, true), vec3<bool>(true, var_0, global1.a.x), var_0), !vec3<bool>(var_0, var_0, global0.x), global0.x))));
    var var_2 = arg_2.x;
    return vec2<bool>(true, var_1.a.a.x);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    global0 = !vec3<bool>(!(!(!global1.a.x)), false, all(!global0.zy));
    global0 = vec3<bool>(true, true, false);
    var var_0 = vec4<bool>(global1.a.x, true, arg_0, arg_0);
    let var_1 = 1i;
    return Struct_1(func_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1651f + 1853f), -724f), _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(func_2(select(vec4<i32>(2147483647i, -1i, u_input.b, 15078i), vec4<i32>(-10515i, u_input.a.x, u_input.a.x, 7089i), global0.x) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), Struct_2(1u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-918f, global1.b, -258f), vec3<f32>(-538f, global1.b, global1.b))), vec4<bool>(true, true, global1.a.x, false), vec2<f32>(692f, global1.b)), ~(~0u), !select(var_0.yxx, vec3<bool>(arg_0, arg_1.x, false), var_0.www))), vec4<i32>(u_input.d, -u_input.d, ~_wgslsmith_div_i32(u_input.c.x, u_input.c.x), _wgslsmith_sub_i32(~u_input.d, var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1875f * _wgslsmith_f_op_f32(-global1.b)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1666f) + -345f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(true, select(vec2<bool>(!global1.a.x && false, global1.a.x), global0.zy, !global0.x));
    let var_0 = ~0u;
    var var_1 = firstLeadingBit(var_0);
    let var_2 = Struct_1(!(!select(global0.zx, global0.yy, true)), global1.b);
    var var_3 = all(select(select(vec4<bool>(var_2.b >= var_2.b, -2932f > global1.b, var_2.a.x, global0.x), vec4<bool>(global1.a.x | true, false, false, global1.a.x), global1.a.x), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(global0.x, var_2.a.x, global0.x, global1.a.x), vec4<bool>(global0.x, global0.x, true, true), false), !var_2.a.x), vec4<bool>(true, var_2.a.x & true, global0.x, var_2.a.x), !(!vec4<bool>(true, var_2.a.x, global1.a.x, global1.a.x))), !(any(vec3<bool>(false, global1.a.x, global1.a.x)) == true)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 24885u);
}

