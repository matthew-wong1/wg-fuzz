struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = 1f;
    let var_1 = ~vec2<u32>(u_input.a, u_input.a);
    var_0 = 1000f;
    var var_2 = Struct_1(~var_1, ~(~firstLeadingBit(vec4<u32>(0u, 0u, 0u, 0u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1759f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(abs(373f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-221f, -668f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f))));
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(~vec2<u32>(~67075u, 4294967295u & u_input.a), vec4<u32>(_wgslsmith_div_u32(~4227u, u_input.a), ~u_input.a, u_input.a, ~u_input.a)), 1i, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f * 1393f)) - -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810f * -1368f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)), -1000f));
    let var_1 = var_0.a;
    let var_2 = var_0.d;
    var var_3 = ~var_1.a;
    var var_4 = Struct_2(var_1, i32(-1i) * -2147483647i, !all(select(!vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, true), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, var_0.c), var_0.c))), var_0.a.a.x, _wgslsmith_f_op_vec4_f32(-var_0.e));
    return false;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(52497u, 4294967295u) | vec2<u32>(u_input.a, 22416u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 73823u)) & abs(vec2<u32>(13759u, 0u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(40185u, u_input.a, 1u), vec3<u32>(51345u, 4294967295u, 4294967295u)), u_input.a)), vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a) | firstTrailingBit(u_input.a), 7973u, (4294967295u >> (1u % 32u)) ^ u_input.a)), -1141i, func_3(), u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1122f, 692f, -682f, -975f)) - vec4<f32>(-795f, _wgslsmith_div_f32(-801f, -2156f), _wgslsmith_f_op_f32(580f + 919f), _wgslsmith_f_op_f32(1178f - -762f)))));
    let var_1 = firstLeadingBit(-16760i);
    var var_2 = Struct_1(var_0.a.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~1u, u_input.a), ~var_0.d, 4294967295u, 14899u), _wgslsmith_div_vec4_u32(select(vec4<u32>(var_0.d, u_input.a, u_input.a, var_0.d), countOneBits(var_0.a.b), vec4<bool>(var_0.c, false, var_0.c, var_0.c)), vec4<u32>(u_input.a, reverseBits(4294967295u), ~u_input.a, ~28288u)), ~(reverseBits(vec4<u32>(51878u, u_input.a, 1u, 170u)) & vec4<u32>(u_input.a, u_input.a, var_0.a.b.x, 1u))));
    var_2 = var_0.a;
    var var_3 = var_0.a.a;
    return _wgslsmith_div_i32(min(13220i, 1i), -48943i);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.a.b, arg_0.a.b), ~firstTrailingBit(vec4<u32>(arg_0.d, 51201u, arg_0.a.a.x, 66655u))), u_input.a, arg_0.a.a.x, 1u);
    let var_1 = u_input.a;
    var var_2 = select(_wgslsmith_add_vec3_i32(vec3<i32>(-arg_0.b, 10524i, arg_1), vec3<i32>(-arg_1, arg_0.b, ~arg_0.b) | _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, arg_0.b, arg_1) >> (var_0.xzz % vec3<u32>(32u)), vec3<i32>(arg_1, arg_1, arg_0.b))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(-1i, arg_0.b, 0i), vec3<i32>(2147483647i, 1i, arg_1)), min(vec3<i32>(0i, 1i, arg_0.b) >> (vec3<u32>(arg_0.a.b.x, 28690u, var_0.x) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(2147483647i, arg_0.b, arg_0.b))), -_wgslsmith_add_vec3_i32(vec3<i32>(arg_1, -5520i, 11208i), vec3<i32>(0i, 57461i, arg_1))), vec3<i32>(-2147483647i, arg_0.b, arg_0.b)), vec3<bool>(true, true, true));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x * arg_0.e.x));
    return Struct_1(~(~vec2<u32>(firstTrailingBit(30934u), ~0u)), vec4<u32>(arg_0.d, 29361u, u_input.a, ~31980u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(1i, -2147483647i, 0i), vec4<i32>(0i, 5948i, -2147483647i, -2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(654f))))));
    var var_1 = func_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 15340u), firstLeadingBit(vec4<u32>(1803u, 63938u, 0u, 4294967295u))), func_2(select(vec3<i32>(20980i, 70826i, -2147483647i), vec3<i32>(33153i, 38777i, 2147483647i), true) | vec3<i32>(1i, 1i, 1i)), any(vec4<bool>(false, true, any(vec3<bool>(true, true, false)), select(true, false, false))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 518u))), u_input.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1013f, -238f, 179f) * vec4<f32>(-1193f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-720f, -568f, -1000f, var_0.x), vec4<f32>(var_0.x, 1559f, var_0.x, 1165f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -157f, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, 385f))), false))), reverseBits(abs(_wgslsmith_add_i32(-62592i, 1i))));
    var var_2 = _wgslsmith_clamp_i32(abs(_wgslsmith_mod_i32(abs(~(-5133i)), select(1i, i32(-1i) * -23103i, true))), -firstLeadingBit(-10128i), 24385i);
    var var_3 = var_0;
    let var_4 = Struct_2(func_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), var_1.b), ~1i >> (min(u_input.a, var_1.b.x) % 32u), true, 134861u, vec4<f32>(-375f, _wgslsmith_f_op_f32(-var_3.x), -334f, var_0.x)), func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)))), _wgslsmith_dot_vec2_i32(firstLeadingBit(-abs(vec2<i32>(-1i, 2147483647i))), vec2<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i) << (_wgslsmith_mult_u32(42863u, u_input.a) % 32u), firstLeadingBit(~(-73190i)))), false, countOneBits(var_1.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, var_3.x, 490f, -771f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_3.x, var_3.x, 690f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.x, var_3.x, -242f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, -2187f, 666f) + vec4<f32>(var_0.x, var_3.x, var_3.x, 136f))))));
    var_2 = func_2(max(-countOneBits(-vec3<i32>(14220i, -25752i, var_4.b)), reverseBits(min(vec3<i32>(14820i, 0i, var_4.b), vec3<i32>(var_4.b, var_4.b, var_4.b)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, -2147483647i), vec3<i32>(-2147483647i, var_4.b, -2147483647i), vec3<i32>(27287i, var_4.b, var_4.b)))));
    var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) + vec2<f32>(var_0.x, 872f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-168f, -379f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.e.x, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_4.e.wx, vec2<f32>(var_0.x, var_0.x))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_1(vec3<i32>(var_4.b, 2147483647i, 7967i), vec4<i32>(-1i, -26533i, -2147483647i, var_4.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(833f, var_3.x, var_4.c)) - _wgslsmith_f_op_f32(-301f - var_3.x)))));
    let var_5 = all(!(!(!vec4<bool>(var_4.c, false, true, true))));
    var var_6 = vec4<i32>(var_4.b >> (abs(65049u) % 32u), 16297i, countOneBits(39899i), -_wgslsmith_mult_i32(min(_wgslsmith_div_i32(var_4.b, var_4.b), 0i), 14632i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(var_6.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_6.x, 15113i), ~(-1i))), var_4.b, var_4.b, var_6.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_4.e.xww))), vec3<f32>(_wgslsmith_f_op_f32(round(-1986f)), _wgslsmith_div_f32(1f, var_4.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(487f, 220f, false)), _wgslsmith_f_op_f32(sign(1605f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1f)));
}

