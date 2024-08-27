struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = firstLeadingBit(~(~vec4<i32>(_wgslsmith_clamp_i32(-13907i, u_input.a, u_input.e.x), countOneBits(-2147483647i), 1i, 8889i << (u_input.d % 32u))));
    var var_1 = ~u_input.d;
    let var_2 = Struct_4(vec3<bool>(false, -(~var_0.x) != -18264i, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-901f, -393f, 441f, 547f))), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2192f, -1203f, 324f, 1272f), vec4<f32>(-245f, -1297f, 1173f, -430f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -188f, -1000f, -238f), vec4<f32>(-884f, -1000f, -844f, 850f)))))), select(arg_0, select(select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), arg_0.x), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), !(!arg_0)))), vec3<bool>(arg_0.x, !(u_input.c <= u_input.c) | arg_0.x, true));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(291f, -1572f, !var_2.c.x)), 219f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f)) + _wgslsmith_f_op_f32(f32(-1f) * -1511f)));
    var_1 = ~(~_wgslsmith_add_u32(firstLeadingBit(30536u), 1u));
    return vec3<bool>(var_2.c.x, any(vec3<bool>(arg_0.x && any(arg_0.zw), var_2.c.x, any(vec2<bool>(false, var_2.c.x)))), true);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_4(vec3<bool>(!all(vec2<bool>(true, true)), true, !(0i <= (arg_0 >> (4992u % 32u)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-137f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(433f, -1250f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f - _wgslsmith_f_op_f32(f32(-1f) * -1198f))), -256f), !(!select(func_3(vec4<bool>(true, false, true, false)), vec3<bool>(false, false, false), false)));
    let var_1 = u_input.b.x;
    let var_2 = _wgslsmith_div_f32(-825f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)));
    var var_3 = Struct_3(Struct_1(max(16119u, _wgslsmith_mod_u32(u_input.c | u_input.d, 4294967295u))), _wgslsmith_div_vec2_i32(u_input.b.zz, max(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_1), u_input.e, u_input.e), ~(u_input.b.yz << (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u))))), max(vec2<i32>(-(u_input.a << (u_input.d % 32u)), -2147483647i), abs(u_input.e)));
    var_3 = Struct_3(var_3.a, max(u_input.e << (countOneBits(vec2<u32>(u_input.c, u_input.d)) % vec2<u32>(32u)), var_3.b) | firstLeadingBit(firstTrailingBit(~vec2<i32>(var_3.b.x, arg_0))), vec2<i32>(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(22844i & var_1, u_input.a, -1i, -75135i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 13044i, var_3.c.x, 2147483647i), -vec4<i32>(-2147483647i, var_3.b.x, var_3.c.x, var_1)))));
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: i32) -> Struct_4 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, countOneBits(u_input.d) ^ (arg_2.a.a << (arg_0.a % 32u))), ~(~vec2<u32>(arg_2.a.a, u_input.d))) | (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, _wgslsmith_div_u32(1u, 49790u)), vec2<u32>(~arg_2.a.a, 33688u)) >> (vec2<u32>(u_input.c, ~u_input.c) % vec2<u32>(32u)));
    var_1 = ~(~min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 12431u), max(vec2<u32>(u_input.d, arg_2.a.a), vec2<u32>(var_1.x, var_1.x))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, 1u), vec2<u32>(u_input.c, 1u)), vec2<u32>(var_1.x, 3073u))));
    var var_2 = -2147483647i;
    var var_3 = select(firstTrailingBit(countOneBits(vec3<u32>(arg_2.a.a, func_2(0i).a, arg_0.a))), abs(min(vec3<u32>(firstTrailingBit(4294967295u), 10558u, arg_0.a), vec3<u32>(u_input.d << (1u % 32u), ~38996u, _wgslsmith_mult_u32(arg_0.a, 28690u)))), false);
    return var_0;
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-func_4(Struct_1(arg_3.a.a >> (u_input.c % 32u)), func_4(arg_3.a, func_4(arg_3.a, arg_2, Struct_3(arg_3.a, vec2<i32>(-5092i, 2147483647i), arg_3.b), u_input.b.x), Struct_3(arg_3.a, u_input.b.xx, vec2<i32>(15864i, arg_3.c.x)), -2147483647i << (u_input.c % 32u)), Struct_3(func_2(u_input.b.x), vec2<i32>(u_input.a, arg_3.b.x), arg_3.c), _wgslsmith_sub_i32(1i, 22189i)).b.yw), ~(select(vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(u_input.d, arg_3.a.a) % vec2<u32>(32u)), ~vec2<u32>(arg_3.a.a, 0u), false) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(30970u, 1u, 6841u), vec3<u32>(0u, 12443u, 1u)), 0u)), _wgslsmith_f_op_f32(226f + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) + -1298f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-901f, _wgslsmith_f_op_f32(203f * arg_0.b.x))) + _wgslsmith_f_op_f32(floor(-1158f)))) - arg_1);
    var var_2 = ~arg_3.a.a;
    var_2 = 0u;
    let var_3 = Struct_4(arg_0.c, vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.b.x))), 775f, var_0.c), func_3(!vec4<bool>(true, u_input.b.x == 0i, arg_0.a.x || arg_0.c.x, true)));
    return var_0;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = firstLeadingBit((vec2<u32>(~35831u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c), vec4<u32>(36498u, arg_0.b.x, 1u, u_input.c))) & (vec2<u32>(arg_0.b.x, u_input.c) >> ((arg_0.b >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)))) | ~reverseBits(~vec2<u32>(u_input.d, 0u)));
    var var_1 = arg_0.c;
    let var_2 = all(!vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, any(func_3(vec4<bool>(true, true, false, true)).zy)));
    var var_3 = func_2(-(~(-52999i)));
    var_3 = Struct_1(firstTrailingBit(~4294967295u));
    return Struct_1(countOneBits(~arg_0.b.x));
}

