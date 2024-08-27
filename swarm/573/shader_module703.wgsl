struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(19758u, 935u, 0u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-274f, -299f, 1947f, -1996f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(439f, 577f, 534f, 1135f)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-836f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-687f * var_0.x))) + var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(sign(var_0.x)))), var_0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1069f)), var_0.x), var_0.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1818f, -132f, -1403f, var_0.x), vec4<f32>(-574f, -1187f, -474f, var_0.x)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-320f, 428f, -1225f, var_0.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(389f, var_0.x, -467f, -1096f), vec4<f32>(var_0.x, var_0.x, var_0.x, 715f), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -635f, 1560f, -1492f), vec4<f32>(var_0.x, var_0.x, var_0.x, 1992f), arg_1.a.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -276f, -1859f, -1000f), vec4<f32>(var_0.x, var_0.x, var_0.x, -378f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -945f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -502f, var_0.x)))), !vec4<bool>(arg_2.x, 42923u >= u_input.a, true, false & arg_2.x))));
    var var_1 = Struct_3(-(~vec2<i32>(arg_1.b, -10882i)), Struct_2(abs(countOneBits(vec3<u32>(37161u, global0.x, u_input.c)) ^ (vec3<u32>(global0.x, 4294967295u, 0u) & vec3<u32>(u_input.b, 1u, 2577u))), arg_2.wyx, arg_1, !vec4<bool>(true, !arg_1.a.x, false, false)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(-1628f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2185f), _wgslsmith_f_op_f32(f32(-1f) * -1621f)), _wgslsmith_f_op_f32(f32(-1f) * -835f)))));
    global0 = select(var_1.b.a, var_1.b.a, true);
    return select(arg_2.yyy, select(select(arg_2.wyy, arg_1.a, var_1.b.d.x), select(var_1.b.b, !(!vec3<bool>(true, arg_1.a.x, true)), arg_2.xwz), all(vec2<bool>(arg_2.x, 17425i != var_1.a.x))), select(select(vec3<bool>(true, true, true), !vec3<bool>(var_1.b.c.a.x, var_1.b.d.x, var_1.b.d.x), arg_1.a.x), select(vec3<bool>(all(arg_1.a.yz), true, any(arg_1.a)), arg_2.ywy, !select(false, false, var_1.b.c.a.x)), true));
}

