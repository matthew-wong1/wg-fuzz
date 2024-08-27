struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_3,
    d: vec4<bool>,
    e: i32,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> bool {
    let var_0 = -(-2147483647i & _wgslsmith_clamp_i32(~54411i, abs(_wgslsmith_mult_i32(arg_0.d.d, u_input.d.x)), -1i));
    var var_1 = vec4<u32>(31396u, u_input.c, _wgslsmith_clamp_u32(u_input.c, 1u, firstLeadingBit(~_wgslsmith_clamp_u32(0u, arg_0.b.x, 0u))), arg_2);
    var var_2 = -35003i;
    var var_3 = vec4<i32>(u_input.a.x, max(~select(var_0, var_0, true), -arg_0.e.e), ~(-36941i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, var_0), vec3<i32>(u_input.a.x, arg_0.d.d, 80825i))), arg_0.d.d) >> (_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 0u, 45016u), vec4<u32>(u_input.b, arg_0.b.x, var_1.x, arg_0.b.x))), 9948u, firstLeadingBit(1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, 0u), ~arg_0.e.c.c.c)), reverseBits(vec4<u32>(min(31286u, arg_0.e.a.x), abs(u_input.c), min(arg_0.e.b.c, arg_0.d.c), var_1.x))) % vec4<u32>(32u));
    let var_4 = Struct_4(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, arg_0.e.b.c, arg_2), 57611u), ~arg_2), 4294967295u, (select(u_input.c, 12665u, false) >> (_wgslsmith_sub_u32(arg_2, var_1.x) % 32u)) << (_wgslsmith_div_u32(reverseBits(var_1.x), var_1.x) % 32u)), arg_0.d, Struct_3(arg_0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, _wgslsmith_f_op_f32(floor(-449f)))), arg_0.d, arg_0.e.c.d, -vec4<i32>(countOneBits(arg_0.e.b.d), var_3.x, _wgslsmith_clamp_i32(59501i, u_input.a.x, var_0), var_3.x & var_3.x)), select(arg_0.e.d, select(vec4<bool>(arg_1.x, false & arg_0.a, all(vec3<bool>(arg_0.a, true, false)), arg_0.a), vec4<bool>(any(vec3<bool>(arg_1.x, arg_1.x, false)), arg_0.d.b, arg_1.x && true, true), all(vec2<bool>(false, false))), arg_0.e.d), _wgslsmith_mod_i32(-24883i, ~1i));
    return var_4.b.b;
}

