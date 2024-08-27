struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-507f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1614f, -1000f))), _wgslsmith_f_op_f32(ceil(-367f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1072f, 651f, 491f) * vec3<f32>(788f, -1000f, -836f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1204f, 598f)))))));
    var var_2 = Struct_1(var_0);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 653f, var_1.x)) * vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, -1219f)), var_1.x, var_1.x));
    var var_3 = _wgslsmith_f_op_f32(var_1.x + 1000f);
    return -128f;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<bool> {
    var var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = var_1;
    var var_3 = _wgslsmith_clamp_vec2_u32(u_input.d.zx, ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, var_2.a), firstLeadingBit(u_input.d.yy)), vec2<u32>(min(0u, var_2.a), ~42079u)) ^ vec2<u32>(~1u, arg_1.a);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(arg_2.x + -1172f), _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_2.x))))), false)), -113f);
    return !select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(-1i <= u_input.a.x, true)), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, true, false)), arg_2.x > 1000f), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), true)), all(vec2<bool>(true, true)));
}

fn func_2() -> f32 {
    var var_0 = u_input.a.ww;
    var_0 = -(~u_input.a.ww);
    let var_1 = firstTrailingBit(vec2<i32>(~var_0.x, abs(firstTrailingBit(var_0.x))));
    let var_2 = func_4(~1764u | (_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(116611u, 9788u)) << (_wgslsmith_sub_u32(u_input.b.x, min(25555u, 4294967295u)) % 32u)), Struct_1(u_input.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-2147483647i, 41749i, Struct_1(u_input.b.x), Struct_1(u_input.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(step(-159f, _wgslsmith_f_op_f32(ceil(-1088f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-689f, _wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_f_op_f32(-975f - -387f)))));
    var var_3 = 13634u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(867f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(191f - 877f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !func_4(~arg_0.a, arg_2, arg_1.zzx).x;
    var var_1 = ~(~vec3<u32>(_wgslsmith_mult_u32(29336u, _wgslsmith_mult_u32(0u, arg_0.a)), 0u, 30709u));
    var_1 = ~vec3<u32>(arg_0.a | _wgslsmith_add_u32(countOneBits(26720u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a), vec2<u32>(1u, u_input.d.x))), _wgslsmith_div_u32(abs(arg_2.a), 9041u), arg_0.a);
    var var_2 = ~_wgslsmith_div_vec4_u32(select(abs(u_input.b), abs(u_input.b), var_0), ~min(min(u_input.b, u_input.b), ~vec4<u32>(arg_2.a, 1u, 39792u, arg_2.a)));
    let var_3 = -u_input.c;
    return arg_2;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(973f)) * 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(998f + 508f), 684f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f))))));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.b.zzy, ~u_input.b.xwx));
    var var_2 = u_input.a;
    var var_3 = var_1;
    var var_4 = abs(vec2<i32>(-(~firstTrailingBit(-1i)), var_2.x));
    return func_5(Struct_1(var_3.a), vec4<f32>(var_0, _wgslsmith_f_op_f32(floor(-278f)), var_0, _wgslsmith_f_op_f32(364f + _wgslsmith_f_op_f32(func_2()))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec3<i32>(u_input.c << (countOneBits(41182u) % 32u), u_input.a.x, u_input.a.x & u_input.a.x) ^ vec3<i32>(abs(-u_input.a.x), ~u_input.a.x, -1i));
    let var_1 = var_0.x;
    let var_2 = func_1(-10959i);
    var var_3 = !select(select(vec2<bool>(true, true), vec2<bool>(false, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))));
    var var_4 = Struct_1(4294967295u);
    var_4 = var_2;
    var var_5 = reverseBits(u_input.d.zx);
    let var_6 = vec3<f32>(-2538f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f) * -365f), 235f);
    var var_7 = 67020i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0 << (u_input.b.xyw % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_6.x + 894f), -174f, _wgslsmith_div_f32(var_6.x, 691f)), var_6) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_6), var_6)))), 1310f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_6.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-125f - 427f), 969f, var_3.x)))), 239f), var_0.x);
}

