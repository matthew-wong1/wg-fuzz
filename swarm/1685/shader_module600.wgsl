struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_3(21788u, Struct_1(arg_0.a, _wgslsmith_div_vec2_f32(vec2<f32>(-184f, 576f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-407f, arg_1.b.x) + vec2<f32>(arg_2.b.x, arg_1.b.x))))), ~47926u), ~(~vec2<u32>(13904u >> (u_input.a.x % 32u), u_input.a.x | 4294967295u)), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.b)), arg_0.b), Struct_1(-abs(vec3<i32>(u_input.b.x, 1i, -4127i)), _wgslsmith_f_op_vec2_f32(min(arg_1.b, _wgslsmith_div_vec2_f32(vec2<f32>(-1075f, arg_1.b.x), vec2<f32>(arg_2.b.x, arg_2.b.x)))), _wgslsmith_div_u32(arg_1.c, arg_0.c) >> (_wgslsmith_mod_u32(1u, 29385u) % 32u)), u_input.a, arg_1));
    var_0 = Struct_3(_wgslsmith_clamp_u32(4294967295u & countOneBits(arg_2.c), arg_2.c, var_0.a), Struct_1(_wgslsmith_mult_vec3_i32(arg_1.a, abs(countOneBits(vec3<i32>(-2147483647i, 1i, var_0.b.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.b, arg_1.b, false)) * vec2<f32>(arg_2.b.x, arg_0.b.x))), 30223u), _wgslsmith_mod_vec2_u32(u_input.a.zz, ~abs(vec2<u32>(4294967295u, 4294967295u)) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(10565u, 0u), u_input.a.xx) % vec2<u32>(32u))), var_0.d);
    let var_1 = _wgslsmith_mod_u32(4294967295u, firstLeadingBit(arg_2.c));
    let var_2 = Struct_1(~_wgslsmith_add_vec3_i32(var_0.d.d.a, arg_1.a), var_0.d.a, arg_1.c | (14552u ^ _wgslsmith_div_u32(abs(33615u), _wgslsmith_clamp_u32(arg_0.c, var_0.c.x, 13404u))));
    var var_3 = -2147483647i;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-330f, 606f), vec2<f32>(1095f, 745f))) - arg_0.b) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -700f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1367f, -353f) + arg_1.b))))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<u32>) -> f32 {
    var var_0 = countOneBits(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x) >> ((vec2<u32>(80506u, 1u) ^ vec2<u32>(arg_2.x, 0u)) % vec2<u32>(32u)), ~vec2<i32>(arg_1, -1i)));
    var var_1 = Struct_3(arg_2.x, Struct_1(vec3<i32>(var_0.x, firstLeadingBit(0i), -var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec2<f32>(arg_0, arg_0), u_input.c.x), Struct_1(vec3<i32>(arg_1, var_0.x, 1i), vec2<f32>(423f, arg_0), arg_2.x), Struct_1(vec3<i32>(var_0.x, 1i, u_input.b.x), vec2<f32>(379f, arg_0), arg_2.x)))), u_input.a.x), max((abs(u_input.a.yz) << (~u_input.a.xx % vec2<u32>(32u))) >> (~_wgslsmith_clamp_vec2_u32(u_input.a.zz, arg_2, vec2<u32>(1u, u_input.c.x)) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, 0u)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-838f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1542f), 2449f))), Struct_1(vec3<i32>(-10919i, _wgslsmith_mult_i32(var_0.x, 1i), 1i), vec2<f32>(_wgslsmith_div_f32(-673f, 318f), -1329f), ~(~1u)), ~u_input.c.xyx | (u_input.c.yyz << (vec3<u32>(29321u, arg_2.x, arg_2.x) % vec3<u32>(32u))), Struct_1(-(vec3<i32>(-23146i, u_input.b.x, 2147483647i) ^ vec3<i32>(u_input.b.x, 29056i, arg_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), reverseBits(arg_2.x))));
    var_1 = Struct_3(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.a, arg_2.x), min(41312u, var_1.c.x)), ~u_input.a.x), Struct_1(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-23923i, 0i), vec2<i32>(u_input.b.x, var_0.x)), var_0.x), _wgslsmith_div_i32(var_1.b.a.x, 6450i), -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b.b, vec2<f32>(var_1.d.b.b.x, 1384f)) * var_1.b.b)), _wgslsmith_add_u32(var_1.c.x ^ u_input.a.x, countOneBits(_wgslsmith_mult_u32(u_input.c.x, 4294967295u)))), _wgslsmith_add_vec2_u32(u_input.a.zx ^ var_1.d.c.zy, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 66146u, 32878u), var_1.d.c), arg_2.x) & arg_2), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(1242f, 1905f), arg_0))), Struct_1(var_1.b.a, var_1.b.b, u_input.c.x), var_1.d.c, Struct_1(var_1.d.d.a, vec2<f32>(-367f, -1438f), 1u)));
    var_0 = var_1.b.a.zy;
    var var_2 = Struct_3(1u | _wgslsmith_mod_u32(var_1.d.c.x, arg_2.x), Struct_1(-max(abs(var_1.b.a), vec3<i32>(7659i, -1i, u_input.b.x)), var_1.d.a, 1342u), max(vec2<u32>(_wgslsmith_sub_u32(5300u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, u_input.a.x, arg_2.x), ~vec3<u32>(u_input.c.x, 4294967295u, 0u))), min(firstTrailingBit(vec2<u32>(46659u, var_1.c.x)), ~vec2<u32>(u_input.a.x, 4294967295u)) & ~u_input.a.xy), Struct_2(_wgslsmith_f_op_vec2_f32(-var_1.d.b.b), Struct_1(~(vec3<i32>(36777i, u_input.b.x, var_0.x) & vec3<i32>(var_0.x, u_input.b.x, 0i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - var_1.b.b), var_1.b.b)), 4294967295u), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, min(vec4<u32>(arg_2.x, u_input.c.x, arg_2.x, 9703u), u_input.c)), ~u_input.c.x | _wgslsmith_sub_u32(u_input.c.x, var_1.d.b.c), max(max(var_1.b.c, 32072u), firstLeadingBit(88326u))), Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, var_1.d.d.a.x, -8283i), vec3<i32>(35221i, var_0.x, -1i)), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0)), -889f), arg_2.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-761f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1806f)) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(797f, -313f), 1089f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), false), vec3<bool>(true, false, any(vec4<bool>(false, false, true, false))), false), select(vec3<bool>(true, all(vec3<bool>(false, true, false)), false), vec3<bool>(true, false, true), false), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))), vec3<bool>(any(vec2<bool>(-2033f > arg_3.d.b.x, arg_3.c.x <= arg_1.d.c)), true, true), vec3<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.x)))) <= arg_2.b.x));
    let var_1 = arg_3;
    let var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(~(41021u >> (arg_2.c % 32u)), _wgslsmith_mod_u32(57660u, arg_2.c & u_input.c.x), u_input.a.x, 0u), firstLeadingBit(u_input.c));
    var var_3 = vec2<f32>(arg_2.b.x, arg_3.b.b.x);
    var_0 = vec3<bool>(false, !any(vec3<bool>(true, true, any(vec4<bool>(true, var_0.x, false, true)))), any(var_0.yx));
    return Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.a.x, _wgslsmith_div_i32(2147483647i, arg_1.b.a.x), _wgslsmith_add_i32(var_1.b.a.x, var_1.d.a.x)) ^ select(countOneBits(arg_1.b.a), vec3<i32>(var_1.b.a.x, -47212i, 0i), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), var_1.b.a), arg_2.b, _wgslsmith_add_u32(0u, ~1u & ~var_2.x) >> (min(31715u, ~arg_3.d.c & _wgslsmith_div_u32(u_input.a.x, var_2.x)) % 32u));
}

