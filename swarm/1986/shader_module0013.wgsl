struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = arg_2.a.zyw;
    return vec2<i32>(~_wgslsmith_mult_i32(_wgslsmith_div_i32(-44259i >> (arg_2.b.a % 32u), _wgslsmith_mod_i32(u_input.a, 2147483647i)), u_input.a), _wgslsmith_mod_i32(arg_2.d, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, arg_2.d, 79869i) >> (vec3<u32>(18134u, arg_2.a.x, arg_0.a.b.a) % vec3<u32>(32u)), abs(vec3<i32>(-27804i, arg_2.d, u_input.a))), vec3<i32>(-1i) * -vec3<i32>(u_input.a, arg_2.d, -1i))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(abs(~firstLeadingBit(arg_0.a)), arg_0.b, true, 60075i, false), -arg_3.yy, arg_0, Struct_1(arg_2.a.x, arg_2.b.b), Struct_2(~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 954u, arg_0.a.x), vec4<u32>(arg_0.a.x, 1u, arg_0.b.a, 112312u)) >> ((arg_2.a << (vec4<u32>(u_input.b.x, 0u, u_input.b.x, arg_2.b.a) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(~arg_0.a.x, select(arg_2.b.b, !vec4<bool>(arg_0.b.b.x, false, arg_2.b.b.x, arg_2.e), vec4<bool>(arg_2.c, arg_0.c, true, arg_0.c))), arg_1, 0i, !any(vec2<bool>(true, true))));
    var_0 = Struct_3(Struct_2(_wgslsmith_div_vec4_u32(arg_2.a, select(~vec4<u32>(var_0.d.a, 0u, var_0.c.a.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, arg_0.b.a, u_input.b.x, 19278u), arg_2.a), any(arg_0.b.b))), arg_0.b, !all(!var_0.c.b.b.yy), arg_3.x, false), _wgslsmith_sub_vec2_i32(func_3(Struct_3(var_0.c, _wgslsmith_mult_vec2_i32(var_0.b, var_0.b), arg_2, Struct_1(48005u, arg_0.b.b), arg_0), ~var_0.c.b.a, arg_2), vec2<i32>(var_0.e.d, max(-2147483647i, 0i)) | select(-vec2<i32>(1i, -47851i), vec2<i32>(99125i, u_input.a), false)), arg_2, var_0.a.b, Struct_2(~firstTrailingBit(arg_0.a), Struct_1(countOneBits(arg_2.a.x), arg_0.b.b), true, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, -2147483647i, -33014i, -34384i), vec4<i32>(5781i, arg_0.d, arg_0.d, var_0.a.d), arg_2.b.b), ~vec4<i32>(16096i, var_0.b.x, arg_2.d, arg_0.d)) & ~func_3(Struct_3(Struct_2(vec4<u32>(u_input.b.x, 65595u, arg_0.a.x, u_input.b.x), var_0.e.b, false, u_input.a, false), arg_3.xx, Struct_2(var_0.a.a, arg_2.b, arg_2.c, u_input.a, var_0.c.e), arg_0.b, arg_2), var_0.e.a.x, arg_2).x, any(!vec4<bool>(false, false, false, var_0.a.e))));
    var_0 = Struct_3(Struct_2(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(arg_2.a), ~vec4<u32>(arg_0.a.x, 0u, arg_2.b.a, 1u)), ~select(vec4<u32>(var_0.e.b.a, arg_2.b.a, var_0.a.b.a, 41303u), var_0.a.a, arg_2.b.b)), Struct_1(79825u, vec4<bool>(arg_0.e != false, any(arg_2.b.b.wz), arg_3.x != -1i, true)), true, var_0.b.x, false), arg_3.zx, arg_2, Struct_1(~countOneBits(0u | u_input.b.x), vec4<bool>(u_input.a > _wgslsmith_dot_vec3_i32(arg_3, arg_3), false, true, arg_2.e)), Struct_2(~(~vec4<u32>(0u, u_input.b.x, 0u, 0u)), Struct_1(4294967295u, var_0.a.b.b), true, max(arg_3.x, 8647i), true | (!var_0.a.e != (arg_0.e & arg_1))));
    var_0 = Struct_3(var_0.a, firstLeadingBit(vec2<i32>(-1i) * -func_3(Struct_3(Struct_2(vec4<u32>(var_0.a.b.a, 4194u, 4294967295u, 44782u), Struct_1(4294967295u, vec4<bool>(false, false, true, true)), false, arg_0.d, false), vec2<i32>(1i, u_input.a), Struct_2(arg_2.a, Struct_1(1u, arg_2.b.b), arg_0.c, 1i, arg_0.c), Struct_1(48589u, vec4<bool>(arg_0.e, false, true, false)), var_0.c), arg_0.b.a, arg_0)), Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~arg_2.a, vec4<u32>(4294967295u, arg_2.b.a, u_input.b.x, arg_2.b.a), arg_0.a | vec4<u32>(arg_0.a.x, var_0.a.a.x, u_input.b.x, u_input.b.x)), ~arg_0.a), arg_2.b, all(vec3<bool>(var_0.e.e, arg_0.e, true)) && true, func_3(Struct_3(arg_2, var_0.b >> (var_0.a.a.zz % vec2<u32>(32u)), Struct_2(var_0.c.a, Struct_1(arg_2.b.a, vec4<bool>(arg_1, false, arg_2.c, arg_2.c)), var_0.d.b.x, var_0.a.d, true), Struct_1(u_input.b.x, arg_0.b.b), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, 21805u, 14915u), Struct_1(0u, vec4<bool>(arg_1, true, arg_1, false)), true, arg_2.d, arg_0.c)), arg_0.a.x, arg_2).x, ((i32(-1i) * -25343i) << (arg_2.b.a % 32u)) > ~1i), arg_0.b, Struct_2(arg_0.a, var_0.a.b, !var_0.a.c, ~u_input.a, arg_1));
    let var_1 = var_0.e.d & ~(-func_3(Struct_3(arg_0, vec2<i32>(arg_0.d, 60032i), arg_0, var_0.e.b, arg_0), max(arg_2.a.x, 0u), arg_0).x);
    return Struct_1(76308u, arg_0.b.b);
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1725f + -1080f), -461f, 198f, -672f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, -1319f, -465f, -1656f)) * vec4<f32>(1079f, -343f, 1108f, 386f)), vec4<bool>(arg_0.b.x, true, !arg_0.b.x, !var_0.b.x)))));
    let var_2 = func_2(Struct_2(abs(firstLeadingBit(~vec4<u32>(13178u, 9751u, 0u, u_input.b.x))), Struct_1(firstLeadingBit(~u_input.b.x), var_0.b), u_input.b.x == var_0.a, -1i, arg_0.b.x), false, Struct_2(~vec4<u32>(arg_0.a, arg_0.a, 54557u, arg_0.a) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, arg_0.a, 4294967295u, 1u), vec4<u32>(0u, 1u, var_0.a, 1u), vec4<u32>(102615u, arg_0.a, 27375u, 0u)), Struct_1(arg_0.a, vec4<bool>(arg_0.b.x, true, var_0.b.x, false)), true, -5470i, !(var_1.x > _wgslsmith_f_op_f32(var_1.x + var_1.x))), vec3<i32>(abs(-(~(-57670i))), -(~(-1i)), _wgslsmith_mod_i32(~u_input.a, countOneBits(-u_input.a))));
    let var_3 = var_0;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1304f, -472f)))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), var_1.x, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(exp2(var_1.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), -178f, var_1.x)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) + _wgslsmith_f_op_f32(step(var_1.x, var_1.x)))))));
    return vec4<i32>(u_input.a << (~_wgslsmith_mult_u32(countOneBits(17306u), arg_0.a << (u_input.b.x % 32u)) % 32u), -1i, u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_1(Struct_1(u_input.b.x, vec4<bool>(true, true, true, true))));
    let var_1 = max(vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~(u_input.b.x >> (1u % 32u))), min(abs(86510u), u_input.b.x), u_input.b.x, 101882u), ~firstTrailingBit(vec4<u32>(u_input.b.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 53924u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, 9637u, 4294967295u)), ~u_input.b.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -255f))));
    var var_3 = _wgslsmith_div_u32(~(~0u), var_1.x);
    let var_4 = min(firstLeadingBit(_wgslsmith_add_vec2_i32(var_0.wx, var_0.wx)), -(var_0.zy ^ var_0.yw) | vec2<i32>(u_input.a, func_3(Struct_3(Struct_2(var_1, Struct_1(1409u, vec4<bool>(false, false, true, false)), false, u_input.a, true), var_0.yx, Struct_2(var_1, Struct_1(u_input.b.x, vec4<bool>(false, true, false, true)), true, 2147483647i, false), Struct_1(4294967295u, vec4<bool>(false, false, false, true)), Struct_2(var_1, Struct_1(0u, vec4<bool>(false, false, true, false)), false, u_input.a, false)), ~65868u, Struct_2(var_1, Struct_1(100612u, vec4<bool>(false, false, false, false)), true, 25752i, true)).x));
    var var_5 = true;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-356f + 2002f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2332f - 474f) + _wgslsmith_f_op_f32(-269f - -417f)))));
    var_5 = (u_input.b.x <= 1u) & !any(vec2<bool>(true, true));
    var_3 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1205f) * _wgslsmith_div_f32(-2539f, -869f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(243f - 551f)), -640f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(554f, 860f, -680f, 1013f) * vec4<f32>(-1534f, 552f, -1101f, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-304f, 863f, 483f, -565f)))))));
}

