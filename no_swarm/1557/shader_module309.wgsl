struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<bool> {
    global0 = 63386u;
    global0 = ~_wgslsmith_dot_vec3_u32(reverseBits(~(~vec3<u32>(6338u, 4294967295u, 6405u))), vec3<u32>(0u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(18303u, 5323u, 26721u), vec3<u32>(0u, 4294967295u, 13069u))));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 11031u), ~vec2<u32>(1u, 1u));
    let var_0 = (~_wgslsmith_mult_i32(u_input.b.x, -7954i) | _wgslsmith_clamp_i32(firstTrailingBit(~u_input.b.x), countOneBits(-u_input.b.x), _wgslsmith_mod_i32(-35798i & u_input.b.x, u_input.a))) ^ u_input.b.x;
    global0 = 4294967295u;
    return select(select(select(vec2<bool>(true, false), select(select(vec2<bool>(true, false), arg_1.a, arg_1.a.x), vec2<bool>(arg_1.a.x, false), true), arg_1.a.x), arg_1.a, select(all(vec3<bool>(true, arg_1.a.x, true)), arg_1.a.x, true)), vec2<bool>(firstLeadingBit(firstTrailingBit(-8781i)) == var_0, u_input.a < (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_0, var_0, var_0), vec4<i32>(1i, -70727i, u_input.b.x, var_0)) | countOneBits(u_input.b.x))), select(!arg_1.a, !arg_1.a, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global0 = 0u;
    global0 = 21243u;
    let var_0 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(130f * -2199f), -1036f, _wgslsmith_f_op_f32(select(-538f, 1764f, arg_0.a.x)), _wgslsmith_f_op_f32(select(-425f, -1365f, arg_1.a.x))))), arg_0));
    global0 = firstTrailingBit(~(~1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-319f, -196f), vec2<f32>(295f, -2721f)))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -1381f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -288f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1848f)), -241f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1164f)))))) <= _wgslsmith_f_op_f32(trunc(-1777f))));
    return ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 1u, 37244u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 22728u, 0u), vec4<u32>(57971u, 1u, 122247u, 65353u))) ^ 14315u);
}

fn func_2() -> f32 {
    global0 = 44970u;
    let var_0 = firstLeadingBit(u_input.b.x);
    var var_1 = Struct_1(vec2<bool>(true, true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(649f * 2098f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(878f))))))));
    global0 = func_4(Struct_1(func_3(vec4<f32>(_wgslsmith_f_op_f32(135f - 1000f), _wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(-var_2)), Struct_1(select(var_1.a, vec2<bool>(true, var_1.a.x), vec2<bool>(var_1.a.x, true))))), Struct_1(var_1.a));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    global0 = arg_0;
    let var_0 = ~(~(54879u >> (~arg_0 % 32u)));
    var var_1 = _wgslsmith_div_u32(0u << (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(57293u, var_0)), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_0, 4294967295u)), vec2<u32>(40292u, arg_0))) % 32u), arg_0 << (4294967295u % 32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(806f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(1326f, -1054f)))) * 1577f);
    let var_3 = select(~firstLeadingBit(var_0) > _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0 | 1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, 0u, 4294967295u), firstLeadingBit(vec4<u32>(4294967295u, 1u, var_0, 0u)))), true, true);
    return Struct_1(vec2<bool>(false, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = vec2<bool>(false, true);
    let var_2 = func_1(~abs(~var_0) ^ var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) + _wgslsmith_f_op_f32(458f + 1074f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0));
}