fn func_2() -> u32 {
    global0 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(global0.x, 46381u, 1u, 13841u), vec4<u32>(global0.x, u_input.b, 71378u, 119776u), vec4<bool>(true, true, true, true)), ~vec4<u32>(4294967295u, u_input.b, 1u, 4294967295u) << (firstLeadingBit(vec4<u32>(global0.x, u_input.b, u_input.b, global0.x)) % vec4<u32>(32u))), 1u, ~(~56214u));
    let var_0 = Struct_3(vec2<i32>(-reverseBits(-37901i), 1i), Struct_2(vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(65109u, u_input.a) & vec2<u32>(1u, global0.x), global0.yy), ~_wgslsmith_sub_u32(1u, global0.x)), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, false, true), func_3(vec2<u32>(u_input.c, 47210u), Struct_1(vec3<bool>(false, false, false), -1i, -5701i, -28081i), vec4<bool>(false, false, false, false))), Struct_1(vec3<bool>(true, false, true), 1i, -63988i, ~(-37330i)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<f32>(1f, 1000f, -165f, _wgslsmith_div_f32(-591f, 1f)));
    var var_1 = abs(select(vec4<u32>(~0u, 10144u, _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 0u), _wgslsmith_add_u32(1u, u_input.c)), global0.x), vec4<u32>(4294967295u, 33797u, var_0.b.a.x, u_input.a ^ 64858u), all(vec4<bool>(any(var_0.b.d), true, var_0.b.b.x | var_0.b.c.a.x, var_0.b.b.x))));
    var var_2 = var_0.b.c.a.x;
    global0 = var_1.wzx;
    return ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_1.x ^ var_0.b.a.x, ~u_input.c), vec2<u32>(9333u, _wgslsmith_clamp_u32(0u, 93336u, 17466u))), ~(~var_0.b.a.zz));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec3<bool>(arg_1.a.x, all(!(!func_3(global0.zy, Struct_1(arg_1.a, arg_1.c, arg_1.d, arg_1.c), vec4<bool>(arg_1.a.x, false, arg_1.a.x, true)).zz)), false);
    global0 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 51589u, ~1u), _wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(global0.x, u_input.a, 1u)), firstLeadingBit(~vec3<u32>(u_input.b, u_input.a, u_input.a))));
    let var_1 = vec3<bool>(true, true, func_3(global0.xy ^ vec2<u32>(37107u, 86634u), Struct_1(!var_0, select(-50363i, 55502i, false), arg_1.b, 1i), select(!vec4<bool>(arg_1.a.x, true, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(false, var_0.x, var_0.x, arg_1.a.x))).x || !var_0.x);
    return Struct_2(vec3<u32>(u_input.b, _wgslsmith_clamp_u32(~u_input.a, global0.x, arg_0), u_input.c) >> (vec3<u32>(~(~4294967295u), arg_0, arg_0) % vec3<u32>(32u)), !select(vec3<bool>(true, true, !arg_1.a.x), select(select(arg_1.a, vec3<bool>(arg_1.a.x, var_1.x, false), var_0), var_1, !var_0.x), select(var_0.x, var_1.x, true) || (false && var_1.x)), Struct_1(!vec3<bool>(!var_0.x, false, true), -29725i, ~arg_1.c, firstLeadingBit(37464i)), vec4<bool>(var_1.x, true, func_3(~vec2<u32>(arg_0, u_input.b), arg_1, !vec4<bool>(true, arg_1.a.x, var_1.x, arg_1.a.x)).x & var_1.x, false));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = arg_3.b.c;
    global0 = ~(arg_3.b.a << (firstTrailingBit(abs(arg_3.b.a)) % vec3<u32>(32u)));
    let var_1 = func_4(func_2(), Struct_1(func_3(~_wgslsmith_sub_vec2_u32(global0.zy, vec2<u32>(global0.x, 58573u)), Struct_1(var_0.a, 2147483647i, 1i, -22843i), !select(vec4<bool>(arg_3.b.d.x, false, arg_3.b.b.x, false), arg_3.b.d, false)), -(~firstLeadingBit(41257i)), arg_2, arg_2));
    return vec3<u32>(arg_3.b.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(var_1.a.x, 68752u, arg_3.b.a.x, var_1.a.x), vec4<u32>(71204u, 0u, 4294967295u, 0u)), ~vec4<u32>(u_input.a, global0.x, 1u, 0u)), ~vec4<u32>(global0.x, 4294967295u, u_input.a, 4294967295u)) << ((abs(_wgslsmith_add_u32(u_input.a, u_input.b)) << (_wgslsmith_mult_u32(min(4294967295u, u_input.c), 4294967295u) % 32u)) % 32u), firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1778u, global0.x, u_input.b), arg_3.b.a & arg_3.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<i32>(1i, 1i), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(3136f, 610f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(292f, 1421f), vec2<f32>(602f, 1892f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1124f, 618f) + vec2<f32>(-349f, 1000f)) + vec2<f32>(1f, 1f)), 0i, Struct_3(vec2<i32>(1i, 1i), Struct_2(vec3<u32>(u_input.a, 1u, 1u), vec3<bool>(true, true, false), Struct_1(vec3<bool>(false, false, true), -25164i, 0i, 22689i), vec4<bool>(true, false, true, false)), vec4<f32>(-390f, -2452f, 896f, -370f))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false), Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), _wgslsmith_div_i32(~(-2147483647i), -23128i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 27509i, -2147483647i, 27226i), vec4<i32>(-8822i, -2203i, -2437i, -63884i)), ~countOneBits(24077i)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(204f, -367f, -765f, 1000f) * vec4<f32>(1000f, -802f, 433f, -1000f))))));
    let var_1 = firstTrailingBit(firstTrailingBit(-2147483647i));
    let var_2 = Struct_3(var_0.a, func_4(_wgslsmith_mult_u32(var_0.b.a.x, u_input.a), var_0.b.c), _wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(trunc(var_0.c))));
    var var_3 = abs(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.c.c, var_2.b.c.d, -18972i), vec3<i32>(-2147483647i, var_0.b.c.c, -6284i)), _wgslsmith_add_i32(1i, var_1), 15115i))) >> (~_wgslsmith_clamp_vec3_u32(max(var_0.b.a, vec3<u32>(14323u, 4294967295u, 9761u)), _wgslsmith_add_vec3_u32(vec3<u32>(15416u, var_0.b.a.x, var_2.b.a.x), vec3<u32>(0u, var_0.b.a.x, 1u)), var_2.b.a) % vec3<u32>(32u));
    let var_4 = Struct_2(var_2.b.a, vec3<bool>(_wgslsmith_f_op_f32(-var_2.c.x) == _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-933f, var_0.c.x), _wgslsmith_f_op_f32(-var_2.c.x))), any(vec2<bool>(true | var_2.b.d.x, !var_0.b.b.x)), firstLeadingBit(~var_1) != _wgslsmith_mult_i32(-var_1, -var_0.a.x)), Struct_1(var_0.b.b, var_3.x, var_1, ~var_1), select(vec4<bool>(false, !var_2.b.d.x, func_3(max(var_0.b.a.zz, vec2<u32>(0u, global0.x)), func_4(var_2.b.a.x, Struct_1(vec3<bool>(var_0.b.d.x, true, var_2.b.c.a.x), var_0.a.x, var_1, -2147483647i)).c, !var_2.b.d).x, all(select(vec4<bool>(true, true, var_2.b.c.a.x, var_0.b.b.x), var_2.b.d, false))), var_2.b.d, vec4<bool>(var_0.b.d.x, var_2.b.d.x, var_2.b.d.x | var_2.b.d.x, true)));
    var_3 = -vec3<i32>(_wgslsmith_add_i32(var_4.c.d, var_0.b.c.c), -26405i, (_wgslsmith_add_i32(39650i, var_4.c.b) << (var_2.b.a.x % 32u)) >> (func_2() % 32u));
    let var_5 = Struct_1(!var_4.b, var_4.c.d, ~select(4016i, 1i << (var_2.b.a.x % 32u), func_3(var_0.b.a.yy, func_4(4294967295u, var_2.b.c).c, var_4.d).x), var_2.b.c.b);
    let var_6 = 13448u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.wwz, var_0.c.zw, i32(-1i) * -(~20406i), _wgslsmith_add_u32(reverseBits(_wgslsmith_add_u32(var_6, _wgslsmith_mult_u32(0u, u_input.a))), ~(~4294967295u << (var_2.b.a.x % 32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(41475u, var_4.a.x)), vec2<u32>(u_input.b, var_6) & vec2<u32>(91967u, var_0.b.a.x)) & ~4294967295u, 39375u));
}

