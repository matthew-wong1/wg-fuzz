struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(select(-1277f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-586f * 1495f)) + 146f), true));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1311f), vec2<f32>(2196f, -969f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1550f, 988f) * vec2<f32>(-1000f, -472f)))), vec2<f32>(_wgslsmith_div_f32(924f, -808f), 830f), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-781f, 1171f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(1f, 1f)))), Struct_1(~u_input.b.x < u_input.b.x), Struct_1(true), Struct_1(true), 51083u);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)), 906f, false)), _wgslsmith_f_op_f32(ceil(297f)))), !(!(789f >= var_1.a.x)) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - 1000f) + _wgslsmith_f_op_f32(sign(var_1.a.x))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x)))), ~(~(~vec2<u32>(0u, var_1.e))));
    var var_3 = _wgslsmith_sub_u32(~(~(~var_1.e)), ~0u << (u_input.c % 32u));
    var_0 = var_1.a.x;
    return vec2<f32>(631f, var_2.a);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(func_3()), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2651f + 854f) - _wgslsmith_f_op_f32(f32(-1f) * -1035f)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(select(554f, -1519f, false))))), Struct_1(false), Struct_1(all(arg_1)), (countOneBits(0u) ^ ~(arg_0.x & 0u)) ^ ~reverseBits(4294967295u));
    var var_1 = arg_1;
    var var_2 = select(max(select(~arg_0.xww, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 13372u, 0u), vec3<u32>(1u, 46761u, 0u)), select(vec3<bool>(var_1.x, var_1.x, var_0.b.a), vec3<bool>(var_0.b.a, arg_1.x, arg_1.x), var_1.x)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.xxw, u_input.a.xxy, vec3<u32>(19060u, u_input.c, 36737u)), arg_0.wxx)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(78451u, var_0.e), u_input.c), u_input.c, _wgslsmith_dot_vec4_u32(~u_input.a, ~u_input.a)), all(!(!vec4<bool>(arg_1.x, arg_1.x, true, var_0.d.a)))) | ((~u_input.a.zwy | vec3<u32>(abs(var_0.e), ~1u, max(var_0.e, 32800u))) & ~vec3<u32>(countOneBits(var_0.e), _wgslsmith_div_u32(10429u, var_0.e), var_0.e));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))), var_0.d.a, vec2<u32>(~42936u, 42920u));
    var var_4 = arg_0.yxz ^ vec3<u32>(countOneBits(~(4294967295u | u_input.a.x)), _wgslsmith_sub_u32(~var_0.e, ~firstLeadingBit(var_0.e)), ~(~(~var_3.c.x)));
    return Struct_1(any(vec4<bool>(false, false, false, any(vec2<bool>(false, true)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.c ^ arg_2.c.x, ~19042u, 430u ^ u_input.a.x, ~84105u), vec4<u32>(arg_1.e, u_input.a.x, u_input.a.x, u_input.c) & u_input.a, select(!vec4<bool>(arg_2.b, arg_1.c.a, false, arg_1.d.a), vec4<bool>(arg_1.b.a, false, arg_1.c.a, false), !arg_2.b)), ~u_input.a) | abs(_wgslsmith_mod_vec4_u32(u_input.a, ~(~u_input.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-195f, arg_2.a)));
    var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) + _wgslsmith_f_op_f32(var_1.x - var_1.x)), 349f), _wgslsmith_div_vec2_f32(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(314f, 1446f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 135f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(914f, 147f))))), !vec2<bool>(select(arg_1.c.a, true, true) & true, arg_1.b.a)));
    var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    var_1 = arg_1.a;
    return arg_2;
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = func_4(vec2<i32>(reverseBits(1i), _wgslsmith_sub_i32(0i, -u_input.d)) << (arg_0 % vec2<u32>(32u)), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1490f, 1150f), vec2<f32>(986f, -860f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2292f, 145f)))))), Struct_1(true), func_2(u_input.a, vec4<bool>(all(vec4<bool>(true, true, true, false)), arg_0.x > 12889u, true, u_input.a.x < 4294967295u)), Struct_1(true), firstLeadingBit(countOneBits(~u_input.a.x))), Struct_4(875f, func_2(_wgslsmith_add_vec4_u32(select(u_input.a, u_input.a, vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 67068u, 7621u, arg_0.x), u_input.a)), vec4<bool>(true, true, true, func_2(vec4<u32>(u_input.c, u_input.c, 22740u, 0u), vec4<bool>(true, true, false, true)).a)).a, arg_0), _wgslsmith_sub_i32(firstLeadingBit(-u_input.b.x), u_input.d) << (countOneBits(_wgslsmith_clamp_u32(1u, 0u | u_input.a.x, 0u)) % 32u));
    var var_1 = firstLeadingBit(reverseBits(-u_input.b));
    let var_2 = Struct_3(var_0.c.x, true, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(var_0.a - 605f))), func_2(u_input.a, !(!vec4<bool>(var_0.b, var_0.b, var_0.b, false))), Struct_1(all(vec3<bool>(var_0.b, true, true))), Struct_1(var_0.b), ~_wgslsmith_sub_u32(1u, ~arg_0.x)));
    var_1 = firstLeadingBit(abs(u_input.b)) & -_wgslsmith_add_vec2_i32(u_input.b, select(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), u_input.b), vec2<i32>(u_input.d, var_1.x), vec2<bool>(false, false)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + var_2.c.a.x)))), var_2.b & (_wgslsmith_f_op_f32(var_0.a - var_2.c.a.x) < _wgslsmith_f_op_f32(var_0.a - -818f)))));
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    let var_0 = arg_0.c;
    let var_1 = vec3<bool>(true, arg_0.c.b.a, arg_0.c.d.a);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.a.x), arg_0.c.a.x);
    var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, 1049f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1487f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-243f + 376f) + _wgslsmith_f_op_f32(arg_2.a * -1201f))) - arg_1.a));
    return func_2(reverseBits(abs(~u_input.a)), !select(select(!vec4<bool>(arg_2.b, var_1.x, false, true), select(vec4<bool>(true, var_0.d.a, var_1.x, var_1.x), vec4<bool>(arg_2.b, true, arg_0.b, arg_2.b), vec4<bool>(arg_2.b, false, true, false)), !vec4<bool>(false, true, true, arg_1.c.a)), vec4<bool>(var_0.b.a, true, arg_2.b, func_4(u_input.b, Struct_2(vec2<f32>(arg_2.a, -974f), Struct_1(true), arg_0.c.b, Struct_1(arg_1.b.a), arg_0.a), Struct_4(arg_1.a.x, arg_2.b, vec2<u32>(21601u, arg_1.e)), u_input.d).b), !select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(arg_0.b, true, arg_0.c.b.a, var_1.x), arg_1.c.a)));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(17469i, arg_2, arg_2, 1i) << (vec4<u32>(0u, 1u, u_input.a.x, arg_0) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(27511i, 35666i, arg_2, 1i), vec4<i32>(20448i, -31983i, 3142i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, arg_2, 2147483647i, arg_2), vec4<i32>(1i, -1i, arg_2, arg_2))), -vec4<i32>(arg_2, 0i, arg_2, -40512i)) << (select(u_input.a, ~u_input.a, true || !arg_1.a) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(max(~vec4<i32>(42229i, -1i, u_input.b.x, 6853i), select(select(vec4<i32>(arg_2, 1i, 0i, arg_2), vec4<i32>(u_input.d, -17521i, -14651i, -48044i), vec4<bool>(false, arg_1.a, true, arg_1.a)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -2147483647i, -2147483647i, arg_2), vec4<i32>(arg_2, arg_2, -18847i, u_input.b.x)), arg_1.a)), abs(~vec4<i32>(-33726i, arg_2, arg_2, -23723i) ^ -vec4<i32>(arg_2, arg_2, 0i, -57514i))));
    var var_1 = Struct_3(arg_0, !arg_1.a, func_1(u_input.a.wx).c);
    var_1 = Struct_3(arg_0, _wgslsmith_f_op_f32(-465f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f + 1822f))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(855f, var_1.c.a.x))), var_1.c.a.x, var_1.b)), func_1(u_input.a.xy).c);
    var var_2 = 0i;
    let var_3 = ~(~(~((u_input.a.xw & u_input.a.xw) & vec2<u32>(4294967295u, 43877u))));
    return !select(vec2<bool>(true, select(arg_1.a, func_5(Struct_3(var_1.c.e, true, Struct_2(vec2<f32>(var_1.c.a.x, -1000f), var_1.c.c, Struct_1(true), arg_1, 1u)), Struct_2(vec2<f32>(-785f, var_1.c.a.x), var_1.c.d, Struct_1(arg_1.a), Struct_1(arg_1.a), arg_0), Struct_4(var_1.c.a.x, arg_1.a, u_input.a.zx)).a, !var_1.c.d.a)), vec2<bool>(false, var_3.x <= ~4294967295u), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = select(vec2<bool>(true, false), func_6(_wgslsmith_dot_vec2_u32(vec2<u32>(12593u, 11287u) & ~vec2<u32>(u_input.a.x, u_input.c), u_input.a.yx), func_5(func_1(u_input.a.zw | vec2<u32>(u_input.a.x, u_input.a.x)), func_1(~vec2<u32>(23726u, 4294967295u)).c, func_4(u_input.b << (vec2<u32>(u_input.a.x, 27581u) % vec2<u32>(32u)), func_1(u_input.a.wx).c, func_4(vec2<i32>(u_input.d, -22486i), Struct_2(vec2<f32>(-149f, -530f), Struct_1(true), Struct_1(true), Struct_1(true), u_input.c), Struct_4(512f, false, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.b.x), u_input.d & u_input.b.x)), u_input.b.x), func_6(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u), u_input.a), u_input.a) << (u_input.a.x % 32u), Struct_1(true), -1i));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 390f, -321f, 432f) + vec4<f32>(-712f, -523f, -239f, -153f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1429f, 1000f, 684f, 1345f)))), vec4<bool>(u_input.c >= u_input.c, var_1.x & var_1.x, var_1.x, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1287f, -1249f, -1142f, -960f)), vec4<f32>(-466f, func_4(vec2<i32>(u_input.d, 36991i), Struct_2(vec2<f32>(1708f, 1379f), Struct_1(var_1.x), Struct_1(true), Struct_1(true), 20u), Struct_4(-326f, var_1.x, vec2<u32>(u_input.c, u_input.a.x)), 26456i).a, -495f, _wgslsmith_f_op_f32(select(2653f, 528f, var_1.x)))))));
    var var_3 = vec4<i32>(~u_input.b.x, -reverseBits(u_input.b.x), -u_input.b.x, u_input.b.x);
    let var_4 = 0u;
    let var_5 = select(reverseBits(-vec4<i32>(36577i & u_input.b.x, ~var_3.x, -1853i, var_3.x)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b.x, u_input.d, 2147483647i, -1i), vec4<i32>(-1i, u_input.b.x, 0i, -45403i)), vec4<i32>(28596i, u_input.b.x ^ 46982i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 19007i, u_input.d), vec4<i32>(-25122i, -34179i, 2147483647i, u_input.b.x)), max(u_input.d, 2822i))) & (_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<i32>(2147483647i, u_input.d, 1i, 38304i)), select(vec4<i32>(-27805i, u_input.b.x, -1i, 65543i), vec4<i32>(64943i, 49134i, -27023i, 2147483647i), vec4<bool>(false, false, false, var_1.x))) >> (~vec4<u32>(0u, u_input.c, var_4, u_input.c) % vec4<u32>(32u))), select(vec4<bool>(var_4 > ~var_4, true, func_5(Struct_3(36550u, var_1.x, Struct_2(var_2.yw, Struct_1(var_1.x), Struct_1(false), Struct_1(var_1.x), var_4)), Struct_2(var_2.zz, Struct_1(var_1.x), Struct_1(true), Struct_1(var_1.x), u_input.a.x), func_4(vec2<i32>(u_input.d, -26291i), Struct_2(vec2<f32>(-1268f, var_2.x), Struct_1(var_1.x), Struct_1(var_1.x), Struct_1(true), 49118u), Struct_4(var_2.x, false, vec2<u32>(1u, 1u)), -1i)).a, false), !select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(true, var_1.x, var_1.x, true)), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), vec4<bool>(true, !var_1.x, var_1.x, var_1.x)));
    let var_6 = -select(abs(~var_3.zw), abs(vec2<i32>(-10999i, reverseBits(var_5.x))), var_1.x);
    var var_7 = _wgslsmith_clamp_u32(countOneBits(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.zw)), u_input.a.x, 9372u) << (~_wgslsmith_sub_u32(countOneBits(var_4), firstTrailingBit(_wgslsmith_sub_u32(var_4, 1u))) % 32u);
    let var_8 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -876f), ~min(u_input.a.wxw, select(vec3<u32>(u_input.a.x, 4294967295u, 0u), u_input.a.wzx, vec3<bool>(var_8, false, var_8))));
}

