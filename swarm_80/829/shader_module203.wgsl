struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>) -> bool {
    return true;
}

fn func_3() -> f32 {
    let var_0 = !(u_input.a > _wgslsmith_add_u32(61968u, min(_wgslsmith_add_u32(u_input.a, 29395u), u_input.a >> (u_input.a % 32u))));
    var var_1 = -(~countOneBits(vec2<i32>(_wgslsmith_div_i32(12929i, 5242i), 1i)));
    var var_2 = ~vec2<u32>(~(_wgslsmith_sub_u32(u_input.a, u_input.a) ^ firstTrailingBit(4204u)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 21266u)), max(countOneBits(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(4294967295u, 0u) | vec2<u32>(4294967295u, u_input.a))));
    let var_3 = firstLeadingBit(firstLeadingBit(reverseBits(reverseBits(~vec4<u32>(u_input.a, 8177u, u_input.a, 8649u)))));
    var_1 = vec2<i32>(47745i, var_1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-758f)), _wgslsmith_f_op_f32(1411f * 382f)))), _wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(-542f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-286f)))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> bool {
    var var_0 = u_input.a != _wgslsmith_add_u32(_wgslsmith_add_u32(~arg_0, ~arg_0) & 69044u, ~arg_0);
    var_0 = ~6701u >= (~(~u_input.a) | 73538u);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(789f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f - 853f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 782f))), _wgslsmith_f_op_f32(-274f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) - -615f)), 671f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(-1085f)), -577f, 1437f, 1450f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1003f, 161f, -177f, 860f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1368f, -592f, 1192f, -960f) * vec4<f32>(822f, 472f, -440f, -503f)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))), vec4<bool>(true, true, select(true, false, arg_1.x), all(arg_1)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(-var_1)), var_1));
    var var_3 = vec4<u32>(select(67170u, _wgslsmith_clamp_u32(30368u, u_input.a, ~arg_0), true), u_input.a, arg_0, _wgslsmith_sub_u32(arg_0, 4294967295u));
    return !func_1(_wgslsmith_mod_vec2_u32(countOneBits(var_3.zy), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u) | vec2<u32>(14898u, arg_0), vec2<u32>(40668u, var_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_2.x, var_2.x, 471f), var_1, vec4<bool>(false, arg_1.x, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = all(!vec4<bool>(any(vec4<bool>(false, false, false, true)) | true, func_1(firstTrailingBit(vec2<u32>(u_input.a, 5962u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -916f, 580f, 509f))), !func_2(1u, vec4<bool>(false, false, true, false)), any(vec3<bool>(true, false, true)) & true));
    var var_1 = Struct_3(~(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1773f, 827f, -1150f, 1000f) - vec4<f32>(1079f, -287f, 518f, -2189f)), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-945f, 1436f, 158f, -1081f)), vec4<f32>(1234f, -1051f, -658f, -389f))), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(396f, 1000f, -622f, -564f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-978f, 480f, 1195f, -628f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-111f, 247f, -803f, -575f)), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(select(_wgslsmith_mult_u32(~var_1.a.x, abs(0u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(2858u, var_1.a.x), u_input.a ^ var_1.a.x), !(var_1.a.x != u_input.a)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 0u, u_input.a)), ~(~var_1.a))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, _wgslsmith_sub_u32(1u, u_input.a), 1u), vec4<u32>(71031u, 42164u, var_1.a.x, abs(u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) - _wgslsmith_f_op_vec4_f32(-var_1.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_vec4_f32(-var_1.b)))), ((select(vec4<u32>(95719u, 25499u, 45957u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, false, true)) << (min(vec4<u32>(u_input.a, 1u, var_1.a.x, 69039u), vec4<u32>(u_input.a, 55479u, u_input.a, u_input.a)) % vec4<u32>(32u))) & vec4<u32>(27612u, 1u, _wgslsmith_add_u32(1801u, var_1.a.x), var_1.a.x >> (var_1.a.x % 32u))) & ~(~(~vec4<u32>(var_1.a.x, var_1.a.x, 0u, u_input.a))), ~(~u_input.a));
}

