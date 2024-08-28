struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global0 = u_input.a;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(446f - 1f))) * 1f), _wgslsmith_f_op_f32(-1359f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-593f, -830f), _wgslsmith_f_op_f32(-1000f - 1180f))))), 428f);
    let var_1 = firstTrailingBit(~vec3<u32>(u_input.b, u_input.d | 31111u, 3907u)) >> (select(vec3<u32>(u_input.b, 1u, ~4294967295u), ~vec3<u32>(4294967295u, u_input.c.x, u_input.b) & ~(~vec3<u32>(4294967295u, 1u, 4294967295u)), true) % vec3<u32>(32u));
    global0 = -1i;
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    return any(!arg_0.zy);
}

fn func_2() -> u32 {
    var var_0 = Struct_2(vec2<bool>(!func_3(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-684f, 766f)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(397f * -411f)))), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -10072i, i32(-1i) * -1i, -115i, u_input.a), abs(~vec4<i32>(u_input.a, 67538i, -1i, u_input.a)))));
    var_0 = Struct_2(!vec2<bool>(true, var_0.a.x & (u_input.d <= u_input.c.x)), (var_0.b & firstLeadingBit(vec4<i32>(-1783i, 19351i, u_input.a, u_input.a))) >> (~(~(~vec4<u32>(u_input.b, 34072u, u_input.d, 37350u))) % vec4<u32>(32u)));
    let var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-888f * -1845f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-280f, -1000f)) * -373f))), _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1078f, 225f, 325f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, -1320f, 1289f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(-386f - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-936f, 1150f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1458f, -395f, 1408f))))), ~(~countOneBits(firstLeadingBit(vec3<u32>(u_input.c.x, 19908u, u_input.c.x)))));
    global0 = 35736i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.c, 1134f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(614f))), -1617f, -567f)));
    return _wgslsmith_dot_vec3_u32(var_1.e, select(var_1.e, _wgslsmith_sub_vec3_u32(var_1.e << (var_1.e % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~var_1.e, _wgslsmith_sub_vec3_u32(var_1.e, var_1.e))), !select(select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(true, false, var_0.a.x), vec3<bool>(var_0.a.x, false, var_0.a.x)), select(vec3<bool>(false, true, var_0.a.x), vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.a.x), var_0.a.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_clamp_i32(u_input.a, -2147483647i, 14176i);
    let var_2 = arg_2.x;
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f + arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)))));
    return ~(arg_3 | ~(~664u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u > (_wgslsmith_clamp_u32(4294967295u, func_1(vec4<bool>(false, false, false, true), Struct_2(vec2<bool>(false, false), vec4<i32>(u_input.a, u_input.a, 0i, -3619i)), vec2<f32>(1000f, 314f), u_input.b) & (u_input.b >> (14123u % 32u)), firstTrailingBit(~49378u)) & max(max(0u, u_input.d), 1u));
    let var_1 = -(~(~(-vec3<i32>(u_input.a, 2390i, -2147483647i))));
    global0 = var_1.x;
    var var_2 = ~(~select(u_input.c, vec2<u32>(4294967295u, ~u_input.b), vec2<bool>(true, true)));
    let var_3 = vec2<i32>(-_wgslsmith_mod_i32(1i, -2147483647i), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, 5144i);
}