fn func_2() -> vec4<bool> {
    var var_0 = select(select(vec3<bool>(!func_3(Struct_5(true, vec3<u32>(u_input.b, 32183u, u_input.c), false, Struct_1(-1828f, true, u_input.c, -36547i), Struct_4(vec3<u32>(99711u, 76817u, u_input.c), Struct_1(-506f, false, u_input.b, u_input.a.x), Struct_3(Struct_1(1448f, false, 71148u, -2147483647i), vec2<f32>(1351f, 907f), Struct_1(948f, true, 32999u, 2147483647i), Struct_2(vec4<f32>(-774f, -1577f, -491f, 1923f), vec2<f32>(-275f, 1448f), Struct_1(1000f, true, 28886u, u_input.d.x), vec2<u32>(0u, u_input.c)), vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, u_input.a.x)), vec4<bool>(false, true, true, true), u_input.d.x)), vec2<bool>(false, true), u_input.c, -1184f), true, true), vec3<bool>(false, true, true), !vec3<bool>(all(vec2<bool>(true, true)), true, all(vec3<bool>(true, false, true)))), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), all(vec2<bool>(true, true)))), select(vec3<bool>(!all(vec2<bool>(false, true)), !(-2147483647i != u_input.d.x), false), vec3<bool>(!select(true, false, true), _wgslsmith_f_op_f32(round(-514f)) >= _wgslsmith_div_f32(-243f, 1250f), false), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var_0 = select(select(vec3<bool>(var_0.x | (1u < u_input.c), any(var_0.zx), u_input.b <= (u_input.c | u_input.c)), !vec3<bool>(u_input.d.x > u_input.a.x, true, !var_0.x), any(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), select(!select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), var_0.x), vec3<bool>(var_0.x, false, var_0.x), !var_0.x), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), true), !vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(true, !var_0.x, func_3(Struct_5(false, vec3<u32>(47294u, u_input.c, u_input.b), true, Struct_1(902f, false, u_input.b, u_input.d.x), Struct_4(vec3<u32>(u_input.b, u_input.b, u_input.c), Struct_1(-275f, var_0.x, 1u, -2580i), Struct_3(Struct_1(-125f, var_0.x, 5333u, 1i), vec2<f32>(-144f, -1754f), Struct_1(260f, true, 5554u, 561i), Struct_2(vec4<f32>(1000f, -578f, -105f, -138f), vec2<f32>(-1121f, -1244f), Struct_1(-375f, var_0.x, 7461u, u_input.d.x), vec2<u32>(23728u, u_input.c)), vec4<i32>(u_input.d.x, -1i, u_input.d.x, -41403i)), vec4<bool>(true, var_0.x, false, false), -15115i)), var_0.zz, u_input.c, -1000f)), 0i < u_input.a.x), func_3(Struct_5(var_0.x, vec3<u32>(u_input.c, 62941u, 1u) << (vec3<u32>(u_input.c, 7191u, u_input.b) % vec3<u32>(32u)), 14128u >= u_input.c, Struct_1(-1451f, true, u_input.c, u_input.d.x), Struct_4(vec3<u32>(u_input.c, 17310u, u_input.c), Struct_1(-1062f, var_0.x, 47514u, 3521i), Struct_3(Struct_1(593f, true, u_input.c, u_input.d.x), vec2<f32>(-2730f, -656f), Struct_1(-1998f, var_0.x, u_input.b, 29188i), Struct_2(vec4<f32>(-1000f, -978f, -727f, -1580f), vec2<f32>(889f, 426f), Struct_1(-2501f, false, u_input.b, u_input.d.x), vec2<u32>(u_input.c, u_input.c)), vec4<i32>(0i, 831i, 31600i, u_input.d.x)), vec4<bool>(true, false, false, var_0.x), 2147483647i)), select(!vec2<bool>(var_0.x, false), !var_0.yy, false), 4294967295u, 1000f)), var_0.x);
    let var_1 = Struct_4(max(~vec3<u32>(94558u, 58813u, 0u), select(select(vec3<u32>(u_input.c, 4294967295u, u_input.b), vec3<u32>(0u, 6507u, u_input.c), false), vec3<u32>(40794u, u_input.b, 15189u) & vec3<u32>(10408u, 4294967295u, u_input.b), !vec3<bool>(var_0.x, var_0.x, false))) >> (~(~max(vec3<u32>(u_input.c, 25803u, u_input.b), vec3<u32>(u_input.b, 66637u, u_input.b))) % vec3<u32>(32u)), Struct_1(-1000f, true, countOneBits(abs(~u_input.b)), u_input.d.x), Struct_3(Struct_1(_wgslsmith_div_f32(1007f, _wgslsmith_f_op_f32(-140f - -1900f)), true, u_input.b >> (_wgslsmith_clamp_u32(23924u, 25623u, u_input.b) % 32u), ~_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1846f, _wgslsmith_f_op_f32(1006f - -454f))), Struct_1(_wgslsmith_f_op_f32(sign(-499f)), true, ~u_input.b, u_input.a.x), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1995f, 1000f, -380f, 1980f), vec4<f32>(1279f, 925f, 592f, -1117f), var_0.x)), vec4<f32>(1f, 1f, 1f, 1f), any(vec3<bool>(false, true, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1139f, 691f) * vec2<f32>(-1000f, -677f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1231f, -449f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1306f), var_0.x, ~u_input.c, u_input.d.x << (u_input.c % 32u)), ~vec2<u32>(4294967295u, 4294967295u)), vec4<i32>(0i, -18633i, -20652i, _wgslsmith_clamp_i32(1i, 2147483647i, u_input.d.x) | ~u_input.d.x)), !(!vec4<bool>(!var_0.x, var_0.x, true, true)), u_input.a.x);
    let var_2 = Struct_5(!any(!select(vec3<bool>(true, false, var_1.d.x), vec3<bool>(var_1.b.b, true, var_1.b.b), true)), (var_1.a ^ _wgslsmith_div_vec3_u32(var_1.a, var_1.a)) >> (((_wgslsmith_div_vec3_u32(var_1.a, vec3<u32>(26158u, var_1.a.x, u_input.c)) ^ ~var_1.a) << (var_1.a % vec3<u32>(32u))) % vec3<u32>(32u)), all(vec2<bool>(true, select(true, var_1.d.x, true))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -406f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c.d.b.x - var_1.b.a)))), false, ~0u, u_input.a.x), Struct_4(~var_1.a, Struct_1(var_1.c.c.a, any(select(var_0.yz, vec2<bool>(true, true), var_0.x)), var_1.a.x, _wgslsmith_sub_i32(firstLeadingBit(14089i), firstLeadingBit(u_input.a.x))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-var_1.b.a), var_1.c.a.b, u_input.c, 2147483647i & var_1.c.d.c.d), _wgslsmith_f_op_vec2_f32(select(var_1.c.b, var_1.c.b, var_1.d.x)), var_1.b, var_1.c.d, vec4<i32>(-36430i, -50330i & u_input.a.x, ~(-2147483647i), max(2147483647i, var_1.e))), vec4<bool>(all(vec2<bool>(false, var_1.d.x)) || true, false, var_0.x, select(var_1.b.a <= var_1.c.b.x, !var_1.c.c.b, var_0.x & var_0.x)), u_input.a.x));
    let var_3 = 1406f;
    return vec4<bool>(func_3(var_2, select(!select(var_2.e.d.yz, var_1.d.yx, true), var_2.e.d.yx, var_1.c.a.b & false), ~(~max(var_2.d.c, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.d.a), _wgslsmith_f_op_f32(f32(-1f) * -575f))))), func_3(Struct_5(var_0.x, countOneBits(vec3<u32>(var_1.c.d.d.x, 0u, var_1.c.c.c)), true & (var_0.x || var_2.d.b), var_1.b, Struct_4(_wgslsmith_div_vec3_u32(var_2.e.a, vec3<u32>(var_2.d.c, var_2.e.a.x, u_input.b)), Struct_1(116f, false, u_input.b, -2147483647i), var_1.c, var_1.d, ~1i)), vec2<bool>(!any(vec2<bool>(false, false)), true), min(abs(~var_1.c.a.c), 0u), -103f), var_2.e.b.b, false);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = select(!select(!(!vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)), select(!vec4<bool>(true, true, false, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), true), !func_2()), !vec4<bool>(_wgslsmith_mult_i32(u_input.a.x, u_input.d.x) <= u_input.a.x, all(arg_3), _wgslsmith_f_op_f32(arg_0 + arg_0) == -205f, arg_3.x), func_2());
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f)) * arg_0)) < _wgslsmith_f_op_f32(sign(-3025f));
    let var_2 = Struct_3(Struct_1(-1097f, -420f != _wgslsmith_f_op_f32(trunc(-453f)), 1u, u_input.d.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1511f - 1364f), _wgslsmith_div_f32(-968f, arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1605f, arg_2.x), arg_2.wy)))), Struct_1(-869f, !arg_3.x, 1u, ~(-arg_1.x | _wgslsmith_div_i32(-2147483647i, u_input.a.x))), Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 253f), arg_2.yx, select(select(arg_3.zx, vec2<bool>(true, arg_3.x), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(arg_3.x, arg_3.x), true))), Struct_1(arg_0, true, ~(~u_input.c), select(u_input.a.x, arg_1.x | 5679i, !var_0.x)), max(max(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(31511u, u_input.b) | vec2<u32>(u_input.b, u_input.c)) & _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.b, u_input.b))), ~vec4<i32>(-27819i, 0i, _wgslsmith_div_i32(0i, -1i), 1i));
    var var_3 = Struct_3(var_2.d.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-499f, 934f), var_2.b)) * vec2<f32>(var_2.c.a, -339f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_2.b, var_2.d.a.xx)))), arg_2.zx)), var_2.a, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1722f, arg_2.x, arg_2.x, _wgslsmith_f_op_f32(-var_2.d.c.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-690f * 1263f), _wgslsmith_f_op_f32(floor(-1265f))) - vec2<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + 1281f))), Struct_1(_wgslsmith_div_f32(var_2.b.x, -621f), true, u_input.c, abs(_wgslsmith_add_i32(0i, arg_1.x))), (vec2<u32>(1u, var_2.a.c) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(4294967295u, 4294967295u))) | select(firstTrailingBit(vec2<u32>(35619u, var_2.c.c)), var_2.d.d, !var_2.a.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~select(var_2.e, vec4<i32>(1i, arg_1.x, u_input.d.x, 16172i), var_0), vec4<i32>(_wgslsmith_mult_i32(-54567i, var_2.d.c.d), arg_1.x, u_input.d.x, -1i)), vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, -2147483647i), u_input.d.x, -66132i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(arg_1.x, -2147483647i)), countOneBits(var_2.a.d)))));
    let var_4 = var_2.d;
    return var_2.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = -1095f;
    var var_1 = -2147483647i << (countOneBits(reverseBits(arg_3.c.c)) % 32u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-854f * arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1054f))))));
    let var_3 = Struct_5(!all(!func_2().ywy), _wgslsmith_mod_vec3_u32(vec3<u32>(~(~4294967295u), u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(25438u, 1u, 17763u, arg_3.c.c), vec4<u32>(arg_1, arg_3.c.c, arg_3.c.c, 33668u)) | 1u), ~vec3<u32>(arg_3.d.x, 33594u, ~24748u)), arg_3.c.b, arg_3.c, Struct_4(select(vec3<u32>(u_input.b, abs(47401u), abs(u_input.b)), select(~vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 31709u, arg_1), arg_3.c.b), !arg_3.c.b & arg_3.c.b), arg_3.c, Struct_3(func_1(_wgslsmith_f_op_f32(round(var_2.x)), firstLeadingBit(vec4<i32>(u_input.a.x, 1i, arg_3.c.d, u_input.d.x)), arg_3.a, vec3<bool>(true, true, true)).c, vec2<f32>(_wgslsmith_f_op_f32(arg_2.x + var_0), _wgslsmith_f_op_f32(round(1000f))), arg_3.c, arg_3, (vec4<i32>(19839i, arg_3.c.d, -2147483647i, arg_3.c.d) & vec4<i32>(u_input.d.x, 0i, u_input.d.x, -89377i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, u_input.c, arg_3.c.c), vec4<u32>(4294967295u, arg_1, 49189u, u_input.b)) % vec4<u32>(32u))), vec4<bool>(-296f <= _wgslsmith_f_op_f32(arg_0.x + arg_2.x), !arg_3.c.b, _wgslsmith_f_op_f32(492f + arg_3.b.x) <= var_0, any(vec2<bool>(false, arg_3.c.b))), arg_3.c.d << (_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 4294967295u), u_input.c) % 32u)));
    var_1 = -2147483647i;
    return _wgslsmith_sub_u32(31603u, var_3.e.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_u32(1u, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 972f) - vec2<f32>(384f, -735f)), 1937u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-288f, -600f, 2322f, 542f))), func_1(-763f, vec4<i32>(u_input.d.x, u_input.d.x, -152i, u_input.a.x), vec4<f32>(-301f, 165f, -702f, 1329f), vec3<bool>(true, false, true))) << (~u_input.c % 32u));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(i32(-1i) * -1i, countOneBits(2147483647i), ~11871i, ~43731i), select(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, u_input.d.x, u_input.a.x, u_input.d.x), vec4<i32>(79094i, -2147483647i, 0i, u_input.d.x) | vec4<i32>(1i, 2147483647i, u_input.d.x, u_input.a.x), vec4<i32>(u_input.a.x, 35634i, u_input.d.x, -2147483647i) << (vec4<u32>(101003u, 0u, 10752u, u_input.b) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(~21708i, countOneBits(u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, -1i), u_input.d.x), vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(-2147483647i, -1i), 30848i, _wgslsmith_clamp_i32(1i, -2147483647i, -23510i)), countOneBits(vec4<i32>(-17932i, u_input.a.x, u_input.a.x, 4462i))), vec4<bool>(all(vec4<bool>(true, false, false, false)), func_1(_wgslsmith_f_op_f32(step(2606f, 167f)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.d.x, u_input.d.x, 2913i), vec4<i32>(-24424i, 32609i, 0i, u_input.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-432f, -491f, -1000f, -176f)), func_2().xzy).c.b, func_1(-832f, vec4<i32>(u_input.a.x, 1i, 3915i, -47167i), vec4<f32>(1530f, 166f, 537f, 198f), vec3<bool>(true, false, true)).c.b & func_3(Struct_5(true, vec3<u32>(var_0, u_input.c, 0u), true, Struct_1(1325f, true, var_0, 1i), Struct_4(vec3<u32>(u_input.c, 43677u, u_input.c), Struct_1(463f, true, u_input.c, u_input.d.x), Struct_3(Struct_1(-1133f, false, var_0, -6469i), vec2<f32>(-1470f, 1594f), Struct_1(-174f, false, var_0, -2147483647i), Struct_2(vec4<f32>(1210f, -1000f, -150f, 199f), vec2<f32>(1484f, 1364f), Struct_1(204f, true, 1u, 0i), vec2<u32>(u_input.b, 0u)), vec4<i32>(-25058i, 11247i, u_input.a.x, u_input.d.x)), vec4<bool>(true, true, false, false), 16188i)), vec2<bool>(true, false), u_input.c, 887f), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(434f, -1279f), _wgslsmith_f_op_f32(726f * -437f), -445f, -2194f))) * vec4<f32>(416f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(floor(841f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(495f))))))));
    var_2 = vec4<f32>(-1402f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_2.x)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.x, -443f)))) + func_1(_wgslsmith_f_op_f32(f32(-1f) * -2886f), -vec4<i32>(0i, -2147483647i, u_input.a.x, -60159i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, 711f))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), func_2().yxw, true)).b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) * func_1(_wgslsmith_f_op_f32(f32(-1f) * -508f), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(2147483647i, var_1.x, var_1.x)), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, var_1.x, var_1.x, var_1.x), var_1), u_input.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, -1728f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 2651f, 1000f, 462f))), vec3<bool>(any(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, false)), false)).b.x), -1120f);
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), 779f, var_2.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~(~_wgslsmith_mod_u32(var_0 & u_input.c, ~39169u)), -1797f, _wgslsmith_add_vec2_u32(func_1(var_2.x, select(firstLeadingBit(var_1), var_1, vec4<bool>(false, false, true, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -518f, var_2.x, 682f), vec4<f32>(var_2.x, -1194f, var_2.x, -589f), false)))), vec3<bool>(true, true, all(vec2<bool>(true, false)))).d, ~vec2<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.c, 0u), var_0 & 4294967295u)));
}

