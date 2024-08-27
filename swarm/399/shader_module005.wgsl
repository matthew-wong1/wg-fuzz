struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, true));

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, true));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<f32> {
    global0 = Struct_2(vec2<bool>(all(vec2<bool>(!global1.a.x, false && global1.a.x)), !all(select(vec4<bool>(global1.a.x, false, true, false), vec4<bool>(true, global1.a.x, true, true), vec4<bool>(true, false, false, global0.a.x)))));
    global1 = Struct_2(vec2<bool>(true, true));
    global1 = Struct_2(global0.a);
    let var_0 = Struct_4(~1342u, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 0u, 68941u)), 1u, ~(~7891u)) >> (~select(vec3<u32>(46055u, 101059u, 21152u), abs(vec3<u32>(4294967295u, 17312u, 13754u)), vec3<bool>(false, true, true)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -744f));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) * var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -367f))) * var_0.c)));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = arg_2.b.zy;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3())));
    let var_2 = ~(-_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a.x, -33870i), vec2<i32>(2147483647i, 30490i)) & _wgslsmith_clamp_vec2_i32(firstTrailingBit(countOneBits(vec2<i32>(-2147483647i, -17825i))), _wgslsmith_mod_vec2_i32(u_input.a.zx, u_input.a.ww) | vec2<i32>(u_input.a.x, u_input.a.x), abs(reverseBits(vec2<i32>(-1i, u_input.a.x)))));
    var var_3 = arg_2;
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.c, 291f), vec2<f32>(-717f, var_3.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1382f, -1287f) + vec2<f32>(var_1.x, -1345f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) - var_1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(799f, var_1.x))))));
    return select(global1.a, arg_0.xz, global0.a.x);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<i32>(-1i, -5681i);
    var var_1 = vec3<i32>(-6517i, u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.xzy >> (~(~vec3<u32>(38183u, 0u, 1u)) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(16822i, select(u_input.a.x, 1547i, false), -u_input.a.x))));
    var var_2 = Struct_3(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 0u), min(vec4<u32>(0u, 67417u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 20308u))), _wgslsmith_mod_u32(~0u, select(4294967295u, 1u, true)), 22419u), Struct_1(_wgslsmith_sub_vec2_i32(~u_input.a.xw, _wgslsmith_div_vec2_i32(u_input.a.yy, u_input.a.yz)), ~(-2147483647i), !vec4<bool>(true, arg_3.a.x, global0.a.x, arg_3.a.x), var_1.x, select(vec3<bool>(arg_0 > arg_0, !arg_3.a.x, any(global1.a)), vec3<bool>(false, arg_1.x, true), !select(true, true, arg_1.x))));
    var var_3 = vec2<bool>(true, (true | global1.a.x) | !(21690i >= firstLeadingBit(var_2.b.d)));
    let var_4 = var_2.a.x;
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    let var_0 = !vec4<bool>(func_2(vec4<bool>(func_2(vec4<bool>(global1.a.x, global1.a.x, global0.a.x, false), global1.a.x, Struct_4(1u, vec3<u32>(89768u, 0u, 20498u), 764f)).x, false, true, !global0.a.x), true, Struct_4(_wgslsmith_mult_u32(0u, 0u), vec3<u32>(0u, 1u, 11979u), _wgslsmith_f_op_f32(f32(-1f) * -1141f))).x, false, global0.a.x, func_2(select(vec4<bool>(global1.a.x, false, false, false), !vec4<bool>(global0.a.x, arg_0.a.x, global0.a.x, false), select(vec4<bool>(global0.a.x, false, arg_0.a.x, global1.a.x), vec4<bool>(false, global0.a.x, global0.a.x, false), vec4<bool>(true, arg_0.a.x, global1.a.x, false))), !all(vec3<bool>(global0.a.x, true, global1.a.x)), Struct_4(select(35889u, 0u, true), vec3<u32>(4294967295u, 1u, 37128u), -344f)).x);
    global0 = Struct_2(global1.a);
    let var_1 = Struct_1(countOneBits(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, arg_1), -1i), arg_1)), -1i, !vec4<bool>((true || global0.a.x) || true, false, func_4(_wgslsmith_f_op_f32(sign(-342f)), global1.a, -arg_1, arg_0).a.x, true | global0.a.x), firstTrailingBit(u_input.a.x), !var_0.wzw);
    var var_2 = arg_0.a.x;
    var var_3 = abs(~_wgslsmith_mult_vec4_i32(u_input.a, countOneBits(vec4<i32>(10749i, -1i, var_1.a.x, arg_1))));
    return Struct_3(~vec3<u32>(firstTrailingBit(7117u), select(1u, ~82515u, any(var_1.e.xy)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(20415u, 75569u), 46453u, min(1u, 50116u))), var_1);
}

