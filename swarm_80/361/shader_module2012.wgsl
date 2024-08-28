struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), true);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1022f, -972f) - _wgslsmith_f_op_f32(f32(-1f) * -275f))) * 1201f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1120f - -241f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(889f + -117f))))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1.a.zx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1000f) + vec2<f32>(-912f, arg_0))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, arg_0)))));
    let var_1 = arg_1;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.a.zx))), arg_1.a.wx, all(vec3<bool>(false, true, true)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-321f, _wgslsmith_f_op_f32(arg_0 * -320f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, 1531f, false)), _wgslsmith_f_op_f32(-728f * arg_0))))));
    return vec3<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(func_3())), 680f, _wgslsmith_f_op_f32(round(-1819f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    let var_0 = arg_1;
    var var_1 = var_0.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_2(-258f, var_0));
    let var_3 = arg_1.b;
    var_1 = -1000f;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(373f, -520f, 1355f, 607f), vec4<f32>(-1000f, 692f, 877f, 252f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(997f, -1000f, 1000f, 1000f) - vec4<f32>(580f, 692f, -279f, 894f))))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(10127u, 81267u)), firstLeadingBit(vec2<u32>(~1u, 5775u))), ~firstTrailingBit(countOneBits(27431u)));
    let var_2 = min(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, var_1.b)) & vec2<u32>(var_1.c, var_1.b), ~firstTrailingBit(vec2<u32>(32426u, 29521u))), vec2<u32>(4294967295u, var_1.c) | vec2<u32>(var_1.b, abs(var_1.c)));
    let var_3 = ~vec4<i32>(9479i, ~func_1(vec4<i32>(u_input.a.x, u_input.a.x, -8257i, -1i), Struct_1(vec4<f32>(-1277f, var_1.a.x, 1570f, 305f), 0u, 0u), Struct_1(var_1.a, var_2.x, 38792u), vec3<bool>(false, true, true)), ~u_input.b.x, u_input.a.x);
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1317f, _wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(213f * -1089f), _wgslsmith_f_op_f32(516f + -1285f)))), select(vec4<bool>(var_2.x <= 116878u, true, 45495u < var_1.c, true), vec4<bool>(true, true, true, var_1.a.x == 119f), vec4<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(true, false, true)), true, true)))), var_2.x >> (min(4294967295u, 20616u) % 32u), ~firstLeadingBit(var_1.b));
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u);
}

