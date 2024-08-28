struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(606f, 199f, -641f, -260f);

var<private> global1: vec3<f32> = vec3<f32>(-1619f, -684f, -222f);

var<private> global2: array<Struct_2, 18>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.wwx));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 392f, var_0.b.a.x) - vec3<f32>(785f, -634f, global1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a.x, 1506f, var_0.b.a.x) - _wgslsmith_div_vec3_f32(arg_0.a.zyy, arg_0.a.ywx)))), arg_1.b.a.ywy);
    var var_2 = !var_0.b.d;
    let var_3 = false;
    return arg_1.c.xwx;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(arg_1.b.a));
    var var_0 = global0.x;
    var var_1 = select(arg_1.c.wy, vec2<bool>(true, select((true == arg_0.x) | arg_1.b.d, all(vec3<bool>(true, arg_0.x, true)), !arg_1.b.d)), all(!(!(!arg_1.c))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(arg_1.b.a)), _wgslsmith_f_op_vec4_f32(arg_1.b.a + vec4<f32>(global0.x, global1.x, global1.x, global1.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, global0.x, arg_1.b.b, global1.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, global0.x, global1.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_1.b.a, arg_1.b.a)) + arg_1.b.a))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-272f)) - _wgslsmith_f_op_f32(-global1.x)), 807f, !(arg_1.a.x > arg_1.b.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -992f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-739f)), _wgslsmith_f_op_f32(930f + -628f))))), 552f));
    var var_2 = !(!vec3<bool>(func_2(arg_1.b, Struct_2(vec4<i32>(1i, arg_1.b.c.x, arg_1.a.x, -2147483647i), arg_1.b, arg_1.c)).x, var_1.x, any(arg_1.c) || all(vec2<bool>(false, false))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1603f);
}

fn func_1(arg_0: Struct_2) -> bool {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), _wgslsmith_f_op_f32(func_3(!func_2(arg_0.b, Struct_2(vec4<i32>(65778i, 2147483647i, 25821i, 2147483647i), arg_0.b, arg_0.c)), Struct_2(-arg_0.b.c, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.x, arg_0.b.b, arg_0.b.a.x, -528f)), 1000f, -vec4<i32>(-64746i, -2147483647i, arg_0.a.x, -1i), false), !(!arg_0.c)))), 2012f);
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2237f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x)), arg_0.b.d)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + arg_0.b.b)));
    global2 = array<Struct_2, 18>();
    let var_0 = !vec2<bool>(!(!(!arg_0.c.x)), 3644u <= ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a));
    var var_1 = ~((vec4<i32>(_wgslsmith_div_i32(-44277i, -1i), -2147483647i, _wgslsmith_mod_i32(arg_0.b.c.x, arg_0.b.c.x), ~arg_0.a.x) << (~(~vec4<u32>(u_input.a.x, 65341u, u_input.a.x, 1u)) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(~arg_0.a, -arg_0.a));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -860f, 740f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1829f, 504f, -803f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, global1.x, global1.x, global1.x)), vec4<f32>(246f, global0.x, global0.x, 504f))))), -1000f, abs(~max(vec4<i32>(1i, 1i, 1i, 1i), min(vec4<i32>(-1i, 8633i, -1i, -68382i), vec4<i32>(-2147483647i, -6066i, -10951i, 73479i)))), !any(vec4<bool>(true, false, true, false)) || func_1(Struct_2(vec4<i32>(1i, 1i, 1i, 1i), Struct_1(vec4<f32>(1084f, -412f, global0.x, -772f), -1434f, vec4<i32>(-2147483647i, 0i, 28584i, -12715i), false), vec4<bool>(false, false, true, false))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) * _wgslsmith_f_op_f32(global1.x + global1.x))), -502f, 312f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1024f))), global0.x, false)));
    global1 = _wgslsmith_f_op_vec3_f32(-global0.ywz);
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~1i, firstLeadingBit(var_0.c.x)), var_0.c.yy), min(1i, -var_0.c.x));
    global2 = array<Struct_2, 18>();
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global0.x - 214f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.xyw)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, -829f, 1158f), vec3<f32>(global0.x, global1.x, global0.x)))))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1571f, var_0.b)) - 489f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-837f, _wgslsmith_f_op_f32(abs(-337f))) * _wgslsmith_f_op_f32(abs(var_2))), abs(0u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.xy) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(152f, var_0.b))))))));
}