fn func_6(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), arg_1))), _wgslsmith_f_op_vec3_f32(vec3<f32>(625f, arg_1.x, arg_1.x) - arg_1)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), _wgslsmith_f_op_f32(trunc(1000f))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1587f), arg_1.x)), arg_2.b.c.xxx));
    let var_1 = firstLeadingBit(select(vec4<u32>(arg_2.a.x, 31942u, arg_2.a.x, arg_2.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(25012u, 23127u, arg_2.a.x, arg_2.a.x), vec4<u32>(arg_2.a.x, arg_2.a.x, 19071u, 71357u)), true) | max(vec4<u32>(31939u, 37052u, 4294967295u, arg_2.a.x) & vec4<u32>(31752u, 1u, 64019u, arg_2.a.x), firstTrailingBit(vec4<u32>(79241u, arg_2.a.x, 7300u, arg_2.a.x)))) | vec4<u32>(~0u >> ((min(29829u, arg_2.a.x) | (arg_2.a.x | 4294967295u)) % 32u), _wgslsmith_mult_u32(~max(arg_2.a.x, 1u), countOneBits(_wgslsmith_div_u32(arg_2.a.x, 12360u))), 1754u, firstLeadingBit(arg_2.a.x));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(arg_1));
    let var_4 = func_5(Struct_2(arg_2.b.c.wx), -6170i);
    return vec2<bool>(any(vec2<bool>(arg_2.b.c.x, global1.a.x)), select(var_4.b.c.x, true, var_4.b.e.x));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_0.b;
    let var_1 = false;
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(161f * -264f) - -1520f)) < arg_0.c, all(!vec4<bool>(!var_1, !global1.a.x, true, -1367f <= arg_0.c)), false);
    var_0 = arg_0.b;
    let var_3 = select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(arg_0.a, var_0.x), ~var_0.x, _wgslsmith_mult_u32(var_0.x, arg_0.b.x), ~4294967295u), ~min(~vec4<u32>(arg_0.a, var_0.x, 0u, 4294967295u), reverseBits(vec4<u32>(6235u, 4294967295u, arg_0.b.x, 49115u))), vec4<u32>(var_0.x, _wgslsmith_div_u32(~var_0.x, ~var_0.x), 31980u, 4294967295u)), ~firstTrailingBit(firstLeadingBit(select(vec4<u32>(var_0.x, 4294967295u, var_0.x, arg_0.a), vec4<u32>(arg_0.b.x, arg_0.a, 82263u, 10573u), vec4<bool>(false, true, var_1, true)))), false);
    return Struct_2(func_6(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(0i, arg_2), -40203i), vec3<f32>(arg_0.c, -672f, _wgslsmith_f_op_f32(-arg_0.c)), func_5(func_4(arg_0.c, func_2(vec4<bool>(false, var_2.x, arg_3.c.x, true), var_2.x, Struct_4(var_0.x, arg_0.b, -1133f)), _wgslsmith_mod_i32(arg_2, arg_3.b), Struct_2(vec2<bool>(false, false))), -(arg_3.a.x | arg_3.d))));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(237f)), _wgslsmith_f_op_f32(-918f + -979f), _wgslsmith_f_op_f32(f32(-1f) * -287f))));
    global0 = Struct_2(!func_4(1075f, arg_0.a, _wgslsmith_dot_vec2_i32(u_input.a.xw, u_input.a.zz), func_4(var_0.x, func_4(-311f, vec2<bool>(true, global0.a.x), u_input.a.x, arg_0).a, min(u_input.a.x, u_input.a.x), Struct_2(vec2<bool>(true, arg_2.x)))).a);
    global0 = func_1(Struct_4(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, arg_1.x)), min(~vec2<u32>(0u, 1u), ~vec2<u32>(47338u, arg_1.x))), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.x, 1u, arg_1.x) & ~vec3<u32>(arg_1.x, arg_1.x, 0u), vec3<u32>(46154u >> (arg_1.x % 32u), 1u, abs(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), vec2<bool>(true, true), u_input.a.x, func_5(Struct_2(arg_0.a), ~0i).b);
    global0 = func_4(_wgslsmith_f_op_f32(ceil(132f)), vec2<bool>(false, false), 0i, Struct_2(func_1(Struct_4(1u << (arg_1.x % 32u), vec3<u32>(arg_1.x, arg_1.x, 1u), _wgslsmith_f_op_f32(f32(-1f) * -2118f)), func_4(_wgslsmith_f_op_f32(ceil(-473f)), global0.a, u_input.a.x, arg_0).a, u_input.a.x, Struct_1(-u_input.a.wx, u_input.a.x, vec4<bool>(false, arg_0.a.x, arg_0.a.x, true), max(29493i, u_input.a.x), !vec3<bool>(false, arg_2.x, false))).a));
    let var_1 = abs(_wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(102315u, arg_1.x, 38960u, arg_1.x))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(4294967295u, arg_1.x, arg_1.x, 0u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, 95693u, arg_1.x, 1u)) % vec4<u32>(32u))));
    return _wgslsmith_div_f32(var_0.x, var_0.x);
}

