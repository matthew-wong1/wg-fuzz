struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = firstLeadingBit(vec4<i32>(u_input.a & u_input.a, ~33822i, _wgslsmith_sub_i32(-(39329i >> (1u % 32u)), u_input.a), firstTrailingBit(u_input.a)));
    var var_1 = all(select(vec4<bool>(select(any(vec3<bool>(true, true, false)), true, true), false, true, select(true, true, true)), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), false));
    var_1 = select(true, all(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)))), true);
    var_1 = false;
    var_1 = false;
    return !(any(vec3<bool>(true, true, true)) == true);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(!(false && (arg_2.b.x || arg_0.b.x)) & true, Struct_1(!(all(vec3<bool>(false, arg_0.b.x, arg_0.b.x)) | true), 1u, vec3<i32>(2147483647i, _wgslsmith_div_i32(~arg_0.a.x, u_input.a >> (arg_1.x % 32u)), _wgslsmith_mod_i32(~arg_0.a.x, u_input.a)), abs(~vec2<u32>(59563u, arg_1.x)), _wgslsmith_f_op_f32(floor(arg_0.c))));
    let var_1 = _wgslsmith_sub_i32(arg_0.a.x, i32(-1i) * -33968i);
    let var_2 = var_0.b;
    var var_3 = arg_1;
    let var_4 = any(select(vec2<bool>(func_3(), arg_0.b.x), arg_0.b, var_0.a));
    return Struct_1(abs(-31951i) < abs(~(var_1 << (23578u % 32u))), ~0u << (~var_2.b % 32u), abs(vec3<i32>(var_2.c.x ^ -61128i, arg_2.a.x, arg_0.a.x)), ~_wgslsmith_sub_vec2_u32(arg_1.yz, vec2<u32>(1u, 1u)) >> (var_0.b.d % vec2<u32>(32u)), _wgslsmith_f_op_f32(trunc(1434f)));
}

