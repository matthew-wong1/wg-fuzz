struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-891f, 409f, 987f, 389f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1001f))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, 703f, global0.x, var_0))))))));
    let var_1 = vec2<u32>(~firstLeadingBit(~1u), abs(u_input.b));
    var var_2 = -9716i;
    var var_3 = var_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1382f, 1000f, -745f)) + global0.yzz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.ywy, vec3<f32>(1000f, -855f, 1221f), vec3<bool>(false, true, true))) + global0.wwy))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> f32 {
    global0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x))))), global0.x, global0.x);
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -1361f) - vec4<f32>(global0.x, global0.x, -1779f, -1081f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -230f, global0.x, 460f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2245f, 1000f, global0.x, -126f), vec4<f32>(-623f, global0.x, global0.x, global0.x), false)), arg_1.x < arg_1.x)))), 1u >= countOneBits(countOneBits(u_input.b & 1u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -29077i, arg_1.x, -2147483647i), vec4<i32>(u_input.a, arg_1.x, 1i, -7517i)))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(min(var_0.a.x, -338f))))))), -309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-413f + _wgslsmith_f_op_f32(-global0.x)), 1174f))), _wgslsmith_f_op_f32(-global0.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1710f + global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.a.x, global0.x, var_0.c.x)))), any(select(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, true), vec2<bool>(var_0.b, false)), vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, select(var_0.b, false, var_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(arg_1.x, -1986i, 30482i, -2147483647i))) * vec3<f32>(-390f, global0.x, var_0.a.x))));
    let var_1 = Struct_1(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), global0.x, _wgslsmith_f_op_f32(trunc(243f))), false, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1505f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(var_0.a.x + -271f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.x)), var_0.a.x))), _wgslsmith_f_op_vec3_f32(abs(global0.zyw)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, global0.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, -365f, _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(563f - arg_0.c.x)), _wgslsmith_f_op_f32(exp2(arg_3))) + _wgslsmith_f_op_vec4_f32(-arg_0.a)), !(~35454u > u_input.b), arg_1.a.yww);
    global0 = _wgslsmith_div_vec4_f32(arg_2.a, vec4<f32>(801f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-170f - -1113f), _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a, u_input.a, 16506i, u_input.a) & vec4<i32>(u_input.a, 1i, 25749i, 52544i), -vec3<i32>(u_input.a, 0i, u_input.a)))), -1661f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-370f + global0.x) + -1657f)))));
    var var_1 = -237f;
    var var_2 = ~_wgslsmith_clamp_u32(~(~18640u), _wgslsmith_dot_vec4_u32(~(vec4<u32>(28270u, u_input.b, 0u, u_input.b) | vec4<u32>(22088u, 29304u, 1u, 0u)), vec4<u32>(0u, 1u, ~u_input.b, _wgslsmith_mult_u32(u_input.b, 34750u))), u_input.b);
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))).x, _wgslsmith_f_op_f32(global0.x * -3452f)))), 745f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(global0.x, -562f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(global0.x, 1044f, false)))), global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-742f, global0.x, 431f, global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(-222f, global0.x, 1395f, -1270f))))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(-549f)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(global0.x, 1000f, global0.x, global0.x), true, global0.wwz), Struct_1(vec4<f32>(global0.x, 1249f, global0.x, -860f), true, global0.yxz), Struct_1(vec4<f32>(global0.x, -268f, 454f, global0.x), true, vec3<f32>(1271f, global0.x, global0.x)), global0.x)) - _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a, u_input.a, 14784i, 3269i), vec3<i32>(54983i, 44069i, u_input.a))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(-1291f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(773f))), _wgslsmith_div_f32(276f, 137f)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 268f), vec4<f32>(global0.x, -515f, -1206f, 347f)))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-835f, -818f)) - 126f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -484f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1028f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))))), _wgslsmith_f_op_f32(select(global0.x, global0.x, abs(u_input.a) > u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(1710f + 1314f))) * 642f), _wgslsmith_f_op_f32(var_0.x * -1870f), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-7535i, -3411i, -2147483647i, u_input.a) << (vec4<u32>(26786u, 4294967295u, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, -21611i, u_input.a), any(vec3<bool>(false, false, false))), select(vec4<i32>(21687i, u_input.a, u_input.a, u_input.a), vec4<i32>(14633i, -1i, -1i, u_input.a), vec4<bool>(false, true, true, false)) ^ -vec4<i32>(-1918i, 880i, u_input.a, -2097i)), select(any(vec3<bool>(true, true, true)), true || any(vec3<bool>(true, false, false)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true))))), -vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, -18862i, 3104i), abs(vec3<i32>(77041i, u_input.a, u_input.a))), firstTrailingBit(-27002i) << (u_input.b % 32u), abs(firstTrailingBit(u_input.a))), u_input.b ^ ~379u);
}

