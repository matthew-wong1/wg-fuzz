struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<i32> {
    let var_0 = vec3<bool>(false == any(!(!vec4<bool>(arg_0.x, false, arg_0.x, false))), true, arg_0.x);
    return ~(vec4<i32>(-1i) * -(~vec4<i32>(1i, 1i, 1i, 1i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = countOneBits(_wgslsmith_mod_i32((-1i ^ arg_2.b.x) << (17921u % 32u), -_wgslsmith_clamp_i32(arg_2.c.b, 1i, arg_1.x)) >> (u_input.a % 32u));
    let var_1 = var_0;
    let var_2 = !select(!vec4<bool>(arg_2.a.c, arg_3.c, 16160u != arg_2.d.x, true), vec4<bool>(arg_3.c, !(!arg_2.a.c), !arg_2.a.c, true), true);
    let var_3 = Struct_4(Struct_3(Struct_1(arg_3.a, ~(~102371u), !(609f <= arg_3.a.x)), arg_1 ^ arg_2.b, arg_2.c, vec2<u32>(abs(arg_3.b), 1698u)), all(!vec2<bool>(arg_2.c.a.c, true)), arg_2.a, firstTrailingBit(~abs(func_3(var_2.zxz).x)));
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.c.d.x))));
    return var_2;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 0i | arg_0, arg_0, ~arg_0), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(arg_0, 1i)), arg_0, select(arg_0, arg_0, true), _wgslsmith_div_i32(0i, arg_0))) & func_3(vec3<bool>(true, true, true)), countOneBits(vec3<i32>(-1i) * -vec3<i32>(arg_0, 1i, arg_0)), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1721f, -848f, -832f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(631f, 144f, 526f)))), 13192u, false), vec3<i32>(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -12425i, arg_0, 0i), vec4<i32>(-2147483647i, arg_0, 457i, arg_0)), ~(-16872i)) << (~(vec3<u32>(u_input.a, 0u, 0u) | vec3<u32>(u_input.a, 1u, 36101u)) % vec3<u32>(32u)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1912f, -179f)), u_input.a, true), 16933i, (u_input.a <= u_input.a) && any(vec3<bool>(true, false, false)), vec3<f32>(_wgslsmith_f_op_f32(sign(635f)), -1540f, _wgslsmith_f_op_f32(-476f + -1390f))), _wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 40847u)), countOneBits(vec2<u32>(u_input.a, 0u) ^ vec2<u32>(u_input.a, 26835u)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-963f - _wgslsmith_f_op_f32(193f + 770f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-863f, 1186f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(849f, 1762f))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 55035u, 11088u, u_input.a), ~vec4<u32>(u_input.a, 46079u, u_input.a, u_input.a) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)) % vec4<u32>(32u))), true));
    var var_1 = select(select(!vec4<bool>(!var_0.x, var_0.x, true, var_0.x), !(!var_0), var_0), var_0, var_0.x);
    var_1 = var_0;
    let var_2 = vec2<u32>(min(36365u | u_input.a, ~84723u), ~50634u);
    var_1 = !vec4<bool>(var_1.x, var_0.x, any(select(!var_1.xxx, var_1.yxy, !var_0.zxx)), var_0.x);
    return Struct_3(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-180f, -1281f, -1000f))), vec3<f32>(1f, 1f, 1f), false)), vec3<f32>(-668f, -919f, _wgslsmith_f_op_f32(f32(-1f) * -219f))), u_input.a, var_1.x), vec3<i32>(2147483647i, (-arg_0 & 11689i) >> (abs(_wgslsmith_div_u32(u_input.a, 1u)) % 32u), 1i), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(327f, 124f, -829f)))), _wgslsmith_dot_vec2_u32(var_2, vec2<u32>(var_2.x, u_input.a)), true), 2147483647i, true, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(574f)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)), 1000f)), ~(~(~vec2<u32>(189u, var_2.x))));
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(step(657f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(select(arg_2.a.a.x, 779f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, 1813f)))))));
    let var_1 = 427f;
    var var_2 = vec2<bool>(!any(!(!vec3<bool>(arg_2.a.c, true, false))), false);
    var_2 = select(select(!arg_1, vec2<bool>(true, _wgslsmith_div_u32(0u, 7267u) != (u_input.a ^ u_input.a)), !arg_1), select(vec2<bool>(true, arg_2.a.c), !(!arg_1), !func_4(vec4<i32>(-2147483647i, 1346i, 1i, -33497i), vec3<i32>(arg_2.b.x, arg_2.c.b, 1i), Struct_3(Struct_1(arg_2.a.a, 11352u, false), vec3<i32>(arg_2.b.x, arg_2.b.x, arg_2.b.x), Struct_2(Struct_1(arg_2.c.a.a, 0u, false), 2147483647i, false, arg_2.c.d), vec2<u32>(1u, 27962u)), func_2(2147483647i).a).xw), vec2<bool>(false, arg_2.a.c));
    var var_3 = Struct_3(arg_2.c.a, arg_2.b, func_2(_wgslsmith_add_i32(-arg_2.c.b, abs(func_3(vec3<bool>(arg_1.x, var_2.x, true)).x))).c, ~vec2<u32>(u_input.a & 3903u, 0u) & arg_2.d);
    return Struct_4(arg_2, false, var_3.c.a, func_2(func_3(vec3<bool>(true, var_2.x, var_3.a.c)).x).c.b | min(min(_wgslsmith_dot_vec3_i32(var_3.b, vec3<i32>(34709i, var_3.b.x, 2147483647i)), 1i), 14720i));
}

