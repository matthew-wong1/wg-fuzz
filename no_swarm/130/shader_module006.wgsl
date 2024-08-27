struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    let var_0 = Struct_1(max(-arg_2.x, abs(max(arg_2.x, arg_2.x))));
    var var_1 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(~arg_3, min(4294967295u, 1u), _wgslsmith_mult_u32(83319u, arg_3), arg_3 << (1u % 32u))), (~vec4<u32>(4294967295u, arg_3, 7910u, arg_3) << (vec4<u32>(~arg_3, ~arg_3, ~arg_3, arg_3) % vec4<u32>(32u))) | abs(vec4<u32>(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_add_u32(4294967295u, arg_3), _wgslsmith_dot_vec4_u32(vec4<u32>(75067u, arg_3, 0u, arg_3), vec4<u32>(arg_3, 22994u, arg_3, 6209u)), select(arg_3, arg_3, global0.x))));
    let var_2 = Struct_1(u_input.a.x);
    let var_3 = vec2<bool>(true, true);
    var_1 = abs(vec4<u32>(_wgslsmith_add_u32(abs(0u), ~countOneBits(0u)), 4294967295u, _wgslsmith_sub_u32(reverseBits(1u), arg_3), ~_wgslsmith_mod_u32(select(0u, 4294967295u, global0.x), 1u)));
    return var_1.x;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: u32) -> bool {
    global0 = !select(!vec2<bool>(global0.x, !global0.x), !vec2<bool>(u_input.a.x >= arg_2, true), global0.x);
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1051f, -1000f)) + vec2<f32>(1000f, -710f))))));
    var var_1 = !(!select(!(!global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(8631u, 46401u, 1u, 1u), vec4<u32>(0u, 0u, 4294967295u, arg_3)) > 40868u, !global0.x || any(vec2<bool>(global0.x, true))));
    var_1 = all(select(select(vec4<bool>(-36228i >= u_input.a.x, !global0.x, global0.x, all(vec4<bool>(global0.x, global0.x, false, global0.x))), !select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(true, global0.x, false, true), vec4<bool>(true, true, global0.x, true)), !(!vec4<bool>(global0.x, true, false, true))), vec4<bool>(global0.x, -arg_2 >= (-37043i ^ arg_2), any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, global0.x), true)), any(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)))), select(vec4<bool>(arg_0 != arg_0, true, false || global0.x, any(vec2<bool>(global0.x, global0.x))), !select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), global0.x), vec4<bool>(global0.x != global0.x, global0.x, global0.x & false, !global0.x))));
    var var_2 = ~_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, ~u_input.a.x, arg_2 | 2147483647i, -34339i), -reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 34136i, -1i, -17507i), vec4<i32>(u_input.a.x, arg_2, 1i, -80202i))));
    return !any(!select(!vec4<bool>(global0.x, global0.x, false, false), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, true), global0.x), true));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = vec2<bool>(arg_1, select(!(!global0.x), func_4(func_3(25363i, false, -vec3<i32>(2147483647i, -9056i, u_input.a.x), ~1u), ~vec3<u32>(22792u, 50452u, 48046u), ~_wgslsmith_mult_i32(u_input.a.x, 1i), 13344u), all(select(vec4<bool>(global0.x, arg_1, false, true), !vec4<bool>(global0.x, global0.x, false, false), !vec4<bool>(false, arg_1, false, arg_1)))));
    let var_0 = Struct_1(0i);
    let var_1 = false;
    var var_2 = Struct_1(arg_2.a);
    let var_3 = any(!select(select(!vec3<bool>(global0.x, true, false), vec3<bool>(var_1, arg_1, arg_1), true), vec3<bool>(any(vec4<bool>(false, arg_1, true, var_1)), global0.x, all(vec2<bool>(arg_1, true))), !select(vec3<bool>(global0.x, true, arg_1), vec3<bool>(var_1, global0.x, var_1), var_1)));
    return Struct_1(-arg_2.a);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = 152f;
    let var_1 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(round(var_0))), 2300f), global0.x, Struct_1(arg_2.a));
    global0 = !select(vec2<bool>(any(vec3<bool>(true, global0.x, global0.x)), select(true, var_0 < 142f, true)), !(!(!vec2<bool>(true, global0.x))), 2147483647i <= _wgslsmith_mult_i32(~u_input.a.x, ~arg_2.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(min(449f, 474f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1925f, -1000f), vec2<f32>(1571f, 796f))))))));
    var var_3 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(36i, 1i, arg_2.a, arg_2.a), vec4<i32>(0i, arg_2.a, u_input.a.x, u_input.a.x)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -47359i, var_1.a), vec3<i32>(6578i, arg_1.a, u_input.a.x)), firstTrailingBit(-1i), arg_2.a)) | ~vec4<i32>(u_input.a.x, arg_2.a, -56240i, ~u_input.a.x);
    return ~(~(~(~firstTrailingBit(vec4<u32>(0u, 12965u, arg_0, 48300u)))));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = ~(~func_5(39182u, func_2(-256f, global0.x, Struct_1(-1i)), Struct_1(1i))) & (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0 | arg_0, arg_0, max(14596u, arg_0), arg_0), abs(_wgslsmith_add_vec4_u32(vec4<u32>(1289u, arg_0, 27230u, 1u), vec4<u32>(4294967295u, arg_0, arg_0, arg_0)))) >> (firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 1u, 7795u, arg_0) ^ vec4<u32>(11081u, 45403u, arg_0, 30308u), ~vec4<u32>(20301u, 1u, arg_0, arg_0))) % vec4<u32>(32u)));
    var var_1 = ~vec2<u32>(_wgslsmith_clamp_u32(~var_0.x, 0u, reverseBits(25676u)), ~(arg_0 & arg_0)) ^ var_0.wx;
    let var_2 = arg_0;
    global0 = !(!select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), vec2<bool>(true, global0.x)), true), select(vec2<bool>(true, global0.x), !vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x))));
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1698f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1102f))), 1f, any(select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(false, false, global0.x, false), global0.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1581f, -295f, global0.x))) * _wgslsmith_f_op_f32(532f + _wgslsmith_f_op_f32(floor(-106f)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1106f, 1163f)))), all(!vec3<bool>(global0.x, global0.x, true)) | (_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 0i)) > -u_input.a.x), Struct_1(1i)));
    return var_3.a << (var_1.x % 32u);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = any(vec3<bool>(u_input.a.x > ~(-2147483647i), global0.x, global0.x));
    let var_1 = select(vec4<bool>(!(!(false || var_0)), true, (countOneBits(arg_1.a) > -5341i) & !func_4(6605u, vec3<u32>(0u, 50328u, 4294967295u), arg_1.a, 4294967295u), var_0), select(select(select(vec4<bool>(global0.x, true, false, var_0), select(vec4<bool>(true, global0.x, false, true), vec4<bool>(global0.x, var_0, var_0, true), false), any(vec4<bool>(global0.x, false, global0.x, false))), select(!vec4<bool>(var_0, false, true, var_0), vec4<bool>(global0.x, global0.x, global0.x, var_0), all(vec2<bool>(true, false))), true), !vec4<bool>(any(vec2<bool>(var_0, global0.x)), false, false, global0.x), select(vec4<bool>(var_0, true, false, any(vec3<bool>(false, global0.x, global0.x))), select(!vec4<bool>(global0.x, true, global0.x, var_0), !vec4<bool>(var_0, true, true, global0.x), var_0), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * _wgslsmith_f_op_f32(f32(-1f) * -834f)) < _wgslsmith_f_op_f32(-arg_2));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(1566f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 + -313f))))), false));
    var var_3 = arg_1;
    let var_4 = arg_0.x;
    return func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1362f))), false, arg_1);
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global0 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false)), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), vec2<bool>(true, global0.x)), vec2<bool>(true, global0.x)), vec2<bool>(true, global0.x), !(!(!vec2<bool>(global0.x, false))));
    global0 = !(!select(vec2<bool>(arg_1.a == 2147483647i, true), select(!vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x))), vec2<bool>(global0.x, false)));
    var var_0 = arg_2;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -177f);
    global0 = !(!(!(!vec2<bool>(global0.x, false))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_i32(u_input.a.x, ~(~(u_input.a.x | -1i))));
    var var_1 = func_7(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(806f, 1289f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1070f, 2395f), vec2<f32>(-889f, 196f), global0.x)), true)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2070f, 151f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-570f, -1042f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(401f, 1592f), vec2<f32>(-1249f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(637f, -1301f)))), global0.x)), func_6(vec2<i32>(firstLeadingBit(0i) << (min(1u, 22623u) % 32u), -func_1(25363u)), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1335f)))), all(vec4<bool>(global0.x, global0.x, false, false)), func_2(688f, true, func_2(-477f, global0.x, Struct_1(24404i)))), -1638f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1055f)))));
    let var_2 = vec2<bool>(true, global0.x);
    var_0 = func_6(u_input.a, Struct_1(_wgslsmith_clamp_i32(func_2(_wgslsmith_f_op_f32(max(-192f, -411f)), true, func_2(999f, true, Struct_1(var_0.a))).a, -9123i, ~(~var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1370f - -388f)))))));
    let var_3 = Struct_1(~u_input.a.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(2005f)))))))) - -1136f);
    var_0 = func_2(_wgslsmith_f_op_f32(sign(-3987f)), func_5(~4294967295u, Struct_1(_wgslsmith_div_i32(-6622i, 2147483647i)), Struct_1(var_1.a)).x > ~(~54980u), Struct_1(-u_input.a.x));
    let var_5 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.a, countOneBits(_wgslsmith_clamp_i32(-1i, -43546i, 2147483647i))), ~_wgslsmith_div_i32(i32(-1i) * -27402i, u_input.a.x << (1519u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(firstLeadingBit(1u), 1u, !all(vec4<bool>(global0.x, global0.x, var_2.x, true))), 877i, vec2<i32>(u_input.a.x, ~var_5.a), 1u, abs(~firstLeadingBit(-vec4<i32>(-1i, u_input.a.x, -1998i, var_3.a))));
}

