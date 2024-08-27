struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, u_input.a, 1i) >> ((_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0.a, 1u), ~1u) << (69792u % 32u)) % 32u), -_wgslsmith_div_i32(u_input.a, u_input.a));
    return -_wgslsmith_clamp_vec2_i32(abs(-(~vec2<i32>(0i, -1i))), max(~vec2<i32>(-953i, u_input.a) << ((vec2<u32>(arg_0.a, 0u) ^ vec2<u32>(arg_0.a, arg_0.a)) % vec2<u32>(32u)), -vec2<i32>(var_0, u_input.a)), vec2<i32>(~(-1i), i32(-1i) * -2147483647i));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a, -5254i, u_input.a), vec4<i32>(-2147483647i, -1i, 0i, 10119i)), vec4<i32>(2147483647i, 32346i, -arg_0, 1i)), ~_wgslsmith_sub_vec4_i32(max(vec4<i32>(-24100i, arg_0, -2147483647i, arg_0), vec4<i32>(17883i, -1i, 1i, arg_0)), ~vec4<i32>(0i, u_input.a, -2147483647i, u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), -625f))));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    let var_0 = !select(!vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true), vec4<bool>(true, true, func_3(_wgslsmith_sub_i32(-1i, arg_2.x)), all(vec3<bool>(false, true, false))), true);
    var var_1 = ~(vec3<u32>(arg_1.a, arg_0.a, ~max(arg_0.a, 4294967295u)) << (_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1969u, arg_0.a, arg_0.a), vec3<u32>(1089u, 36147u, arg_1.a)), vec3<u32>(arg_0.a, arg_0.a, arg_0.a) << (vec3<u32>(4294967295u, 0u, arg_0.a) % vec3<u32>(32u))), max(~vec3<u32>(arg_1.a, arg_1.a, arg_1.a), countOneBits(vec3<u32>(0u, 1u, 4294967295u)))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2895f + -2381f) + _wgslsmith_f_op_f32(min(240f, _wgslsmith_f_op_f32(abs(723f))))), -546f));
    var var_3 = _wgslsmith_mod_u32(arg_0.a, ~1u) & 62682u;
    var var_4 = Struct_1(0u);
    return ~(reverseBits(~reverseBits(var_1.x)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(min(arg_0.a, 0u), _wgslsmith_sub_u32(1u, arg_1.a)), _wgslsmith_clamp_vec2_u32(abs(var_1.yx), ~var_1.xy, vec2<u32>(var_4.a, var_4.a) ^ var_1.xz)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(142f)), _wgslsmith_f_op_f32(sign(-460f)), true)), 893f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -799f) + -2220f)))), _wgslsmith_f_op_f32(-324f * _wgslsmith_f_op_f32(abs(1000f))));
    let var_1 = min(vec2<i32>(1i, 1i), func_1(Struct_1(4294967295u)));
    let var_2 = Struct_1(_wgslsmith_mult_u32(~(~firstLeadingBit(28666u)), func_2(Struct_1(15696u), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(66200u, 87264u, 4294967295u), vec3<u32>(4294967295u, 1u, 19620u))), ~abs(vec4<i32>(var_1.x, 0i, -2147483647i, u_input.a)))));
    let var_3 = ~((~4294967295u | ~_wgslsmith_mult_u32(var_2.a, 1u)) & _wgslsmith_mod_u32(firstTrailingBit(17757u), max(reverseBits(var_2.a), 100u)));
    var var_4 = Struct_1(~1u | (~firstLeadingBit(1u) | ~var_3));
    var_4 = Struct_1(4294967295u);
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-329f + var_0.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xyy)), _wgslsmith_f_op_vec3_f32(var_0.yxz + vec3<f32>(var_0.x, -1080f, var_0.x)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))))), 0i, 26348u);
}

