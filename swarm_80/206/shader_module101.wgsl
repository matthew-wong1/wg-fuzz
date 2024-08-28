struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    return firstLeadingBit(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(67848u, 26046u, 4294967295u, 1u), select(vec4<u32>(57298u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 40114u, 4294967295u, 1u), vec4<bool>(false, true, true, true)))));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> f32 {
    let var_0 = ~(~(~firstLeadingBit(select(vec3<u32>(0u, 38141u, 0u), vec3<u32>(4255u, 1749u, 1u), arg_0.a.xxw))));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, u_input.a), u_input.a), _wgslsmith_add_i32(-arg_1 ^ _wgslsmith_add_i32(arg_1, arg_1), -2147483647i) ^ 47332i);
    var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(firstLeadingBit(~14126i) & _wgslsmith_mult_i32(firstLeadingBit(u_input.a), _wgslsmith_mult_i32(-36456i, -10615i)), 1i), arg_1, reverseBits(-1i | -firstLeadingBit(u_input.a)));
    let var_2 = vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_1, 1i) >> (~1u % 32u), 36601i)), firstLeadingBit(~(-31140i)), 2147483647i, -20987i);
    var_1 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -671f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-712f))))))) + _wgslsmith_f_op_f32(step(-1400f, 841f)));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: i32) -> i32 {
    let var_0 = Struct_1(~vec2<u32>(36491u, max(~1u, ~0u)), _wgslsmith_sub_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2, 0i, arg_2), vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(u_input.a, 1i, arg_0)), ~_wgslsmith_add_vec3_i32(vec3<i32>(arg_2, -23203i, 2147483647i), vec3<i32>(arg_0, arg_1.x, -1i))) ^ -_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_1.x, arg_1.x, arg_0), vec3<i32>(arg_1.x, arg_0, arg_0) ^ vec3<i32>(u_input.a, -1i, arg_1.x)), 1u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, -613f, 430f, -2129f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(true, true, true, true)), u_input.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x)))));
    var_1 = -865f;
    var_1 = _wgslsmith_f_op_f32(sign(var_0.d.x));
    var var_2 = _wgslsmith_mod_u32(33215u, _wgslsmith_div_u32(var_0.a.x, var_0.a.x));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -max(-vec2<i32>(u_input.a, 56565i) >> (vec2<u32>(func_1(), ~6672u) % vec2<u32>(32u)), vec2<i32>(countOneBits(func_2(u_input.a, vec2<i32>(u_input.a, u_input.a), -7329i)), abs(firstTrailingBit(10825i))));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1491f + -842f), _wgslsmith_f_op_f32(ceil(-2717f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1269f + 667f), _wgslsmith_f_op_f32(f32(-1f) * -2085f))) <= -685f, true, true, true);
    let var_2 = vec4<u32>(min(~(~1u), reverseBits(firstTrailingBit(reverseBits(81882u)))), 4294967295u, firstLeadingBit(~_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(5911u, 43705u), vec2<u32>(0u, 22072u)), ~18678u)), 58032u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f)));
    var var_4 = _wgslsmith_div_vec2_i32(~(min(-vec2<i32>(45576i, u_input.a), vec2<i32>(var_0.x, -31439i)) & ~abs(var_0)), _wgslsmith_div_vec2_i32(var_0, vec2<i32>(_wgslsmith_mult_i32(u_input.a, 5826i), -countOneBits(var_0.x))));
    let var_5 = Struct_2(Struct_1(abs(vec2<u32>(firstTrailingBit(7320u), 30524u)), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, 31892i, u_input.a), vec3<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), _wgslsmith_sub_i32(var_4.x, var_0.x), -34008i)), var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(553f, -154f, -201f, 1000f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-869f, -1000f, -1604f, 632f), vec4<f32>(-1322f, -841f, 1313f, 1379f))))), ~(~vec4<u32>(_wgslsmith_add_u32(52245u, 35716u), _wgslsmith_mod_u32(1u, var_2.x), _wgslsmith_dot_vec3_u32(var_2.xxz, vec3<u32>(1u, var_2.x, 1u)), var_2.x & 1u)), 862f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-265f, _wgslsmith_f_op_f32(1000f + var_5.c)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a.d.x, var_5.c))))) + var_5.a.d.wx), 32101i, vec3<u32>(~60248u, ~func_1(), max(27211u, var_5.a.a.x)));
}

