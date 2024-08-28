struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.c * arg_3.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_3.c, 284f, false)), _wgslsmith_f_op_f32(-arg_3.c), false)), arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(834f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-130f, _wgslsmith_f_op_f32(-125f + 1000f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1162f, arg_3.c, arg_3.c))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.c, arg_3.c, arg_3.c)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1213f, arg_3.c, arg_3.c)) * vec3<f32>(arg_3.c, 2099f, -1620f)))), !select(!arg_1.x, any(arg_1), false))));
    var var_1 = _wgslsmith_dot_vec4_u32(min(_wgslsmith_sub_vec4_u32(u_input.b, ~vec4<u32>(66853u, arg_3.a.x, 1u, 8947u)), u_input.b), min(abs(u_input.b), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(61203u, 0u, 0u), _wgslsmith_add_u32(1u, 1u)), u_input.d.x ^ 946u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(38193u, u_input.d.x), vec2<u32>(arg_3.a.x, u_input.d.x)), vec2<u32>(33743u, 111802u)), 63747u)));
    let var_2 = var_0.x;
    var_1 = _wgslsmith_dot_vec3_u32(~(~firstTrailingBit(~vec3<u32>(0u, u_input.d.x, arg_3.a.x))), ~u_input.d);
    var_1 = _wgslsmith_add_u32(~(~arg_3.a.x), 4294967295u) & select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u) | abs(vec2<u32>(arg_3.a.x, arg_3.a.x)), ~vec2<u32>(5752u, arg_3.a.x)), _wgslsmith_dot_vec2_u32(abs(u_input.b.zx) << (~vec2<u32>(4294967295u, 5596u) % vec2<u32>(32u)), reverseBits(vec2<u32>(arg_3.a.x, 19796u))), 1166f != var_0.x);
    return arg_1.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_1(select(arg_1, select(vec3<bool>(all(arg_1), !arg_1.x, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), true), arg_1), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1443f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1083f, arg_0.x) - vec2<f32>(866f, arg_0.x)), arg_0)))), vec3<i32>(u_input.a, (_wgslsmith_add_i32(u_input.a, 0i) | -1i) << (~u_input.e % 32u), ~(-min(-1203i, u_input.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x), arg_0.x)));
    let var_1 = var_0.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, arg_0.x))) + vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), arg_0.x))) * vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(-1956f - _wgslsmith_f_op_f32(trunc(var_0.d.x)))));
    var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.d.zw, vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + arg_0.x), _wgslsmith_f_op_f32(arg_0.x * var_0.d.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 226f)), var_0.d.zz))) * _wgslsmith_f_op_vec2_f32(arg_0 - arg_0))));
    var_2 = _wgslsmith_f_op_vec2_f32(sign(var_0.b));
    return all(!select(select(arg_1, vec3<bool>(true, false, arg_1.x), true), select(vec3<bool>(true, false, var_0.a.x), var_0.a, true), all(var_0.a))) & all(select(!vec4<bool>(true, false, var_1, false), vec4<bool>(true && arg_1.x, any(vec4<bool>(false, var_1, true, true)), true, any(vec4<bool>(true, var_1, true, false))), vec4<bool>(true, false, true, false)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<f32>) -> u32 {
    let var_0 = select(vec3<bool>(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.zz), arg_1), vec3<bool>(any(vec4<bool>(true, true, false, false)), false, func_3(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, false, true), vec2<bool>(true, false), Struct_2(u_input.d.yz, vec2<i32>(u_input.a, u_input.a), 1000f)))), any(vec4<bool>(true, false, true, true)), all(vec4<bool>(true, all(vec2<bool>(true, false)), true, all(vec3<bool>(false, false, false))))), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))) | any(vec3<bool>(true, true, true)), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), true), true);
    var var_1 = -_wgslsmith_add_i32(22983i, u_input.a);
    let var_2 = vec3<i32>(u_input.a, -u_input.a, _wgslsmith_sub_i32(4788i, i32(-1i) * -2147483647i));
    var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(u_input.a << (0u % 32u)), _wgslsmith_mult_i32(u_input.a, 2395i & u_input.a)), 1i) ^ 0i;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_div_f32(arg_1.x, -1055f), all(vec2<bool>(true, true)))), arg_1.x)), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2565f))))) * 1f);
    return _wgslsmith_dot_vec4_u32(u_input.b, max(firstTrailingBit(~abs(vec4<u32>(arg_0, 67492u, u_input.c, u_input.b.x))), u_input.b));
}

