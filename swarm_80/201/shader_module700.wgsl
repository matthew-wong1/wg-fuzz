struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1047f)))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1942f)) + 798f);
    let var_1 = _wgslsmith_div_i32(-select(~_wgslsmith_mod_i32(u_input.d, 1i), u_input.d, all(select(vec3<bool>(arg_0.x, false, arg_0.x), arg_0, arg_0))), ~(-abs(u_input.d)));
    global0 = -1982f;
    var var_2 = u_input.a;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1373f) * -784f)))));
}

fn func_3() -> u32 {
    var var_0 = true;
    return 4294967295u;
}

fn func_1() -> Struct_4 {
    let var_0 = u_input.d;
    global0 = -1000f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(948f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f - -946f))));
    let var_1 = vec2<u32>(firstLeadingBit(firstLeadingBit(u_input.b.x ^ 6631u) | u_input.b.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(45538u, 16174u), _wgslsmith_add_u32(firstTrailingBit(u_input.a.x), u_input.a.x)), u_input.e, func_3()));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(722f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + -1000f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(288f, -1000f, 751f, -1340f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1051f, 370f, -608f, 343f) - vec4<f32>(563f, -412f, 1000f, 1432f))))))), (u_input.d ^ -30827i) ^ var_0, Struct_1(~(~var_0) < ~(-13852i), 1u, _wgslsmith_div_f32(311f, 133f)));
}

fn func_4(arg_0: Struct_4) -> bool {
    let var_0 = func_1();
    return any(vec4<bool>(any(!vec2<bool>(arg_0.d.a, false)) && !var_0.d.a, var_0.d.a, var_0.d.a, arg_0.d.a));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    var var_0 = any(select(select(vec2<bool>(true, true), select(!vec2<bool>(true, arg_0.a), select(vec2<bool>(false, true), vec2<bool>(true, true), true), all(vec2<bool>(true, true))), !(arg_0.c == false)), !(!(!vec2<bool>(true, arg_0.a))), select(_wgslsmith_f_op_f32(arg_0.e - arg_0.e) >= 1000f, true, select(true && arg_0.c, any(vec3<bool>(true, arg_0.a, true)), select(false, arg_0.a, true)))));
    let var_1 = !vec4<bool>(arg_0.c, false, true, arg_0.a);
    var_0 = any(select(select(select(vec4<bool>(arg_0.c, true, false, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, var_1.x, var_1.x, var_1.x)), var_1, any(var_1.xy) || arg_0.a), select(!var_1, var_1, true), var_1));
    let var_2 = 36079i;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(func_4(func_1()) == true, Struct_2(u_input.e), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), u_input.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-554f))))))));
    var var_1 = Struct_3(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false)), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))), Struct_2(4294967295u), !func_1().d.a, i32(-1i) * -32762i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1201f, _wgslsmith_f_op_f32(ceil(-1031f)))) + -1049f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2473f, var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, var_1.c)))), 1536f)));
    var_1 = Struct_3(any(select(select(select(vec2<bool>(false, var_1.c), vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, var_1.a)), vec2<bool>(true, false), !vec2<bool>(false, var_1.a)), !select(vec2<bool>(var_1.c, true), vec2<bool>(false, var_1.a), vec2<bool>(var_1.c, false)), select(vec2<bool>(true, var_1.c), vec2<bool>(var_1.c, var_1.c), true))), var_1.b, true, max(abs(-1i & u_input.d), ~_wgslsmith_clamp_i32(1i, -1i, u_input.d)) | ~21718i, var_1.e);
    let var_3 = var_2.x;
    let var_4 = ~u_input.b;
    let var_5 = ~firstTrailingBit(~15363u);
    var_0 = func_5(Struct_3(var_1.c, var_1.b, var_1.c, 55253i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.e))), 140f, func_4(func_1()))) - 1210f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-var_1.e)) - _wgslsmith_f_op_f32(min(-1197f, _wgslsmith_f_op_f32(-var_2.x)))) - -1000f), 0i);
}

