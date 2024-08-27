struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 50932u;

var<private> global2: f32;

var<private> global3: f32;

var<private> global4: vec3<i32> = vec3<i32>(2147483647i, 27920i, -22102i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_mod_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 6763u, 12357u), vec3<u32>(arg_2, 76652u, 103132u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, arg_2), vec3<u32>(4117u, arg_2, 20543u)), all(vec2<bool>(false, true))) ^ vec3<u32>(1u, abs(0u), _wgslsmith_sub_u32(u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(abs(~vec3<u32>(u_input.a, 0u, arg_2)), firstLeadingBit(vec3<u32>(0u, arg_2, 1u)) | select(vec3<u32>(11228u, u_input.a, u_input.a), vec3<u32>(arg_2, 0u, u_input.a), true))), Struct_1(u_input.a, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -9327i), global4.zy), -vec2<i32>(-58913i, global4.x)), 1u, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-547f, 1828f), -894f, 600f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-200f, 842f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-677f, -1000f), vec2<f32>(413f, -1185f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-202f, -1000f)), vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, false), true)))), Struct_1(1u, _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-2150i, 16028i), firstTrailingBit(arg_1.yz), true), global4.xx, (vec2<i32>(-2147483647i, 15530i) ^ global4.xy) << (abs(vec2<u32>(4294967295u, 7404u)) % vec2<u32>(32u))), u_input.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(551f, 960f, -546f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2924f, -187f, 1387f)))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(148f + -1632f))), 430f)), firstLeadingBit(abs(-arg_1)) << ((~reverseBits(vec3<u32>(arg_2, arg_2, arg_2)) ^ min(~vec3<u32>(arg_2, 4294967295u, u_input.a), ~vec3<u32>(41776u, u_input.a, 0u))) % vec3<u32>(32u)));
    return -firstTrailingBit(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(19125i, arg_0, var_0.c.b.x), vec3<i32>(-18568i, 2147483647i, arg_1.x)), abs(global4.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = vec2<i32>(~(~(arg_0.x << (0u % 32u))) ^ 2147483647i, (_wgslsmith_mult_i32(0i, _wgslsmith_add_i32(arg_3.b.x, arg_3.b.x)) | -2147483647i) & ~15396i);
    var var_1 = Struct_2(~vec3<u32>(4294967295u, 0u, _wgslsmith_div_u32(arg_3.a, reverseBits(10963u))), Struct_1(~63108u, ~func_3(_wgslsmith_add_i32(-15216i, -1i), select(arg_0, arg_0, vec3<bool>(true, true, false)), arg_3.a), 81589u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.e.x, arg_3.d.x, arg_3.d.x))))), vec2<f32>(599f, 191f)), Struct_1(firstTrailingBit(arg_3.c), vec2<i32>(0i, arg_3.b.x), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.e.x)) + -456f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.e.x))), _wgslsmith_f_op_f32(sign(-1000f))), vec2<f32>(_wgslsmith_div_f32(arg_3.e.x, _wgslsmith_f_op_f32(trunc(-548f))), arg_3.e.x)), vec3<i32>(countOneBits(~0i), 1i, -61185i) & select(vec3<i32>(-arg_0.x, _wgslsmith_sub_i32(var_0.x, -12862i), arg_3.b.x), _wgslsmith_mult_vec3_i32(max(arg_0, arg_0), arg_0), select(!vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, arg_2, false), any(vec2<bool>(arg_2, false)))));
    global4 = vec3<i32>(~global4.x, firstLeadingBit(var_0.x), -1i);
    let var_2 = Struct_2(select(var_1.a, _wgslsmith_add_vec3_u32(min(var_1.a, vec3<u32>(var_1.b.a, 25804u, 1u)) & vec3<u32>(arg_3.a, 1296u, arg_3.c), vec3<u32>(arg_3.c, 0u | arg_3.c, abs(0u))), vec3<bool>(true, true, !(-611f != var_1.b.d.x))), Struct_1(abs(arg_3.c), max(_wgslsmith_sub_vec2_i32(arg_0.zy << (vec2<u32>(arg_3.a, u_input.a) % vec2<u32>(32u)), -arg_0.xx), -(~vec2<i32>(var_1.c.b.x, 1i))), _wgslsmith_add_u32(1u, ~(4294967295u << (u_input.a % 32u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1692f, var_1.c.e.x, -1329f) + arg_3.d), _wgslsmith_f_op_vec3_f32(-var_1.b.d))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-3650f, _wgslsmith_div_f32(arg_3.e.x, var_1.c.e.x))))), Struct_1(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(44546u, u_input.a, u_input.a, 1u) | vec4<u32>(u_input.a, 1173u, u_input.a, 34085u))), arg_3.b | (select(arg_3.b, global4.zy, arg_1) << (min(var_1.a.yx, var_1.a.zx) % vec2<u32>(32u))), abs(u_input.a | ~u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.e.x, arg_3.d.x, -1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.d.x, var_1.c.d.x, arg_3.d.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.b.d.xx + arg_3.d.zx), arg_3.e, select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), vec2<bool>(arg_2, true))))))), countOneBits(vec3<i32>(_wgslsmith_mult_i32(global4.x, var_0.x) ^ ~var_1.b.b.x, 1i, arg_3.b.x)));
    let var_3 = Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_2.a ^ vec3<u32>(1u, var_1.b.a, 27494u), var_1.a | var_1.a), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.a.x, 37848u), arg_3.c | 50990u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.a.x), var_2.a.yx ^ var_1.a.zy)), global4.yx, ~_wgslsmith_mod_u32(3861u, u_input.a), _wgslsmith_f_op_vec3_f32(-arg_3.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-956f, var_2.b.e.x) + arg_3.e)))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_2.c.d)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1640f, var_1.b.e.x, 889f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.d.x, var_3.d.x, var_3.d.x)))) + _wgslsmith_f_op_vec3_f32(var_3.d - vec3<f32>(var_2.c.d.x, 724f, -305f)))));
}

