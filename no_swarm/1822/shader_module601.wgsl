struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-637f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) + 361f)), global0.b, 1000f);
    var var_1 = Struct_1(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(arg_0.b - var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, arg_0.b))) * var_0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(745f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(612f, 914f)) * _wgslsmith_f_op_f32(min(1806f, -635f))) + arg_0.b)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(981f * arg_0.b) * _wgslsmith_f_op_f32(-var_1.b)), var_1.b))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    let var_1 = ~arg_1 != u_input.d;
    global0 = arg_3;
    let var_2 = arg_3;
    let var_3 = Struct_1(-global0.a, _wgslsmith_f_op_f32(func_1(Struct_1(-1i, var_0.b))));
    return u_input.d;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-288f + 1086f) * _wgslsmith_f_op_f32(floor(-244f)))))));
    global0 = Struct_1(min(i32(-1i) * -(43374i | arg_2.a), arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.b))));
    global0 = Struct_1(~(i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1026f, 1899f, false)), _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -1383f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b)) * _wgslsmith_f_op_f32(-global0.b)))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b))), -1000f, global0.b);
    var var_2 = select(vec2<bool>(true, true), !vec2<bool>(true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), !vec2<bool>(true, all(vec2<bool>(true, true))));
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * -1000f) + _wgslsmith_f_op_f32(ceil(var_0.b))) * -795f))));
    global0 = Struct_1(~(-(global0.a ^ (arg_0.a | global0.a))), 1000f);
    var var_2 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(-arg_0.b));
    let var_3 = 1u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-541f, global0.b, 629f, global0.b), vec4<f32>(1094f, -853f, global0.b, global0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, 238f, -1067f, 2765f), vec4<f32>(global0.b, -1547f, -515f, global0.b), vec4<bool>(true, false, false, true))))))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(abs(global0.b)), u_input.a <= -2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, global0.b))))), 113f))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b, global0.b, var_0.x, -757f), vec4<f32>(-1046f, 269f, global0.b, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.b, -337f, -861f, 152f), vec4<f32>(var_0.x, global0.b, global0.b, -124f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 176f, global0.b, var_0.x)))));
    var var_1 = !select(vec4<bool>(true & select(true, false, true), 11208u < u_input.d, !all(vec2<bool>(false, false)), global0.a > _wgslsmith_dot_vec4_i32(vec4<i32>(-37342i, -1i, 82628i, u_input.a), vec4<i32>(3016i, 27484i, u_input.b, -1i))), vec4<bool>(global0.b == global0.b, true, any(vec2<bool>(true, true)), countOneBits(global0.a) >= global0.a), vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), true));
    var_1 = !vec4<bool>(all(vec3<bool>(false, var_1.x, var_1.x)) && var_1.x, max(~27512u, 4294967295u) < ~u_input.c, var_1.x, ((-2147483647i >> (u_input.d % 32u)) > -25205i) == false);
    global0 = Struct_1(-_wgslsmith_add_i32(-30914i, _wgslsmith_mult_i32(global0.a, -20146i)), global0.b);
    var var_2 = u_input.d;
    global0 = Struct_1(_wgslsmith_mult_i32(~1i << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(49081u, 1u, u_input.d, u_input.d)), select(vec4<u32>(u_input.c, 4294967295u, 745u, u_input.d), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec4<bool>(var_1.x, false, var_1.x, true))) % 32u), -1i), -925f);
    var var_3 = func_4(Struct_1(19560i, _wgslsmith_f_op_f32(-global0.b)), func_3(select(vec2<u32>(~1u, func_2(global0.b, u_input.d, 1252f, Struct_1(u_input.a, var_0.x))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.d, u_input.d)) >> (vec2<u32>(4294967295u, u_input.d) % vec2<u32>(32u)), var_1.yz), Struct_1(countOneBits(1i >> (u_input.c % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), Struct_1(abs(~51005i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(func_1(Struct_1(13580i, global0.b))))), Struct_1(-global0.a, 761f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-872f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(global0.b + -217f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -432f)))));
}