fn func_8(arg_0: Struct_4) -> Struct_2 {
    var var_0 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(15853u, arg_0.b.x, 0u, 110231u)), abs(vec4<u32>(46050u, 4294967295u, 24465u, arg_0.a))), _wgslsmith_sub_u32(arg_0.b.x, _wgslsmith_mult_u32(arg_0.a, 4095u)), 4294967295u, arg_0.b.x);
    let var_1 = func_5(func_4(_wgslsmith_f_op_f32(arg_0.c + arg_0.c), vec2<bool>(global1.a.x, !global0.a.x), -func_5(func_4(-324f, vec2<bool>(true, global1.a.x), u_input.a.x, Struct_2(vec2<bool>(global0.a.x, false))), ~32349i).b.a.x, Struct_2(vec2<bool>(!global0.a.x, arg_0.c > -238f))), 0i);
    var var_2 = func_5(func_4(891f, func_2(!vec4<bool>(true, global1.a.x, false, true), true, Struct_4(1u, var_0.xxw | var_0.zyz, _wgslsmith_f_op_f32(round(-2071f)))), u_input.a.x, Struct_2(select(global0.a, vec2<bool>(global1.a.x, global0.a.x), var_0.x < 9555u))), -_wgslsmith_div_i32(max(select(-48818i, var_1.b.a.x, global0.a.x), u_input.a.x), _wgslsmith_div_i32(-15109i, i32(-1i) * -42598i)));
    global0 = Struct_2(!select(!func_4(arg_0.c, var_2.b.e.zx, 2147483647i, Struct_2(vec2<bool>(true, true))).a, func_4(_wgslsmith_f_op_f32(arg_0.c + -731f), var_2.b.e.xy, ~var_1.b.d, Struct_2(global1.a)).a, global1.a.x));
    let var_3 = func_5(Struct_2(vec2<bool>(func_5(func_4(-610f, vec2<bool>(true, var_2.b.c.x), var_1.b.b, Struct_2(vec2<bool>(global1.a.x, var_2.b.c.x))), _wgslsmith_add_i32(2147483647i, var_1.b.a.x)).b.e.x, func_2(var_1.b.c, true & var_2.b.e.x, Struct_4(var_2.a.x, var_0.wyx, 1485f)).x)), -(u_input.a.x | -3745i)).b;
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + -1639f))), vec2<bool>(firstTrailingBit(~19097u) == var_1.a.x, !global0.a.x), var_1.b.a.x, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(607f - _wgslsmith_f_op_f32(911f * 257f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1331f + -1236f))), var_3.c.xz, ~(-6469i), func_1(Struct_4(3755u ^ var_2.a.x, vec3<u32>(var_2.a.x, var_1.a.x, 4294967295u), _wgslsmith_f_op_f32(func_7(Struct_2(global1.a), var_1.a.zy, global0.a))), vec2<bool>(var_1.b.e.x, !var_1.b.c.x), reverseBits(-2147483647i), var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_8(Struct_4(24778u, ~vec3<u32>(1u, 1u, 1u) << (vec3<u32>(_wgslsmith_clamp_u32(1u, 71064u, 41167u), 1u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(func_1(Struct_4(18566u, vec3<u32>(10668u, 1u, 27715u), 430f), global0.a, -54226i, Struct_1(vec2<i32>(2147483647i, u_input.a.x), u_input.a.x, vec4<bool>(global0.a.x, global1.a.x, false, global1.a.x), -28519i, vec3<bool>(global1.a.x, global0.a.x, true))), ~vec2<u32>(1u, 24585u), vec2<bool>(true, true))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1057f - -1907f))))));
    let var_0 = func_5(func_8(Struct_4(4294967295u, ~vec3<u32>(1u, 1u, 1u), -246f)), -31214i).b.d;
    global1 = func_8(Struct_4(firstLeadingBit(~4294967295u) ^ ~func_5(Struct_2(global0.a), u_input.a.x).a.x, _wgslsmith_sub_vec3_u32(~vec3<u32>(13156u, 26730u, 17182u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(34852u, 69898u, 1u, 4294967295u), vec4<u32>(41536u, 0u, 4294967295u, 7092u)), select(34733u, 1u, global0.a.x), max(27u, 13774u))), _wgslsmith_f_op_f32(ceil(1000f))));
    global1 = func_8(Struct_4(max(4666u, 11793u), ~select(~vec3<u32>(4294967295u, 4294967295u, 18286u), _wgslsmith_mult_vec3_u32(vec3<u32>(23787u, 51963u, 0u), vec3<u32>(26801u, 0u, 16316u)), select(vec3<bool>(false, global1.a.x, global1.a.x), vec3<bool>(global0.a.x, false, false), vec3<bool>(global1.a.x, false, true))), 930f));
    global0 = Struct_2(vec2<bool>(global1.a.x, global0.a.x));
    global1 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -513f), !global1.a, -func_5(Struct_2(vec2<bool>(global1.a.x, global0.a.x)), func_5(func_4(1644f, vec2<bool>(true, true), 2147483647i, Struct_2(vec2<bool>(true, global1.a.x))), ~13069i).b.b).b.a.x, Struct_2(global1.a));
    let var_1 = func_5(Struct_2(func_6(select(-13023i, -11663i, true) << (select(0u, 33471u, false) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-405f, -344f, 1569f))), func_5(func_1(Struct_4(0u, vec3<u32>(2560u, 7981u, 59864u), 115f), global1.a, 23715i, Struct_1(u_input.a.yx, -41839i, vec4<bool>(global0.a.x, false, false, true), 1i, vec3<bool>(true, global0.a.x, true))), -6519i))), 1i).a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -962f)) * 255f), _wgslsmith_div_f32(947f, _wgslsmith_f_op_vec2_f32(func_3()).x), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(214f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-126f, _wgslsmith_f_op_f32(-862f + 209f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-799f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -270f))), vec2<f32>(_wgslsmith_f_op_f32(sign(-792f)), 1f))));
}

