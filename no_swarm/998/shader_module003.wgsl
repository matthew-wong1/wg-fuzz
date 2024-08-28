struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(trunc(arg_0.a));
}

fn func_3() -> bool {
    let var_0 = false;
    let var_1 = Struct_1(870f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1788f), 1185f), 1475f, _wgslsmith_f_op_f32(func_2(Struct_1(197f, vec3<f32>(-277f, 705f, -405f), 819f), vec4<bool>(var_0, false, var_0, var_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(631f, 553f, any(vec4<bool>(false, var_0, true, false)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.zy + _wgslsmith_f_op_vec2_f32(-var_1.b.xz)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_1.b.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1218f, var_1.a)))), _wgslsmith_f_op_vec2_f32(-var_1.b.xx)))));
    var var_3 = u_input.a ^ u_input.a;
    var_3 = _wgslsmith_dot_vec4_u32(select(vec4<u32>(~abs(0u), (u_input.a >> (u_input.a % 32u)) & _wgslsmith_div_u32(36901u, 1u), 57456u, 0u), ~(~vec4<u32>(0u, 25552u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) % vec4<u32>(32u))), all(select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(var_0, true, true, var_0), false)) && !var_0), ~vec4<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(u_input.a, 0u), reverseBits(u_input.a)), max(~u_input.a, ~u_input.a), u_input.a));
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(arg_1, vec4<bool>(true, true, true, true))), arg_1.c, select(any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true, func_3()))));
    var var_1 = -22209i << (1u % 32u);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, ~1i), -_wgslsmith_div_i32(-11802i, -2147483647i)), 21255i);
    let var_3 = var_2 & (_wgslsmith_mod_i32(var_2, 60659i) >> (4294967295u % 32u));
    var_1 = var_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_1.c))))) - 846f);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(1000f, _wgslsmith_f_op_vec3_f32(-arg_0.wxx), _wgslsmith_div_f32(-137f, -218f));
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = arg_1;
    let var_3 = -573f;
    return Struct_1(arg_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1781f, 944f, var_3)))) - _wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, -2602f, 471f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-2856f * _wgslsmith_f_op_f32(-var_2.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + -525f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f * 655f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-135f, 800f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2015f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -865f))), _wgslsmith_div_f32(100f, 1f)), _wgslsmith_f_op_f32(f32(-1f) * -1558f));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-895f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(320f)), var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(262f, var_0.c)) + _wgslsmith_div_f32(1651f, var_0.a)), -1000f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.x, 150f, var_0.a, var_0.b.x), vec4<f32>(var_0.b.x, var_0.b.x, -1000f, var_0.a)))))))), Struct_1(-689f, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(843f, var_0.a, true)))) * _wgslsmith_f_op_f32(func_1(Struct_1(var_0.b.x, vec3<f32>(var_0.a, var_0.b.x, var_0.a), var_0.a), Struct_1(var_0.b.x, var_0.b, var_0.b.x))))), var_0.b.zy, _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(18994i, countOneBits(-1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(17260i, -1i), vec2<i32>(-19685i, 0i)), 1i)));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-517f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1057f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_div_f32(var_0.c, var_1.b.x)));
    var var_4 = _wgslsmith_add_u32(countOneBits((u_input.a ^ u_input.a) & (1u | ~u_input.a)), ~firstTrailingBit(u_input.a) >> (290u % 32u));
    let var_5 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, ~0u == u_input.a), select(!(var_1.b.x < -907f), true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)))));
    var_4 = _wgslsmith_add_u32(u_input.a, u_input.a);
    var var_6 = var_5;
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(abs(4294967295u & (u_input.a ^ u_input.a)), ~1u), min(-1i, abs(_wgslsmith_div_i32(select(19770i, 1i, true), _wgslsmith_div_i32(0i, -4479i)))), ~reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 40999u, u_input.a), ~vec3<u32>(1u, u_input.a, 0u))));
}

