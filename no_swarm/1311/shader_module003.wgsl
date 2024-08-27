struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1639f * 642f), _wgslsmith_f_op_f32(-495f * 191f), _wgslsmith_f_op_f32(select(-843f, 1000f, true)), _wgslsmith_f_op_f32(round(968f))), vec4<f32>(_wgslsmith_f_op_f32(-931f * 1596f), -1686f, _wgslsmith_f_op_f32(floor(-672f)), -451f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1368f, 1381f)))), _wgslsmith_f_op_f32(-627f * _wgslsmith_f_op_f32(353f - 2106f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-280f * 1413f)), _wgslsmith_f_op_f32(abs(-860f)))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), u_input.a.x != u_input.a.x), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), select(true, any(vec3<bool>(false, false, false)), all(vec2<bool>(false, false))))));
    var var_1 = _wgslsmith_div_u32(u_input.a.x, countOneBits(1u) >> (_wgslsmith_dot_vec3_u32(~select(u_input.a, vec3<u32>(62063u, 7405u, u_input.a.x), vec3<bool>(false, false, true)), max(vec3<u32>(u_input.a.x, 4294967295u, 0u), ~vec3<u32>(1u, 20446u, 4294967295u))) % 32u));
    var var_2 = 957f;
    var var_3 = Struct_1(-345f);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f));
    return !select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true))), vec3<bool>(true, true, u_input.a.x <= 37918u), true);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = !(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    let var_1 = func_3();
    let var_2 = arg_0.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(256f, arg_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(703f)), _wgslsmith_f_op_f32(trunc(142f)))));
    var var_3 = max(u_input.a, vec3<u32>(abs(11972u), (_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, 0u)) | 0u) ^ reverseBits(_wgslsmith_sub_u32(u_input.a.x, 4294967295u)), u_input.a.x));
    var var_4 = _wgslsmith_f_op_f32(arg_0.x - -714f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1238f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = func_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a * arg_1.a))), _wgslsmith_f_op_f32(f32(-1f) * -609f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, -1669f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, arg_1.a) + vec2<f32>(arg_1.a, arg_1.a))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.a, arg_1.a))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-200f, _wgslsmith_f_op_f32(max(var_0.a, -648f))), _wgslsmith_f_op_f32(trunc(var_0.a)), !any(vec2<bool>(false, false)))))));
    var var_2 = arg_1;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1215f + 1155f)))));
    var var_4 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, var_0.a) - vec2<f32>(var_0.a, var_1.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1040f, -540f))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-311f, arg_2.a)))))));
    return _wgslsmith_f_op_f32(var_3.a * arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(-1000f)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec2<u32>(0u, u_input.a.x), Struct_1(-781f), Struct_1(var_0.a))))))), _wgslsmith_f_op_f32(abs(var_0.a))));
    var var_2 = Struct_1(341f);
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2343f, -1000f), vec2<f32>(1153f, -1174f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -339f)))))), vec2<f32>(-752f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a - 262f))), -1069f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 1u, 0u, 1u)) ^ (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 5095u) & vec4<u32>(52068u, u_input.a.x, 4294967295u, 24218u)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), ~vec4<u32>(38265u, 0u, 0u, 13974u)), abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))), select(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(8972u, reverseBits(4294967295u), ~1438u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), u_input.a)), !select(false, false, true))), vec3<i32>(23992i, -21910i, ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-38191i, -18744i), vec2<i32>(-1i, 2147483647i)))), _wgslsmith_div_vec4_u32(~(select(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(27646u, 4294967295u, 10833u, 32298u), true) | vec4<u32>(1u, 4294967295u, u_input.a.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(20595u, 22812u, 59979u, u_input.a.x), vec4<u32>(u_input.a.x, 76751u, u_input.a.x, 28734u)) >> (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), -9160i, var_2.a);
}

