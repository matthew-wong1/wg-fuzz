struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global1 = select(select(vec2<bool>(global1.x, !global1.x), select(select(vec2<bool>(true, false), !vec2<bool>(global1.x, global1.x), global1.x), select(!vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), true), true), select(vec2<bool>(any(vec3<bool>(global1.x, false, global1.x)), false), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), false), true && global1.x)), select(vec2<bool>(any(!vec3<bool>(global1.x, global1.x, false)), u_input.a <= u_input.a), vec2<bool>(false, _wgslsmith_f_op_f32(max(-980f, -1418f)) >= _wgslsmith_f_op_f32(-global0.a)), select(select(vec2<bool>(true, true), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), vec2<bool>(global1.x, false)), any(vec2<bool>(global1.x, global1.x))), !vec2<bool>(true, global1.x), global1.x)), select(vec2<bool>((u_input.a >> (4294967295u % 32u)) < ~u_input.a, _wgslsmith_f_op_f32(-global0.c) == _wgslsmith_f_op_f32(-global0.a)), select(vec2<bool>(true, true), !(!vec2<bool>(false, global1.x)), any(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), global1.x))), vec2<bool>(all(vec2<bool>(global1.x, global1.x)), false)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-527f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1461f)) + _wgslsmith_f_op_f32(-global0.c))) + 690f));
    var var_1 = !(!(!select(!vec3<bool>(global1.x, true, false), vec3<bool>(false, global1.x, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), global1.x))));
    global0 = Struct_1(1000f, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    var var_2 = u_input.b;
    return -864f;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<u32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1017f + _wgslsmith_f_op_f32(-global0.c)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x + -1011f), _wgslsmith_f_op_f32(global0.c + global0.a)) - _wgslsmith_div_f32(162f, _wgslsmith_f_op_f32(-global0.c))), global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c))));
    var var_1 = var_0.b.xz;
    let var_2 = vec4<u32>(arg_0.x, u_input.a, max(~(~0u), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, 38607u), u_input.a, arg_2.x)), 1u);
    let var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.b.x)))))), global0.b.x, var_1.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-3533f + global0.b.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-446f)), -205f, _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_vec3_f32(select(var_3, _wgslsmith_f_op_vec3_f32(select(var_3, var_3, arg_1)), vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x - 1695f)))));
    return var_3;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-571f, global0.a, global0.a, global0.a), vec4<f32>(-1091f, arg_1.c, 766f, global0.b.x)) + vec4<f32>(-1000f, 1158f, global0.a, arg_1.c)) + vec4<f32>(_wgslsmith_f_op_f32(1823f * arg_1.a), -1000f, -1478f, 860f))));
    var var_1 = arg_1;
    let var_2 = Struct_1(arg_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(arg_0, arg_0), true, vec3<u32>(1u, u_input.a, 52695u)))) * var_1.b)), var_1.a);
    var_1 = Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.wxx, arg_1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1050f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b.x)) - var_0.x)));
    let var_3 = ~max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 4972u, u_input.a), vec3<u32>(u_input.a, 13287u, arg_0), select(vec3<u32>(31131u, 4294967295u, u_input.a), vec3<u32>(1u, u_input.a, 45462u), vec3<bool>(global1.x, false, false))), firstLeadingBit(~vec3<u32>(arg_0, arg_0, arg_0))) & ~vec3<u32>(~(~arg_0), _wgslsmith_mult_u32(u_input.a, max(u_input.a, u_input.a)), u_input.a);
    return arg_1.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.b - global0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, arg_3.c, global0.c) + arg_3.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.a, 1007f, -1000f))))))), _wgslsmith_f_op_f32(f32(-1f) * -588f));
    let var_0 = ~arg_2;
    let var_1 = abs(firstTrailingBit(~arg_0.x));
    return vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.a * global0.c))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, -1509f)))), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!(!select(vec2<bool>(false, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(true, global1.x), vec2<bool>(false, global1.x)), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), global1.x))), select(vec2<bool>(global1.x, global1.x), !select(vec2<bool>(true, global1.x), select(vec2<bool>(true, global1.x), vec2<bool>(true, true), global1.x), !global1.x), true), false);
    var var_0 = !any(vec3<bool>(true, (global1.x && global1.x) | global1.x, !all(vec3<bool>(global1.x, global1.x, true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(291f * global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(-1008f, global0.a, global0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.b.x, -1615f))) + -322f)));
    global1 = func_4(-(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-37046i, -42349i, -2147483647i, u_input.c), vec4<i32>(u_input.b, -1i, 2147483647i, 12202i), vec4<i32>(-29469i, -29462i, 2147483647i, u_input.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 9458u), vec4<u32>(0u, 4294967295u, 0u, 47643u) >> (vec4<u32>(4294967295u, u_input.a, 0u, 19320u) % vec4<u32>(32u))), Struct_1(_wgslsmith_div_f32(1053f, global0.b.x), vec3<f32>(global0.a, global0.b.x, -1000f), _wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(var_1.c + 691f))))), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1600u, 56044u, 1u, 3798u)) >> (max(select(vec4<u32>(4294967295u, u_input.a, 352u, 54988u), vec4<u32>(1u, 4294967295u, 3487u, u_input.a), vec4<bool>(true, global1.x, true, global1.x)), min(vec4<u32>(117401u, u_input.a, u_input.a, 11798u), vec4<u32>(u_input.a, u_input.a, u_input.a, 9367u))) % vec4<u32>(32u)), vec4<u32>(33329u, 0u, ~abs(u_input.a), ~min(u_input.a, u_input.a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c, var_1.b.x)) + var_1.b.x)), global0.b, global0.a));
    var_0 = global1.x & all(vec3<bool>(true && global1.x, any(!vec4<bool>(false, global1.x, global1.x, global1.x)), !(global1.x || true)));
    global1 = select(func_4(-(-vec4<i32>(u_input.b, u_input.b, u_input.b, -45250i) << ((vec4<u32>(u_input.a, u_input.a, 22880u, 25655u) << (vec4<u32>(0u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(select(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1799f))), global1.x)), 22129u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, var_1.a, global1.x)) + _wgslsmith_f_op_f32(var_1.c + 440f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(553f, -557f, var_1.b.x) * _wgslsmith_f_op_vec3_f32(-global0.b)), 1244f)), vec2<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, false, global1.x)), vec3<bool>(false, false, global1.x), select(vec3<bool>(true, global1.x, true), vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, false)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), firstLeadingBit(vec4<i32>(-9202i, 2147483647i, -1i, u_input.b))) <= ~(-1i)), select(true, any(vec2<bool>(true, true)), true));
    var_0 = false;
    global1 = select(!vec2<bool>(!any(vec2<bool>(global1.x, global1.x)), all(!vec4<bool>(false, global1.x, true, true))), select(select(vec2<bool>(all(vec2<bool>(false, global1.x)), true), !select(vec2<bool>(global1.x, true), vec2<bool>(false, true), vec2<bool>(true, global1.x)), (global1.x | true) | global1.x), !vec2<bool>(true, global1.x), true), _wgslsmith_f_op_f32(ceil(-1000f)) < var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 56494u), vec3<u32>(1u, 0u, 1u)), vec3<u32>(u_input.a, u_input.a, 4294967295u) >> (vec3<u32>(4294967295u, u_input.a, 4294967295u) % vec3<u32>(32u))), u_input.a, ~38116u, ~_wgslsmith_div_u32(38792u, u_input.a)), vec4<u32>(u_input.a, abs(26156u), _wgslsmith_sub_u32(61867u, u_input.a), max(u_input.a, u_input.a)) & (~vec4<u32>(67159u, 4294967295u, 4294967295u, 6272u) ^ ~vec4<u32>(u_input.a, 1u, 0u, 0u))), u_input.a, vec4<u32>(u_input.a, 4157u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.a, 0u), ~(~u_input.a)), 43654u), vec2<f32>(-314f, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(230f, -1172f))))));
}