fn func_1(arg_0: bool) -> vec2<u32> {
    let var_0 = Struct_1(~_wgslsmith_sub_u32(72275u, abs(u_input.a)) | u_input.a, vec2<i32>(-38801i, ~_wgslsmith_mod_i32(1i, 4554i) << (_wgslsmith_sub_u32(~31192u, u_input.a) % 32u)), firstTrailingBit(u_input.a), vec3<f32>(_wgslsmith_f_op_f32(1831f * -272f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f + -1350f))), -1084f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2658f, 120f)));
    let var_1 = Struct_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.c, u_input.a), ~var_0.c, u_input.a), ~(vec3<u32>(u_input.a, var_0.a, 39782u) & vec3<u32>(u_input.a, 42683u, 77502u))), Struct_1(var_0.a, var_0.b | ~firstLeadingBit(vec2<i32>(-23800i, global4.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 20958u, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, var_0.a) % vec3<u32>(32u)), vec3<u32>(2320u, u_input.a, var_0.a) << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(func_2(abs(-vec3<i32>(9234i, global4.x, -1305i)), arg_0, any(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, false), true)), var_0)), var_0.e), Struct_1(countOneBits(~abs(u_input.a)), ((vec2<i32>(global4.x, 1i) & vec2<i32>(3248i, 2147483647i)) & -vec2<i32>(63540i, 1i)) | -abs(var_0.b), var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x * -1096f), _wgslsmith_f_op_f32(1863f + 143f), _wgslsmith_f_op_f32(trunc(var_0.e.x)))), var_0.d.zy), vec3<i32>(89170i, global4.x, _wgslsmith_mult_i32(global4.x, global4.x)));
    var var_2 = Struct_1(~u_input.a, firstTrailingBit(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, global4.x), vec2<i32>(~(-33146i), var_0.b.x & var_0.b.x))), ~max(~select(var_1.b.a, var_0.c, true), _wgslsmith_div_u32(~45124u, _wgslsmith_div_u32(var_1.b.c, var_1.c.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1620f * var_0.e.x) - _wgslsmith_f_op_f32(f32(-1f) * -800f))), var_1.c.e.x, var_0.e.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-894f, var_1.b.e.x))));
    var var_3 = Struct_2(vec3<u32>(firstTrailingBit(firstTrailingBit(var_0.a)) >> (firstLeadingBit(var_1.b.c) % 32u), ~0u, abs(max(_wgslsmith_div_u32(u_input.a, 1u), var_1.c.c))), var_0, Struct_1(~u_input.a, ~(~(var_2.b ^ var_2.b)), abs(4294967295u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.d.x + var_0.e.x) + var_0.d.x), _wgslsmith_f_op_f32(max(-2142f, var_0.d.x)), _wgslsmith_f_op_f32(-var_1.b.d.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.d.yz)))))), vec3<i32>(((var_2.b.x | 1i) | -2147483647i) | countOneBits(_wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(-26453i, -54868i, 18369i))), ~(-(~2147483647i)), global4.x));
    let var_4 = select(vec2<bool>(true, true), select(select(select(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), arg_0), vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, false)), select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)), !vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), !(!arg_0)), vec2<bool>(!all(vec3<bool>(arg_0, arg_0, false)), arg_0), select(vec2<bool>(select(true, false, false), arg_0 & true), vec2<bool>(arg_0, arg_0), arg_0)), select(select(!vec2<bool>(arg_0, true), vec2<bool>(true == arg_0, true), all(!vec4<bool>(arg_0, true, arg_0, arg_0))), !(!vec2<bool>(arg_0, arg_0)), arg_0));
    return _wgslsmith_add_vec2_u32(~(~vec2<u32>(var_2.c, var_0.c)), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, 89943u), var_1.a.zx), var_0.a));
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = firstLeadingBit(countOneBits(~select(max(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(44600u, 4294967295u, arg_0.x)), ~vec3<u32>(arg_0.x, arg_0.x, arg_0.x), select(true, false, true))));
    var var_1 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), false))), !vec2<bool>(_wgslsmith_mult_u32(4294967295u, 1u) >= _wgslsmith_clamp_u32(46039u, arg_0.x, arg_0.x), all(vec2<bool>(false, false)) | true), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, false)))));
    return Struct_1(abs(65380u), select(~func_3(global4.x, vec3<i32>(-1i, global4.x, -2147483647i), var_0.x), vec2<i32>(-16652i, 0i), vec2<bool>(true, !var_1.x)) >> (arg_0 % vec2<u32>(32u)), _wgslsmith_mult_u32(4294967295u | abs(~var_0.x), _wgslsmith_mult_u32(arg_0.x, ~_wgslsmith_clamp_u32(var_0.x, u_input.a, arg_0.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(975f, 936f))) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107f - _wgslsmith_f_op_f32(106f - 422f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -405f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f)))), _wgslsmith_f_op_f32(1044f * _wgslsmith_f_op_f32(round(-467f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(541f * -2206f)))))));
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1322f)), _wgslsmith_f_op_f32(435f - 221f), false))), _wgslsmith_div_f32(601f, -101f)), 131f));
    let var_0 = func_4(func_1(false));
    var var_1 = var_0.c;
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1333f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(select(1u, ~46303u, true), func_4(vec2<u32>(10951u, u_input.a)).a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.a) | vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), 1u));
}

