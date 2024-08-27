struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec4<u32>(34915u, 1u, 1u, 0u), vec4<u32>(53334u, 1u, 10587u, 13503u), vec4<f32>(411f, 2281f, -676f, 1000f), vec3<f32>(-1013f, 1344f, 925f));

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<f32> {
    global0 = Struct_1(countOneBits(arg_2.b), ~firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 13381u, u_input.a, 4294967295u), global0.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -578f, -1595f, _wgslsmith_f_op_f32(arg_0 + global0.d.x)), vec4<f32>(_wgslsmith_f_op_f32(-1627f + 262f), -2028f, global0.c.x, _wgslsmith_f_op_f32(select(-923f, -1349f, false))), vec4<bool>(any(vec3<bool>(true, false, false)), true, true, u_input.b != u_input.c.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.c.x, 1132f))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(754f - global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f - 1063f)))));
    let var_0 = firstLeadingBit(u_input.b);
    let var_1 = arg_2.a.x;
    let var_2 = vec2<bool>(false, all(vec4<bool>(var_0 < ~var_0, true, select(true, true, false) && (-1602f >= arg_0), any(vec3<bool>(false, true, false)))));
    var var_3 = Struct_1(~vec4<u32>(max(~56321u, ~32081u), firstTrailingBit(~70666u), 1u, _wgslsmith_div_u32(~61844u, 4294967295u)), reverseBits(~vec4<u32>(_wgslsmith_clamp_u32(1u, 33695u, 71022u), ~global1.b.x, _wgslsmith_mod_u32(25885u, arg_2.b.x), 0u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(658f + arg_0))), -1025f, 282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(945f, 349f)) - global1.c.x)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(global1.c))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.c.x, 1527f), arg_0)), global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(f32(-1f) * -997f)) - arg_0)));
    return vec3<f32>(1044f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x + -1329f)) + _wgslsmith_f_op_f32(sign(var_3.d.x)))), _wgslsmith_f_op_f32(var_3.c.x * global1.c.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    global1 = Struct_1(vec4<u32>(~global1.a.x, abs(~0u), abs(4294967295u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.a.x, 0u, 0u, global1.a.x)), global1.a) << (~_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.a.x, 41271u, 120825u, global0.b.x), vec4<u32>(~u_input.a, global1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, 8638u), vec2<u32>(global0.a.x, 75390u)), ~4294967295u)), _wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.xyz - global0.d)), global0.c.xxz, !(global1.d.x <= global1.d.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -274f), arg_1))));
    global1 = Struct_1(select(_wgslsmith_mult_vec4_u32(global0.a, global1.b), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, global0.a.x, 4294967295u, global0.a.x)), global1.b), vec4<u32>(global1.b.x, 11169u, 1u, 4294967295u)), -1i < -_wgslsmith_div_i32(u_input.c.x, 1i)), vec4<u32>(global0.b.x, ~u_input.a, ~4294967295u, 9671u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1346f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-508f))), _wgslsmith_f_op_f32(f32(-1f) * -123f), global1.c.x)), vec3<f32>(_wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1357f, global1.c.x) + -1165f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(219f)))))), _wgslsmith_f_op_f32(-arg_1)));
    var var_0 = ~_wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(u_input.b), -76868i), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-37868i, u_input.c.x)), vec2<i32>(2147483647i, -31131i)));
    return Struct_1(~_wgslsmith_mod_vec4_u32(abs(~global0.b), global0.b), ~vec4<u32>(u_input.a, ~(~10028u), global0.b.x, global0.a.x >> (~4294967295u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c + global1.c) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(580f, global0.c.x, -1000f, 177f), global0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d * vec3<f32>(720f, global1.c.x, global1.c.x))) + _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-global1.d.x), vec2<u32>(global0.a.x, 0u) | global1.b.yx, Struct_1(vec4<u32>(13670u, 0u, 4294967295u, 1u), global0.b, global0.c, vec3<f32>(global0.d.x, global0.c.x, 1359f))))))));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    let var_1 = any(!vec4<bool>(var_0, var_0, select(false, false, var_0) || var_0, false));
    global1 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.a.x, 0u, 0u), arg_0.a), _wgslsmith_sub_u32(49599u, countOneBits(global0.a.x)), abs(u_input.a)), global1.b), vec4<u32>(111048u, global0.b.x, 1u, abs(abs(_wgslsmith_mult_u32(57726u, arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(912f, -121f, global1.d.x))))))));
    var var_2 = vec2<bool>(u_input.c.x == -u_input.c.x, true);
    let var_3 = !(!(!(!(!vec3<bool>(var_2.x, true, var_2.x)))));
    return global0.b.x;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(arg_3.c.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-func_2(vec4<bool>(true, false, false, true), global0.c.x).d.yy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-406f, 403f) + vec2<f32>(572f, arg_0.d.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1065f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-612f, arg_3.c.x) * arg_3.d.yx), _wgslsmith_f_op_vec2_f32(-arg_0.c.zx))))), (true && ((arg_0.a.x <= arg_1) & (-5649i == u_input.c.x))) != any(vec2<bool>(true, true))));
    let var_1 = func_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), select(any(vec3<bool>(true, true, false)) & all(vec3<bool>(false, true, true)), true, !(17893u > arg_2))), func_2(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))).c.x);
    var var_2 = Struct_1(~vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(32159u, global0.b.x, arg_1, 1u), vec4<u32>(global0.b.x, global1.a.x, arg_1, 76006u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_2, 1u), _wgslsmith_dot_vec3_u32(global1.a.wzz, vec3<u32>(arg_3.b.x, u_input.a, 1u)), ~arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_0.b.x), arg_3.b.yy) & ~0u), _wgslsmith_add_vec4_u32(arg_3.b, select(~arg_3.a >> (abs(vec4<u32>(61374u, arg_3.a.x, u_input.a, global1.a.x)) % vec4<u32>(32u)), global1.b, select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-337f, 1118f, false)), var_0.x, arg_0.c.x, -359f) - vec4<f32>(arg_0.c.x, _wgslsmith_div_f32(1401f, 168f), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(round(arg_0.d.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * -480f), _wgslsmith_f_op_f32(select(1606f, arg_0.d.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))));
    var var_3 = func_2(!vec4<bool>(any(vec3<bool>(false, false, true)), select(true, any(vec3<bool>(false, true, true)), true), any(vec3<bool>(true, true, true)), false), var_0.x);
    var_3 = func_2(vec4<bool>(true, true, true, true), var_1.d.x);
    return func_2(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, all(vec2<bool>(true, true)), select(all(vec3<bool>(true, true, false)), true, _wgslsmith_f_op_f32(select(arg_3.d.x, arg_3.c.x, true)) != _wgslsmith_f_op_f32(trunc(-1949f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + 1564f))))));
}

