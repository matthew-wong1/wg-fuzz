struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = select(vec4<bool>(true, true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true)), true), vec4<bool>(false, true, true, true), any(vec2<bool>(true, true)));
    var var_1 = Struct_1(vec4<bool>(!(!var_0.x) != any(vec4<bool>(false, true, false, var_0.x)), any(vec2<bool>(false, !var_0.x)), var_0.x, true), ~(~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(61373u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, u_input.b, u_input.b)))));
    var var_2 = Struct_2(Struct_1(var_1.a, _wgslsmith_add_vec4_u32(vec4<u32>(var_1.b.x, ~4294967295u, _wgslsmith_dot_vec2_u32(var_1.b.zy, vec2<u32>(56739u, 0u)), var_1.b.x), var_1.b)), var_1.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-175f, -383f, 770f, 363f), vec4<f32>(1007f, 163f, -756f, -1140f)))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(1405f)), _wgslsmith_f_op_f32(min(554f, -230f)), 687f, -923f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-617f + 564f), _wgslsmith_f_op_f32(-2250f - -1357f), -1145f, -773f)))));
    var_1 = Struct_1(!vec4<bool>(!var_2.a.a.x, !all(vec4<bool>(var_0.x, var_1.a.x, false, true)), false, var_2.a.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, ~_wgslsmith_add_u32(2760u, 8508u), var_2.b.x, ~var_2.b.x), max(vec4<u32>(~28104u, 4294967295u, var_1.b.x, _wgslsmith_mult_u32(var_1.b.x, var_1.b.x)), ~vec4<u32>(3688u, var_2.b.x, 12396u, var_2.a.b.x)), _wgslsmith_mod_vec4_u32(~var_2.b, max(var_1.b, var_2.a.b << (var_1.b % vec4<u32>(32u))))));
    return !var_1.a;
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_4(vec2<bool>(!any(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(floor(-1000f)));
    let var_1 = Struct_1(!func_3(), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, 31494u)), select(vec4<u32>(~u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b, max(0u, u_input.b)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 11001u, u_input.b, 0u), vec4<u32>(u_input.b, 18860u, 4294967295u, u_input.b)), vec4<u32>(u_input.b, 101348u, 55085u, 74480u) | vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), all(vec3<bool>(var_0.a.x, var_0.a.x, false))), vec4<bool>(false, all(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)), true, !var_0.a.x))));
    var var_2 = var_1.b.yz;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - 1000f), _wgslsmith_f_op_f32(sign(var_0.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-407f * 1000f))), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(min(var_0.b, 900f))), _wgslsmith_f_op_f32(-544f * 796f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-1197f + var_0.b), 338f, 1597f) - vec4<f32>(_wgslsmith_f_op_f32(var_0.b * -1000f), _wgslsmith_f_op_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(select(var_0.b, 472f, var_1.a.x)), _wgslsmith_f_op_f32(ceil(610f))))));
    let var_4 = Struct_5(var_1.b.yy, var_1, select(4857u, ~firstLeadingBit(var_1.b.x >> (123761u % 32u)), all(select(vec4<bool>(var_1.a.x, true, var_1.a.x, true), vec4<bool>(var_1.a.x, false, false, var_1.a.x), var_1.a.x)) && true), select(func_3().zx, !(!(!var_0.a)), _wgslsmith_div_u32(u_input.b, u_input.b) > (4294967295u << (var_1.b.x % 32u))));
    return max(var_1.b.yz, ~reverseBits(var_4.b.b.wy));
}

fn func_1(arg_0: i32, arg_1: u32) -> StorageBuffer {
    var var_0 = ~vec2<u32>(50195u, ~(~(~41515u)));
    var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.x, arg_1), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(arg_1, 75823u)), vec2<u32>(1u, arg_1), ~vec2<u32>(35705u, var_0.x))), ~((vec2<u32>(4294967295u, 69439u) ^ vec2<u32>(4294967295u, u_input.b)) >> (~vec2<u32>(var_0.x, u_input.b) % vec2<u32>(32u)))), vec2<u32>(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, arg_1), vec3<u32>(u_input.b, 0u, var_0.x))), 4294967295u), _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(0u, 0u))), firstLeadingBit(vec2<u32>(4294967295u, ~u_input.b))));
    let var_1 = Struct_4(vec2<bool>(true, true), -2332f);
    var_0 = max(vec2<u32>(abs(arg_1 & var_0.x), _wgslsmith_sub_u32(var_0.x, u_input.b)), (func_2() | ~vec2<u32>(12112u, 3113u)) >> (countOneBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u))) << (vec2<u32>(u_input.b, func_2().x) % vec2<u32>(32u));
    var var_2 = Struct_2(Struct_1(!(!func_3()), firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(33593u, 49706u, u_input.b, var_0.x), ~vec4<u32>(arg_1, u_input.b, 31868u, var_0.x)))), reverseBits(firstLeadingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 23964u, var_0.x, var_0.x), vec4<u32>(var_0.x, u_input.b, u_input.b, var_0.x)))));
    return StorageBuffer(vec4<f32>(1484f, var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b))))), var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(1u);
    var var_1 = ~42770u;
    var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-412f, -209f)))) + -275f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-612f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(step(-2036f, 402f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(sign(1298f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2)) + -1141f)), _wgslsmith_f_op_f32(-980f * 292f)));
    var_1 = 29992u;
    let var_4 = all(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), !(u_input.a < u_input.a), !(_wgslsmith_f_op_f32(min(var_3.x, 655f)) > _wgslsmith_f_op_f32(round(-259f))), false));
    var_1 = u_input.b;
    let x = u_input.a;
    s_output = func_1(u_input.a, var_0);
}

