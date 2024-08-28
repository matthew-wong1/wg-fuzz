struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(-472f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-836f, -1320f, 333f) + vec3<f32>(1171f, -134f, var_0.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 497f, -773f)), vec3<f32>(var_0.a, var_0.a, -911f), true)), vec3<bool>(false, all(vec2<bool>(false, true)), all(vec2<bool>(false, true))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_0.a, -1723f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1709f, -1000f, -1556f)))), _wgslsmith_f_op_vec3_f32(abs(var_1)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), 459f, _wgslsmith_f_op_f32(step(-119f, var_1.x))), _wgslsmith_f_op_vec3_f32(var_1 + _wgslsmith_div_vec3_f32(var_1, var_1)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, false, true, false))))))));
    global0 = -546f;
    var var_3 = vec3<f32>(var_1.x, var_1.x, var_1.x);
    return _wgslsmith_f_op_f32(trunc(-938f));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), 1f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(1181f - 416f))))));
    global0 = var_0.x;
    global0 = -1030f;
    let var_1 = !(!select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), all(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), false)));
    var var_2 = ~arg_2;
    return Struct_1(var_0.x);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1209f)) * -724f)), 4294967295u, countOneBits(vec4<u32>(~u_input.a, 75935u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(13307u, 29902u)))) | vec4<u32>(u_input.a, ~(~4294967295u), _wgslsmith_mult_u32(13459u, u_input.a), u_input.a));
    global0 = _wgslsmith_f_op_f32(-1699f * _wgslsmith_f_op_f32(func_3()));
    let var_1 = vec4<u32>(~4294967295u, firstTrailingBit(u_input.a), 17188u, firstTrailingBit(u_input.a));
    global0 = -150f;
    global0 = 2808f;
    return var_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<u32> {
    return ~abs(reverseBits(~vec4<u32>(u_input.a, u_input.a, 6985u, 1u) >> (vec4<u32>(u_input.a, 52769u, u_input.a, 4294967295u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -min(~vec4<i32>(-4958i, 18449i, 9207i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_dot_vec4_u32(select(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(48480u, u_input.a, u_input.a, u_input.a), vec4<u32>(29924u, u_input.a, u_input.a, 4294967295u))), func_4(~vec2<i32>(-1i, -28889i), func_1()), false), reverseBits(~(~vec4<u32>(u_input.a, u_input.a, 55033u, u_input.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(681f, 244f)), vec2<f32>(1442f, 1928f)))))));
}