fn func_1() -> Struct_1 {
    let var_0 = func_6(func_5(func_4(func_2(_wgslsmith_clamp_i32(u_input.a, 44917i, 0i)), Struct_4(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-355f, 1459f, -1236f, -1000f)), vec3<bool>(true, true, true)), Struct_3(Struct_1(43256u), _wgslsmith_mult_vec2_i32(u_input.e, vec2<i32>(u_input.e.x, 1i)), vec2<i32>(u_input.e.x, u_input.a)), ~0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-700f))))), Struct_4(vec3<bool>(true, true, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1161f, 1360f, -967f, -1216f) * vec4<f32>(252f, -2159f, 153f, -858f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(547f, 1083f, 170f, 761f))), vec3<bool>(true, true, true)), Struct_3(func_2(u_input.e.x), max(vec2<i32>(2147483647i, u_input.e.x), vec2<i32>(u_input.a, u_input.b.x)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(30709u, 6829u), vec2<u32>(4949u, 0u)) % vec2<u32>(32u)), u_input.e)));
    let var_1 = func_4(func_6(Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-251f, -308f)))), ~(vec2<u32>(28170u, u_input.d) << (vec2<u32>(var_0.a, 4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(997f - -1772f)))), Struct_4(func_3(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(987f, -1262f, 1138f, -108f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(820f, 1094f, -1457f, -773f) + vec4<f32>(176f, -658f, 940f, 604f))))), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, 1i > _wgslsmith_mult_i32(0i, u_input.e.x))), Struct_3(Struct_1(4294967295u), vec2<i32>(-1i, u_input.e.x), u_input.b.xx), -5133i);
    var var_2 = Struct_3(func_6(func_5(var_1, var_1.b.x, var_1, Struct_3(var_0, firstTrailingBit(vec2<i32>(-1i, u_input.b.x)), _wgslsmith_mult_vec2_i32(u_input.b.yy, u_input.e)))), vec2<i32>(-23348i, 21007i), firstLeadingBit(_wgslsmith_sub_vec2_i32(max(vec2<i32>(1i, u_input.b.x), vec2<i32>(-22797i, 35107i)) >> (countOneBits(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, u_input.b.x), -u_input.e))));
    let var_3 = var_1.a.x;
    let var_4 = var_1;
    return var_2.a;
}

