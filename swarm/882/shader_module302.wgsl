struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: i32 = -1i;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> vec4<u32> {
    global0 = array<Struct_1, 13>();
    var var_0 = vec3<bool>(!any(select(!vec3<bool>(arg_2, arg_0.a.x, arg_2), select(vec3<bool>(true, arg_2, arg_0.a.x), vec3<bool>(false, arg_0.a.x, true), arg_2), select(vec3<bool>(true, false, true), vec3<bool>(arg_2, arg_0.a.x, arg_0.a.x), false))), any(vec2<bool>(arg_2, arg_2)), !all(select(vec3<bool>(arg_0.a.x, true, false), !vec3<bool>(false, arg_2, arg_0.a.x), arg_2)));
    var var_1 = arg_0;
    var_1 = Struct_1(vec2<bool>(any(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_2)), u_input.b >= u_input.a));
    var var_2 = true;
    return vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 64578u), arg_1.x, arg_1.x ^ 0u, abs(arg_1.x)), vec4<u32>(arg_1.x, ~max(75710u, arg_1.x), _wgslsmith_div_u32(arg_1.x, arg_1.x ^ arg_1.x), abs(1u))), _wgslsmith_clamp_u32(62u, _wgslsmith_dot_vec3_u32(max(arg_1.wxy, arg_1.xwz) >> ((arg_1.zyy & vec3<u32>(50211u, 40231u, arg_1.x)) % vec3<u32>(32u)), arg_1.xxy), firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, arg_1.x, 18441u), ~vec3<u32>(arg_1.x, arg_1.x, 4294967295u)))), _wgslsmith_mod_u32(arg_1.x, firstTrailingBit(14445u << (0u % 32u))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = !vec2<bool>(-13627i <= (u_input.c << (arg_1.x % 32u)), select(all(vec2<bool>(false, arg_2.a.x)), true | (arg_2.a.x | true), false));
    var var_1 = abs(arg_1.x);
    var_1 = firstTrailingBit(1u);
    var_1 = ~arg_1.x;
    global0 = array<Struct_1, 13>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) * -995f);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(1643f, func_3(global0[_wgslsmith_index_u32(select(~1u, _wgslsmith_mod_u32(920u, 1u), all(vec4<bool>(false, false, false, true))), 13u)], _wgslsmith_add_vec4_u32(max(firstTrailingBit(vec4<u32>(14258u, 0u, 47178u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~101638u, _wgslsmith_mult_u32(91211u, 0u), 1u, 1u)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, false, true)), true), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))))));
    global0 = array<Struct_1, 13>();
    var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1222f * -1468f))), -965f), _wgslsmith_f_op_f32(step(2066f, _wgslsmith_f_op_f32(-2096f - _wgslsmith_f_op_f32(step(-943f, 1481f)))))), min(vec4<u32>(1u, 56326u, ~19690u, ~1u), ~reverseBits(vec4<u32>(21158u, 40783u, 0u, 4294967295u))) << (firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(3250u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 49796u))) ^ ~(~(~109292u)), 13u)]));
    var var_1 = Struct_2(Struct_1(vec2<bool>(2147483647i == u_input.a, select(true, all(vec4<bool>(true, true, true, true)), u_input.b < u_input.a))), global0[_wgslsmith_index_u32(~4294967295u, 13u)], u_input.a, -287f);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-519f)))), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1226f * var_1.d)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, var_1.d, var_1.d)) + vec3<f32>(-507f, _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(min(-988f, 1042f)), vec4<u32>(42800u, 0u, 8122u, 37816u), Struct_1(vec2<bool>(var_1.b.a.x, true)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-564f)));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = (u_input.c & -33361i) >> (4294967295u % 32u);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(77071u, 4294967295u, 18410u, 13591u), vec4<u32>(56131u, 1u, 4294967295u, 1u)), max(~49632u, 1u), 1u), 13u)], Struct_1(!vec2<bool>(arg_1.x, arg_1.x)), 2147483647i, 367f);
    var var_2 = Struct_2(Struct_1(vec2<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), arg_1)))), Struct_1(arg_1.xz), arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(939f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(568f)))))));
    let var_3 = Struct_2(Struct_1(!vec2<bool>(false, any(arg_1))), var_1.a, u_input.b, -390f);
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2 * arg_2), arg_2, _wgslsmith_f_op_f32(-667f + arg_2), var_2.d) * vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(var_1.d * -249f), _wgslsmith_f_op_f32(var_1.d * var_1.d), _wgslsmith_f_op_f32(-var_2.d))), vec4<f32>(533f, -1683f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(var_2.d + 1551f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(round(-502f)), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(var_3.b.a)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(func_4(-2503f, vec4<u32>(1u, 24905u, 31361u, 21901u), Struct_1(var_2.a.a))), true)), _wgslsmith_f_op_f32(f32(-1f) * -1524f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.d, arg_2)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-916f, -1234f), -1443f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1510f, 161f)) + _wgslsmith_f_op_f32(f32(-1f) * -443f)), _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - var_2.d) + _wgslsmith_f_op_f32(f32(-1f) * -357f)), 270f))), vec4<bool>(true, !(!any(var_3.b.a)), true || var_3.b.a.x, all(!(!var_1.b.a)))));
    return var_2.b;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f) + _wgslsmith_div_f32(-1417f, -604f)) - _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-488f + 1000f), -531f, arg_0)))), !select(select(!vec3<bool>(arg_0, false, true), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), arg_0), !vec3<bool>(false, false, arg_0)), !(!vec3<bool>(true, arg_0, arg_0)), (2147483647i == u_input.a) && arg_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f * -1113f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2196f, 516f))))), u_input.c);
    var_0 = global0[_wgslsmith_index_u32(0u, 13u)];
    let var_1 = Struct_2(Struct_1(!func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1480f, 1266f)), vec3<bool>(true, var_0.a.x, true), _wgslsmith_f_op_f32(step(1751f, 887f)), u_input.b).a), Struct_1(vec2<bool>(false, var_0.a.x)), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-324f, _wgslsmith_div_f32(812f, 1116f), u_input.a == u_input.b))) + _wgslsmith_f_op_f32(sign(1072f))));
    var var_2 = !(!select(vec4<bool>(false, any(vec2<bool>(false, var_0.a.x)), var_1.d > var_1.d, var_0.a.x), !select(vec4<bool>(true, true, arg_0, false), vec4<bool>(true, false, true, var_1.a.a.x), arg_0), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0, var_0.a.x, true, arg_0), true)));
    var var_3 = vec2<bool>(!var_0.a.x && all(vec2<bool>(select(arg_0, var_1.b.a.x, false), var_1.d <= var_1.d)), var_1.a.a.x);
    return _wgslsmith_sub_i32(~u_input.a, _wgslsmith_sub_i32(firstTrailingBit(55690i), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_i32((u_input.a & _wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, u_input.a, -2147483647i, u_input.c), vec4<i32>(-1i, -2147483647i, 4325i, -2147483647i)), vec4<i32>(u_input.a, 81664i, 45095i, 2147483647i) | vec4<i32>(u_input.a, u_input.b, -16598i, u_input.a))) & ~_wgslsmith_add_i32(u_input.a, ~(-22230i)), max(~u_input.b, u_input.a));
    global1 = func_1(true) | -2147483647i;
    var var_0 = Struct_1(vec2<bool>(true, !any(vec3<bool>(true, true, true))));
    var var_1 = -68548i;
    let var_2 = vec2<f32>(1137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-161f))));
    var_0 = Struct_1(vec2<bool>(var_2.x < _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_2.x), 2146f), !(var_0.a.x | any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_2.x)))), 220f, true)), var_2, vec2<i32>(firstTrailingBit(-1i), 26324i));
}

