struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-777f, 751f, 1000f) * vec3<f32>(-432f, -751f, -457f)))))));
    let var_2 = vec3<i32>(-1i, u_input.b, _wgslsmith_sub_i32(u_input.b, -u_input.b & 27830i)) & reverseBits(vec3<i32>(_wgslsmith_mult_i32(u_input.b, u_input.a.x), -abs(-45974i), abs(2147483647i)));
    var_0 = var_1.a.x;
    var_0 = _wgslsmith_f_op_f32(-244f + 349f);
    return _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(~var_2.xx, abs(var_2.xy)), countOneBits(_wgslsmith_sub_vec2_i32(countOneBits(u_input.a.wx), countOneBits(u_input.a.zy)))));
}

fn func_2() -> u32 {
    let var_0 = -max(reverseBits(u_input.a.xzw), vec3<i32>(u_input.b, 36558i & u_input.b, func_3())) | -max(u_input.a.xyw, u_input.a.yzx);
    var var_1 = -10299i ^ (_wgslsmith_dot_vec2_i32(-vec2<i32>(-47565i, -20203i), u_input.a.wy) ^ func_3());
    var var_2 = ~(select(43896u, ~(~39657u), any(vec4<bool>(false, false, false, false))) & ~(~min(0u, 68951u)));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(717f, 2041f, -939f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(181f, 2725f, -2153f), vec3<f32>(-1343f, -1322f, 2160f)))))))), -_wgslsmith_clamp_i32(-(~u_input.a.x), 5497i, abs(var_0.x)), Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-784f, 1591f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-145f, -1267f))))))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(1307u, 4294967295u, 31057u)), vec3<u32>(60871u, _wgslsmith_div_u32(41960u, 1u), ~18792u)), abs(0u)));
    let var_4 = vec3<u32>(var_3.d, _wgslsmith_dot_vec3_u32(vec3<u32>(~var_3.d, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_3.d, 66508u, var_3.d), vec4<u32>(15288u, 4294967295u, var_3.d, var_3.d)), var_3.d) | vec3<u32>(var_3.d, var_3.d & 1u, 1u), vec3<u32>(~min(45281u, 0u), ~(~0u), reverseBits(var_3.d))), _wgslsmith_mult_u32(~var_3.d, ~var_3.d));
    return var_3.d;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -630f));
    let var_1 = u_input.a.wxz;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -1948f), _wgslsmith_f_op_f32(select(arg_2.a.x, arg_1.x, true)));
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(~func_2(), 1u, select(~1u, abs(1u), _wgslsmith_f_op_f32(-arg_2.a.x) > _wgslsmith_f_op_f32(-1942f - 275f))), vec3<u32>(1u, 1u, 1u));
    var var_3 = -121f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(round(-296f)), arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~1u < ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 15671u, 42910u), vec3<u32>(1u, 0u, 17140u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1767f, 377f) + _wgslsmith_div_vec2_f32(vec2<f32>(-251f, 411f), vec2<f32>(859f, 288f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, 429f)))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-668f, -1808f), vec2<f32>(-1578f, -1695f), false)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(483f, 632f) * vec2<f32>(824f, 1709f))))));
    var var_1 = u_input.a.x;
    var var_2 = firstLeadingBit(~(~(~vec3<u32>(1u, 1u, 1u))));
    var var_3 = vec4<u32>(var_2.x, ~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(var_2.x, 24402u, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, 55622u, var_2.x), vec4<bool>(true, true, true, true)), vec4<u32>(var_2.x, 41696u, 15057u, ~var_2.x)), var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 0u), ~vec2<u32>(37050u, 67842u)));
    var var_4 = Struct_3(func_1((true && (926u > var_3.x)) && true, _wgslsmith_f_op_vec2_f32(func_1(true, _wgslsmith_div_vec2_f32(var_0.a.xy, vec2<f32>(-1000f, var_0.a.x)), Struct_2(var_0.a.zy)).a.zy + var_0.a.yz), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a.x, var_0.a.x)))))), _wgslsmith_dot_vec4_i32(-max(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, u_input.b, -48137i)), ~abs(-u_input.a)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(942f, var_0.a.x)), -1366f, true)), var_0.a.x)), ~(~_wgslsmith_mod_u32(51533u, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i), 1u);
}

