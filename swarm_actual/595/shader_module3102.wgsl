struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(607f, 1033f)) * -2511f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(960f, 453f), vec2<f32>(2267f, -1075f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1355f, 1726f))), true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(648f, -286f), vec2<f32>(-327f, -555f))))), !arg_0.yy))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-182f)), var_0.x));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, -614f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-202f, var_0.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1244f, 276f))), arg_0.ww))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-559f, var_0.x) * vec2<f32>(225f, -1074f)))))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(454f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - -1253f))), true)) + _wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = vec3<u32>(u_input.a.x << (min(44064u, abs(0u)) % 32u), 82983u, ~countOneBits(select(_wgslsmith_add_u32(4294967295u, u_input.a.x), countOneBits(0u), !arg_0.x)));
    return vec3<u32>(u_input.a.x << (~0u % 32u), u_input.a.x | 31780u, _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(54314u, 4294967295u, 1u, 123852u) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 22564u)), vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, 65445u, 1u), vec4<u32>(4294967295u, 97824u, var_2.x, var_2.x)), var_2.x, 1u)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, ~u_input.a.x), u_input.a.zy), u_input.a.x, 44962u) >> (countOneBits(vec3<u32>(~u_input.a.x, u_input.a.x, min(u_input.a.x, u_input.a.x)) ^ func_3(vec4<bool>(true, true, true, true))) % vec3<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * -1367f), abs(_wgslsmith_mod_vec2_u32(var_0.zx ^ vec2<u32>(var_0.x, 0u), u_input.a.zy)) & u_input.a.yy);
    var var_2 = vec4<bool>(true, all(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), all(vec2<bool>(false, false)))), u_input.a.x != ~(~u_input.a.x ^ u_input.a.x), false);
    var_2 = !(!vec4<bool>(false, var_2.x, false, any(!vec4<bool>(var_2.x, false, var_2.x, var_2.x))));
    let var_3 = any(!var_2.yww);
    return var_1;
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(func_2().a)), u_input.a.zx | vec2<u32>(~u_input.a.x, func_3(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true)).x));
    var var_2 = ~(~vec3<i32>(-1i, ~_wgslsmith_clamp_i32(-8015i, 51752i, 1i), 1i));
    var_1 = var_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - var_1.a), -1108f) * -687f), var_0.a, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(f32(-1f) * -632f))));
    return Struct_1(_wgslsmith_f_op_f32(-886f * _wgslsmith_f_op_f32(-1894f + -483f)), vec2<u32>(39764u, var_1.b.x | ~0u) & vec2<u32>(0u, 1u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -abs(select(vec2<i32>(4004i, -1i), vec2<i32>(-10638i, -18163i), vec2<bool>(true, false))), vec2<i32>(~countOneBits(abs(1i)), ~_wgslsmith_mult_i32(19703i, -13701i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_1.a - 1011f), ~arg_0.zy);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(326f, _wgslsmith_div_f32(arg_1.a, var_1.a))));
    let var_3 = select(vec2<bool>(-644f > var_1.a, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))))), vec2<bool>(false, ((var_1.b.x > u_input.a.x) == true) & all(vec2<bool>(true, true))), -reverseBits(var_0.x << (87080u % 32u)) <= -19780i);
    var var_4 = firstTrailingBit(_wgslsmith_clamp_u32(var_1.b.x, 7659u, ~var_1.b.x));
    return 49209i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(1i, func_4(u_input.a, func_1(_wgslsmith_f_op_f32(max(479f, -822f)), _wgslsmith_div_f32(-163f, -1332f))), 19297i);
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1256f + -974f)) - _wgslsmith_f_op_f32(-430f + _wgslsmith_f_op_f32(floor(328f)))) - 786f)));
    let var_3 = func_2();
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(463f + -635f), _wgslsmith_f_op_f32(-var_2), true))) * 1004f), vec2<u32>(~_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(0u, 127234u)), min(abs(0u), var_3.b.x)));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-6037i, -_wgslsmith_add_vec4_i32(-vec4<i32>(-1i, -1i, var_0.x, var_0.x), reverseBits(vec4<i32>(var_0.x, var_0.x, -1i, var_0.x))) >> (abs(vec4<u32>(func_3(vec4<bool>(false, true, true, true)).x, var_4.b.x, abs(62981u), ~var_4.b.x)) % vec4<u32>(32u)), -1i, u_input.a.x);
}

