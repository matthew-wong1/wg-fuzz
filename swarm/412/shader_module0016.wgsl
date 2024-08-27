struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<f32>(-1096f, -805f, 1000f, -610f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(414f * -1545f), _wgslsmith_f_op_f32(-437f + global0.b.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-306f, global0.b.x), global0.b.wz, global0.a)) + _wgslsmith_f_op_vec2_f32(global0.b.yy - vec2<f32>(-291f, global0.b.x)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x * global0.b.x), -706f), _wgslsmith_f_op_f32(-853f + _wgslsmith_f_op_f32(f32(-1f) * -1068f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.yz)), global0.b.xw, true)));
    let var_1 = arg_0;
    return -(~var_1.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = Struct_1(any(arg_3), arg_0.b);
    global0 = arg_1;
    var var_2 = vec4<i32>(-1i, arg_2, arg_2, ~func_3(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(arg_2, 43399i)), vec2<i32>(0i, arg_2)), _wgslsmith_add_u32(u_input.a.x | 0u, ~11347u)));
    let var_3 = var_1.a;
    return Struct_1(u_input.a.x >= u_input.a.x, var_1.b);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = (u_input.a.x << (~u_input.a.x % 32u)) >= u_input.a.x;
    global0 = Struct_1(all(select(!select(vec4<bool>(true, global0.a, true, arg_2), vec4<bool>(true, false, false, false), vec4<bool>(true, arg_2, var_0, true)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, global0.a, global0.a, global0.a), vec4<bool>(false, arg_0, arg_1.a, true)), !vec4<bool>(arg_2, true, true, true), select(vec4<bool>(false, arg_0, false, false), vec4<bool>(global0.a, false, true, arg_2), true)), vec4<bool>(all(vec4<bool>(arg_1.a, global0.a, false, arg_2)), var_0, true, true))), vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.x, 535f, true)))));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.a, ~reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 37195u))), abs(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 1u)))) | abs(u_input.a.x);
    var var_2 = vec4<u32>(7097u, ~u_input.a.x, u_input.a.x, 24034u);
    let var_3 = func_2(func_2(arg_1, func_2(Struct_1(arg_1.a, arg_1.b), func_2(arg_1, func_2(arg_1, arg_1, -27524i, vec3<bool>(var_0, var_0, true)), -2147483647i, !vec3<bool>(false, global0.a, false)), i32(-1i) * -965i, vec3<bool>(true, false, arg_1.a)), -33987i, vec3<bool>(!all(vec4<bool>(false, false, true, false)), (-2147483647i >> (var_2.x % 32u)) == (i32(-1i) * -1i), func_2(Struct_1(true, vec4<f32>(global0.b.x, arg_1.b.x, global0.b.x, global0.b.x)), func_2(arg_1, Struct_1(arg_1.a, global0.b), -20417i, vec3<bool>(arg_0, arg_2, arg_0)), 1i, select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_2, var_0, arg_1.a), arg_1.a)).a)), arg_1, _wgslsmith_clamp_i32(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2439i, -2147483647i), vec2<i32>(65202i, 20699i))), ~8052i, 1i), !select(select(!vec3<bool>(arg_1.a, arg_2, arg_1.a), !vec3<bool>(var_0, false, true), false), select(select(vec3<bool>(true, arg_1.a, false), vec3<bool>(arg_1.a, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, global0.a, false), vec3<bool>(arg_1.a, global0.a, true), arg_1.a), any(vec3<bool>(arg_1.a, true, arg_2))), select(select(vec3<bool>(global0.a, false, false), vec3<bool>(true, arg_1.a, global0.a), vec3<bool>(true, global0.a, true)), select(vec3<bool>(global0.a, arg_2, arg_2), vec3<bool>(false, arg_0, true), vec3<bool>(global0.a, true, arg_0)), any(vec4<bool>(true, arg_1.a, arg_1.a, true)))));
    return _wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.x, 0u), 4294967295u);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_1;
    var var_0 = Struct_1(arg_3.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(-708f, 819f)), -588f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-848f - -758f), arg_1.b.x) * -124f), _wgslsmith_f_op_f32(-global0.b.x)));
    global0 = arg_3;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-234f - arg_3.b.x), _wgslsmith_f_op_f32(arg_3.b.x * global0.b.x))) - -1696f) + -1039f);
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1105f, var_1, 292f) * arg_3.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1006f, var_0.b.x, var_0.b.x, -1121f))))));
    return Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-621f)), -801f, _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(abs(var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) + -1022f))));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    global0 = func_5(_wgslsmith_clamp_i32(-arg_0.x, _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_mult_i32(-1i, arg_0.x), (arg_0.x | arg_0.x) & arg_0.x), ~arg_0.x), Struct_1(u_input.a.x > u_input.a.x, _wgslsmith_f_op_vec4_f32(global0.b * global0.b)), vec2<i32>(4237i, _wgslsmith_mod_i32(arg_0.x, arg_0.x) << (func_4(global0.a, func_2(Struct_1(false, global0.b), Struct_1(global0.a, vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), arg_0.x, vec3<bool>(false, global0.a, false)), !global0.a) % 32u)), Struct_1(arg_0.x != _wgslsmith_add_i32(-2147483647i | arg_0.x, 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.b.x), -1000f, global0.b.x))));
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.x)));
    let var_1 = u_input.a.x;
    var var_2 = reverseBits(u_input.a.x);
    var var_3 = Struct_1(global0.a, vec4<f32>(-337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(548f + 166f))), _wgslsmith_f_op_f32(sign(global0.b.x)), _wgslsmith_f_op_f32(sign(global0.b.x))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_clamp_u32(28526u >> (u_input.a.x % 32u), select(u_input.a.x, u_input.a.x, global0.a), select(76106u, 4294967295u, global0.a)) ^ ~3686u, ~u_input.a.x >> (1u % 32u)), vec3<u32>(func_1(select(vec3<i32>(0i, -17887i, 12946i), vec3<i32>(72727i, 63367i, 16281i), global0.a)) | _wgslsmith_add_u32(u_input.a.x, u_input.a.x), reverseBits(_wgslsmith_mod_u32(u_input.a.x << (16999u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 1051u)))), u_input.a.x));
}