fn func_1() -> u32 {
    var var_0 = ~select(u_input.c, vec3<i32>(_wgslsmith_dot_vec2_i32(-u_input.c.yy, u_input.c.yx), reverseBits(0i), u_input.c.x), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))));
    var var_1 = func_5(Struct_1(~global0.b, vec4<u32>(global0.b.x, ~_wgslsmith_sub_u32(global0.b.x, 0u), func_4(func_2(vec4<bool>(false, false, true, false), global1.c.x)), _wgslsmith_sub_u32(22944u, 638u)), global1.c, global1.d), u_input.a, u_input.a, func_2(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true))), 626f));
    var_1 = func_5(Struct_1(select(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(0u, 125530u, global1.a.x, u_input.a), vec4<u32>(u_input.a, 53696u, 21617u, global0.a.x)), ~var_1.b), ~_wgslsmith_div_vec4_u32(global0.a, var_1.b), true), global0.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(109f + -454f), _wgslsmith_f_op_f32(floor(global1.c.x)), global0.d.x, _wgslsmith_f_op_vec3_f32(func_3(-1041f, global1.b.xx, Struct_1(vec4<u32>(global1.b.x, 57603u, 52970u, global0.a.x), vec4<u32>(4112u, 1u, global0.a.x, 25745u), var_1.c, global1.c.wyw))).x), vec4<f32>(1414f, _wgslsmith_f_op_f32(global0.d.x - 1101f), var_1.d.x, -688f))), vec3<f32>(_wgslsmith_f_op_f32(838f - global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - -590f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(1093f - -617f))))), _wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_div_u32(global1.a.x, 0u)), ~global1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, ~global1.a.x, ~u_input.a), global1.b)), 4294967295u, func_2(vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x)))))));
    var_0 = ~u_input.c;
    let var_2 = true;
    return global1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, vec4<u32>(global0.b.x, 19072u, u_input.a, func_1()), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(global0.c.x, vec2<u32>(global1.a.x, global0.b.x), Struct_1(global1.a, global0.b, global1.c, vec3<f32>(614f, -620f, global0.d.x)))).x)))), _wgslsmith_div_f32(global1.c.x, 744f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), 242f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.c.ywy + global1.d), vec3<f32>(global1.d.x, -124f, global0.d.x), vec3<bool>(true, true, true)))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-441f)), _wgslsmith_f_op_f32(min(1297f, global0.c.x)))), 448f, _wgslsmith_f_op_f32(global1.c.x - global1.c.x))));
    var var_0 = !(!(min(10473i, max(u_input.b, 37300i)) == (u_input.c.x ^ 63787i)));
    let var_1 = Struct_1(global1.b ^ (abs(~vec4<u32>(global1.a.x, 18501u, 6450u, u_input.a)) | firstLeadingBit(vec4<u32>(global0.a.x, 36446u, u_input.a, global1.a.x) & vec4<u32>(global1.a.x, 4294967295u, global0.a.x, 9660u))), global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.c, vec4<f32>(global0.c.x, -908f, global0.c.x, 1176f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-993f + global1.d.x), global1.c.x))), vec3<f32>(_wgslsmith_f_op_f32(-1881f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1727f))), global0.c.x, global1.d.x));
    let var_2 = Struct_1(vec4<u32>(4294967295u, u_input.a, func_5(var_1, max(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 63255u), var_1.b.wx)), 21116u, func_2(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), _wgslsmith_f_op_f32(884f - global0.c.x))).b.x, _wgslsmith_mult_u32(1u, 1u)), vec4<u32>(u_input.a, firstLeadingBit(~(42446u >> (u_input.a % 32u))), max(_wgslsmith_div_u32(u_input.a, max(global0.a.x, global0.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(77613u, global1.a.x, var_1.a.x), min(vec3<u32>(global0.b.x, 35452u, u_input.a), global0.a.wzx))), 76387u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c + vec4<f32>(global1.c.x, 689f, global1.c.x, 624f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-509f, global1.d.x, 334f, -1008f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.d.x, -717f, var_1.d.x, global1.c.x), vec4<f32>(var_1.d.x, 185f, 536f, var_1.c.x)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.c.x + global1.c.x))), _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_div_f32(global1.c.x, -157f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x))))));
    var var_3 = vec4<bool>((~u_input.b ^ u_input.b) == ~25764i, all(vec4<bool>(true, true, true, true)) || (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(6951u, global1.a.x), select(var_1.b.x, 33088u, false), firstLeadingBit(var_2.a.x)) >= 82802u), false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(-213f, reverseBits(vec2<u32>(8000u, 1u)), func_5(var_2, u_input.a, 4294967295u, Struct_1(vec4<u32>(u_input.a, 4294967295u, 65032u, 0u), global0.b, vec4<f32>(105f, var_2.d.x, global1.d.x, global0.d.x), var_2.c.zww)))).x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(241f)) * _wgslsmith_div_f32(966f, -1390f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c);
}

