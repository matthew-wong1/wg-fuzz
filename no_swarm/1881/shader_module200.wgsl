struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = u_input.b.x;
    let var_2 = -_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.a.x, ~(-676i))), u_input.b);
    var_1 = abs(select(firstLeadingBit(1i), 71077i, (arg_0.c.x & arg_0.c.x) & !(-264f <= arg_1.x)));
    var var_3 = (firstLeadingBit(-min(vec2<i32>(-29697i, u_input.a.x), u_input.b)) & -var_2) >> (~_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(42434u, u_input.d.x) << (u_input.c % vec2<u32>(32u))), vec2<u32>(arg_2.x, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), u_input.d.zx) & vec2<u32>(u_input.d.x, arg_2.x)) % vec2<u32>(32u));
    return !select(select(!select(vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(true, true, false), vec3<bool>(var_0.c.x, true, true)), !(!vec3<bool>(var_0.c.x, var_0.c.x, false)), vec3<bool>(arg_0.c.x, arg_2.x == var_0.a, arg_0.c.x)), !vec3<bool>(arg_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x && arg_0.c.x);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = !vec4<bool>(arg_2, arg_2, all(select(func_3(Struct_1(0u, arg_0, vec2<bool>(false, true)), vec3<f32>(725f, 643f, -1722f), vec3<u32>(arg_0, u_input.c.x, 50958u)), vec3<bool>(arg_2, arg_2, arg_2), true)), arg_2);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-866f, -1568f, 191f, 764f))))), var_0.x)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-253f + 460f)))), -852f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-320f)))), _wgslsmith_f_op_f32(exp2(1f))));
    var var_2 = func_3(Struct_1(arg_0, ~arg_0, vec2<bool>(any(!vec4<bool>(false, var_0.x, false, var_0.x)), !(49736i > arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1178f, 1000f, 628f)), vec3<u32>(~(~arg_0), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(28451u, 801u, u_input.c.x)), _wgslsmith_div_u32(reverseBits(3978u), arg_0 & u_input.c.x)), u_input.c.x));
    let var_3 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0, countOneBits(select(26769u, u_input.d.x, var_0.x))), abs(u_input.d.x) >> (~u_input.d.x % 32u)), max(_wgslsmith_mod_u32(20179u, ~u_input.d.x) & (1u << (u_input.d.x % 32u)), u_input.c.x), !select(!var_0.wz, vec2<bool>(true, true), u_input.a.x <= min(u_input.b.x, 4109i)));
    var_0 = vec4<bool>(any(vec3<bool>(var_0.x, var_3.c.x, false)), all(select(!(!vec4<bool>(true, var_0.x, var_0.x, var_3.c.x)), !(!vec4<bool>(arg_2, arg_2, true, arg_2)), true)), !all(vec3<bool>(arg_2, false, var_0.x)), true);
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = (~(~func_2(arg_0.b, u_input.b.x, arg_2.x).b) | arg_0.a) & abs(_wgslsmith_dot_vec2_u32(~(vec2<u32>(4294967295u, u_input.d.x) ^ u_input.d.zz), ~select(u_input.d.zy, vec2<u32>(u_input.d.x, 1u), arg_2.x)));
    let var_1 = func_2(~(~(~(~u_input.c.x))), ~(firstLeadingBit(23961i) ^ ((u_input.b.x >> (u_input.c.x % 32u)) & -u_input.a.x)), arg_0.c.x);
    let var_2 = arg_0;
    var var_3 = 2147483647i;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -671f, _wgslsmith_f_op_f32(f32(-1f) * -235f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2001f, 1060f, arg_1) - vec3<f32>(arg_1, arg_1, arg_1)), _wgslsmith_div_vec3_f32(vec3<f32>(286f, 1738f, -1000f), vec3<f32>(arg_1, 2923f, arg_1)), false))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-934f, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1658f, 1000f, arg_1), vec3<f32>(-467f, -1189f, arg_1), arg_0.c.x)))), vec3<bool>(arg_1 >= 1373f, var_1.c.x || var_1.c.x, var_2.a == u_input.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1669f, -527f, -211f)), !vec3<bool>(!var_1.c.x, true & var_2.c.x, !var_1.c.x))));
    return Struct_1(~13399u, _wgslsmith_sub_u32(min(_wgslsmith_clamp_u32(1u, var_1.b << (arg_0.b % 32u), var_1.a), var_2.a), _wgslsmith_mod_u32(2597u, arg_0.b >> (arg_0.a % 32u)) << (~arg_0.a % 32u)), arg_3);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = vec4<u32>(~func_4(Struct_1(arg_3.a, 38544u, vec2<bool>(false, arg_3.c.x)), _wgslsmith_f_op_f32(select(-1143f, -929f, true)), !vec2<bool>(false, arg_3.c.x), !arg_0.c).a ^ ~max(0u, func_2(1u, u_input.b.x, false).a), 4137u, ~(~_wgslsmith_mod_u32(min(1u, arg_3.b), ~4294967295u)), 6792u);
    var var_1 = vec3<i32>(~_wgslsmith_clamp_i32(~3911i, u_input.a.x ^ u_input.b.x, u_input.b.x), countOneBits(-27209i), -25650i);
    var_1 = vec3<i32>(-1i, -_wgslsmith_div_i32(40371i, var_1.x), u_input.a.x);
    var_1 = reverseBits(_wgslsmith_add_vec3_i32(u_input.a, ~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, var_1.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, var_1.x, u_input.b.x), vec3<i32>(-7914i, 1i, u_input.b.x)))));
    let var_2 = select(select(!func_3(func_4(Struct_1(60708u, 0u, arg_3.c), -416f, arg_0.c, vec2<bool>(arg_3.c.x, true)), vec3<f32>(-667f, -225f, 1444f), _wgslsmith_mult_vec3_u32(var_0.wzw, vec3<u32>(arg_2.b, 7376u, u_input.d.x))), select(select(vec3<bool>(arg_0.c.x, false, arg_0.c.x), select(vec3<bool>(false, true, true), vec3<bool>(true, false, arg_2.c.x), vec3<bool>(arg_0.c.x, arg_2.c.x, arg_2.c.x)), !arg_2.c.x), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_3.c.x, true, false), vec3<bool>(true, true, arg_2.c.x), arg_3.c.x), false), select(vec3<bool>(arg_3.c.x, arg_2.c.x, arg_3.c.x), vec3<bool>(arg_0.c.x, arg_2.c.x, arg_0.c.x), arg_2.c.x)), true), vec3<bool>(arg_3.c.x, any(vec2<bool>(!arg_0.c.x, arg_2.c.x)), any(select(vec4<bool>(true, true, true, arg_3.c.x), select(vec4<bool>(false, arg_0.c.x, arg_3.c.x, arg_2.c.x), vec4<bool>(arg_0.c.x, true, arg_2.c.x, arg_0.c.x), vec4<bool>(arg_3.c.x, arg_2.c.x, false, arg_3.c.x)), true))), select(select(select(!vec3<bool>(arg_0.c.x, false, false), vec3<bool>(arg_3.c.x, false, arg_3.c.x), false & arg_0.c.x), select(select(vec3<bool>(arg_3.c.x, true, true), vec3<bool>(false, false, false), false), !vec3<bool>(arg_2.c.x, arg_2.c.x, false), false && arg_2.c.x), select(!arg_3.c.x, any(vec3<bool>(arg_3.c.x, arg_0.c.x, arg_2.c.x)), all(arg_2.c))), !(!select(vec3<bool>(arg_3.c.x, arg_3.c.x, arg_0.c.x), vec3<bool>(false, arg_3.c.x, false), vec3<bool>(arg_3.c.x, true, false))), arg_2.c.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - -466f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -323f) - _wgslsmith_f_op_f32(148f + -1211f))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = arg_0.x;
    var_1 = _wgslsmith_f_op_f32(func_5(Struct_1(~24219u & ~countOneBits(u_input.c.x), _wgslsmith_mult_u32(~(62585u | u_input.c.x), u_input.d.x), vec2<bool>((-2147483647i | arg_1.x) >= ~1i, true)), u_input.c.x | u_input.d.x, func_4(func_2(0u, _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), firstTrailingBit(arg_1.x)), true), -462f, !select(func_3(Struct_1(4294967295u, 4294967295u, vec2<bool>(true, true)), vec3<f32>(-1111f, 237f, arg_0.x), u_input.d).zy, vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), func_4(func_4(func_2(_wgslsmith_mult_u32(25223u, 54063u), u_input.b.x | u_input.b.x, any(vec4<bool>(true, true, true, true))), var_0, vec2<bool>(true, true), !func_3(Struct_1(24525u, 1886u, vec2<bool>(true, false)), vec3<f32>(var_0, -252f, 2313f), vec3<u32>(u_input.d.x, 0u, u_input.d.x)).xz), _wgslsmith_f_op_f32(-arg_0.x), !select(vec2<bool>(true, true), vec2<bool>(true, false), func_2(16194u, -2816i, true).c), vec2<bool>(any(vec3<bool>(true, false, true)), true))));
    var var_2 = _wgslsmith_mod_vec4_i32(-firstTrailingBit(vec4<i32>(arg_1.x | 8017i, min(u_input.a.x, u_input.a.x), -1i, i32(-1i) * -2147483647i)), min(~vec4<i32>(1i, _wgslsmith_add_i32(u_input.b.x, 0i), -2147483647i ^ u_input.b.x, ~u_input.b.x), _wgslsmith_div_vec4_i32(select(vec4<i32>(arg_1.x, u_input.b.x, -15742i, 66715i), vec4<i32>(u_input.a.x, u_input.a.x, 9608i, -22470i), false) >> (abs(vec4<u32>(14754u, 1u, u_input.d.x, 1u)) % vec4<u32>(32u)), (vec4<i32>(u_input.b.x, arg_1.x, 0i, 0i) | vec4<i32>(19728i, arg_1.x, arg_1.x, -2147483647i)) | (vec4<i32>(47213i, arg_1.x, u_input.b.x, arg_1.x) << (vec4<u32>(1u, u_input.c.x, 28136u, u_input.c.x) % vec4<u32>(32u))))));
    var var_3 = func_2(u_input.c.x, -5077i, true);
    return select(!func_3(Struct_1(u_input.c.x ^ var_3.a, 1u, var_3.c), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, -894f, arg_0.x))))), vec3<u32>(u_input.c.x, ~var_3.a, ~8779u)), vec3<bool>(all(!(!vec2<bool>(var_3.c.x, true))), false, var_3.c.x), vec3<bool>(true, !(!all(vec2<bool>(var_3.c.x, var_3.c.x))), all(vec2<bool>(var_3.c.x, !var_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstTrailingBit(~(~(1u >> (u_input.c.x % 32u)))), abs(8960u), vec2<bool>(any(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1536f, 1000f)), -vec2<i32>(u_input.b.x, -19501i))), any(vec2<bool>(true, false))));
    let var_1 = Struct_1(9114u, u_input.c.x, var_0.c);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1147f, -337f, -1795f, 299f)))))), vec4<f32>(1556f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(var_0.b, var_1.a, vec2<bool>(var_1.c.x, var_1.c.x)), u_input.c.x, var_0, Struct_1(u_input.d.x, 4294967295u, var_0.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1412f) - _wgslsmith_f_op_f32(1063f * -1778f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(140f * -1238f))) * _wgslsmith_div_f32(-256f, -358f)), _wgslsmith_f_op_f32(-1f)));
    var var_3 = func_4(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1586f)) * _wgslsmith_div_f32(1238f, 2092f)))))), vec2<bool>(true != !var_1.c.x, (u_input.a.x ^ (i32(-1i) * -2147483647i)) >= u_input.b.x), vec2<bool>(!var_0.c.x, (var_0.c.x | var_1.c.x) & func_1(_wgslsmith_f_op_vec2_f32(-var_2.yw), u_input.b).x));
    var_3 = var_1;
    let var_4 = true;
    let var_5 = Struct_1(max(u_input.d.x >> (_wgslsmith_sub_u32(70276u, countOneBits(var_0.b)) % 32u), 6178u), var_1.a, var_3.c);
    var_3 = var_0;
    var_3 = Struct_1(var_5.a, 1u, select(vec2<bool>(!any(vec3<bool>(var_4, false, var_4)), var_1.c.x), func_4(Struct_1(~0u, ~u_input.d.x, var_1.c), -2069f, !vec2<bool>(var_3.c.x, var_3.c.x), select(vec2<bool>(var_1.c.x, var_0.c.x), !var_0.c, !vec2<bool>(true, var_4))).c, func_3(var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, -1164f) - var_2.wzx), u_input.d).zy));
    let x = u_input.a;
    s_output = StorageBuffer(-(abs(countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, 0i))) | -vec4<i32>(u_input.a.x, u_input.a.x, -42733i, u_input.a.x)), ~_wgslsmith_div_u32(var_0.a, var_3.a), 0u, _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-1i & u_input.a.x, ~u_input.b.x, _wgslsmith_mod_i32(1i, u_input.a.x), u_input.a.x)), -vec4<i32>(u_input.b.x, 1i, u_input.b.x, 0i) >> (abs(vec4<u32>(var_3.a, 7680u, var_3.a, 1u) & vec4<u32>(var_5.b, var_0.a, var_5.b, 1u)) % vec4<u32>(32u))), select(~(countOneBits(vec4<u32>(var_3.a, 0u, var_0.b, var_5.a)) & (vec4<u32>(var_3.a, var_5.a, var_0.a, u_input.c.x) | vec4<u32>(var_3.a, 12024u, 4294967295u, var_0.b))), vec4<u32>(_wgslsmith_sub_u32(1u, var_0.b), ~min(70205u, 32837u), 4294967295u, ~_wgslsmith_sub_u32(4294967295u, 11076u)), !select(!vec4<bool>(var_4, true, var_3.c.x, var_3.c.x), vec4<bool>(false, true, var_4, false), vec4<bool>(false, true, false, true))));
}