fn func_4(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = Struct_2(true, func_2(Struct_3(vec3<i32>(arg_0.b.c.x, ~u_input.a, arg_0.b.c.x), !select(vec2<bool>(arg_0.b.a, arg_0.b.a), vec2<bool>(true, arg_0.a), vec2<bool>(false, false)), 401f), max(vec3<u32>(_wgslsmith_div_u32(arg_0.b.b, arg_0.b.b), arg_0.b.b, 0u), countOneBits(min(vec3<u32>(arg_0.b.b, arg_0.b.d.x, 4294967295u), vec3<u32>(56482u, 54116u, 0u)))), Struct_3(arg_0.b.c, vec2<bool>(!arg_0.b.a, arg_0.b.a), arg_0.b.e)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2256f, -2810f, arg_0.b.e, arg_0.b.e))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-196f, var_0.b.e, -1284f, 118f), vec4<f32>(var_0.b.e, -791f, -672f, -2040f))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-130f, -1091f, -975f, _wgslsmith_f_op_f32(max(var_0.b.e, 678f))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(471f, arg_0.b.e, var_0.b.e, 491f), vec4<f32>(2133f, 1285f, 300f, var_0.b.e), vec4<bool>(var_0.b.a, arg_0.a, true, arg_0.a))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.e, var_0.b.e, arg_0.b.e, var_0.b.e), vec4<f32>(arg_0.b.e, -1431f, -1032f, arg_0.b.e)), -719f < arg_0.b.e)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.e, arg_0.b.e, 1267f, 195f), vec4<f32>(var_0.b.e, -1000f, -869f, -816f), !vec4<bool>(false, arg_0.a, var_0.a, true))))))));
    var var_2 = select(!(!vec3<bool>(true, true, var_0.a)), select(!(!vec3<bool>(var_0.a, false, arg_0.a)), !(!(!vec3<bool>(var_0.a, true, var_0.b.a))), select(false, var_0.b.a, arg_0.a)), vec3<bool>(any(vec3<bool>(any(vec3<bool>(var_0.b.a, arg_0.a, false)), true && var_0.a, func_2(Struct_3(vec3<i32>(u_input.a, 2147483647i, 2147483647i), vec2<bool>(false, arg_0.b.a), var_0.b.e), vec3<u32>(var_0.b.d.x, 45860u, arg_0.b.d.x), Struct_3(vec3<i32>(-12182i, 1i, 1i), vec2<bool>(true, var_0.a), 1961f)).a)), any(!select(vec2<bool>(false, true), vec2<bool>(false, arg_0.a), vec2<bool>(false, true))), -1419f < _wgslsmith_f_op_f32(-var_0.b.e)));
    let var_3 = Struct_2(all(vec4<bool>(select(true, !var_2.x, true), false, all(vec4<bool>(var_2.x, false, false, false)), var_2.x)), func_2(Struct_3(func_2(Struct_3(var_0.b.c, vec2<bool>(true, true), -102f), vec3<u32>(arg_0.b.d.x, 1u, arg_0.b.b), Struct_3(vec3<i32>(arg_0.b.c.x, 2147483647i, u_input.a), vec2<bool>(var_0.b.a, true), var_0.b.e)).c >> (vec3<u32>(arg_0.b.b, var_0.b.d.x, 0u) % vec3<u32>(32u)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-606f + _wgslsmith_f_op_f32(arg_0.b.e * var_0.b.e))), vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(var_0.b.d.x), arg_0.b.b), _wgslsmith_add_u32(~1u, ~var_0.b.d.x), ~(~0u)), Struct_3(arg_0.b.c, !(!var_2.xy), -1000f)));
    var var_4 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b.b, 4294967295u, var_0.b.b) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1151u, arg_0.b.b, var_0.b.b), vec3<u32>(58889u, 19080u, var_3.b.b)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 22276u, arg_0.b.d.x) ^ vec3<u32>(22873u, arg_0.b.b, arg_0.b.d.x))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.b.d.x, var_0.b.d.x) & ~32821u, ~var_0.b.d.x | (var_0.b.b ^ var_3.b.b))) & countOneBits(~(~_wgslsmith_add_u32(arg_0.b.b, var_3.b.d.x)));
    return var_0.b.d;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    var var_0 = vec4<u32>(0u, min(arg_2.b.d.x, _wgslsmith_mod_u32(arg_1.b, firstTrailingBit(_wgslsmith_add_u32(arg_1.b, arg_3.c.b.d.x)))), ~_wgslsmith_mod_u32(~countOneBits(1u), arg_2.b.d.x), arg_3.c.b.b);
    var var_1 = 40527i;
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~arg_1.b, countOneBits(arg_3.c.b.b)), 16579u, 1u, arg_3.c.b.b ^ arg_3.d), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.c.b.d.x, var_0.x, arg_3.c.b.b, arg_2.b.d.x) | vec4<u32>(23908u, 14981u, arg_1.b, 4294967295u), vec4<u32>(2771u, 12730u, 18379u, arg_1.b)) ^ vec4<u32>(arg_3.c.b.d.x, arg_2.b.b, firstLeadingBit(var_0.x), 4597u)));
    var_1 = ~(arg_2.b.c.x << (func_2(Struct_3(vec3<i32>(1i, u_input.a, 0i), !arg_3.b.b, _wgslsmith_f_op_f32(f32(-1f) * -950f)), ~select(vec3<u32>(var_0.x, 24635u, var_2.x), vec3<u32>(0u, arg_1.b, arg_1.b), vec3<bool>(arg_2.b.a, arg_1.a, arg_3.c.b.a)), arg_3.b).d.x % 32u));
    let var_3 = Struct_3(vec3<i32>(~min(1i, 0i), -(abs(arg_2.b.c.x) & _wgslsmith_mult_i32(0i, arg_2.b.c.x)), ~(~arg_3.c.b.c.x) & abs(_wgslsmith_clamp_i32(-21184i, -2147483647i, 53516i))), !(!arg_3.b.b), -1000f);
    return arg_3.c.b;
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1908f)), _wgslsmith_f_op_f32(f32(-1f) * -726f), -611f, arg_0.x)) * vec4<f32>(_wgslsmith_f_op_f32(select(1175f, -465f, all(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_f32(round(-1251f)), _wgslsmith_f_op_f32(-arg_0.x))), Struct_1(!(!all(vec3<bool>(false, false, true))), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(20844u, 10244u), vec2<u32>(48544u, 1u), vec2<bool>(true, false)), vec2<u32>(16117u, 42608u)), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-2147483647i, -19080i)), ~vec2<i32>(-19989i, 2147483647i)), u_input.a, 2147483647i), func_4(Struct_2(true, func_2(Struct_3(vec3<i32>(-8873i, u_input.a, -2147483647i), vec2<bool>(true, false), arg_0.x), vec3<u32>(20999u, 0u, 118387u), Struct_3(vec3<i32>(-49702i, u_input.a, u_input.a), vec2<bool>(false, true), -1169f)))), _wgslsmith_f_op_f32(-arg_0.x)), Struct_2(func_2(Struct_3(vec3<i32>(u_input.a, -2147483647i, 40319i), vec2<bool>(false, false), arg_0.x), ~vec3<u32>(12153u, 4294967295u, 1u), Struct_3(vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<bool>(false, true), 756f)).a | func_3(), Struct_1(all(vec2<bool>(true, true)), 65780u, _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -49171i, u_input.a), vec3<i32>(u_input.a, 28533i, -2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 17785i, 69008i), vec3<i32>(1i, u_input.a, 2147483647i))), vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(24037u, 1u, 104137u, 4294967295u), vec4<u32>(0u, 1u, 1u, 0u))), arg_0.x)), Struct_4(func_2(Struct_3(vec3<i32>(0i, u_input.a, 49276i), vec2<bool>(true, true), arg_0.x), vec3<u32>(1u, 1u, 1u), Struct_3(vec3<i32>(1i, u_input.a, -1i), vec2<bool>(false, true), -320f)).a & true, Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(27332i, u_input.a, 1488i), vec3<i32>(u_input.a, 1i, u_input.a) | vec3<i32>(u_input.a, u_input.a, 27401i)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(abs(1000f))), Struct_2(true, func_2(Struct_3(vec3<i32>(u_input.a, 1i, 2147483647i), vec2<bool>(false, true), 1000f), vec3<u32>(7635u, 4294967295u, 4294967295u), Struct_3(vec3<i32>(-3488i, u_input.a, 0i), vec2<bool>(false, false), 1150f))), 1u));
    var_0 = Struct_1(func_2(Struct_3(max(~var_0.c, vec3<i32>(u_input.a, u_input.a, var_0.c.x)), !select(vec2<bool>(false, var_0.a), vec2<bool>(false, true), false), 943f), ~vec3<u32>(var_0.d.x, var_0.b, 4294967295u) << (_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, var_0.d.x, var_0.d.x), vec3<u32>(1u, 73986u, var_0.d.x) | vec3<u32>(var_0.b, 0u, 1247u)) % vec3<u32>(32u)), Struct_3(var_0.c >> (vec3<u32>(var_0.b, 56832u, 1u) % vec3<u32>(32u)), vec2<bool>(var_0.a, var_0.a), 631f)).a, ~select(_wgslsmith_sub_u32(var_0.b, var_0.d.x), 0u, true), ~_wgslsmith_clamp_vec3_i32(var_0.c, vec3<i32>(2147483647i, var_0.c.x, u_input.a) << (vec3<u32>(var_0.b, 4294967295u, var_0.b) % vec3<u32>(32u)), ~vec3<i32>(u_input.a, 2147483647i, u_input.a)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(var_0.b, var_0.b)), var_0.d), _wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -294f)))));
    let var_1 = Struct_4(!func_3(), Struct_3(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_0.c.x, var_0.c.x, -84022i), vec3<i32>(var_0.c.x, var_0.c.x, u_input.a) >> (vec3<u32>(36448u, var_0.d.x, var_0.d.x) % vec3<u32>(32u)), func_5(vec4<f32>(arg_0.x, -1031f, 682f, arg_0.x), Struct_1(true, 99721u, var_0.c, var_0.d, var_0.e), Struct_2(false, Struct_1(false, var_0.d.x, vec3<i32>(var_0.c.x, u_input.a, -2147483647i), var_0.d, var_0.e)), Struct_4(true, Struct_3(vec3<i32>(u_input.a, var_0.c.x, -1i), vec2<bool>(false, true), arg_0.x), Struct_2(var_0.a, Struct_1(var_0.a, 6716u, var_0.c, var_0.d, arg_0.x)), var_0.d.x)).c), vec2<bool>(true, var_0.a), _wgslsmith_div_f32(-316f, func_2(Struct_3(vec3<i32>(-1i, var_0.c.x, var_0.c.x), vec2<bool>(var_0.a, false), 851f), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.d.x, var_0.d.x), vec3<u32>(var_0.b, 42825u, 19028u)), Struct_3(var_0.c, vec2<bool>(true, false), 206f)).e)), Struct_2(all(vec4<bool>(var_0.a, true, true, all(vec3<bool>(var_0.a, true, false)))), func_5(vec4<f32>(-199f, 216f, _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, var_0.a)), _wgslsmith_f_op_f32(abs(-498f))), Struct_1(var_0.d.x == 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 1u), vec2<u32>(4294967295u, var_0.b)), var_0.c, vec2<u32>(4294967295u, var_0.b), var_0.e), Struct_2(select(true, var_0.a, var_0.a), func_2(Struct_3(vec3<i32>(0i, -3268i, var_0.c.x), vec2<bool>(true, true), var_0.e), vec3<u32>(var_0.d.x, var_0.b, 4294967295u), Struct_3(vec3<i32>(0i, var_0.c.x, -47509i), vec2<bool>(true, var_0.a), arg_0.x))), Struct_4(false, Struct_3(vec3<i32>(39855i, u_input.a, -2147483647i), vec2<bool>(var_0.a, var_0.a), var_0.e), Struct_2(true, Struct_1(true, var_0.d.x, var_0.c, vec2<u32>(var_0.d.x, var_0.b), 1000f)), firstLeadingBit(4294967295u)))), _wgslsmith_add_u32(1u, 1u));
    var var_2 = !(_wgslsmith_dot_vec2_u32(~func_2(var_1.b, vec3<u32>(var_1.c.b.b, var_0.d.x, var_0.b), Struct_3(vec3<i32>(-1i, var_1.b.a.x, 0i), vec2<bool>(true, var_1.c.a), 344f)).d, _wgslsmith_div_vec2_u32(~vec2<u32>(var_0.b, var_1.c.b.b), var_1.c.b.d)) > _wgslsmith_mult_u32(var_0.b, countOneBits(abs(var_1.c.b.d.x))));
    let var_3 = Struct_2(var_1.a, var_1.c.b);
    return -_wgslsmith_sub_i32(-14880i, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0, arg_0))), func_2(var_1.b, firstTrailingBit(vec3<u32>(var_0.b, var_3.b.d.x, var_1.c.b.d.x)), var_1.b), var_3, Struct_4(false, var_1.b, var_3, 1u)).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(!select(true, true, true), true);
    var var_1 = Struct_1(var_0.x, ~max(_wgslsmith_add_u32(min(4294967295u, 40259u), 0u), abs(4294967295u)), vec3<i32>(_wgslsmith_sub_i32(-u_input.a & 32770i, _wgslsmith_sub_i32(1i, u_input.a)), min(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1868f, -957f, -1163f, 1141f))), 50811i), -firstLeadingBit(u_input.a)), vec2<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(22556u, 14573u, 15908u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(27208u, 13672u, 8388u, 4294967295u), vec4<u32>(20579u, 0u, 23662u, 1u)), ~0u, ~35342u)), 7683u), -2345f);
    let var_2 = firstTrailingBit(i32(-1i) * -15500i);
    let var_3 = vec2<u32>(4294967295u, var_1.d.x);
    var_0 = !vec2<bool>(var_0.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

