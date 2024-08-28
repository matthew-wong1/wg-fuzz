struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<i32>) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1819f)))) + _wgslsmith_f_op_f32(sign(-440f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-309f)))));
    let var_1 = 1026f;
    var var_2 = vec2<i32>(1i, arg_3.x);
    let var_3 = Struct_1(select(vec4<bool>(all(!arg_1), false, arg_1.x, !(!arg_1.x)), !vec4<bool>(arg_1.x || arg_1.x, true, true, true), arg_1.x), true, max(_wgslsmith_add_vec3_i32(vec3<i32>(~var_2.x, 47826i, firstLeadingBit(1i)), arg_3), _wgslsmith_sub_vec3_i32(arg_3, arg_3)));
    let var_4 = !select(!(!(!vec2<bool>(true, var_3.b))), !select(vec2<bool>(arg_1.x, var_3.b), !arg_1.xz, vec2<bool>(arg_1.x, false)), select(vec2<bool>(false, var_3.a.x), vec2<bool>(false, true), ~arg_0.x > 1u));
    return true;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = ~(~(~arg_0.x));
    let var_1 = Struct_1(vec4<bool>(any(vec3<bool>(true, true, true)) || any(vec4<bool>(true, true, true, true)), false, true, true), func_3(vec2<u32>(~firstLeadingBit(44179u), 29731u), vec3<bool>(true | any(vec3<bool>(false, false, false)), true, true), 1i | u_input.a, ~(~(-vec3<i32>(u_input.a, u_input.a, u_input.a)))), vec3<i32>(u_input.a, _wgslsmith_mod_i32(56525i, ~(~39385i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(firstTrailingBit(2147483647i), abs(u_input.a)), u_input.a, 2147483647i)));
    var var_2 = vec4<bool>(var_1.b, all(vec4<bool>(!var_1.b, any(select(vec3<bool>(true, false, var_1.b), vec3<bool>(false, false, var_1.b), var_1.a.zxw)), var_1.b, !select(var_1.a.x, var_1.a.x, var_1.a.x))), true, !(78857u <= (arg_0.x << (arg_0.x % 32u))) || all(var_1.a.yy));
    return Struct_1(vec4<bool>(true || !(var_1.b & var_1.b), var_2.x, var_1.c.x == min(min(var_1.c.x, var_1.c.x), _wgslsmith_mod_i32(u_input.a, var_1.c.x)), false), 4294967295u < ~(45991u << ((arg_0.x & arg_0.x) % 32u)), abs(var_1.c));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = ~arg_1.c.zx;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(~vec2<i32>(var_0.x, u_input.a), _wgslsmith_mult_vec2_i32(-arg_1.c.xx, vec2<i32>(1i, 1i)))), func_2(countOneBits(vec3<u32>(1u, 51020u, 0u))).c.yy ^ var_1.c.xx, var_1.c.xz ^ vec2<i32>(func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(62076u, 48346u, 14390u), vec3<u32>(34252u, 1u, 4294967295u), vec3<u32>(42155u, 0u, 39754u))).c.x, 0i));
    var var_3 = Struct_2(-725f, Struct_1(func_2(vec3<u32>(1u, 1u, 1u)).a, !var_1.a.x, arg_1.c), ~(~(~firstTrailingBit(28681u))), arg_1);
    var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))), func_2(~select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_3.c, var_3.c), vec3<u32>(var_3.c, 46549u, var_3.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.c, 4294967295u, var_3.c), vec3<u32>(var_3.c, var_3.c, 0u), vec3<u32>(var_3.c, 16769u, 45829u)), var_1.a.yyy)), _wgslsmith_sub_u32(var_3.c ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 9082u, 0u, 1u), vec4<u32>(1u, 727u, 14067u, 0u)), var_3.c), Struct_1(!select(select(vec4<bool>(var_1.a.x, true, false, true), var_3.b.a, var_3.d.a), !var_1.a, select(vec4<bool>(var_3.d.b, var_3.b.b, var_1.b, var_3.b.b), vec4<bool>(arg_1.a.x, var_1.b, true, arg_1.a.x), false)), false || select(true, var_3.d.a.x, 1u >= var_3.c), vec3<i32>(_wgslsmith_mult_i32(-46186i, ~(-1i)), _wgslsmith_dot_vec3_i32(var_1.c, select(var_3.d.c, var_1.c, vec3<bool>(arg_1.a.x, false, false))), 45210i)));
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + var_3.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.a - 1004f), 379f))))), Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-630f * _wgslsmith_f_op_f32(exp2(arg_0.x))))), func_2(~(~vec3<u32>(0u, var_3.c, 0u))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_3.c, 0u, var_3.c, var_3.c) << (vec4<u32>(var_3.c, var_3.c, 41758u, var_3.c) % vec4<u32>(32u))), select(vec4<u32>(var_3.c, 4294967295u, var_3.c, var_3.c), vec4<u32>(var_3.c, 1u, var_3.c, var_3.c), var_1.a)), arg_1), max(select(vec4<u32>(var_3.c >> (var_3.c % 32u), var_3.c, ~var_3.c, _wgslsmith_sub_u32(0u, var_3.c)), vec4<u32>(var_3.c, 53825u, var_3.c, var_3.c), arg_1.b), _wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(6125u, var_3.c, 1u, var_3.c)), countOneBits(vec4<u32>(var_3.c, var_3.c, 68200u, var_3.c)))), 0u);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-101f, arg_0.a.x), var_0.x, _wgslsmith_f_op_f32(step(999f, arg_1.a)), _wgslsmith_f_op_f32(var_0.x + arg_0.a.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(552f, -301f), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(step(arg_1.a, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -869f, -250f, 793f) - vec4<f32>(-643f, 744f, 952f, 337f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_0.b.a, 407f, arg_1.a)))), arg_1.b.b)), arg_1.b.b)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.wx, vec2<f32>(arg_0.a.x, arg_0.a.x), true)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(442f, var_1.x)), 614f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.wx))), vec2<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(min(var_0.x, 496f))), vec2<bool>(false, !arg_1.d.b))));
    let var_2 = ~func_4(_wgslsmith_f_op_vec4_f32(-var_1), Struct_1(func_2(reverseBits(arg_0.c.xyw)).a, true, -(~vec3<i32>(1182i, arg_1.b.c.x, arg_1.b.c.x)))).b.c;
    var var_3 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a - _wgslsmith_f_op_f32(max(-2217f, var_0.x)))), _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(arg_1.a * var_0.x), arg_0.b.b.a.x && arg_1.b.b))), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -838f, _wgslsmith_f_op_f32(var_0.x - 335f), _wgslsmith_f_op_f32(floor(var_0.x)))), Struct_1(!arg_1.d.a, arg_0.b.d.a.x, ~arg_0.b.b.c)).b.d).b.d.a.wyy;
    return func_4(var_1, func_4(var_1, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1))), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, arg_1.a, -1000f, var_1.x), var_1, false)), func_2(vec3<u32>(var_2, 4294967295u, 77195u))).b.d).b.d).b.d).b.d;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_vec3_u32(~(~reverseBits(vec3<u32>(1u, 1u, 36058u))), ~(firstLeadingBit(firstTrailingBit(vec3<u32>(0u, 14928u, arg_2))) & countOneBits(~vec3<u32>(arg_2, arg_2, arg_2))));
    let var_1 = vec4<i32>(countOneBits(min(arg_3.c.x, _wgslsmith_mult_i32(-20587i ^ arg_3.c.x, arg_3.c.x << (var_0.x % 32u)))), ~(-1i), func_2(~var_0).c.x, ~_wgslsmith_dot_vec3_i32(select(reverseBits(vec3<i32>(1i, arg_3.c.x, -1i)), vec3<i32>(2147483647i, u_input.a, -41820i) >> (vec3<u32>(arg_2, 4294967295u, var_0.x) % vec3<u32>(32u)), arg_3.a.wzz), ~(-arg_3.c)));
    let var_2 = vec2<bool>(all(vec2<bool>((arg_3.c.x >= var_1.x) | arg_1, true)), arg_3.b);
    let var_3 = any(arg_3.a.xxy);
    let var_4 = all(vec2<bool>(arg_1, arg_3.a.x));
    return arg_2;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> u32 {
    let var_0 = arg_0;
    var var_1 = vec2<u32>(func_6(!any(!vec3<bool>(true, arg_2.x, true)), all(select(arg_2, arg_2, select(vec2<bool>(true, arg_2.x), arg_2, arg_2.x))), 70999u, func_5(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, -579f, arg_3.x), vec4<f32>(-1016f, arg_3.x, arg_1.x, arg_1.x)), func_2(vec3<u32>(1u, arg_0.x, 4294967295u))), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-356f, arg_1.x, arg_1.x, arg_3.x), vec4<f32>(arg_1.x, -675f, arg_1.x, -469f)), Struct_1(vec4<bool>(true, false, true, false), true, vec3<i32>(-1i, u_input.a, -25791i))).b, vec2<u32>(119088u, var_0.x))), 1785u ^ _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 1u, 51977u, var_0.x) << (vec4<u32>(0u, arg_0.x, var_0.x, var_0.x) % vec4<u32>(32u))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -262f, 715f)), Struct_1(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), arg_2.x, vec3<i32>(41635i, 2147483647i, -10414i))).c));
    let var_2 = firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a, -u_input.a, -u_input.a), abs(-4283i)), min(-u_input.a, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(2147483647i, -2147483647i, u_input.a))))));
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(984f * arg_1.x))) != arg_1.x, true, _wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-972f, -174f, arg_1.x, arg_3.x) + vec4<f32>(740f, -1201f, arg_3.x, arg_3.x)), func_2(arg_0)).b.a) > _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-341f, -983f, 1460f, -575f) + vec4<f32>(arg_3.x, 624f, arg_3.x, arg_1.x)), Struct_1(vec4<bool>(arg_2.x, false, arg_2.x, false), false, vec3<i32>(18962i, -2147483647i, 1i))).a.x + _wgslsmith_f_op_f32(-func_4(vec4<f32>(arg_3.x, arg_1.x, arg_1.x, arg_3.x), Struct_1(vec4<bool>(false, false, arg_2.x, arg_2.x), false, vec3<i32>(-2147483647i, 1i, -18050i))).b.a)));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(~(~vec4<u32>(4294967295u, 0u, var_0.x, 73281u)), vec4<u32>(firstTrailingBit(0u), ~var_0.x, func_4(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -892f), Struct_1(vec4<bool>(arg_2.x, arg_2.x, true, var_3.x), arg_2.x, vec3<i32>(u_input.a, var_2, u_input.a))).b.c, var_1.x), !vec4<bool>(false, true, var_3.x, false)), ~vec4<u32>(var_1.x, var_0.x, var_1.x, 68316u) & vec4<u32>(1u, 0u, var_0.x, min(383u, var_1.x))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 64690u)), 0u, 1u, ~func_1(vec3<u32>(4294967295u, 0u, 17931u), vec3<f32>(-1102f, -724f, 437f), vec2<bool>(false, true), vec3<f32>(-1040f, 960f, 1229f))) >> ((vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(0u, 1u, firstTrailingBit(34955u), _wgslsmith_add_u32(1u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = ~vec4<u32>(_wgslsmith_add_u32(~(~1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(24967u, 1u, 95081u), vec3<u32>(760u, var_0.x, var_0.x)), _wgslsmith_div_u32(var_0.x, var_0.x))), var_0.x, 1u, 1u);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1027f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(976f, -278f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1268f, -349f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-571f * -745f), _wgslsmith_f_op_f32(-1000f + -509f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-287f, 697f), vec2<f32>(-1276f, 1000f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(332f, 1497f) - vec2<f32>(1258f, 913f))))), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1154f) + _wgslsmith_f_op_f32(sign(602f))))), func_2(_wgslsmith_mult_vec3_u32(var_0.zwz, var_0.yyx)), var_0.x, Struct_1(vec4<bool>(true, u_input.a > u_input.a, true, true), select(false, false, false) & (var_0.x >= var_0.x), ~vec3<i32>(u_input.a, -21059i, u_input.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, abs(var_0.x), var_0.x, var_0.x >> (var_0.x % 32u)), ~countOneBits(vec4<u32>(var_0.x, var_0.x, var_0.x, 104131u))) >> (~_wgslsmith_mult_vec4_u32(~vec4<u32>(28873u, var_0.x, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, 0u, var_0.x)) % vec4<u32>(32u)), ~max(1u ^ (var_0.x & var_0.x), ~reverseBits(var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1296f);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1200f, 1707f, func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a, var_1.b.a, -128f, 1000f) * vec4<f32>(var_1.b.a, -1362f, 240f, 840f)))), Struct_1(vec4<bool>(var_1.b.d.b, var_1.b.d.b, var_1.b.b.b, var_1.b.b.a.x), !var_1.b.d.b, var_1.b.b.c)).b.d.b)) + _wgslsmith_f_op_f32(f32(-1f) * -3035f));
    let var_4 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-209f * var_1.a.x) + _wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x))), 710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2365f) * _wgslsmith_f_op_f32(var_1.a.x - -222f)), var_1.a.x) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1049f * 579f))), var_1.b.a, var_1.b.a, 769f)), Struct_1(var_1.b.d.a, var_1.b.b.a.x, var_1.b.d.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c & reverseBits(select(var_4.c, var_1.c | var_1.c, !var_4.b.b.a)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x + 1415f), _wgslsmith_f_op_f32(-270f - var_1.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x * var_1.b.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(511f)))), var_4.a.x, var_1.a.x), firstLeadingBit(var_0.x));
}

