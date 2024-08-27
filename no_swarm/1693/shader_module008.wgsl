struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: Struct_4,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(9797u, 26612u, 69994u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(global0.x, arg_2.x), arg_1, arg_2.x) | select(arg_2.yxz, arg_2.wyz, vec3<bool>(true, true, true));
    global0 = ~arg_2.zyz;
    var var_1 = Struct_1(select(vec4<bool>(any(vec2<bool>(true, true)), true, true, _wgslsmith_f_op_f32(trunc(-1551f)) >= _wgslsmith_f_op_f32(trunc(-896f))), !vec4<bool>(all(vec3<bool>(true, false, true)), var_0.x < global0.x, false, any(vec2<bool>(true, true))), select(vec4<bool>(true, true, select(false, true, true), 12504u >= u_input.c.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), true), true)), 14904u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1575f, -239f, -573f, 551f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-872f, 304f, 1215f, 1090f) - vec4<f32>(-229f, 1000f, -1000f, 1693f)))))), global0.zy);
    var_1 = Struct_1(var_1.a, 34725u, var_1.c, abs(vec2<u32>(reverseBits(u_input.c.x), ~global0.x << (_wgslsmith_mod_u32(arg_2.x, 5888u) % 32u))));
    let var_2 = Struct_4(Struct_1(!select(select(var_1.a, vec4<bool>(true, var_1.a.x, true, true), var_1.a), var_1.a, !vec4<bool>(false, var_1.a.x, false, false)), max(~arg_2.x & firstTrailingBit(arg_2.x), _wgslsmith_div_u32(~arg_2.x, ~33377u)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x))), 1000f, 163f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-530f, var_1.c.x))))), ~vec2<u32>(18172u, _wgslsmith_dot_vec4_u32(arg_2, arg_2))), vec2<bool>(~1680u >= _wgslsmith_sub_u32(arg_1, 85266u | arg_2.x), var_1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x - -941f), -534f, var_1.c.x, _wgslsmith_f_op_f32(round(-303f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1.c)) + _wgslsmith_f_op_vec4_f32(select(var_1.c, vec4<f32>(var_1.c.x, 516f, var_1.c.x, 1007f), var_1.a.x))))));
    return !select(select(var_1.a.zwy, vec3<bool>(false, true, var_1.a.x || true), var_1.a.x), select(!vec3<bool>(true, true, var_2.b.x), !vec3<bool>(var_2.b.x, false, var_1.a.x), select(!vec3<bool>(var_1.a.x, var_2.a.a.x, true), vec3<bool>(true, true, var_1.a.x), any(vec2<bool>(var_2.b.x, var_1.a.x)))), select(!vec3<bool>(false, true, var_1.a.x), vec3<bool>(var_2.a.a.x, all(var_1.a.zyy), true), var_1.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_5) -> bool {
    var var_0 = vec2<bool>(!all(func_3(vec4<i32>(arg_3.e.x, 6324i, u_input.a.x, arg_3.e.x), _wgslsmith_mult_u32(4294967295u, 1u), countOneBits(vec4<u32>(arg_2.x, arg_2.x, 4294967295u, 0u)))), arg_0.a);
    var var_1 = vec4<i32>(~(~(~(-u_input.a.x))), reverseBits(38794i), 1i, -(arg_3.e.x >> (arg_2.x % 32u)));
    var_1 = ~vec4<i32>(1i, ~(-(~29549i)), _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -6864i, u_input.a.x, u_input.d.x), vec4<i32>(1i, 3649i, arg_1, var_1.x)), vec4<i32>(-1i) * -vec4<i32>(29978i, var_1.x, u_input.d.x, -2147483647i)), arg_3.e.x);
    global0 = countOneBits(arg_2);
    let var_2 = arg_3.a;
    return arg_3.a.a.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(func_4(Struct_2(true), 1i, vec3<u32>(firstTrailingBit(global0.x) << (global0.x % 32u), firstLeadingBit(39387u) | global0.x, 7758u), Struct_5(Struct_1(vec4<bool>(true, false, false, true), u_input.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-652f, -162f, -1679f, 447f) - vec4<f32>(550f, -586f, 1000f, -1369f)), vec2<u32>(35789u, 16648u)), func_3(vec4<i32>(1i, 1i, -18860i, u_input.d.x), ~9146u, vec4<u32>(4294967295u, global0.x, 0u, u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1077f, -1334f))), Struct_4(Struct_1(vec4<bool>(true, true, false, true), 51869u, vec4<f32>(-231f, -1265f, 981f, -1462f), vec2<u32>(51097u, 4294967295u)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-793f, -2409f, 568f, -2931f))), _wgslsmith_clamp_vec2_i32(u_input.d, vec2<i32>(-39661i, u_input.a.x), u_input.b) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(7006u, global0.x), vec2<u32>(global0.x, global0.x), u_input.c) % vec2<u32>(32u)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(689f))) * -941f)), _wgslsmith_f_op_f32(1578f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -405f)) - _wgslsmith_f_op_f32(sign(467f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1011f - 873f))))), _wgslsmith_f_op_f32(ceil(-121f)));
    var var_2 = var_0.a;
    let var_3 = ~0u;
    var_2 = 1u >= global0.x;
    return var_3;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: i32, arg_3: f32) -> vec3<bool> {
    global0 = vec3<u32>(u_input.c.x & global0.x, u_input.c.x, ~(~firstTrailingBit(func_2())));
    global0 = vec3<u32>(func_2(), 1577u, 1u << ((global0.x >> ((u_input.c.x & 1u) % 32u)) % 32u)) ^ max(max(vec3<u32>(4294967295u, 1u, u_input.c.x >> (u_input.c.x % 32u)), ~vec3<u32>(4294967295u, 4294967295u, 46734u)), vec3<u32>(~global0.x, 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 27546u, 1u), vec4<u32>(global0.x, 4294967295u, global0.x, 1u), vec4<u32>(0u, global0.x, 102649u, 0u)), firstTrailingBit(vec4<u32>(global0.x, 4294967295u, global0.x, global0.x)))));
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3)))));
    let var_1 = Struct_4(Struct_1(select(vec4<bool>(arg_0.x > 757f, any(vec2<bool>(false, true)), all(vec3<bool>(true, false, false)), func_3(vec4<i32>(1i, u_input.a.x, arg_2, u_input.a.x), 7248u, vec4<u32>(76442u, 0u, global0.x, global0.x)).x), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), true), true), firstTrailingBit(1u), _wgslsmith_div_vec4_f32(vec4<f32>(-2158f, _wgslsmith_f_op_f32(sign(-1000f)), arg_3, 511f), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(-114f - arg_3), _wgslsmith_f_op_f32(1650f - 1789f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(~vec2<u32>(0u, 75114u), global0.xx, vec2<bool>(true, true))), vec2<bool>(!(_wgslsmith_add_u32(u_input.c.x, u_input.c.x) <= ~92954u), false), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(618f, arg_0.x, var_0, arg_1) - vec4<f32>(-318f, -400f, -3392f, 2106f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -549f, var_0, 423f), vec4<f32>(var_0, arg_3, arg_3, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 737f, arg_3, arg_0.x) + vec4<f32>(var_0, arg_1, arg_3, arg_3)))))));
    global0 = vec3<u32>(_wgslsmith_add_u32(func_2(), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(52409u, global0.x), var_1.a.b, _wgslsmith_mult_u32(1u, select(0u, 4294967295u, var_1.b.x)))), ~_wgslsmith_dot_vec2_u32(u_input.c, reverseBits(vec2<u32>(1u, var_1.a.d.x))), _wgslsmith_add_u32(_wgslsmith_add_u32(var_1.a.d.x, _wgslsmith_mod_u32(134589u, u_input.c.x) >> (4294967295u % 32u)), 35168u));
    return var_1.a.a.wwz;
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    var var_0 = any(!vec3<bool>(all(select(vec3<bool>(arg_2.x, arg_1.x, arg_1.x), vec3<bool>(false, arg_2.x, arg_2.x), arg_1.x)), any(!vec4<bool>(true, arg_2.x, false, true)), !arg_1.x));
    let var_1 = Struct_2(true);
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(76236i, -2147483647i), u_input.d), ~u_input.a), ~_wgslsmith_clamp_vec2_i32(u_input.d, u_input.b, vec2<i32>(2147483647i, arg_3)), arg_2.yx), u_input.d), -2147483647i);
    var var_3 = Struct_4(Struct_1(vec4<bool>(72924u < min(28974u, u_input.c.x), true, arg_1.x, select(true, true, all(vec2<bool>(arg_2.x, true)))), ~1u, vec4<f32>(-102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(675f - 475f) * _wgslsmith_div_f32(345f, 667f)), _wgslsmith_f_op_f32(-634f * 1f)), ~(vec2<u32>(1u, 4294967295u) >> (reverseBits(vec2<u32>(9469u, u_input.c.x)) % vec2<u32>(32u)))), !arg_1.zy, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(107f, -798f, 908f, -411f), vec4<f32>(1000f, -505f, -292f, -816f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(749f, 377f, -1279f, 502f) + vec4<f32>(411f, -389f, 451f, -875f)), vec4<f32>(1789f, 945f, -416f, -717f), vec4<bool>(arg_1.x, arg_2.x, var_1.a, var_1.a)))))));
    var_3 = Struct_4(var_3.a, vec2<bool>(func_4(var_1, _wgslsmith_mult_i32(-2147483647i, arg_3), select(~vec3<u32>(1u, 56976u, 9973u), firstLeadingBit(vec3<u32>(0u, 1u, 1u)), var_3.a.a.zxz), Struct_5(var_3.a, arg_1, _wgslsmith_f_op_f32(floor(var_3.a.c.x)), Struct_4(Struct_1(var_3.a.a, 4294967295u, vec4<f32>(1316f, 701f, -635f, -1349f), vec2<u32>(11752u, u_input.c.x)), vec2<bool>(true, false), vec4<f32>(var_3.a.c.x, var_3.a.c.x, var_3.c.x, -234f)), abs(u_input.b))), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-430f, -1682f), 1f), var_3.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(616f))), _wgslsmith_f_op_f32(720f + _wgslsmith_f_op_f32(var_3.c.x - -115f)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -421f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(true, ~select(-14013i, u_input.a.x, true) <= u_input.b.x, u_input.c.x <= 4294967295u, any(vec2<bool>(true, true))), min(~u_input.c.x, 1u), vec4<f32>(_wgslsmith_f_op_f32(min(232f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1480f, -370f), -1028f)))), _wgslsmith_f_op_f32(func_5(~(i32(-1i) * -977i), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(169f, -1000f)), -553f, -u_input.d.x, _wgslsmith_f_op_f32(step(1862f, 321f))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), abs(u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-279f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(u_input.d.x, vec3<bool>(false, false, true), vec3<bool>(true, false, true), 15628i)) - _wgslsmith_f_op_f32(step(-159f, 1171f))))), global0.zy);
    global0 = firstLeadingBit(abs(firstTrailingBit(~vec3<u32>(4294967295u, 77180u, var_0.b)))) | max(~((vec3<u32>(var_0.b, 117102u, u_input.c.x) | vec3<u32>(u_input.c.x, 0u, 4294967295u)) << ((vec3<u32>(32682u, 0u, global0.x) & vec3<u32>(1u, 1u, var_0.d.x)) % vec3<u32>(32u))), abs(firstLeadingBit(select(vec3<u32>(var_0.b, u_input.c.x, global0.x), vec3<u32>(u_input.c.x, 1u, 1u), true))));
    var var_1 = Struct_3(-_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.d.x, 11789i, u_input.d.x, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -23343i, 15867i, u_input.b.x), vec4<i32>(u_input.a.x, -4578i, u_input.d.x, u_input.b.x), vec4<i32>(-1i, u_input.b.x, 14225i, 1i))) | _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(26580i, 12381i, 2147483647i, u_input.b.x), ~vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, -54229i)), firstLeadingBit(vec4<i32>(0i, 33634i, u_input.d.x, u_input.d.x)), abs(-vec4<i32>(-6817i, u_input.a.x, u_input.b.x, 1i))), ~global0.x, var_0.a);
    var var_2 = 160f;
    let var_3 = Struct_5(var_0, func_3(vec4<i32>(u_input.d.x, u_input.b.x, u_input.d.x & var_1.a.x, -1i), ~1u, _wgslsmith_mult_vec4_u32(vec4<u32>(min(1u, var_1.b), ~71180u, _wgslsmith_mult_u32(var_1.b, var_0.d.x), _wgslsmith_div_u32(1u, var_0.b)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.b, 4294967295u), vec4<u32>(var_1.b, 0u, u_input.c.x, global0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 33732u, 1u), vec4<u32>(var_1.b, 1u, var_1.b, u_input.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2254f)) + _wgslsmith_f_op_f32(select(var_0.c.x, -1433f, var_1.c.x)))), Struct_4(var_0, vec2<bool>(_wgslsmith_mult_i32(0i, 20256i) > abs(var_1.a.x), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c), vec4<f32>(186f, _wgslsmith_f_op_f32(-var_0.c.x), 1f, _wgslsmith_f_op_f32(-var_0.c.x)))), reverseBits(_wgslsmith_mult_vec2_i32(~(~u_input.a), vec2<i32>(12183i, -var_1.a.x))));
    let var_4 = var_0;
    let var_5 = any(vec2<bool>(func_3(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.x, var_3.e.x, var_3.e.x, u_input.a.x), vec4<i32>(-2147483647i, 22109i, 0i, 9528i)), 90163u, _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_4.d.x, global0.x, global0.x, 71604u)), select(vec4<u32>(var_4.d.x, global0.x, u_input.c.x, 0u), vec4<u32>(4294967295u, var_0.d.x, global0.x, var_3.d.a.b), var_4.a.x))).x, !any(!var_3.d.a.a.xz)));
    let var_6 = 1023f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(32604u, 0u, 1u, var_4.d.x))), 15996u, ~max(87017u, 4294967295u)), var_6);
}

