struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: i32) -> bool {
    let var_0 = u_input.d;
    let var_1 = Struct_4(_wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(arg_0.xx, u_input.a)) >> ((vec2<u32>(26406u, 119476u) >> (vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(-(~u_input.a), ~arg_0.xz << (~vec2<u32>(u_input.e, 1u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(min(-427f, _wgslsmith_f_op_f32(f32(-1f) * -1091f))));
    let var_2 = _wgslsmith_clamp_u32(1u, ~_wgslsmith_div_u32(abs(u_input.e), ~4294967295u) << (~abs(select(u_input.e, 88035u, true)) % 32u), u_input.e);
    let var_3 = vec2<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1568f), _wgslsmith_f_op_f32(min(var_1.b, var_1.b))))));
    var var_4 = arg_0.zx;
    return any(!arg_1);
}

fn func_2() -> f32 {
    var var_0 = !(!vec2<bool>(true, !func_3(u_input.c.xzx, vec4<bool>(false, false, false, false), vec2<bool>(true, true), u_input.a.x)));
    var var_1 = Struct_4(u_input.a, _wgslsmith_f_op_f32(min(-725f, _wgslsmith_f_op_f32(floor(-116f)))));
    let var_2 = Struct_5(Struct_2(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), firstLeadingBit(var_1.a.x), !all(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec2<i32>(var_1.a.x & -1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, 1i), ~vec2<i32>(1i, -2147483647i))), abs(~var_1.a & -vec2<i32>(u_input.a.x, -8584i))), Struct_1(-select(reverseBits(var_1.a.x), 1i, u_input.d <= u_input.d), ~max(abs(28312u), 4294967295u)), abs(u_input.e), Struct_4(~_wgslsmith_div_vec2_i32(u_input.c.ww, firstTrailingBit(u_input.c.ww)), var_1.b), _wgslsmith_mult_i32(var_1.a.x, reverseBits(min(u_input.c.x, -48772i) ^ ~var_1.a.x)));
    var_0 = !vec2<bool>(any(!select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, true, false, var_0.x), var_0.x)), !var_0.x);
    var_1 = Struct_4(((u_input.c.yy << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) ^ -vec2<i32>(9175i, var_1.a.x)) & vec2<i32>(_wgslsmith_sub_i32(u_input.b, ~66604i), ~2147483647i), var_1.b);
    return _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_2.a.a)))) * var_2.a.a));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))) + _wgslsmith_f_op_f32(-arg_0.a.x));
    var var_1 = ~(~_wgslsmith_add_u32(~u_input.e, 66531u));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.a)));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.a + vec2<f32>(var_2.x, var_2.x)), vec2<f32>(-1000f, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -762f) - arg_0.a))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.a)))))) * arg_0.a);
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1699f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1216f, arg_0.a.x))), arg_0.a.x < _wgslsmith_f_op_f32(126f * -1057f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(-1000f, arg_0.a.x)));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> Struct_4 {
    let var_0 = -u_input.b >> (u_input.e % 32u);
    var var_1 = Struct_5(Struct_2(810f, _wgslsmith_div_i32(firstLeadingBit(-764i), ~var_0 >> (60985u % 32u)), arg_1.c, vec2<i32>(54467i, abs(arg_1.b)) << (arg_1.d.yw % vec2<u32>(32u)), u_input.c.wx), Struct_1(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-40306i, arg_1.b, 1i), u_input.c.zzw >> (arg_1.d.yzx % vec3<u32>(32u))), 1i), ~max(1410u, 1u)), 69670u, Struct_4(u_input.c.zy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-759f * 1000f), _wgslsmith_f_op_f32(ceil(arg_1.a.x)))), var_0 | ~reverseBits(u_input.d >> (arg_3 % 32u)));
    var_1 = Struct_5(var_1.a, Struct_1(max(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), -3315i), 9927i), 23619u), _wgslsmith_sub_u32(arg_3, max(49233u, ~1u)), var_1.d, var_0 << (18318u % 32u));
    var_1 = Struct_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-211f, _wgslsmith_div_f32(var_1.a.a, 1022f))), firstLeadingBit(arg_1.b ^ -arg_1.b), arg_1.c | true, vec2<i32>(-1i) * -firstTrailingBit(u_input.c.xy), -(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -3128i), vec2<i32>(arg_1.b, 11969i)) & -vec2<i32>(1i, var_1.a.b))), var_1.b, arg_1.d.x, Struct_4(~(~(vec2<i32>(var_0, 13747i) ^ vec2<i32>(-8271i, 0i))), _wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(ceil(206f))))), var_1.b.a & _wgslsmith_add_i32(u_input.a.x, func_1(func_1(arg_1)).b));
    var_1 = Struct_5(var_1.a, var_1.b, arg_0, Struct_4(-(var_1.d.a | u_input.a) ^ (vec2<i32>(arg_1.b, 13674i) >> (_wgslsmith_clamp_vec2_u32(arg_1.d.yw, arg_1.d.zz, arg_1.d.ww) % vec2<u32>(32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1216f, _wgslsmith_f_op_f32(-var_1.a.a))), arg_1.a.x))), ~10901i);
    return var_1.d;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4) -> f32 {
    var var_0 = firstLeadingBit(u_input.a.x);
    var_0 = 1i;
    var_0 = -abs(36939i);
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(func_1(func_1(func_1(Struct_3(vec2<f32>(arg_1.b, arg_1.b), u_input.a.x, true, vec4<u32>(u_input.e, u_input.e, 55769u, 4294967295u), 1u)))).b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 17257i), vec3<i32>(u_input.b, 1i, arg_0.x)) ^ -1i, _wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.a.x, arg_1.a.x), 1i), arg_1.a.x), ~((-vec4<i32>(arg_1.a.x, -1i, 0i, arg_0.x) ^ -vec4<i32>(arg_1.a.x, 0i, arg_0.x, arg_0.x)) << ((vec4<u32>(u_input.e, 0u, 1u, 26568u) ^ firstLeadingBit(vec4<u32>(0u, 4294967295u, 32591u, 1u))) % vec4<u32>(32u))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(abs(-1000f)))), -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d, 45100i, 27392i), vec4<i32>(arg_0.x, -2147483647i, 7451i, arg_1.a.x)) | _wgslsmith_mult_i32(-1i, arg_1.a.x), -(~(-631i))), true & !all(vec4<bool>(true, true, true, true)), -(~vec2<i32>(u_input.b, -arg_1.a.x)), arg_1.a & (vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(arg_1.a.x, 8150i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(reverseBits(vec3<i32>(1i, -2147483647i, u_input.d) & u_input.c.ywx), func_4(~4294967295u, func_1(Struct_3(vec2<f32>(-798f, -434f), 0i, false, vec4<u32>(u_input.e, 4294967295u, 1u, u_input.e), 1u)), 133508u & u_input.e, abs(9095u)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(550f, -1846f) + 2680f))), u_input.d, true, abs(-vec2<i32>(u_input.d, func_1(Struct_3(vec2<f32>(1231f, -220f), u_input.b, true, vec4<u32>(47989u, 60957u, u_input.e, u_input.e), u_input.e)).b)), vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(countOneBits(u_input.d), u_input.b)), 2147483647i));
    var_0 = Struct_2(_wgslsmith_f_op_f32(var_0.a + var_0.a), 2147483647i, !var_0.c, ~(~(-vec2<i32>(18090i, 5513i) << (vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u)))), vec2<i32>(~abs(_wgslsmith_sub_i32(var_0.d.x, var_0.d.x)), u_input.a.x));
    var var_1 = func_4(u_input.e >> (0u % 32u), func_1(func_1(func_1(Struct_3(vec2<f32>(894f, 173f), 0i, true, vec4<u32>(u_input.e, u_input.e, u_input.e, 4294967295u), 44596u)))), ~57401u, select(u_input.e, u_input.e, true));
    var var_2 = Struct_2(-816f, select(var_1.a.x, 2147483647i, func_3(u_input.c.wzx, vec4<bool>(true, var_0.c, var_0.c, true), vec2<bool>(var_0.c, true), 2765i) || true) << (~(~_wgslsmith_mult_u32(0u, 4294967295u)) % 32u), !all(select(!vec4<bool>(false, false, var_0.c, true), select(vec4<bool>(var_0.c, true, var_0.c, var_0.c), vec4<bool>(var_0.c, true, false, false), true), select(vec4<bool>(true, var_0.c, true, false), vec4<bool>(var_0.c, true, var_0.c, var_0.c), true))), func_4(38349u, func_1(func_1(func_1(Struct_3(vec2<f32>(var_1.b, -834f), 1i, var_0.c, vec4<u32>(1u, u_input.e, 53751u, u_input.e), 1u)))), 4294967295u, 4294967295u).a, reverseBits(max(select(-vec2<i32>(15302i, var_1.a.x), _wgslsmith_clamp_vec2_i32(var_1.a, var_0.d, var_1.a), var_0.c), u_input.a)));
    var_1 = Struct_4(var_1.a, var_0.a);
    let var_3 = select(vec2<bool>(any(vec2<bool>(all(vec2<bool>(var_2.c, false)), any(vec3<bool>(true, false, false)))), false), vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + var_2.a) >= var_2.a), !(!select(vec2<bool>(var_2.c, var_0.c), !vec2<bool>(var_2.c, var_0.c), func_1(Struct_3(vec2<f32>(-1000f, -719f), var_1.a.x, false, vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e), u_input.e)).c)));
    let var_4 = Struct_5(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(659f, -240f, var_0.c))))), 2147483647i, var_0.c, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, var_0.d.x), vec2<i32>(u_input.d, -7121i)) & var_0.d, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(5222i, -1i), var_1.a & var_2.e), ~var_0.d)), Struct_1(u_input.a.x, _wgslsmith_add_u32(u_input.e, 0u)), u_input.e, Struct_4(vec2<i32>(abs(20301i), _wgslsmith_clamp_i32(func_4(13147u, Struct_3(vec2<f32>(var_1.b, var_0.a), 2147483647i, var_0.c, vec4<u32>(u_input.e, 0u, u_input.e, 14917u), 18606u), u_input.e, u_input.e).a.x, countOneBits(18285i), 45048i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f))), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.c.zwy, vec3<i32>(-2147483647i, var_2.b, var_2.b))), abs(u_input.c.xyx)) ^ 1i);
    let var_5 = func_4(6765u, Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.a * 434f)), var_1.b), _wgslsmith_mult_i32(~(~0i), -abs(var_2.b)), any(vec4<bool>(!var_0.c, var_3.x, true, func_3(vec3<i32>(var_4.e, -52720i, var_1.a.x), vec4<bool>(var_4.a.c, var_0.c, false, var_4.a.c), vec2<bool>(var_3.x, var_0.c), -21270i))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.b.b, 39909u, 56021u, var_4.c), vec4<u32>(var_4.b.b, 1u, u_input.e, u_input.e)) >> ((vec4<u32>(262u, u_input.e, 3328u, 62978u) | vec4<u32>(var_4.c, 4294967295u, 0u, u_input.e)) % vec4<u32>(32u)), ~(~vec4<u32>(0u, var_4.b.b, 1298u, u_input.e))), max(u_input.e, 4294967295u)), var_4.b.b, ~4294967295u).a.x;
    var_1 = Struct_4(_wgslsmith_clamp_vec2_i32(var_1.a, var_4.a.e, u_input.a), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, 0u), vec2<u32>(3225u, 0u)), vec2<u32>(12516u, 63957u)), 0u, abs(var_4.c) | 15634u, ~24352u), firstLeadingBit(vec4<u32>(~1u, u_input.e, ~1u, 1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_1.b, -1000f), vec3<f32>(1732f, 2448f, var_1.b))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.a, var_4.a.a, 733f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-814f, var_2.a, var_0.a))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1355f, var_2.a, var_0.a), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, var_1.b, -964f)))))))));
}

