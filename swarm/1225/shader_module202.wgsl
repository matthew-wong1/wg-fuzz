struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = ~(~(~vec4<u32>(arg_0, arg_0, 4294967295u, arg_0))) ^ ~vec4<u32>(arg_0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, 0u, 13302u), vec4<u32>(arg_0, 31705u, arg_0, 1u)), arg_0, ~firstTrailingBit(41866u));
    var_1 = ~vec4<u32>(_wgslsmith_mult_u32(max(1u & var_1.x, abs(arg_0)), min(_wgslsmith_add_u32(arg_0, 34030u), 0u)), 13549u, arg_0, firstTrailingBit(1u));
    let var_2 = max(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, 7003u, 1u), vec3<u32>(13480u ^ arg_0, select(arg_0, var_1.x, true), ~var_1.x)) & 25603u, var_1.x);
    var var_3 = false;
    return arg_2;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = ~(~((vec3<u32>(arg_0.x, arg_0.x, 63018u) | vec3<u32>(arg_0.x, 43828u, 4294967295u)) | vec3<u32>(1u, arg_0.x, ~arg_0.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_2);
    var var_2 = -arg_1.zx;
    var var_3 = _wgslsmith_f_op_f32(var_1.x * -720f);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.yy, vec2<f32>(var_1.x, var_1.x), false))))));
    return 1260f;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-168f, -627f, -730f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(693f, 1078f, -532f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1376f, 234f, 385f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-180f, -666f, -1401f), vec3<f32>(770f, -679f, 545f)), vec3<f32>(326f, 1156f, -247f))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = u_input.a.x;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * 1814f), -822f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~vec2<u32>(8259u, 0u), vec3<i32>(i32(-1i) * -21321i, i32(-1i) * -6291i, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, var_0.x, 1315f), vec3<f32>(var_0.x, var_0.x, -1000f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-960f)), _wgslsmith_f_op_f32(1014f - _wgslsmith_f_op_f32(round(-1109f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = reverseBits(~(countOneBits(1u) >> (1u % 32u))) & (firstLeadingBit(~1u) ^ ~(1u ^ firstTrailingBit(0u)));
    return reverseBits(94790u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1u, true, Struct_2(Struct_1(u_input.a.x)));
    let var_1 = func_1(~(4294967295u | _wgslsmith_mod_u32(func_2(), ~0u)), true, func_1(~41375u, !any(vec4<bool>(true, false, true, true)), Struct_2(Struct_1(u_input.a.x))));
    var_0 = var_1;
    var_0 = Struct_2(Struct_1(abs(_wgslsmith_div_i32(i32(-1i) * -28408i, 135i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(506f, -1167f, -1103f, -1288f)))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-757f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 734f) * _wgslsmith_f_op_f32(sign(639f))))), _wgslsmith_div_f32(750f, -1553f), _wgslsmith_f_op_f32(trunc(-1993f)), -1040f));
    var_0 = Struct_2(Struct_1(-3546i >> (firstTrailingBit(0u) % 32u)));
    var_0 = var_1;
    var var_3 = var_2.x;
    var var_4 = min(~vec3<u32>(func_2(), ~_wgslsmith_clamp_u32(43988u, 14600u, 0u), 4294967295u), vec3<u32>(~65459u, 4294967295u, ~abs(firstLeadingBit(69334u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_mult_u32(~var_4.x, _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(var_4.x, var_4.x, 45846u, var_4.x)), min(countOneBits(vec4<u32>(var_4.x, var_4.x, 2313u, 23697u)), countOneBits(vec4<u32>(1u, 22756u, 1u, var_4.x))))), ~(select(abs(22134i), var_0.a.a, true) | abs(1i)), ~_wgslsmith_clamp_i32(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -var_1.a.a, 1i));
}

