struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -593f;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(-u_input.a, 4294967295u, _wgslsmith_f_op_f32(1f * 389f), Struct_1(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a.yy), ~vec2<i32>(32930i, u_input.a.x))), all(vec2<bool>(false, true)) && true, -1419f));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1112f)))));
    global0 = _wgslsmith_div_f32(-655f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c)) + _wgslsmith_f_op_f32(-var_0.c)));
    let var_1 = firstTrailingBit(~_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.b, 1u), ~firstLeadingBit(vec2<u32>(1u, 88u))));
    let var_2 = Struct_2(-firstTrailingBit(-(vec3<i32>(u_input.a.x, var_0.d.a.x, u_input.a.x) & vec3<i32>(-1i, 0i, var_0.d.a.x))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, 125f)) + _wgslsmith_f_op_f32(-var_0.d.c))), Struct_1(var_0.a.yy, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c) * _wgslsmith_f_op_f32(-var_0.c))));
    return var_2.d.c;
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(func_3());
    let var_0 = all(!vec3<bool>(any(vec2<bool>(true, true)), false, false));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1091f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1345f * _wgslsmith_f_op_f32(min(-123f, 866f))), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-387f))))))));
    var var_1 = ~vec3<u32>(1u, _wgslsmith_clamp_u32(~(~0u), ~1u, ~0u), ~1u);
    var_1 = abs(vec3<u32>(0u | ~(var_1.x ^ var_1.x), var_1.x | ~(~var_1.x), _wgslsmith_add_u32(var_1.x, ~1u >> (_wgslsmith_sub_u32(var_1.x, var_1.x) % 32u))));
    return Struct_2(vec3<i32>(_wgslsmith_add_i32(u_input.a.x & (28868i ^ u_input.a.x), u_input.a.x), -24262i, u_input.a.x), var_1.x, _wgslsmith_f_op_f32(floor(264f)), Struct_1(-(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 145i), u_input.a.xz) << (~var_1.zz % vec2<u32>(32u))), all(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, true), var_0)) | all(select(vec3<bool>(false, false, true), vec3<bool>(var_0, false, false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    let var_0 = -(~u_input.a.yx);
    let var_1 = func_2();
    global0 = -404f;
    var var_2 = vec2<bool>(false, all(!select(!vec4<bool>(var_1.d.b, var_1.d.b, var_1.d.b, var_1.d.b), !vec4<bool>(true, var_1.d.b, false, true), true)));
    let var_3 = vec2<bool>(var_1.d.b, true);
    return StorageBuffer(firstLeadingBit(1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = any(!(!vec4<bool>(true, u_input.a.x > -5044i, true, any(vec3<bool>(true, true, false)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-589f, 255f, 628f, 844f), vec4<f32>(787f, -520f, -1000f, 1326f), vec4<bool>(true, false, true, false)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-493f, -358f, 1000f, 247f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 1000f, 1178f, -140f), vec4<f32>(1000f, -840f, 545f, -175f))), true)))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.xzz), _wgslsmith_f_op_vec3_f32(-var_2.yxx));
    var_1 = true;
    var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.xyz)));
    let x = u_input.a;
    s_output = func_1(-420f);
}

