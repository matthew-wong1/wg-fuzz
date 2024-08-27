struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>) -> bool {
    var var_0 = Struct_5(Struct_1(~max(firstTrailingBit(vec3<i32>(u_input.a.x, 6248i, -3534i)), u_input.a >> (vec3<u32>(1u, 0u, 24141u) % vec3<u32>(32u))), !(!(!vec4<bool>(arg_0, arg_0, arg_0, true))), select(select(select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, true, false), arg_0), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0)), select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, arg_0))), select(!vec3<bool>(false, false, arg_0), vec3<bool>(true, true, true), false || arg_0), !(!vec3<bool>(arg_0, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(660f)) + _wgslsmith_f_op_f32(1092f * 582f)), -1323f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1581f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1826f, 788f)) - -337f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-904f * -914f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -159f))))), Struct_1(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 65619i, 1i), vec3<i32>(26549i, -21959i, 62319i)) ^ vec3<i32>(u_input.a.x, -2147483647i, 1i), vec3<i32>(u_input.a.x << (96195u % 32u), -18356i, u_input.a.x), all(vec4<bool>(true, false, arg_0, arg_0))), select(select(!vec4<bool>(false, arg_0, arg_0, true), !vec4<bool>(false, arg_0, true, false), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)), vec4<bool>(select(false, arg_0, true), all(vec3<bool>(arg_0, false, true)), true, true), !(!vec4<bool>(true, true, arg_0, false))), select(vec3<bool>(arg_0 || true, arg_0, all(vec3<bool>(true, true, arg_0))), select(!vec3<bool>(true, arg_0, false), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, true)), true), !select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, false), arg_0)), -322f, -131f), ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(41662u, 0u, 0u), arg_2))), Struct_3(arg_2));
    var var_1 = Struct_1(abs(vec3<i32>(_wgslsmith_mod_i32(max(0i, 5554i), 1i << (u_input.c % 32u)), u_input.a.x, u_input.a.x)), vec4<bool>(!all(vec4<bool>(var_0.a.c.x, arg_0, arg_0, true)) || all(vec3<bool>(arg_0, true, false)), all(select(!var_0.c.b, select(var_0.c.b, var_0.a.b, true), !vec4<bool>(var_0.a.b.x, false, true, arg_0))), true && arg_0, var_0.c.d > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.d * 1218f)))), vec3<bool>(false, arg_0, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.d) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.d, 868f)) * _wgslsmith_f_op_f32(-891f + var_0.b))), var_0.b);
    var_1 = Struct_1(~abs(-min(u_input.a, vec3<i32>(var_0.c.a.x, var_1.a.x, 2147483647i))), var_0.a.b, var_1.b.xxy, var_1.e, 1f);
    var_0 = Struct_5(Struct_1(vec3<i32>(firstTrailingBit(var_0.c.a.x) << (_wgslsmith_clamp_u32(var_0.e.a.x, u_input.d, arg_2.x) % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(21913i, var_1.a.x), u_input.a.x), -2147483647i), !vec4<bool>(arg_0, any(var_1.c.yy), select(true, false, true), arg_0), vec3<bool>(false, all(select(var_0.a.b.xxz, var_1.b.xww, vec3<bool>(var_1.b.x, true, arg_0))), _wgslsmith_mult_u32(24914u, var_0.e.a.x) > arg_1.x), 681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1663f * var_1.e)))), -1256f, var_0.c, arg_2, var_0.e);
    var_0 = Struct_5(Struct_1(var_1.a, vec4<bool>(false, !var_1.b.x, true, true), !(!(!var_0.a.c)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.e)))), var_1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - var_0.a.e), _wgslsmith_f_op_f32(step(var_1.e, var_1.e))))) - 1413f), var_0.a, ~(~(arg_2 | var_0.e.a)), var_0.e);
    return true;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_1(vec3<i32>(~(-max(u_input.a.x, arg_1.c.a.x)), _wgslsmith_dot_vec2_i32(arg_0.d.b.a.yx, max(vec2<i32>(648i, u_input.a.x) << (arg_0.d.d.zx % vec2<u32>(32u)), vec2<i32>(u_input.a.x, u_input.a.x))), arg_1.a.a.x), select(select(select(arg_1.c.b, vec4<bool>(arg_1.a.b.x, arg_1.c.c.x, arg_0.d.a, arg_0.a), arg_0.d.c.a.x != arg_0.d.c.a.x), !(!vec4<bool>(arg_0.a, arg_1.a.b.x, arg_1.a.b.x, false)), !func_3(arg_1.a.c.x, vec2<u32>(4294967295u, 1u), arg_1.e.a)), vec4<bool>(func_3(true, countOneBits(arg_0.c.a.xz), vec3<u32>(arg_0.c.a.x, arg_1.e.a.x, 3343u)), false, true, select(u_input.a.x >= u_input.a.x, true, true)), select(select(!arg_0.d.c.b, arg_0.d.c.b, select(vec4<bool>(true, true, arg_0.a, arg_1.a.c.x), vec4<bool>(arg_0.d.c.b.x, true, false, true), arg_0.d.b.b)), select(select(arg_1.a.b, arg_1.c.b, arg_0.a), select(vec4<bool>(arg_0.d.c.b.x, false, false, arg_0.d.b.b.x), arg_1.a.b, arg_0.a), false), select(true, false, arg_0.a) && !arg_0.a)), !vec3<bool>(arg_0.d.b.c.x, (u_input.d << (4294967295u % 32u)) > _wgslsmith_mod_u32(57150u, 73078u), arg_1.c.c.x & false), _wgslsmith_f_op_f32(round(-2298f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(258f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 + arg_2), -1895f))) * arg_1.a.e));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2), 1088f, -1041f);
    let var_2 = Struct_2(arg_0.d.b.c.x, Struct_1(vec3<i32>(~_wgslsmith_div_i32(u_input.a.x, arg_1.c.a.x), arg_1.a.a.x, 2147483647i), vec4<bool>(any(select(vec3<bool>(var_0.b.x, false, arg_1.c.c.x), vec3<bool>(true, false, true), false)), false, !arg_0.a, true), !(!arg_0.d.c.b.yzx), arg_2, _wgslsmith_f_op_f32(trunc(arg_2))), Struct_1(firstLeadingBit(select(-vec3<i32>(28332i, 1i, arg_0.d.c.a.x), var_0.a, select(arg_0.d.c.b.wyw, vec3<bool>(var_0.b.x, arg_0.a, arg_1.c.b.x), true))), select(!(!arg_0.d.b.b), vec4<bool>(false, arg_0.a && arg_1.c.c.x, true | arg_0.a, true), !(var_0.a.x < arg_0.d.c.a.x)), !vec3<bool>(false, arg_1.a.c.x, true), _wgslsmith_f_op_f32(floor(arg_0.d.c.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1260f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -352f)))), vec3<u32>(abs(firstTrailingBit(arg_0.c.a.x)) & 5585u, 24422u, ~(~1u)));
    let var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(44205u, arg_0.b, 0u), var_2.d)), _wgslsmith_add_u32(abs(var_2.d.x), ~4294967295u)), vec3<u32>(1u, ~arg_1.e.a.x, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_add_u32(5283u, arg_1.e.a.x)), ~1u)));
    let var_4 = arg_0.d.b.c.x;
    return !select(vec4<bool>(false, var_4, var_3 <= arg_1.e.a.x, any(!vec2<bool>(true, arg_0.a))), select(select(!vec4<bool>(false, true, true, var_2.a), arg_0.d.b.b, vec4<bool>(false, true, arg_1.a.b.x, var_0.b.x)), select(vec4<bool>(var_4, true, true, var_0.b.x), !arg_0.d.c.b, true), arg_1.a.c.x), select(vec4<bool>(true, var_0.b.x, var_2.c.b.x, any(vec3<bool>(var_2.a, var_0.c.x, true))), select(select(arg_1.c.b, var_2.b.b, var_2.a), vec4<bool>(false, arg_0.a, var_4, false), !vec4<bool>(arg_1.a.b.x, arg_1.a.c.x, arg_0.a, var_2.a)), select(vec4<bool>(var_2.c.b.x, false, var_4, var_0.c.x), var_2.c.b, arg_1.c.c.x)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(abs(vec3<u32>(_wgslsmith_add_u32(~u_input.d, ~47839u), u_input.d, _wgslsmith_clamp_u32(4294967295u >> (1u % 32u), 72497u, firstTrailingBit(0u)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(-463f)) >= _wgslsmith_f_op_f32(round(1284f)), Struct_1(countOneBits(-u_input.a), func_4(Struct_4(func_3(true, vec2<u32>(20294u, 4294967295u), var_0.a), 1u, var_0, Struct_2(false, Struct_1(u_input.a, vec4<bool>(false, false, false, true), vec3<bool>(true, true, false), 1006f, 562f), Struct_1(u_input.a, vec4<bool>(false, true, false, false), vec3<bool>(false, false, false), -1321f, -775f), vec3<u32>(u_input.d, 1u, 16900u))), Struct_5(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 54009i), vec4<bool>(false, true, false, true), vec3<bool>(false, true, false), -529f, 409f), -1867f, Struct_1(u_input.a, vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), -120f, -458f), u_input.b.wyz, Struct_3(u_input.b.zwz)), -1676f), vec3<bool>(func_3(true, _wgslsmith_mod_vec2_u32(var_0.a.xx, var_0.a.yy), vec3<u32>(var_0.a.x, 40244u, 66420u) & u_input.b.xww), select(false, true, true), true), -1000f, -1075f), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 31731i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -24377i)), u_input.a.x & 1i, ~u_input.a.x), u_input.a >> ((vec3<u32>(var_0.a.x, u_input.b.x, var_0.a.x) ^ var_0.a) % vec3<u32>(32u)), ~select(u_input.a, u_input.a, vec3<bool>(true, true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))), vec3<bool>(true, all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(min(-1109f, 1628f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-2082f, -1943f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-827f, 1629f)))))), var_0.a);
    var var_2 = 140f;
    var var_3 = reverseBits(countOneBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.d.x, 920u), 1u), 4294967295u)));
    var_1 = Struct_2(var_1.c.c.x, Struct_1(~reverseBits(var_1.b.a ^ vec3<i32>(-1i, 3057i, 2147483647i)), var_1.b.b, vec3<bool>(var_1.a, true, !(-780f == var_1.c.e)), var_1.b.d, _wgslsmith_f_op_f32(var_1.b.d - -1119f)), Struct_1(select(~vec3<i32>(1i, var_1.c.a.x, 24620i), u_input.a, var_1.c.a.x >= u_input.a.x) << (var_0.a % vec3<u32>(32u)), var_1.b.b, vec3<bool>(false, var_1.a, _wgslsmith_sub_i32(-2147483647i, u_input.a.x) <= var_1.c.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1579f, var_1.c.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.d + var_1.b.e)))), 506f), ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(18626u, 0u, var_1.d.x), ~vec3<u32>(var_1.d.x, 1u, 4294967295u))));
    return Struct_4(true, _wgslsmith_mod_u32(~reverseBits(var_1.d.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(28620u, 61888u, u_input.c, 48550u), vec4<u32>(var_1.d.x, 4294967295u, var_0.a.x, var_0.a.x)), _wgslsmith_dot_vec4_u32(select(u_input.b, u_input.b, vec4<bool>(var_1.b.c.x, false, var_1.c.b.x, var_1.b.b.x)), u_input.b), _wgslsmith_sub_u32(58425u, _wgslsmith_clamp_u32(u_input.b.x, var_1.d.x, 39822u)))), Struct_3(vec3<u32>(1u, countOneBits(firstTrailingBit(var_1.d.x)), var_0.a.x)), Struct_2(all(func_4(Struct_4(var_1.a, u_input.d, Struct_3(var_0.a), Struct_2(var_1.c.c.x, var_1.c, var_1.b, u_input.b.xyx)), Struct_5(Struct_1(u_input.a, var_1.b.b, vec3<bool>(var_1.a, true, true), 268f, var_1.c.e), -1255f, var_1.c, var_0.a, Struct_3(var_0.a)), _wgslsmith_f_op_f32(sign(var_1.b.e))).ww), Struct_1(select(vec3<i32>(var_1.b.a.x, u_input.a.x, 1i), abs(vec3<i32>(-25480i, -57710i, u_input.a.x)), var_1.c.c.x), vec4<bool>(true, 0i != var_1.b.a.x, true, var_1.a & var_1.b.c.x), var_1.c.c, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.e, 838f), _wgslsmith_div_f32(var_1.b.e, -598f)), 2819f), Struct_1(vec3<i32>(min(u_input.a.x, 2147483647i), 9457i ^ var_1.b.a.x, -var_1.c.a.x), !func_4(Struct_4(true, 0u, var_0, Struct_2(true, Struct_1(u_input.a, var_1.c.b, var_1.b.b.zwx, var_1.b.e, 459f), Struct_1(vec3<i32>(1i, u_input.a.x, u_input.a.x), var_1.b.b, var_1.c.c, var_1.b.e, -1758f), vec3<u32>(u_input.b.x, u_input.c, 1u))), Struct_5(Struct_1(u_input.a, vec4<bool>(false, var_1.b.b.x, var_1.a, var_1.b.b.x), var_1.b.b.zyw, var_1.b.e, 212f), -322f, var_1.c, var_0.a, Struct_3(u_input.b.zzy)), var_1.c.d), !(!vec3<bool>(false, true, var_1.a)), -814f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1057f - var_1.b.e))), countOneBits(vec3<u32>(1u >> (u_input.d % 32u), ~u_input.b.x, 0u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> bool {
    var var_0 = func_2();
    let var_1 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_sub_i32(2147483647i, 0i), countOneBits(arg_1.a.x), arg_1.a.x << (arg_0.x % 32u)), select(func_2().d.c.b, !func_2().d.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1311f)), 604f) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d.c.e)))), !(!vec3<bool>(select(arg_1.b.x, arg_1.b.x, var_0.d.b.c.x), true, all(var_0.d.b.c.zy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))) - arg_2.x), func_2().d.c.d);
    var var_2 = var_1.a.x;
    return false | (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.d.x, var_0.b), ~vec2<u32>(arg_0.x, 0u)), arg_0.x) < arg_0.x);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = 0i;
    var_0 = 39290i;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(arg_2.zyz))));
    var var_2 = func_2();
    let var_3 = var_2.d.c.a.xy;
    return Struct_4(true, var_2.c.a.x, Struct_3(vec3<u32>(534u, countOneBits(~0u), 0u)), func_2().d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.ww;
    var var_1 = func_5(~select(var_0, ~vec2<u32>(var_0.x, u_input.c) | vec2<u32>(45844u, 85890u), true), Struct_5(Struct_1(-_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 1i, -41197i), vec3<i32>(u_input.a.x, 46523i, u_input.a.x)), vec4<bool>(true, func_1(vec4<u32>(u_input.d, var_0.x, 1u, var_0.x), Struct_1(vec3<i32>(u_input.a.x, -3167i, -15149i), vec4<bool>(true, true, true, false), vec3<bool>(true, false, false), 505f, -1000f), vec4<f32>(874f, -412f, -1665f, 585f), 22963i), all(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f - 848f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2341f * 664f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(156f, 403f))))), Struct_1(vec3<i32>(35989i, max(u_input.a.x, u_input.a.x), u_input.a.x ^ 24672i), func_2().d.b.b, !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), _wgslsmith_div_f32(-450f, 776f), _wgslsmith_div_f32(-2392f, _wgslsmith_f_op_f32(f32(-1f) * -705f))), u_input.b.zzz, Struct_3(max(vec3<u32>(13785u, var_0.x, u_input.c), ~u_input.b.zwy))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1254f, -1584f, -1460f, 720f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1055f, 2328f, 1237f, -1000f) * vec4<f32>(2316f, 1100f, 221f, -524f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(465f, 1787f, 295f, -1000f)))))));
    let var_2 = _wgslsmith_mult_u32(~(~func_5(vec2<u32>(u_input.d, u_input.c), Struct_5(var_1.d.c, 1000f, Struct_1(var_1.d.b.a, vec4<bool>(var_1.a, true, true, true), vec3<bool>(true, true, false), var_1.d.b.e, var_1.d.b.d), vec3<u32>(4294967295u, u_input.c, 25363u), var_1.c), vec4<f32>(var_1.d.c.e, var_1.d.b.e, var_1.d.b.e, 182f)).d.d.x << (var_0.x % 32u)), ~59342u & min(79012u & ~var_1.d.d.x, abs(var_0.x)));
    var var_3 = ~1u;
    var_3 = select(reverseBits(var_0.x), ~var_1.c.a.x, var_1.d.b.e < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.b.e, var_1.d.b.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.b.d) - _wgslsmith_f_op_f32(-var_1.d.c.d)), var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.d.x, select(31149i, i32(-1i) * -20498i, !var_1.a), -var_1.d.b.a.x);
}

