struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(1i, 9864i, 19908i, i32(-2147483648)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(min(global0.a, select(global0.a, global0.a, vec4<bool>(true, any(vec4<bool>(false, true, true, false)), true, true))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1072f + -1744f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-338f)))))));
    let var_2 = Struct_1(global0.a);
    let var_3 = vec2<bool>(true, all(vec2<bool>(true, true)) | true);
    var var_4 = var_3;
    return ~countOneBits((reverseBits(u_input.a.wxy) & ~u_input.a.zwx) ^ u_input.a.yxz);
}

fn func_2(arg_0: vec4<bool>) -> vec2<i32> {
    var var_0 = ~abs(-global0.a.wzz);
    var var_1 = Struct_1(global0.a);
    var_0 = vec3<i32>(0i, -global0.a.x, -1i);
    let var_2 = min(select(u_input.a.zxy, u_input.a.xzw, select(vec3<bool>(false, all(vec4<bool>(false, false, true, true)), false), !(!arg_0.xyz), true)), func_3());
    var var_3 = vec3<bool>(true, var_2.x > 4294967295u, any(select(vec2<bool>(arg_0.x & arg_0.x, any(vec2<bool>(arg_0.x, arg_0.x))), vec2<bool>(false, true), arg_0.x)));
    return _wgslsmith_sub_vec2_i32(global0.a.zz, _wgslsmith_mod_vec2_i32(var_0.zy, _wgslsmith_clamp_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.x, var_0.x), vec2<i32>(global0.a.x, 2147483647i))), firstTrailingBit(-vec2<i32>(var_0.x, -974i)), vec2<i32>(1i, global0.a.x))));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = Struct_1(vec4<i32>(-3217i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(func_2(vec4<bool>(true, false, true, true)), global0.a.xy, global0.a.ww), vec2<i32>(i32(-1i) * -1i, firstLeadingBit(-1084i))), abs(global0.a.x), global0.a.x));
    let var_1 = -155f;
    global0 = var_0;
    global0 = Struct_1(~(~global0.a));
    var var_2 = -6828i;
    return abs(_wgslsmith_mult_i32(global0.a.x, (~var_0.a.x >> (4294967295u % 32u)) | -_wgslsmith_mod_i32(2147483647i, var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(vec4<i32>(global0.a.x, func_1(u_input.a.x), _wgslsmith_mod_i32(0i, global0.a.x), global0.a.x) ^ global0.a, global0.a));
    var var_1 = Struct_1(global0.a);
    let var_2 = all(vec3<bool>(false, select(true, true, true), true));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.a.x, ~57076i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, -1196f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1734f, -1376f, 625f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1081f, -469f, 407f) - vec3<f32>(-1000f, -1388f, 140f))))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(705f, -920f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-356f, 316f), vec2<f32>(-1361f, 1402f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-310f, -534f))))));
}

