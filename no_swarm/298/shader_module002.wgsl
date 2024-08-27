struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<f32>(281f, -340f, -857f), 0u), Struct_1(vec3<f32>(662f, -688f, 243f), 11591u), Struct_1(vec3<f32>(2072f, 105f, 1000f), 45056u), Struct_1(vec3<f32>(-260f, 559f, -376f), 0u), Struct_1(vec3<f32>(520f, -395f, -1000f), 33170u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = vec4<bool>(true, all(vec4<bool>(false, !any(vec3<bool>(arg_0, arg_0, true)), !arg_0 != true, any(select(vec2<bool>(arg_0, true), vec2<bool>(false, false), true)))), false, true || !select(true, false, arg_0));
    global0 = array<Struct_1, 5>();
    let var_1 = global0[_wgslsmith_index_u32(~max(1u, _wgslsmith_clamp_u32(1u, 0u >> (0u % 32u), 0u)) ^ ~(~_wgslsmith_sub_u32(4294967295u, ~44113u)), 5u)];
    global0 = array<Struct_1, 5>();
    let var_2 = global0[_wgslsmith_index_u32(var_1.b >> (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(28646u, 12335u, var_1.b)), select(~vec3<u32>(29272u, var_1.b, 70774u) ^ vec3<u32>(var_1.b, 0u, var_1.b), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_1.b, var_1.b), vec3<u32>(53605u, var_1.b, var_1.b)), vec3<u32>(var_1.b, var_1.b, 0u) << (vec3<u32>(16440u, 88364u, var_1.b) % vec3<u32>(32u))), true)) % 32u), 5u)];
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~(~var_1.b), _wgslsmith_sub_u32(var_1.b, 5072u) & var_1.b), var_2.b, var_2.b), vec3<u32>(13465u, 24092u, ~var_1.b));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    return _wgslsmith_add_u32(29643u, 0u);
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a, u_input.a);
    global0 = array<Struct_1, 5>();
    let var_1 = vec4<u32>(min(~4294967295u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 46312u), vec2<u32>(48206u, 4294967295u)) & 4294967295u)), firstLeadingBit(abs(4294967295u)), abs(min(1u, max(_wgslsmith_mult_u32(0u, 4294967295u), select(6116u, 1u, false)))), (~(~61854u) >> ((func_2(true) ^ ~43274u) % 32u)) >> (reverseBits(_wgslsmith_mod_u32(1u, func_3(vec4<f32>(1000f, 1162f, 267f, -204f)))) % 32u));
    var var_2 = var_1.yxw;
    global0 = array<Struct_1, 5>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(-3114f * 422f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1005f, 896f) - vec2<f32>(1887f, -265f)))))) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(762f)), _wgslsmith_f_op_f32(730f + _wgslsmith_div_f32(-1271f, -1173f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-241f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -115f))), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    let var_0 = vec3<u32>(0u, 1u, 2345u);
    global0 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(573f, 841f), vec2<f32>(-135f, -550f), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1121f, -701f) + vec2<f32>(-842f, 1711f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2166f, 145f) * vec2<f32>(622f, 1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1023f, -120f) + vec2<f32>(-869f, -1133f))))) - _wgslsmith_f_op_vec2_f32(func_1()));
    let var_2 = 9887i;
    global0 = array<Struct_1, 5>();
    var var_3 = vec4<bool>(true, !all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), true)), true, false);
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1218f, var_1.x, var_1.x));
    var var_5 = global0[_wgslsmith_index_u32(70459u, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x << (var_5.b % 32u), -(vec4<i32>(2147483647i, _wgslsmith_mod_i32(2147483647i, var_2), -8289i, var_2) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_5.b, var_0.x, 0u), vec4<u32>(0u, 1u, var_5.b, 1u)), abs(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x))) % vec4<u32>(32u))), ~firstLeadingBit(vec2<u32>(var_5.b, var_5.b)));
}

