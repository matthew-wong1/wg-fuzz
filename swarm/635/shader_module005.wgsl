struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<i32> {
    var var_0 = all(!vec2<bool>(false & any(vec2<bool>(false, false)), true));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-899f - -1503f)), Struct_1(vec2<i32>(_wgslsmith_add_i32(1i, -1i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(26556i, -2928i, 80822i), max(-2147483647i, -15140i), _wgslsmith_mod_i32(1i, 1i))), max(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(select(vec2<i32>(-21182i, 1806i), vec2<i32>(-2147483647i, -3649i), false), abs(vec2<i32>(-2147483647i, 49757i)))), max(~vec3<i32>(11530i, -2147483647i, -1i), select(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(0i, -28001i, -1i), vec3<bool>(false, false, true)))), Struct_3(Struct_1(~vec2<i32>(-1i, -2147483647i), -vec2<i32>(-4814i, -38046i), _wgslsmith_add_vec3_i32(~vec3<i32>(1i, 43333i, -12615i), vec3<i32>(43471i, -2147483647i, 26427i) << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)))), Struct_1(~vec2<i32>(1i, 1i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(36886i, 68924i), vec2<i32>(2147483647i, 36484i), vec2<i32>(13167i, -13670i))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 55286i, -9151i), ~vec3<i32>(1i, -34114i, 2147483647i))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1465f, 317f, 430f, -171f))), vec4<f32>(350f, 603f, -331f, 483f)), countOneBits(1u), Struct_1(vec2<i32>(-17793i, 1i), firstLeadingBit(vec2<i32>(-52415i, -39574i)), reverseBits(vec3<i32>(0i, 2147483647i, -1848i)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(372f, 683f, -588f, 700f) - vec4<f32>(-850f, -279f, 300f, -1206f))), abs(u_input.a), Struct_1(max(vec2<i32>(14942i, -18008i), vec2<i32>(-1i, 1i)), -vec2<i32>(-27897i, -1i), -vec3<i32>(21320i, -31703i, 16603i)))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(13063u, 1167u, 940u), min(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(u_input.a, 5051u, 52483u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(37088u, u_input.a, 60373u), ~vec3<u32>(u_input.a, u_input.a, 0u))), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u)), vec4<u32>(0u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 0u, 14965u) % vec4<u32>(32u))), u_input.a, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 116077u), vec2<u32>(1u, u_input.a))))));
    let var_2 = Struct_4(662f, var_1.c.a, var_1.c, select(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a), _wgslsmith_clamp_u32(u_input.a, 37028u, 49005u)), 15865u, 15561u), ~countOneBits(vec3<u32>(1u, u_input.a, 4294967295u)), false));
    let var_3 = var_2.c.d.c;
    let var_4 = var_2.c.d.a.x;
    return -((_wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_2.c.b.a.x), vec2<i32>(var_1.c.d.c.a.x, var_1.c.c.c.b.x)) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 34243u), vec2<u32>(var_1.c.d.b, var_1.d.x)) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(var_1.d.yy, max(var_2.d.xz, vec2<u32>(u_input.a, 1u))) % vec2<u32>(32u))) << (var_1.d.xx % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>) -> vec2<i32> {
    global0 = ~(-8652i);
    var var_0 = -335f;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-546f, -452f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(213f * 204f)))), Struct_1(max(func_3() ^ firstLeadingBit(vec2<i32>(-35053i, 2147483647i)), vec2<i32>(-41044i, _wgslsmith_dot_vec4_i32(vec4<i32>(-39156i, -1i, -5603i, -17169i), vec4<i32>(1i, 2147483647i, 47599i, 1i)))), vec2<i32>(1i, 1i), -(~vec3<i32>(1i, 1i, 1i))), Struct_3(Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(-47267i, 0i)), -vec2<i32>(2147483647i, -66989i)), vec2<i32>(1i, 1i), vec3<i32>(-12919i, 0i, -49544i) << (~vec3<u32>(arg_0.x, u_input.a, 41805u) % vec3<u32>(32u))), Struct_1(vec2<i32>(1i, 1i), vec2<i32>(reverseBits(8470i), -1i), vec3<i32>(-2147483647i, i32(-1i) * -1i, 8042i)), Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(657f, 1508f, -148f, 377f), vec4<f32>(-876f, 306f, -1200f, 322f))), ~_wgslsmith_mult_u32(45537u, u_input.a), Struct_1(vec2<i32>(30497i, 30798i), _wgslsmith_mod_vec2_i32(vec2<i32>(-16339i, 30946i), vec2<i32>(15854i, -1i)), select(vec3<i32>(26877i, 2147483647i, 15750i), vec3<i32>(29550i, -5031i, 41887i), false))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(971f, -1062f, -555f, -1461f), vec4<f32>(-806f, 1504f, 256f, -1335f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(481f, 172f, -713f, 1979f)))), reverseBits(4294967295u), Struct_1(vec2<i32>(-2147483647i, -9884i) << (vec2<u32>(u_input.a, 23586u) % vec2<u32>(32u)), func_3(), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2427i, 0i), vec3<i32>(29424i, -3328i, 0i))))), ~vec3<u32>(arg_0.x, firstTrailingBit(~0u), ~_wgslsmith_div_u32(arg_0.x, 4294967295u)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-757f, 2508f))) - var_1.c.d.a.x))));
    global0 = var_1.c.a.a.x | _wgslsmith_mod_i32(var_1.c.b.c.x, -var_1.c.b.c.x << (firstLeadingBit(~u_input.a) % 32u));
    return ~var_1.b.b | var_1.c.b.b;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = ~11011i;
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec2_i32(firstLeadingBit(select(vec2<i32>(33148i, 1i), vec2<i32>(2147483647i, 1i), true)), max(abs(vec2<i32>(-36187i, 1681i)), vec2<i32>(-1151i, 0i))), _wgslsmith_mult_vec2_i32(func_2(abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec2<bool>(arg_0, arg_0)), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, -1i)), vec2<i32>(1i, 1i))), vec3<i32>(firstTrailingBit(abs(2147483647i)), -(~0i), _wgslsmith_mult_i32(3495i, 29115i) & (1i << (u_input.a % 32u)))), Struct_1(-vec2<i32>(-1i, 1i), vec2<i32>(1i, 1i), -firstLeadingBit(vec3<i32>(1i, 1i, 1i))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1791f), _wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(1118f + -1379f), _wgslsmith_f_op_f32(-330f - -598f))), u_input.a | 53332u, Struct_1(vec2<i32>(1i, _wgslsmith_clamp_i32(0i, -2147483647i, 22737i)), vec2<i32>(17539i, countOneBits(11050i)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, -20917i, -2147483647i))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1569f, 212f, 103f, 714f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1072f, 1939f, 903f, -945f)))), u_input.a, Struct_1(vec2<i32>(firstTrailingBit(2147483647i), 0i), -_wgslsmith_add_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(0i, 45566i)), -abs(vec3<i32>(-2147483647i, 39527i, 8680i)))));
    global0 = func_3().x;
    let var_1 = !select(select(vec4<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), any(vec4<bool>(false, true, arg_0, false)), true, false), select(select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, false)), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, false, arg_0)), vec4<bool>(arg_0, any(vec3<bool>(arg_0, arg_0, arg_0)), true || arg_0, arg_0)), select(select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, false, true)), true), vec4<bool>(true, var_0.c.a.x < var_0.c.a.x, true, var_0.b.b.x == 0i), select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, false, arg_0, true), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, arg_0, false, arg_0)))), vec4<bool>(all(!vec3<bool>(true, arg_0, arg_0)), var_0.d.c.c.x > (var_0.d.c.c.x >> (var_0.d.b % 32u)), arg_0, arg_0));
    global0 = countOneBits(var_0.c.c.b.x);
    return var_0.c.c;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_4 {
    global0 = 13699i;
    let var_0 = func_1(!arg_1.x);
    var var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.d.a), vec4<f32>(1111f, _wgslsmith_f_op_f32(283f - -765f), -1000f, _wgslsmith_f_op_f32(arg_0.c.a.x * arg_0.d.a.x)), !(!vec4<bool>(false, false, false, arg_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, 851f, 559f, arg_0.c.a.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-543f, arg_0.d.a.x, 224f, 1698f) * vec4<f32>(arg_0.d.a.x, 869f, -542f, 388f)))))), ~0u, var_0);
    let var_2 = vec3<i32>(arg_0.a.c.x, _wgslsmith_mult_i32(abs(arg_0.a.b.x), firstTrailingBit(-405i)), var_0.b.x);
    var var_3 = arg_0.d;
    return Struct_4(var_3.a.x, var_3.c, Struct_3(Struct_1(-vec2<i32>(var_3.c.c.x, var_2.x), countOneBits(-var_3.c.a), -vec3<i32>(arg_0.b.a.x, 1i, -49644i)), Struct_1(vec2<i32>(var_3.c.a.x, var_0.b.x), var_2.xx, _wgslsmith_add_vec3_i32(vec3<i32>(var_3.c.c.x, -2147483647i, 2147483647i), select(var_2, var_2, vec3<bool>(false, false, arg_1.x)))), arg_0.d, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0.c.a, vec4<f32>(arg_0.d.a.x, -947f, var_1.a.x, arg_0.c.a.x)))), u_input.a << (~14590u % 32u), var_1.c)), select(((vec3<u32>(var_3.b, 17415u, arg_0.c.b) | vec3<u32>(var_3.b, var_3.b, 16638u)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.b, 4294967295u, 7044u), vec3<u32>(64240u, 0u, 0u), vec3<u32>(19108u, 2865u, arg_0.c.b)) % vec3<u32>(32u))) ^ reverseBits(vec3<u32>(101919u, 24391u, u_input.a) ^ vec3<u32>(arg_0.d.b, var_1.b, 4294967295u)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(54536u, arg_0.c.b, 4294967295u)), countOneBits(~vec3<u32>(0u, var_3.b, arg_0.c.b))), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -446i;
    global0 = ~var_0;
    let var_1 = Struct_1(~(~countOneBits(vec2<i32>(-2147483647i, var_0) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), vec2<i32>(-1i) * -min(select(vec2<i32>(var_0, -33095i), vec2<i32>(-46487i, var_0), vec2<bool>(true, false)), ~vec2<i32>(var_0, var_0)), vec3<i32>(0i, var_0, -var_0 | -(~var_0)));
    var var_2 = var_1.b.x;
    var var_3 = func_4(Struct_3(func_1(true), var_1, Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-502f, 1000f, -680f, 419f) + vec4<f32>(580f, -120f, 1000f, 626f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-637f, -330f, 1000f, -2008f))), 1u, var_1), Struct_2(vec4<f32>(1f, 1f, 1f, 1f), 23868u, var_1)), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), false)));
    var var_4 = _wgslsmith_mod_u32(~u_input.a, u_input.a);
    var var_5 = vec2<u32>(4294967295u, 0u);
    var var_6 = abs(vec4<u32>(47083u, var_3.c.d.b, 62438u, ~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-873f + var_3.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-202f * -571f) * _wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(var_3.c.c.a.x * 159f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.c.d.a.x)) - 484f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-458f)))));
}

