struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: bool,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.a.x, 1919f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(426f, arg_0.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a.yy)), arg_0.a.wy, vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a.wy, vec2<f32>(-1346f, arg_0.a.x), vec2<bool>(arg_0.c, true))))))), arg_0.a.zz));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, 153f))))), _wgslsmith_f_op_f32(-arg_0.a.x)));
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) - -282f);
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1362f))), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(804f, -1371f, -442f, 989f), u_input.c, true, 0u, 8964u))), _wgslsmith_f_op_f32(f32(-1f) * -1225f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(220f * -1046f) - -307f))), vec4<i32>(_wgslsmith_clamp_i32(-33371i, min(-23497i, abs(-13835i)), abs(i32(-1i) * -1i)), -u_input.c.x, 2147483647i, select(firstTrailingBit(u_input.c.x), ~u_input.c.x, !all(vec2<bool>(true, false)))), any(vec2<bool>(true, true)), 4294967295u, u_input.a.x >> (u_input.a.x % 32u));
    global0 = -174f;
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(378f, var_0.a.x), _wgslsmith_f_op_f32(-1121f * -1239f)))) <= -1000f, var_0.c, false);
    var var_2 = vec4<i32>(-1i) * -select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, u_input.c.x, -1i, -1i), vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 1i), -var_0.b), min(u_input.c, vec4<i32>(1i, var_0.b.x, 23695i, -19556i)), !any(vec2<bool>(var_0.c, var_0.c)));
    return var_0.a.x;
}

fn func_1() -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_f32(round(-823f)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-170f, _wgslsmith_f_op_f32(func_2())) + _wgslsmith_div_f32(-247f, -1108f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1088f - _wgslsmith_f_op_f32(max(1604f, 307f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1035f * 711f)), 1000f, 1259f) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(711f + -157f) - _wgslsmith_f_op_f32(floor(1505f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(344f)) + _wgslsmith_f_op_f32(-463f + 2227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(421f, -592f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1284f))))), -u_input.c, true, u_input.a.x >> (95897u % 32u), 1u ^ u_input.a.x);
    var var_2 = u_input.c.zyy;
    return !select(vec2<bool>(var_1.c, 375f <= var_1.a.x), select(!vec2<bool>(true, var_1.c), vec2<bool>(false, var_1.c), !any(vec3<bool>(var_1.c, var_1.c, var_1.c))), true);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1077f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(679f)) - arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(225f * 782f) + _wgslsmith_f_op_f32(abs(-729f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1073f, 377f, arg_0), vec3<f32>(arg_0, arg_0, -221f))))))));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-819f))), arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(168f, 305f, var_0.x, -803f))))))), u_input.c, true, 29142u, ~abs(~u_input.b));
    global0 = var_1.a.x;
    let var_2 = 18025u;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(680f, var_0.x, -898f, var_1.a.x) + var_1.a)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + var_1.a.x), var_0.x, _wgslsmith_f_op_f32(floor(arg_0))))))), var_1.b, all(vec2<bool>(arg_1.x, true)), var_2 & ~_wgslsmith_clamp_u32(~65094u, _wgslsmith_dot_vec3_u32(u_input.a.zxy, vec3<u32>(u_input.a.x, var_2, var_1.d)), 10765u), 1u);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, -432f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_0) * _wgslsmith_f_op_f32(var_1.a.x * 1000f)))), ~u_input.c, false, _wgslsmith_mult_u32(countOneBits(abs(firstLeadingBit(4294967295u))), u_input.a.x), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, var_1.d >> (4294967295u % 32u)), ~_wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(var_3.d, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2273f)) * -711f), 622f), func_1());
    var var_1 = u_input.c;
    global0 = -734f;
    let var_2 = func_4(429f, vec2<bool>(all(select(!vec3<bool>(false, var_0.c, false), !vec3<bool>(true, var_0.c, var_0.c), !var_0.c)), var_0.c));
    var var_3 = func_4(-981f, !vec2<bool>(var_2.c, _wgslsmith_f_op_f32(min(1000f, var_2.a.x)) > var_2.a.x));
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_2.a, var_2.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, -102f, var_3.a.x, -658f))) - var_3.a))), var_2.b, true, 1u, 35284u);
    var var_4 = ~vec3<u32>(u_input.a.x >> ((reverseBits(var_2.e) << (u_input.a.x % 32u)) % 32u), ~u_input.d.x, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(countOneBits(~u_input.a.x), var_2.e), countOneBits(_wgslsmith_clamp_u32(var_0.e, 1u, 5149u))));
}