fn func_5(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    let var_0 = vec4<bool>(true, true | (_wgslsmith_sub_u32(arg_0.x, 41671u << (0u % 32u)) <= 29018u), false, !(select(-45952i != u_input.a, any(vec3<bool>(false, false, true)), true) != true));
    let var_1 = Struct_2(vec2<u32>(arg_0.x, ~arg_1), select(_wgslsmith_clamp_vec2_i32((vec2<i32>(1i, 2147483647i) | vec2<i32>(u_input.a, u_input.a)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, -1i), vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 53005i), _wgslsmith_add_vec2_i32(vec2<i32>(-26500i, u_input.a), vec2<i32>(u_input.a, u_input.a))), min(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-42232i, 2147483647i), var_0.x), -vec2<i32>(u_input.a, u_input.a))), firstTrailingBit(reverseBits(select(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a), true))), select(vec2<bool>(true, !var_0.x), var_0.yz, any(select(vec2<bool>(var_0.x, var_0.x), var_0.wy, false)))), -350f);
    let var_2 = var_1;
    var var_3 = ~((vec3<u32>(~57227u, 0u, _wgslsmith_clamp_u32(var_1.a.x, 1u, 43093u)) << (~(vec3<u32>(4294967295u, arg_1, var_1.a.x) ^ vec3<u32>(0u, arg_1, var_1.a.x)) % vec3<u32>(32u))) ^ ~vec3<u32>(arg_1, u_input.c, 4294967295u));
    var var_4 = var_2.a;
    return _wgslsmith_mod_u32(~max(~_wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_mod_u32(var_1.a.x, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, var_2.a.x)))), func_2(select(arg_1, arg_1, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c, var_2.c), vec2<f32>(var_2.c, 1722f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_2.c), -821f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_2.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c * -704f), _wgslsmith_f_op_f32(select(354f, 2823f, var_0.x))))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = 49972u;
    var_1 = 1u;
    let var_2 = ~u_input.a;
    var_1 = func_5(_wgslsmith_add_vec2_u32(firstLeadingBit(u_input.b.yw), ~_wgslsmith_add_vec2_u32(u_input.b.wx, vec2<u32>(25261u, u_input.b.x))) << (vec2<u32>(19195u, ~(~u_input.d.x)) % vec2<u32>(32u)), _wgslsmith_add_u32(4294967295u, ~(func_2(29510u, vec2<f32>(-358f, 797f), vec3<f32>(var_0.x, var_0.x, 665f)) << (40329u % 32u))));
    return Struct_2(select(u_input.b.xx, abs(vec2<u32>(u_input.e | 4294967295u, 4294967295u)), vec2<bool>(true, true)), vec2<i32>(var_2, -min(u_input.a, var_2) | u_input.a), arg_0.x);
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-140f, 1289f)) * -376f), 391f)), var_0.c) + vec2<f32>(240f, _wgslsmith_f_op_f32(ceil(-100f))));
    var var_3 = Struct_2(select(var_1.a, vec2<u32>(arg_0, ~(~arg_0)), vec2<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true)), -arg_1.b.x >= _wgslsmith_sub_i32(1i, 0i))), vec2<i32>(6617i << (~_wgslsmith_mult_u32(arg_1.a.x, 17896u) % 32u), 6871i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    let var_4 = Struct_1(vec3<bool>(true, all(vec3<bool>(true, true, true)), 1451f == var_0.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 1490f) + vec2<f32>(var_2.x, -1000f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, 846f) + vec2<f32>(var_3.c, -399f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, 720f)))), vec3<i32>(1i, ~1i, _wgslsmith_mult_i32(~var_0.b.x | u_input.a, 27761i | countOneBits(var_1.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * var_3.c), _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(trunc(arg_1.c))), -300f, -428f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_0.c, arg_1.c, 227f)), _wgslsmith_div_vec4_f32(vec4<f32>(1356f, -516f, -1000f, arg_1.c), vec4<f32>(var_0.c, 1173f, -1405f, 301f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, -586f, var_0.c, var_0.c))))))));
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.a.x, arg_1.a.x), vec2<u32>(32564u, 31975u))), vec2<u32>(~(~arg_0), 8357u)), arg_1.a, _wgslsmith_mult_vec2_u32(arg_1.a, abs(vec2<u32>(arg_1.a.x, 1u) & u_input.b.zz)));
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = Struct_2(vec2<u32>(~(~_wgslsmith_add_u32(121461u, u_input.d.x)), _wgslsmith_sub_u32(arg_0.a.x, u_input.d.x)), ~arg_0.b, arg_3.c);
    let var_1 = firstLeadingBit(var_0.a) | vec2<u32>(arg_0.a.x, var_0.a.x);
    let var_2 = vec2<bool>(false, (_wgslsmith_f_op_f32(463f - _wgslsmith_f_op_f32(trunc(1373f))) == _wgslsmith_f_op_f32(ceil(1117f))) || true);
    var var_3 = vec4<bool>(var_2.x, !(arg_3.a.x > 0u), _wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.c, arg_2))).c) > _wgslsmith_f_op_f32(-186f - 876f), true);
    var_3 = !(!(!vec4<bool>(any(var_3.xyy), var_3.x, func_4(vec2<f32>(379f, -215f), var_3.zyw), -12438i < arg_3.b.x)));
    return StorageBuffer(firstTrailingBit(-_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_3.b.x, arg_0.b.x, -32895i, u_input.a)), vec4<i32>(arg_0.b.x, 6660i, var_0.b.x, var_0.b.x))), 767f, vec2<i32>(_wgslsmith_add_i32(arg_0.b.x, _wgslsmith_clamp_i32(var_0.b.x ^ -19515i, var_0.b.x, 19589i)), firstTrailingBit(-31247i)), arg_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~((max(u_input.d, u_input.d) | ~vec3<u32>(4294967295u, 0u, u_input.e)) ^ ~u_input.d));
    let x = u_input.a;
    s_output = func_7(Struct_2(func_6(u_input.d.x, func_1(vec2<f32>(415f, -337f))), vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-743f * 1475f)))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f))), Struct_2(u_input.d.zy, ~vec2<i32>(-2147483647i, reverseBits(59454i)), 624f));
}