fn func_7(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3) -> Struct_4 {
    let var_0 = countOneBits(vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, -(arg_2.c.x >> (u_input.c % 32u))), ~(-17908i), countOneBits(arg_2.c.x)));
    var var_1 = func_5(func_4(arg_2.a, func_4(arg_2.a, arg_0, Struct_3(arg_2.a, u_input.e, ~var_0.zy), _wgslsmith_mult_i32(22983i, arg_2.b.x)), arg_2, max(1i, 2147483647i)), arg_0.b.x, arg_0, Struct_3(func_2(0i), abs(vec2<i32>(~u_input.a, select(24771i, 2147483647i, false))), ~abs(select(vec2<i32>(var_0.x, 7397i), var_0.xz, true))));
    let var_2 = 607f;
    var var_3 = arg_2;
    let var_4 = Struct_3(func_1(), -select(arg_2.b, abs(~var_3.b), func_3(!vec4<bool>(true, arg_1, false, arg_1)).yz), vec2<i32>(var_0.x, 23131i));
    return func_4(Struct_1(_wgslsmith_clamp_u32(~var_1.b.x, var_4.a.a, ~var_4.a.a)), arg_0, var_4, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(37375i, var_3.c.x) << (vec2<u32>(29577u, var_4.a.a) % vec2<u32>(32u)), u_input.e, min(var_3.c, vec2<i32>(8710i, 1i))) | u_input.b.zx, countOneBits(~u_input.b.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = vec2<i32>(u_input.a, u_input.a);
    let var_2 = ~u_input.c;
    var var_3 = func_7(Struct_4(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f - 554f) + 703f), _wgslsmith_div_f32(-2022f, -853f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(693f)) + -319f), _wgslsmith_f_op_f32(max(-600f, -1550f))), vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), true)), Struct_3(func_1(), vec2<i32>(u_input.b.x, countOneBits(countOneBits(u_input.a))), _wgslsmith_div_vec2_i32(u_input.e, abs(vec2<i32>(49846i, 72148i))) << (max(~vec2<u32>(19606u, var_2), abs(vec2<u32>(41057u, var_0))) % vec2<u32>(32u))));
    let var_4 = !select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(var_3.a.x, false, true, var_3.a.x), !vec4<bool>(var_3.c.x, true, var_3.a.x, var_3.c.x)), select(!vec4<bool>(var_3.a.x, true, var_3.c.x, var_3.a.x), vec4<bool>(var_3.c.x, true, false, false), !vec4<bool>(var_3.c.x, false, true, true)), true), select(select(select(vec4<bool>(var_3.a.x, false, var_3.c.x, var_3.c.x), vec4<bool>(true, var_3.c.x, true, var_3.c.x), vec4<bool>(true, true, true, var_3.c.x)), vec4<bool>(false, var_3.c.x, false, false), !vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, true)), !select(vec4<bool>(true, true, var_3.a.x, true), vec4<bool>(false, false, false, var_3.a.x), false), select(vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.c.x), select(vec4<bool>(false, var_3.c.x, var_3.a.x, var_3.a.x), vec4<bool>(var_3.a.x, var_3.a.x, var_3.c.x, var_3.a.x), vec4<bool>(var_3.c.x, false, var_3.a.x, var_3.a.x)), vec4<bool>(var_3.a.x, false, true, var_3.a.x))), !vec4<bool>(var_3.c.x, var_3.a.x, select(var_3.c.x, false, false), false));
    var_3 = Struct_4(var_4.zwx, var_3.b, select(var_3.a, !var_4.xyw, !vec3<bool>(true, func_3(var_4).x, true == var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(~vec3<u32>(31741u, var_2, var_2))), firstTrailingBit(vec3<u32>(~var_2, var_0, 9502u)), true), var_2, _wgslsmith_clamp_vec3_i32(-u_input.b, _wgslsmith_mult_vec3_i32(vec3<i32>(17324i, var_1.x, u_input.b.x), max(u_input.b, u_input.b)) ^ u_input.b, ~(_wgslsmith_add_vec3_i32(vec3<i32>(-16152i, var_1.x, u_input.b.x), u_input.b) ^ _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(var_1.x, 1i, 0i)))));
}

