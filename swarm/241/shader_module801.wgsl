struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(-u_input.a.x, abs(u_input.a.x), 7793i, u_input.a.x)), max(vec4<i32>(-select(10667i, u_input.a.x, true), reverseBits(~u_input.a.x), u_input.a.x, max(u_input.a.x, i32(-1i) * -2147483647i)), vec4<i32>(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(4745i, 0i), vec2<i32>(-16413i, u_input.a.x)), select(-51846i, 24257i, true)), u_input.a.x, -1i)));
    let var_2 = _wgslsmith_add_i32(~_wgslsmith_mult_i32(firstTrailingBit(~(-2417i)), 1i), (_wgslsmith_mod_i32(64763i, -23844i) << (min(0u & u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 36332u)) % 32u)) & abs(-1i));
    let var_3 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~var_2 >> (~0u % 32u), 24729i, 2147483647i), 1i), -u_input.a.x);
    let var_4 = !select(vec3<bool>(any(vec3<bool>(var_0, false, true)), !select(true, false, true), var_0), vec3<bool>(var_0, firstTrailingBit(var_1) < (-1i >> (u_input.b.x % 32u)), var_0), vec3<bool>(true, true, var_0));
    return Struct_1(vec4<bool>(any(vec3<bool>(var_4.x, !var_0, true)), var_4.x, false, var_0), max(42728u, u_input.b.x));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    let var_0 = arg_0.x;
    var var_1 = arg_1.b;
    var_1 = 0u;
    var_1 = u_input.b.x;
    var_1 = arg_1.b;
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(func_2(), u_input.b.x);
    let var_1 = u_input.b.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), -780f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1400f * -431f), _wgslsmith_f_op_f32(exp2(arg_0)))));
    var var_3 = 169f;
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_div_f32(var_2.x, var_2.x), true)) + -1310f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1016f * var_2.x))), -774f));
    return vec3<bool>(_wgslsmith_mult_u32(var_1 & ~var_1, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, 74816u, 4294967295u), firstLeadingBit(vec3<u32>(0u, arg_1.b, var_0.a.b)))) <= ~(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), !var_0.a.a.x, all(vec4<bool>(func_3(-vec4<i32>(u_input.a.x, u_input.a.x, -4964i, u_input.a.x), Struct_1(vec4<bool>(var_0.a.a.x, arg_1.a.x, true, var_0.a.a.x), u_input.b.x)), false, true, true)));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1981f, _wgslsmith_f_op_f32(-538f * -890f), all(vec3<bool>(true, arg_0.x, true))))), -505f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-454f)))) + _wgslsmith_f_op_f32(round(1f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1168f, 102f))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1579f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1261f, 1352f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(759f, 1343f) - vec2<f32>(-771f, -117f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-652f, 724f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(241f, -1319f))), u_input.a.x <= 1i)))));
    return var_0 & firstLeadingBit(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(func_4(!func_1(671f, Struct_1(vec4<bool>(false, true, false, false), u_input.b.x)))) | (-15762i << (~firstLeadingBit(~u_input.b.x) % 32u));
    var var_1 = Struct_2(Struct_1(func_2().a, u_input.b.x), u_input.b.x ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 26530u), reverseBits(~vec4<u32>(u_input.b.x, 68538u, u_input.b.x, 4294967295u))));
    var var_2 = Struct_3(Struct_2(Struct_1(select(!vec4<bool>(true, var_1.a.a.x, false, true), select(vec4<bool>(false, var_1.a.a.x, var_1.a.a.x, false), vec4<bool>(var_1.a.a.x, false, var_1.a.a.x, var_1.a.a.x), var_1.a.a.x), select(var_1.a.a, var_1.a.a, var_1.a.a)), u_input.b.x), var_1.b), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 590f) * 1f)));
    var_2 = Struct_3(Struct_2(func_2(), _wgslsmith_dot_vec2_u32(select(~u_input.b, _wgslsmith_div_vec2_u32(u_input.b, u_input.b), vec2<bool>(var_1.a.a.x, true)), u_input.b)), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(436f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.c))))));
    var var_3 = var_2.a.a;
    var var_4 = Struct_3(Struct_2(var_2.a.a, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_1.a.b), vec2<u32>(var_1.b, var_2.a.b)))), !select(!func_2().a.x, var_1.a.a.x, true), var_2.c);
    var var_5 = Struct_3(Struct_2(func_2(), firstTrailingBit(4294967295u)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c)));
    var var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(min(select(min(abs(vec4<u32>(var_4.a.a.b, 0u, 1u, 1437u)), ~vec4<u32>(var_3.b, var_1.a.b, var_1.b, var_4.a.a.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b, 4294967295u, 34048u, 4294967295u), vec4<u32>(21867u, 1u, var_1.a.b, u_input.b.x), vec4<u32>(var_1.a.b, var_5.a.b, 1u, u_input.b.x)) & _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.a.b, 30355u, var_2.a.b, var_4.a.b), vec4<u32>(var_6.b, u_input.b.x, var_3.b, var_6.b)), var_6.a), vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_4.a.b, 36426u, u_input.b.x, 64495u)), ~vec4<u32>(25717u, 46314u, 0u, var_2.a.a.b)), 4294967295u, 4294967295u, firstTrailingBit(4633u))));
}