fn func_6(arg_0: bool, arg_1: Struct_4) -> Struct_3 {
    let var_0 = ~vec3<u32>(0u, func_2(-arg_1.d).a.b, 1u);
    let var_1 = arg_1.a.c.a;
    var var_2 = Struct_3(var_1, -(vec3<i32>(15086i, arg_1.a.c.b, _wgslsmith_clamp_i32(1i, 38918i, 2147483647i)) >> (reverseBits(var_0) % vec3<u32>(32u))), arg_1.a.c, firstTrailingBit(~vec2<u32>(reverseBits(u_input.a), var_0.x)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a.x * _wgslsmith_f_op_f32(var_2.c.a.a.x - 133f)) - _wgslsmith_f_op_f32(trunc(arg_1.a.c.a.a.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1156f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1120f), -146f) + _wgslsmith_f_op_f32(-arg_1.c.a.x)))));
    var_3 = _wgslsmith_f_op_f32(-arg_1.a.a.a.x);
    return arg_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = vec4<u32>(26863u, ~u_input.a >> (31091u % 32u), 108165u, 4294967295u);
    var var_1 = func_6(false, func_5(arg_0.a.x, !select(vec2<bool>(false, arg_0.c), select(vec2<bool>(false, arg_0.c), vec2<bool>(arg_0.c, true), arg_0.c), true), func_2(-(1i & arg_1.x))));
    var_1 = func_6(select(arg_0.c, false, func_6(var_1.c.c, Struct_4(func_5(var_1.a.a.x, vec2<bool>(false, var_1.c.c), Struct_3(Struct_1(arg_0.a, u_input.a, var_1.c.c), arg_1, Struct_2(Struct_1(vec3<f32>(-1144f, arg_0.a.x, -379f), arg_0.b, var_1.a.c), var_1.b.x, false, vec3<f32>(-871f, var_1.a.a.x, 1188f)), vec2<u32>(u_input.a, var_0.x))).a, true, var_1.a, ~(-58805i))).c.a.c), Struct_4(func_2(reverseBits(min(-1i, var_1.b.x))), !var_1.a.c, arg_0, func_6(!arg_0.c & true, Struct_4(func_5(var_1.c.a.a.x, vec2<bool>(arg_0.c, false), Struct_3(arg_0, var_1.b, var_1.c, vec2<u32>(arg_0.b, 1u))).a, arg_0.c, var_1.c.a, _wgslsmith_dot_vec3_i32(var_1.b, var_1.b))).c.b));
    var var_2 = vec4<bool>(true, all(vec4<bool>(true, any(vec2<bool>(true, true)), arg_0.c, all(select(vec2<bool>(var_1.c.c, var_1.a.c), vec2<bool>(arg_0.c, true), false)))), -37102i != var_1.c.b, var_1.a.c);
    var var_3 = ~(~firstTrailingBit(~(-1i)));
    return func_5(func_6(!arg_0.c, Struct_4(Struct_3(func_6(arg_0.c, Struct_4(Struct_3(var_1.c.a, arg_1, var_1.c, vec2<u32>(4294967295u, var_0.x)), var_2.x, Struct_1(vec3<f32>(var_1.c.d.x, -177f, arg_0.a.x), 8467u, var_2.x), 39049i)).a, -vec3<i32>(-1i, var_1.b.x, arg_1.x), func_2(var_1.c.b).c, countOneBits(vec2<u32>(5380u, var_0.x))), !var_2.x == var_2.x, arg_0, -var_1.c.b)).a.a.x, !select(vec2<bool>(any(vec4<bool>(var_2.x, var_2.x, false, false)), true), select(var_2.zy, !vec2<bool>(true, arg_0.c), true), vec2<bool>(var_1.c.a.c, true)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1054f - var_1.a.a.x)), var_2.xw, func_2(arg_1.x)).a).a.c;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-472f))) - 319f);
    var var_1 = Struct_3(Struct_1(arg_1.c.a, arg_0.a.b, arg_1.b), arg_1.a.b, arg_3.c, ~abs(_wgslsmith_mod_vec2_u32(arg_1.a.d, arg_2)));
    let var_2 = select(_wgslsmith_div_vec3_u32(~select(vec3<u32>(arg_0.a.b, 20648u, arg_1.c.b), vec3<u32>(0u, 4294967295u, var_1.d.x), var_1.a.c) << (vec3<u32>(108394u, 5469u, 10770u) % vec3<u32>(32u)), abs(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.c.a.b, 46024u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, arg_0.a.b)))), ~vec3<u32>(min(6112u, min(0u, 0u)), ~max(1u, 0u), u_input.a), -2147483647i != (-57184i & reverseBits(arg_0.b & 22777i)));
    let var_3 = func_4(~(~(~vec4<i32>(arg_3.b.x, arg_3.b.x, 1i, -7282i) | _wgslsmith_div_vec4_i32(vec4<i32>(-33328i, arg_1.d, -2147483647i, -6128i), vec4<i32>(arg_1.a.b.x, arg_1.d, -1i, -1i)))), arg_3.b, func_2(abs(arg_1.d)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c.d) - vec3<f32>(1328f, var_1.c.d.x, -1296f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.a.x, var_1.a.a.x, -1783f) * _wgslsmith_f_op_vec3_f32(arg_3.c.d + vec3<f32>(arg_1.c.a.x, -1975f, arg_1.a.a.a.x))))), min(arg_1.c.b, firstLeadingBit(1530u)), func_4(vec4<i32>(arg_3.c.b, i32(-1i) * -50519i, -1i, 0i), min(func_3(vec3<bool>(arg_0.a.c, true, arg_3.c.a.c)).xzx, func_3(vec3<bool>(arg_3.a.c, true, true)).zwy), func_5(1000f, vec2<bool>(false, true), arg_3).a, Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.a.a.a), _wgslsmith_div_u32(arg_1.c.b, 4294967295u), arg_0.c)).x)).wx;
    let var_4 = arg_1;
    return arg_1.a.c;
}

