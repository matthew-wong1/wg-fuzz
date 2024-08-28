struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.b.x, ~(~u_input.b.x)), _wgslsmith_div_i32(abs(u_input.b.x), -10162i)), -max(vec2<i32>(abs(u_input.b.x), -5597i), _wgslsmith_sub_vec2_i32(~u_input.b.zx, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), u_input.b.zy))));
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(min(385f, global0.b))))) <= _wgslsmith_f_op_f32(f32(-1f) * -533f));
    global0 = arg_0;
    var_0 = ~u_input.b.xz;
    global0 = Struct_1(_wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(-655f, _wgslsmith_div_f32(arg_3.x, _wgslsmith_div_f32(1638f, -642f)), _wgslsmith_div_f32(global0.a.x, -783f), _wgslsmith_f_op_f32(-arg_3.x))), arg_0.b, !select(!select(global0.c, vec2<bool>(false, false), global0.c), select(global0.c, !global0.c, vec2<bool>(true, true)), all(!vec3<bool>(var_1, global0.c.x, true))), false);
    return _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(1830f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, arg_3.x) - _wgslsmith_f_op_f32(step(-277f, 1000f))))));
}

fn func_2() -> bool {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -443f, global0.b, -213f) + vec4<f32>(global0.b, 1396f, global0.a.x, 1170f))) * global0.a))), -742f, vec2<bool>(true, _wgslsmith_f_op_f32(1155f * _wgslsmith_f_op_f32(trunc(1061f))) == 736f), global0.d);
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(global0.a.x, -1491f, -662f, global0.b), global0.a.x, global0.c, global0.c.x), 1u, vec2<u32>(20185u, u_input.a), global0.a.zx))))), global0.a.x, _wgslsmith_div_f32(254f, -1370f)), -242f, global0.c, true);
    var var_0 = Struct_1(global0.a, global0.b, !select(global0.c, vec2<bool>(global0.d, global0.c.x), select(vec2<bool>(true, false), !global0.c, global0.c.x)), !global0.c.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-1000f, var_0.b, -267f, -1040f))) - global0.a)), var_0.b, !global0.c, select(var_0.d, global0.d, true));
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-197f)))), global0.a.x, -2252f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * var_1.a.x) * _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(var_0.a.x + -323f)))), _wgslsmith_f_op_f32(-var_0.b), select(global0.c, select(!global0.c, vec2<bool>(false | var_0.d, global0.d), any(vec2<bool>(true, true))), !(!vec2<bool>(var_1.c.x, true))), any(select(!vec4<bool>(var_1.c.x, false, var_1.c.x, false), vec4<bool>(global0.c.x | false, true, all(vec2<bool>(false, true)), 33540i > u_input.b.x), var_1.c.x)));
    return !var_1.d;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, 1762f, -706f, 1184f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(857f, 2816f, global0.b, global0.b)))) * vec4<f32>(-325f, _wgslsmith_f_op_f32(trunc(-437f)), arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2220f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -473f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(170f + -939f)))) - -1071f), vec2<bool>(!(~17925u < _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 94792u, 1u, u_input.a), vec4<u32>(35887u, u_input.a, u_input.a, 27573u))), any(select(vec3<bool>(true, false, arg_2.d), !vec3<bool>(arg_2.c.x, arg_1, true), global0.d))), func_2());
    global0 = arg_2;
    global0 = arg_2;
    let var_0 = arg_2;
    var var_1 = vec3<bool>(true, all(!select(select(vec4<bool>(true, true, arg_2.d, true), vec4<bool>(true, arg_2.c.x, var_0.d, arg_1), true), vec4<bool>(true, var_0.c.x, false, false), select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, true, arg_2.d, arg_1), true))), true & var_0.c.x);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f * var_0.a.x)), -1384f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1081f + global0.a.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - arg_2.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -1i;
    var_0 = abs(i32(-1i) * -(~4835i));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), 1000f, global0.a.x, arg_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(~u_input.b.x, true, arg_1)).x), vec2<bool>(false, global0.c.x), arg_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(global0.a * global0.a);
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-415f)), -302f, 375f, _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(677f, global0.b)))))), global0.c, true);
    let var_2 = !var_1.d;
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(913f, -822f)), 531f, var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, -255f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(826f)))))), var_1.c, false);
    var var_3 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a)), u_input.a) ^ firstTrailingBit(~vec2<u32>(~u_input.a, u_input.a));
    let var_4 = vec3<bool>(!select(-2147483647i >= ~u_input.b.x, any(select(vec3<bool>(global0.c.x, false, var_2), vec3<bool>(false, global0.d, global0.d), vec3<bool>(var_2, var_1.d, false))), false), !var_1.d, var_2);
    let var_5 = firstTrailingBit(15242i);
    let var_6 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(-78215i, !var_1.c.x, Struct_1(var_1.a, -635f, var_4.zy, true))) * vec4<f32>(_wgslsmith_div_f32(var_1.b, 314f), 109f, _wgslsmith_f_op_f32(min(global0.a.x, 833f)), _wgslsmith_f_op_f32(floor(-1025f)))), -466f, global0.c, !var_4.x), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(377f, 111f, 1757f, global0.a.x), vec4<f32>(-854f, 1734f, -226f, var_0.x)))), vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-329f * var_1.b), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global0.a.x + -1015f)), var_1.d)), global0.b, !global0.c, any(vec3<bool>(var_2 && true, true, false))), _wgslsmith_dot_vec2_u32((abs(vec2<u32>(0u, u_input.a)) >> ((vec2<u32>(16313u, u_input.a) & vec2<u32>(u_input.a, var_3.x)) % vec2<u32>(32u))) << (vec2<u32>(49482u, _wgslsmith_clamp_u32(u_input.a, var_3.x, var_3.x)) % vec2<u32>(32u)), max(_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, 921u), vec2<u32>(1u, var_3.x)), reverseBits(vec2<u32>(var_3.x, 12877u))) >> (max(min(vec2<u32>(var_3.x, 1u), vec2<u32>(4294967295u, var_3.x)), vec2<u32>(38625u, 44634u)) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1535f, global0.a.x, _wgslsmith_f_op_f32(ceil(var_0.x)), var_1.b) - vec4<f32>(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -1142f), _wgslsmith_div_f32(var_0.x, -398f), global0.b)), var_1.a.x, var_1.c, ~max(2147483647i, 13300i) >= var_5));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_1(-(~var_5), false, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_6.a))), _wgslsmith_f_op_f32(-global0.b), vec2<bool>(true, global0.d), any(!vec4<bool>(var_4.x, false, true, true))))).xw, var_3.x);
}

