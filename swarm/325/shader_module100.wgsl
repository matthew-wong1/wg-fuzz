struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(771f * 617f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + -749f)))));
    return u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(917f)) * global0.a)));
    var var_0 = arg_0;
    var var_1 = arg_0.e;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -383f), -815f, 1u <= _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d, 0u, u_input.e.x, 2586u)), ~vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.d)))), u_input.c, ~(i32(-1i) * -17695i));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a + -284f), -1000f, _wgslsmith_f_op_f32(floor(-1912f)) != _wgslsmith_f_op_f32(f32(-1f) * -600f))), global0.a));
    return var_2.c;
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = vec4<bool>(all(!vec4<bool>(true, u_input.c < -28934i, true, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true))), select(1i < min(~u_input.a, arg_0.x << (u_input.e.x % 32u)), true, !(true || (u_input.a < -24183i))), !(!(select(34836u, u_input.e.x, false) < _wgslsmith_mod_u32(u_input.e.x, u_input.d))));
    global1 = array<f32, 9>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1946f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1672f - _wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a, 344f)), _wgslsmith_f_op_f32(sign(2041f))) * global0.a));
    var var_2 = Struct_3(-1058f, _wgslsmith_div_i32(-arg_0.x, -76882i), 1i);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -1124f))), _wgslsmith_f_op_f32(f32(-1f) * -582f)))), arg_0.x ^ 20648i, -var_2.c);
    return true;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-global0.a), u_input.b, min(func_2(Struct_2(countOneBits(vec3<i32>(u_input.b, 22706i, u_input.c)), vec3<bool>(true, false, arg_1.x), _wgslsmith_f_op_f32(-502f - arg_3.x), Struct_1(global1[_wgslsmith_index_u32(1u, 9u)]), Struct_1(global1[_wgslsmith_index_u32(u_input.e.x, 9u)])), true), -2147483647i));
    global0 = Struct_1(arg_2);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global0.a - global1[_wgslsmith_index_u32(~7445u, 9u)]));
    var var_2 = ~(~arg_0.x);
    var var_3 = _wgslsmith_add_vec2_i32(~(~vec2<i32>(u_input.c, arg_0.x)), ~arg_0.zy) & vec2<i32>(-2147483647i, i32(-1i) * -(0i << (u_input.d % 32u)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<i32>(~514i, func_1(19477u) >> (u_input.e.x % 32u), u_input.a ^ u_input.a), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), false), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1390f)), func_4(vec4<i32>(~(-2132i), u_input.c, func_2(Struct_2(vec3<i32>(1i, -1i, 32950i), vec3<bool>(false, true, true), 482f, Struct_1(global1[_wgslsmith_index_u32(20642u, 9u)]), Struct_1(585f)), false) << (_wgslsmith_mod_u32(33458u, u_input.d) % 32u), u_input.c), vec3<bool>(func_3(~vec4<i32>(557i, u_input.c, -1i, u_input.a)), true, true), _wgslsmith_f_op_f32(306f * -1075f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1096f)), _wgslsmith_f_op_f32(step(global0.a, 1476f)), -1086f))), Struct_1(589f));
    global0 = var_0.d;
    global0 = Struct_1(_wgslsmith_f_op_f32(-1f));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(floor(global0.a)), -7802i, u_input.a);
    global0 = func_4(vec4<i32>(~57854i, var_0.a.x, var_0.a.x, -66991i) | vec4<i32>(-(~var_0.a.x), var_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, var_1.b, -15453i), vec4<i32>(2147483647i, -12319i, var_1.c, u_input.a)) ^ u_input.c, max(1i, _wgslsmith_sub_i32(var_1.c, 1i))), vec3<bool>(var_0.b.x, false, 1237f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) * _wgslsmith_f_op_f32(-var_0.d.a))), _wgslsmith_f_op_f32(-255f - var_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(764f, 327f, -1823f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -698f, var_0.e.a)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-940f, global0.a, var_1.a), vec3<f32>(-665f, var_0.c, global0.a)))), !vec3<bool>(var_0.b.x, true, false)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, -833f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(253f, 1257f, var_1.a, -2134f)))))))), var_0.a.x, select(~(~vec2<u32>(u_input.e.x, 1u) & (vec2<u32>(u_input.e.x, 4704u) << (u_input.e % vec2<u32>(32u)))), ~min(~u_input.e, u_input.e), false));
}