fn func_1() -> Struct_1 {
    return func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-313f, u_input.b.x, u_input.c.zw)) * 517f), 436f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-669f, 1030f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1162f, 1861f), vec2<f32>(-507f, -1000f), vec2<bool>(false, false))), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-758f, 295f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1875f, -705f) + vec2<f32>(-1245f, -1034f)), vec2<bool>(true, true))))), Struct_2(vec2<f32>(1f, 1f), Struct_1(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -21001i, u_input.b.x, u_input.b.x), vec4<i32>(-2587i, -18472i, 0i, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -3549i, 26876i), vec3<i32>(u_input.b.x, 0i, u_input.b.x))), vec2<f32>(1f, 1f), select(u_input.a.x, 4294967295u, true)), u_input.c.wxw, Struct_1(max(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(-1i, 1i, -33240i)), _wgslsmith_div_vec3_i32(vec3<i32>(-71919i, 0i, -1i), vec3<i32>(-1i, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, -100f))), ~(~u_input.c.x))), Struct_1(vec3<i32>(_wgslsmith_mod_i32(1i, -u_input.b.x), _wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), 1i | u_input.b.x), ~firstTrailingBit(u_input.b.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-467f, _wgslsmith_f_op_f32(select(1603f, 1746f, true))))), ~(~u_input.a.x) & _wgslsmith_sub_u32(select(u_input.a.x, 4294967295u, true), u_input.a.x)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -863f), _wgslsmith_f_op_f32(abs(-1000f))), Struct_1(~reverseBits(vec3<i32>(2147483647i, -10560i, 37395i)), vec2<f32>(1546f, -457f), u_input.a.x), vec3<u32>(u_input.a.x, ~(~u_input.c.x), ~31351u), Struct_1(-select(vec3<i32>(u_input.b.x, 1i, 0i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(893f, -383f)), vec2<f32>(569f, -581f)), u_input.c.x & abs(75310u))));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-arg_0)));
    var var_2 = Struct_2(vec2<f32>(-537f, _wgslsmith_f_op_f32(round(-1419f))), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, firstTrailingBit(-17029i), _wgslsmith_mod_i32(0i, arg_2.a.x)), -(arg_2.a ^ vec3<i32>(arg_1, -2147483647i, arg_2.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-824f, 574f) - vec2<f32>(arg_2.b.x, -845f))), firstTrailingBit(~func_1().c)), ~countOneBits(reverseBits(vec3<u32>(0u, 4294967295u, u_input.c.x))) >> (~min(u_input.c.zyx ^ vec3<u32>(4594u, u_input.a.x, arg_2.c), _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.c, 4294967295u, u_input.c.x), vec3<u32>(arg_2.c, 11312u, 0u))) % vec3<u32>(32u)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.b, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-140f, -931f))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, var_0.b.x)))), func_4(_wgslsmith_f_op_vec2_f32(-arg_2.b), Struct_2(vec2<f32>(-779f, var_1), Struct_1(var_0.a, vec2<f32>(arg_2.b.x, 1953f), u_input.c.x), vec3<u32>(u_input.a.x, 24289u, var_0.c), Struct_1(var_0.a, var_0.b, u_input.c.x)), arg_2, Struct_2(var_0.b, var_0, vec3<u32>(var_0.c, 49835u, arg_2.c), Struct_1(var_0.a, var_0.b, 42612u))), vec3<u32>(arg_2.c, reverseBits(6452u), ~arg_2.c), func_4(arg_2.b, Struct_2(vec2<f32>(var_0.b.x, arg_0), Struct_1(var_0.a, var_0.b, 4294967295u), u_input.c.yyz, var_0), Struct_1(vec3<i32>(arg_1, var_0.a.x, var_0.a.x), arg_2.b, arg_2.c), Struct_2(var_0.b, var_0, vec3<u32>(u_input.c.x, 26475u, u_input.c.x), arg_2))), arg_2, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(arg_0 + 269f), _wgslsmith_f_op_f32(-var_0.b.x)), Struct_1(vec3<i32>(1i, u_input.b.x, 2147483647i), var_0.b, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c, var_0.c, arg_2.c), vec3<u32>(u_input.c.x, var_0.c, 121u)), Struct_1(vec3<i32>(var_0.a.x, var_0.a.x, arg_2.a.x), _wgslsmith_f_op_vec2_f32(-var_0.b), arg_2.c))));
    var_2 = Struct_2(vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(var_2.a.x * var_0.b.x)), Struct_1(arg_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_0.b.x)), ~(arg_2.c ^ 1u)), u_input.c.zxz, arg_2);
    let var_3 = _wgslsmith_f_op_f32(floor(418f));
    return Struct_3(func_1().c ^ u_input.a.x, var_2.b, abs(~abs(vec2<u32>(u_input.a.x, arg_2.c))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3, -507f), var_0.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, arg_0)))), arg_2, vec3<u32>(~var_2.b.c << (125236u % 32u), ~u_input.a.x, ~countOneBits(9441u)), func_4(var_2.b.b, Struct_2(_wgslsmith_f_op_vec2_f32(var_2.b.b + vec2<f32>(var_3, 982f)), func_1(), var_2.c, var_2.d), Struct_1(var_2.b.a, var_2.a, 1u >> (var_2.d.c % 32u)), Struct_2(arg_2.b, Struct_1(vec3<i32>(arg_1, -60010i, arg_1), var_0.b, 1u), min(vec3<u32>(43227u, var_2.b.c, 0u), vec3<u32>(arg_2.c, 4294967295u, arg_2.c)), func_4(vec2<f32>(var_3, arg_2.b.x), Struct_2(var_0.b, var_0, var_2.c, Struct_1(arg_2.a, vec2<f32>(arg_2.b.x, 136f), 47362u)), var_0, Struct_2(arg_2.b, arg_2, vec3<u32>(1u, var_0.c, 0u), var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-221f, countOneBits(_wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_mult_i32(-47059i, -u_input.b.x))), func_1());
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.b) * _wgslsmith_div_vec2_f32(var_0.d.a, vec2<f32>(var_0.d.a.x, var_0.d.d.b.x)))) * vec2<f32>(-1553f, _wgslsmith_f_op_f32(floor(1900f)))), var_0.d.d, vec3<u32>(_wgslsmith_mult_u32(var_0.c.x, ~u_input.a.x), 4294967295u, func_1().c) ^ ~(~(vec3<u32>(var_0.d.b.c, 4472u, u_input.c.x) | u_input.c.xww)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1614f, 171f))) + _wgslsmith_f_op_f32(ceil(var_0.b.b.x))), -_wgslsmith_add_i32(4574i, ~var_0.d.b.a.x), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(34168i, 0i, 43895i), var_0.b.a) | -vec3<i32>(u_input.b.x, 20150i, -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.b.b)), abs(~89137u))).b);
    var_1 = func_5(1000f, select(-8697i, _wgslsmith_div_i32(u_input.b.x, -var_0.b.a.x), false), func_5(var_0.b.b.x, _wgslsmith_sub_i32(-firstTrailingBit(2147483647i), u_input.b.x), func_1()).d.d).d;
    var var_2 = _wgslsmith_mult_u32(~(~(~_wgslsmith_mod_u32(4294967295u, var_1.d.c))), 4294967295u | (~_wgslsmith_mod_u32(var_0.b.c, 4294967295u) ^ var_1.b.c));
    var var_3 = Struct_2(var_1.d.b, var_0.b, vec3<u32>(~(_wgslsmith_mult_u32(var_0.c.x, u_input.c.x) & 4294967295u), ~_wgslsmith_dot_vec3_u32(u_input.a, reverseBits(vec3<u32>(0u, u_input.c.x, u_input.c.x))), ~max(firstLeadingBit(u_input.a.x), var_0.d.b.c)), Struct_1(_wgslsmith_clamp_vec3_i32(func_1().a, ~(vec3<i32>(-1i, u_input.b.x, 80032i) << (var_0.d.c % vec3<u32>(32u))), abs(var_1.b.a)), var_0.b.b, _wgslsmith_add_u32(1u >> (~u_input.c.x % 32u), _wgslsmith_add_u32(_wgslsmith_div_u32(24725u, 23232u), func_4(vec2<f32>(816f, var_0.b.b.x), Struct_2(vec2<f32>(var_1.d.b.x, 1527f), Struct_1(var_0.d.d.a, vec2<f32>(var_1.d.b.x, var_1.d.b.x), u_input.a.x), vec3<u32>(var_1.c.x, var_1.d.c, var_1.b.c), Struct_1(var_0.b.a, var_1.b.b, 71699u)), var_0.b, Struct_2(vec2<f32>(var_0.b.b.x, -1000f), var_1.b, var_0.d.c, var_0.b)).c))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3.b.a), vec3<i32>(u_input.b.x, var_1.b.a.x ^ u_input.b.x, 22685i));
}

