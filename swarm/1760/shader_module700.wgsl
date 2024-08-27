struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<i32>) -> f32 {
    let var_0 = true;
    let var_1 = !any(!select(select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(true, false, var_0, var_0), vec4<bool>(true, var_0, var_0, var_0)), !vec4<bool>(var_0, var_0, false, true), !vec4<bool>(false, var_0, var_0, var_0)));
    let var_2 = select(any(select(!(!vec2<bool>(var_1, false)), select(!vec2<bool>(false, var_1), vec2<bool>(true, true), var_1), arg_2 <= _wgslsmith_clamp_i32(-17470i, -1i, arg_3.x))), !var_0, true & !(all(vec2<bool>(var_1, var_1)) & false));
    var var_3 = Struct_1(-25055i, firstTrailingBit(_wgslsmith_dot_vec2_i32(reverseBits(arg_3.xy), min(_wgslsmith_mult_vec2_i32(arg_3.wz, arg_3.yx), ~arg_3.xw))));
    let var_4 = Struct_1(arg_2, -2147483647i << (arg_1.x % 32u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-858f - 976f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1171f)) + -1000f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1071f, -274f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(~(~vec4<u32>(u_input.b, 15968u, u_input.a.x, u_input.a.x)), max(~vec2<u32>(u_input.a.x, 84421u), firstTrailingBit(u_input.a)), 1i, vec4<i32>(0i, -23496i, 1i, -2147483647i) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 72286u, u_input.b, u_input.b)) % vec4<u32>(32u)))))));
    let var_1 = (any(vec2<bool>(true, true)) | any(vec3<bool>(true, true, true))) == false;
    var var_2 = countOneBits(firstTrailingBit(1i)) & 1i;
    let var_3 = vec3<bool>(true, true, true);
    var var_4 = countOneBits(-((vec3<i32>(-5693i, 2147483647i, -1i) >> (~vec3<u32>(u_input.b, u_input.a.x, u_input.b) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_clamp_u32(31968u, 2188u, 4294967295u), u_input.b & u_input.b, 52079u) % vec3<u32>(32u))));
    return Struct_1(-firstLeadingBit(23492i), var_4.x ^ (min(var_4.x, -1i) << (u_input.b % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(-367f, _wgslsmith_f_op_f32(f32(-1f) * -2326f));
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(710f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2035f, 2027f))))), !vec2<bool>(arg_2 | arg_2, false)))));
    var_1 = func_2();
    var var_3 = arg_0;
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(func_1(arg_3, _wgslsmith_div_i32(-6549i, ~countOneBits(arg_0.b)), any(vec2<bool>(true, false))).b, -23112i);
    return Struct_1(arg_2.a, min(var_0.a, ~(-1i)));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = ~countOneBits(vec4<i32>(arg_0.a, arg_0.b, _wgslsmith_clamp_i32(-42049i, countOneBits(-29632i), 23767i), arg_0.b));
    var var_1 = Struct_1(-1i, func_2().b);
    var var_2 = func_1(func_4(func_2(), ~19913u, Struct_1(-15890i, _wgslsmith_mod_i32(i32(-1i) * -6250i, _wgslsmith_div_i32(6179i, var_0.x))), Struct_1(~_wgslsmith_add_i32(arg_0.a, 40129i), var_1.b | 1i)), 58170i, true & arg_1);
    var_1 = func_2();
    var var_3 = u_input.a;
    return arg_0;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1164f, 394f)))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(123f - _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1499f, -1490f) - _wgslsmith_f_op_f32(select(-1937f, -867f, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-213f, 923f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1819f + -1021f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-593f)) + _wgslsmith_f_op_f32(abs(1323f))))));
    var var_1 = vec4<u32>(u_input.a.x << (_wgslsmith_sub_u32(_wgslsmith_add_u32(14720u, abs(u_input.b)), _wgslsmith_sub_u32(69970u, u_input.a.x)) % 32u), (~_wgslsmith_mod_u32(u_input.a.x, 1u) ^ _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 6624u, 0u, u_input.a.x), vec4<u32>(u_input.b, u_input.b, u_input.a.x, 1u)))) | u_input.b, ~(max(u_input.b, u_input.a.x) ^ ~1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(select(4294967295u, 1u, false), 1u, abs(u_input.a.x), u_input.a.x), vec4<u32>(798u, ~u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 24610u, u_input.b, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 30814u)))), u_input.b);
    let var_2 = func_5(Struct_1(_wgslsmith_mod_i32(i32(-1i) * -16618i, arg_0.b), ~arg_0.b), all(select(vec3<bool>(true, all(vec3<bool>(true, true, false)), arg_0.a >= arg_0.b), vec3<bool>(true, u_input.b >= 5366u, true), true)));
    var_1 = countOneBits(select(~(~vec4<u32>(var_1.x, u_input.b, var_1.x, 56605u)), vec4<u32>(var_1.x, _wgslsmith_mod_u32(u_input.a.x, 15528u), ~83338u, 4294967295u), vec4<bool>(true, true, true, true)) >> (~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.x, 0u, u_input.b), vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.b)), ~vec4<u32>(1u, u_input.b, 0u, 3843u)) % vec4<u32>(32u)));
    return func_1(var_2, -arg_0.b, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(func_1(Struct_1(2147483647i, -10708i), _wgslsmith_clamp_i32(51263i, 6825i, 2147483647i), true), u_input.a.x, Struct_1(abs(0i), 0i), func_2()), !select(true, true, true)));
    let var_1 = vec4<bool>(true, true, -1547f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-688f, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -522f)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(982f, -1099f, -438f, 100f) + vec4<f32>(-731f, -305f, 919f, -422f)) - vec4<f32>(667f, 1347f, _wgslsmith_f_op_f32(trunc(1083f)), _wgslsmith_f_op_f32(-1033f + 492f)))), vec4<f32>(235f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(224f, 685f, false)) - -338f) - _wgslsmith_f_op_f32(select(-329f, 355f, true))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1f), _wgslsmith_mult_u32(u_input.b, ~firstLeadingBit(~u_input.b)), ~vec3<u32>(firstTrailingBit(105709u), min(28127u, min(0u, u_input.b)), ~28670u));
}

