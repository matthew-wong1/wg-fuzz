struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), Struct_2(Struct_1(0u)));
    var var_1 = Struct_3(!(!var_0.a), var_0.b);
    var var_2 = u_input.a & u_input.a;
    var_1 = var_0;
    var var_3 = Struct_1(~min(4294967295u ^ (4294967295u << (var_0.b.a.a % 32u)), 4294967295u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(630f, -1261f, var_0.a)));
}

fn func_2() -> bool {
    let var_0 = Struct_2(Struct_1(reverseBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(24773u, 15707u, 18207u), vec3<u32>(13589u, 15518u, 34973u))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-510f, 686f, -274f) - vec3<f32>(-279f, 1817f, -390f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(742f, -1880f, 436f), vec3<f32>(524f, -387f, -491f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-534f, -1128f, 1157f))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-506f)))), 866f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f * 1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1320f, 1394f)), vec3<f32>(324f, -561f, 625f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1578f, -627f, 1779f)))));
    let var_2 = var_0.a;
    var var_3 = var_1.zx;
    var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_3()), 1097f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.xy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1211f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(510f, var_3.x)))))))));
    return all(select(select(vec4<bool>(false, all(vec3<bool>(true, false, true)), var_1.x < var_3.x, true), vec4<bool>(var_3.x < var_3.x, true, any(vec3<bool>(false, false, true)), false), true), vec4<bool>(false, false, true, true), !vec4<bool>(true, any(vec4<bool>(true, true, false, true)), false, true)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec3<i32> {
    return vec3<i32>(_wgslsmith_div_i32(-7989i, min(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 24922i)), _wgslsmith_clamp_i32(-43259i, _wgslsmith_add_i32(u_input.a, u_input.a), u_input.a))), abs(_wgslsmith_mod_i32(-10150i, ~u_input.a)), -u_input.a >> (1u % 32u));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_2 {
    var var_0 = vec3<i32>(-(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(35615i, 2147483647i, u_input.a, arg_0), vec4<i32>(arg_1, arg_1, arg_0, arg_1)), max(55908i, arg_1))), 0i, i32(-1i) * -(~firstLeadingBit(arg_0)));
    let var_1 = 2582f;
    var_0 = func_4(_wgslsmith_div_vec2_u32(~(~(~vec2<u32>(83165u, 0u))), vec2<u32>(1u, 1u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec3<bool>(!all(vec3<bool>(true, true, false)), func_2(), select(true, all(vec2<bool>(true, true)), select(all(vec4<bool>(true, false, false, false)), func_2(), true))));
    var var_2 = var_1;
    var var_3 = _wgslsmith_div_u32(1u, ~max(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(24010u, 0u, 0u), vec3<bool>(true, true, true)), firstTrailingBit(vec3<u32>(1u, 47199u, 30893u))), abs(0u)));
    return Struct_2(Struct_1(18169u));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), u_input.a | _wgslsmith_add_i32(-6807i, u_input.a));
    return Struct_4(Struct_2(Struct_1(arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<u32>(abs(~(~0u)), 1u), Struct_4(func_1(_wgslsmith_sub_i32(countOneBits(u_input.a), -u_input.a), _wgslsmith_mult_i32(-45882i, -19926i) ^ (u_input.a << (94286u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f)))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(46759u, 34628u))), select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), _wgslsmith_mod_u32(max(1u, 1u), firstTrailingBit(_wgslsmith_clamp_u32(13349u, 62071u, 1u))), ~(~45863u << (firstTrailingBit(767u) % 32u)), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(36266u, 0u, 4294967295u)), ~(~vec3<u32>(14345u, 0u, 45287u)))));
    let var_1 = 0i;
    let var_2 = vec2<u32>(94006u, var_0.a.a.a) << ((vec2<u32>(~(var_0.a.a.a << (var_0.a.a.a % 32u)), 0u) ^ vec2<u32>(select(1u, var_0.a.a.a, func_2()), 0u)) % vec2<u32>(32u));
    var var_3 = !select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), true), vec3<bool>(true, true, true)), any(vec3<bool>(false, true, any(vec2<bool>(false, false)))));
    var_3 = select(!vec3<bool>(!(!var_3.x), true, true), vec3<bool>(all(!vec4<bool>(var_3.x, true, false, var_3.x)), !all(!vec3<bool>(var_3.x, true, true)), any(!var_3.zz)), select(!(!vec3<bool>(var_3.x, false, var_3.x)), select(!vec3<bool>(true, var_3.x, true), vec3<bool>(false, var_3.x, true), var_3.x), !(!select(vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(var_3.x, false, var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(_wgslsmith_add_vec2_u32(select(var_2, vec2<u32>(0u, 33691u), false), var_2 >> (var_2 % vec2<u32>(32u))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, _wgslsmith_f_op_f32(f32(-1f) * -556f))) + vec2<f32>(1855f, -247f)), ~select(2147483647i, max(firstTrailingBit(var_1), u_input.a), var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, -206f), -1625f, all(vec4<bool>(var_3.x, var_3.x, var_3.x, false)))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(973f))))))), 65859u);
}

