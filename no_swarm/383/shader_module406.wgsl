struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = Struct_2(vec2<i32>(firstTrailingBit(i32(-1i) * -2147483647i) & u_input.e.x, u_input.b));
    var var_1 = max(_wgslsmith_clamp_vec2_i32(vec2<i32>(select(~(-8844i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 11447i, u_input.b, 1i), u_input.e), true), countOneBits(1i)), (u_input.e.xz << (u_input.a.xy % vec2<u32>(32u))) | var_0.a, abs(select(-vec2<i32>(-2147483647i, -78162i), -var_0.a, !arg_1.xw))), vec2<i32>(i32(-1i) * -50944i, _wgslsmith_add_i32(u_input.e.x, ~firstLeadingBit(var_0.a.x))));
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1642f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1574f * _wgslsmith_f_op_f32(f32(-1f) * -1458f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-872f, 557f, false)) * _wgslsmith_f_op_f32(-2000f * -1188f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-640f, -834f), _wgslsmith_f_op_f32(floor(179f))))));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2490f), 1f));
    var_1 = -(-(u_input.e.wz << (u_input.a.zy % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(arg_2, _wgslsmith_add_vec2_u32(~u_input.d.yz, ~vec2<u32>(u_input.d.x, arg_0))) % vec2<u32>(32u)));
    return arg_3;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-443f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-333f, arg_2), _wgslsmith_div_f32(arg_2, arg_2)))))));
    let var_0 = !select(!select(func_3(arg_0, vec4<bool>(false, true, true, true), vec2<u32>(u_input.c, 1u), vec3<bool>(true, false, true)), vec3<bool>(false, false, false), true), vec3<bool>(u_input.c <= (u_input.d.x | 4294967295u), any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), all(vec4<bool>(true, true, true, true))), func_3(3561u, select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), ~min(vec2<u32>(arg_0, 1u), vec2<u32>(u_input.d.x, u_input.d.x)), func_3(abs(arg_0), vec4<bool>(true, true, true, true), ~vec2<u32>(0u, u_input.c), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))));
    let var_1 = any(var_0.xy);
    let var_2 = u_input.e.yy;
    global0 = -341f;
    return Struct_2(-_wgslsmith_sub_vec2_i32(~(-vec2<i32>(5320i, -38452i)), _wgslsmith_sub_vec2_i32(~u_input.e.wx, _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.x, 17281i), var_2))));
}

fn func_1() -> Struct_4 {
    global0 = 733f;
    var var_0 = func_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1727f, 1644f, 937f, -1097f), vec4<f32>(547f, 287f, 289f, -604f))))))), _wgslsmith_div_f32(-336f, -1228f));
    var_0 = func_2(13865u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1717f)), _wgslsmith_f_op_f32(ceil(-1089f))), -2631f, 270f, _wgslsmith_f_op_f32(-1247f * _wgslsmith_f_op_f32(select(-1099f, 1882f, true)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(838f, 495f))), _wgslsmith_f_op_f32(504f * -1255f)), _wgslsmith_f_op_f32(f32(-1f) * -1663f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f - 1057f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-555f))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(-1163f, _wgslsmith_f_op_f32(f32(-1f) * -1151f)), -537f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-779f, 763f))))));
    return Struct_4(vec3<bool>(any(vec4<bool>(true, true, true, true)), any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(true, true))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1168f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), 938f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-111f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(117f)) * _wgslsmith_f_op_f32(299f - 1620f))), -1843f)));
    var var_2 = var_1;
    let var_3 = -30426i;
    var var_4 = -(i32(-1i) * -((var_3 << (u_input.a.x % 32u)) & _wgslsmith_sub_i32(var_3, u_input.b)));
    let var_5 = abs(u_input.d.x) >> (~u_input.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.d.x), u_input.a.zw), ~select(~u_input.d.yzw, u_input.d.zxy, false), vec2<u32>(5865u, 1u & u_input.d.x));
}