fn func_8(arg_0: Struct_2) -> i32 {
    var var_0 = (abs(select(vec2<u32>(u_input.a, u_input.a), func_6(arg_0.a.c, Struct_4(Struct_3(arg_0.a, vec3<i32>(arg_0.b, arg_0.b, arg_0.b), Struct_2(Struct_1(arg_0.a.a, 23043u, arg_0.c), -20526i, true, vec3<f32>(-116f, arg_0.d.x, 1131f)), vec2<u32>(arg_0.a.b, u_input.a)), true, Struct_1(arg_0.d, u_input.a, arg_0.a.c), -1i)).d, false)) & ~firstTrailingBit(vec2<u32>(arg_0.a.b, u_input.a))) >> (reverseBits(~(~(~vec2<u32>(arg_0.a.b, 4294967295u)))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_sub_i32(abs(0i), firstLeadingBit(~func_3(vec3<bool>(false, arg_0.c, arg_0.a.c)).x)) == -31008i;
    var_1 = arg_0.c;
    var var_2 = func_7(Struct_2(arg_0.a, func_3(select(vec3<bool>(arg_0.a.c, true, true), vec3<bool>(false, arg_0.a.c, true), !vec3<bool>(arg_0.a.c, arg_0.c, false))).x, any(select(!vec2<bool>(arg_0.a.c, false), vec2<bool>(true, true), func_5(arg_0.d.x, vec2<bool>(false, arg_0.c), Struct_3(arg_0.a, vec3<i32>(arg_0.b, -7151i, -2147483647i), Struct_2(Struct_1(arg_0.a.a, var_0.x, false), arg_0.b, arg_0.a.c, vec3<f32>(arg_0.d.x, arg_0.a.a.x, 1267f)), vec2<u32>(var_0.x, 19339u))).b)), arg_0.a.a), Struct_4(func_5(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, arg_0.b), vec3<i32>(-1i, -17543i, arg_0.b))).c.d.x, select(!vec2<bool>(arg_0.a.c, arg_0.a.c), !vec2<bool>(arg_0.a.c, false), func_5(arg_0.d.x, vec2<bool>(arg_0.c, false), Struct_3(arg_0.a, vec3<i32>(1i, arg_0.b, arg_0.b), Struct_2(arg_0.a, arg_0.b, false, vec3<f32>(-809f, 688f, arg_0.a.a.x)), vec2<u32>(0u, 0u))).c.c), func_5(_wgslsmith_f_op_f32(-arg_0.a.a.x), select(vec2<bool>(arg_0.a.c, arg_0.c), vec2<bool>(arg_0.a.c, false), vec2<bool>(arg_0.a.c, true)), Struct_3(arg_0.a, vec3<i32>(arg_0.b, arg_0.b, 1i), arg_0, vec2<u32>(arg_0.a.b, u_input.a))).a).a, arg_0.c, arg_0.a, ~(i32(-1i) * -28748i)), func_6(true, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)), vec2<bool>(!arg_0.a.c, true), func_6(arg_0.a.c, Struct_4(Struct_3(Struct_1(arg_0.a.a, arg_0.a.b, false), vec3<i32>(arg_0.b, arg_0.b, arg_0.b), Struct_2(arg_0.a, 64751i, true, arg_0.a.a), vec2<u32>(var_0.x, 1u)), true, arg_0.a, arg_0.b)))).d, Struct_3(func_7(func_2(firstLeadingBit(2147483647i)).c, Struct_4(Struct_3(Struct_1(vec3<f32>(arg_0.d.x, arg_0.d.x, arg_0.a.a.x), u_input.a, arg_0.a.c), vec3<i32>(2147483647i, arg_0.b, arg_0.b), Struct_2(Struct_1(vec3<f32>(-1732f, -430f, arg_0.d.x), arg_0.a.b, arg_0.c), arg_0.b, false, arg_0.a.a), vec2<u32>(1u, 26623u)), arg_0.c, arg_0.a, 1i), _wgslsmith_mod_vec2_u32(func_6(true, Struct_4(Struct_3(arg_0.a, vec3<i32>(-1i, arg_0.b, arg_0.b), arg_0, vec2<u32>(85124u, var_0.x)), arg_0.c, Struct_1(vec3<f32>(941f, arg_0.d.x, arg_0.a.a.x), u_input.a, arg_0.a.c), arg_0.b)).d, ~vec2<u32>(u_input.a, 0u)), Struct_3(arg_0.a, vec3<i32>(36865i, -1i, arg_0.b), arg_0, firstLeadingBit(vec2<u32>(u_input.a, 1u)))).a, -(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, arg_0.b), vec3<i32>(arg_0.b, arg_0.b, arg_0.b)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(0i, 47509i, arg_0.b), vec3<i32>(arg_0.b, 0i, 2147483647i))), arg_0, func_6(false, Struct_4(Struct_3(Struct_1(vec3<f32>(arg_0.d.x, arg_0.a.a.x, -390f), var_0.x, arg_0.a.c), vec3<i32>(arg_0.b, -1i, arg_0.b), Struct_2(arg_0.a, arg_0.b, arg_0.c, vec3<f32>(796f, 1000f, 932f)), vec2<u32>(4294967295u, var_0.x)), arg_0.a.c && false, arg_0.a, 2147483647i)).d)).a;
    var_0 = ~firstTrailingBit(vec2<u32>(4294967295u, _wgslsmith_sub_u32(~8239u, ~var_2.b)));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = u_input.a;
    var var_2 = -(~select(vec3<i32>(i32(-1i) * -4034i, 0i, ~0i), abs(-vec3<i32>(2967i, -24330i, 9901i)), vec3<bool>(false, var_0 | false, any(vec4<bool>(false, false, true, var_0)))));
    var var_3 = (var_2.x | 2147483647i) & ~35286i;
    var_2 = vec3<i32>(var_2.x | func_8(func_7(func_1(Struct_1(vec3<f32>(-994f, 1000f, -518f), u_input.a, var_0), vec3<i32>(var_2.x, 1i, var_2.x)), func_5(-589f, vec2<bool>(false, true), Struct_3(Struct_1(vec3<f32>(-2096f, 312f, 1077f), u_input.a, var_0), vec3<i32>(-49386i, var_2.x, 1669i), Struct_2(Struct_1(vec3<f32>(-827f, 158f, 905f), 60187u, false), 58663i, var_0, vec3<f32>(211f, -656f, 566f)), vec2<u32>(u_input.a, 66928u))), ~vec2<u32>(0u, 24829u), Struct_3(Struct_1(vec3<f32>(172f, -546f, -439f), 1u, var_0), vec3<i32>(var_2.x, var_2.x, 66628i), Struct_2(Struct_1(vec3<f32>(-472f, 234f, -486f), 9408u, var_0), var_2.x, true, vec3<f32>(261f, -1038f, 2570f)), vec2<u32>(u_input.a, 40841u)))), 2147483647i, _wgslsmith_div_i32(_wgslsmith_mod_i32(max(1i, 0i), _wgslsmith_div_i32(i32(-1i) * -2147483647i, i32(-1i) * -26079i)), var_2.x));
    var var_4 = func_6(!(~(~u_input.a) < ~u_input.a), Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(991f, -291f, 1000f)), abs(4294967295u), !var_0), func_2(-var_2.x).b, func_7(func_5(-1029f, vec2<bool>(true, false), Struct_3(Struct_1(vec3<f32>(898f, -1335f, -1049f), u_input.a, var_0), vec3<i32>(1i, var_2.x, var_2.x), Struct_2(Struct_1(vec3<f32>(480f, -1177f, 1000f), u_input.a, false), -43671i, false, vec3<f32>(-1000f, -544f, 2024f)), vec2<u32>(u_input.a, 1u))).a.c, Struct_4(Struct_3(Struct_1(vec3<f32>(-895f, -319f, -303f), u_input.a, var_0), vec3<i32>(var_2.x, var_2.x, -28807i), Struct_2(Struct_1(vec3<f32>(1139f, -1829f, -1100f), u_input.a, var_0), var_2.x, false, vec3<f32>(-195f, 514f, -1000f)), vec2<u32>(40035u, u_input.a)), true, Struct_1(vec3<f32>(-703f, -922f, -2278f), u_input.a, true), 0i), vec2<u32>(0u, 41436u), Struct_3(Struct_1(vec3<f32>(709f, -1120f, -941f), u_input.a, false), vec3<i32>(var_2.x, var_2.x, var_2.x), Struct_2(Struct_1(vec3<f32>(930f, 1169f, 172f), 4294967295u, true), 1i, false, vec3<f32>(-267f, 1210f, 1000f)), vec2<u32>(1u, 28209u))), min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(1u, u_input.a))), all(!vec4<bool>(var_0, false, var_0, var_0)), func_5(1765f, vec2<bool>(true, true), Struct_3(Struct_1(vec3<f32>(-694f, 793f, -1056f), 4294967295u, false), _wgslsmith_mod_vec3_i32(vec3<i32>(-9115i, 0i, var_2.x), vec3<i32>(0i, -15719i, var_2.x)), func_1(Struct_1(vec3<f32>(-432f, 939f, 947f), u_input.a, false), vec3<i32>(7410i, 1i, var_2.x)), vec2<u32>(34290u, u_input.a))).a.c.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, 0i, 5264i), vec3<i32>(var_2.x, var_2.x, 712i)), -(~vec3<i32>(-2147483647i, var_2.x, var_2.x))))).a.c;
    let x = u_input.a;
    s_output = StorageBuffer(31426u, -331f);
}

