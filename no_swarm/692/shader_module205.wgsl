struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> i32 {
    var var_0 = arg_1.a.e;
    var_0 = arg_1.a.e;
    var var_1 = Struct_1(1u, arg_1.b, !(arg_1.d.x <= arg_1.a.e), arg_1.e.e, 513f);
    var var_2 = 4048i;
    var var_3 = -(~u_input.a) >> (vec3<u32>(_wgslsmith_mod_u32((arg_1.a.a ^ arg_1.e.b.a) >> (arg_0 % 32u), abs(1u)), 4294967295u, firstTrailingBit(var_1.a) >> (min(1u, var_1.a ^ 6367u) % 32u)) % vec3<u32>(32u));
    return arg_1.e.b.b;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(countOneBits(0u), max(func_3(~(~1u), Struct_3(Struct_1(1u, 22814i, false, vec4<bool>(true, false, false, false), -232f), ~(-1i), Struct_1(4294967295u, 26291i, false, vec4<bool>(false, true, false, true), -445f), vec4<f32>(415f, -281f, 695f, -1322f), Struct_2(Struct_1(67243u, u_input.b, false, vec4<bool>(false, true, false, false), 1831f), Struct_1(37220u, -1i, false, vec4<bool>(true, true, true, true), -793f), Struct_1(55199u, 2147483647i, true, vec4<bool>(false, true, false, true), 602f), Struct_1(1u, 2147483647i, false, vec4<bool>(false, true, true, true), -1181f), vec4<bool>(false, false, true, true)))), -9319i), true, vec4<bool>(true, true, true, true), 465f);
    let var_1 = Struct_2(var_0, Struct_1(~max(4294967295u, firstTrailingBit(1u)), abs(var_0.b), false, !var_0.d, -1180f), Struct_1(var_0.a, _wgslsmith_mult_i32(~2147483647i, -u_input.b) << (countOneBits(var_0.a | var_0.a) % 32u), any(vec2<bool>(var_0.c && false, false)), var_0.d, -710f), Struct_1(var_0.a, 2397i, var_0.d.x, !vec4<bool>(var_0.b < -28983i, var_0.d.x, all(var_0.d), var_0.d.x), var_0.e), select(vec4<bool>(-17304i > max(1i, var_0.b), any(vec3<bool>(false, false, false)), false, any(!var_0.d.xww)), vec4<bool>(true, true, !(u_input.b >= -1i), var_0.c), var_0.d.x));
    let var_2 = Struct_2(Struct_1(~select(var_1.b.a, var_1.c.a, false) << (~(~43701u) % 32u), _wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(u_input.a.x, var_1.c.b, u_input.b)), var_1.b.d.x || var_1.b.c, select(vec4<bool>(true, true, !var_1.b.c, var_1.a.c || var_1.c.c), vec4<bool>(true, var_0.d.x, !var_1.e.x, true), all(vec3<bool>(true, var_0.c, true)) & !var_1.b.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.d.e, var_0.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1602f)))))), Struct_1(max(var_0.a, _wgslsmith_add_u32(32888u, reverseBits(84530u))), -22783i, false, !var_1.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(260f * -1000f), _wgslsmith_f_op_f32(var_1.c.e + 1072f), false)), -1520f, select(!var_1.a.c, true, var_0.c)))), var_1.c, Struct_1(4294967295u, select(var_1.d.b, u_input.a.x, true), false != var_0.c, var_0.d, _wgslsmith_f_op_f32(-1386f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.e + var_1.a.e) * _wgslsmith_f_op_f32(select(var_1.c.e, var_0.e, false))))), vec4<bool>(var_0.c, any(select(vec3<bool>(var_1.c.c, false, var_1.c.d.x), !var_0.d.zxy, var_0.c)), !(4294967295u >= var_1.d.a), 0u > var_0.a));
    var var_3 = Struct_1(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.a, var_1.c.a, 51073u)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.a, 30146u, var_0.a), vec3<u32>(var_1.c.a, var_2.c.a, 1u)))), select(var_2.c.b, ~5989i, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-541f, 2165f))) >= -959f), !any(var_0.d), select(select(vec4<bool>(var_1.d.c && var_0.c, var_2.a.c, !var_0.c, !var_0.c), !(!vec4<bool>(false, var_2.a.c, false, var_1.a.c)), !select(vec4<bool>(var_1.c.d.x, var_0.c, var_2.a.c, false), var_0.d, var_2.c.d.x)), !vec4<bool>(var_1.b.e < var_2.c.e, !var_0.d.x, true, all(vec3<bool>(var_0.d.x, false, true))), any(var_2.d.d)), _wgslsmith_f_op_f32(-962f - _wgslsmith_f_op_f32(ceil(var_2.c.e))));
    var_3 = Struct_1(29907u, func_3(var_0.a, Struct_3(Struct_1(var_2.d.a, _wgslsmith_dot_vec2_i32(vec2<i32>(23314i, 1i), u_input.a.xx), !var_0.c, select(vec4<bool>(var_3.d.x, var_0.c, var_2.c.c, var_2.a.c), vec4<bool>(true, true, true, false), var_0.c), 1476f), 1i, var_2.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1531f, var_3.e, 1285f, -1278f) + vec4<f32>(var_3.e, -1336f, var_0.e, 1000f)))), var_1)), var_0.c, vec4<bool>(any(vec2<bool>(true, true)), true, !select(true, var_2.b.d.x, true), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.e)))), select(var_1.d.d.x, true, var_0.d.x))));
    return Struct_3(Struct_1(~0u, _wgslsmith_div_i32(abs(var_0.b), 0i), false, var_0.d, _wgslsmith_f_op_f32(-var_0.e)), _wgslsmith_div_i32(-var_1.a.b, min(12659i, max(-16831i, 1i))) | 2147483647i, Struct_1(~_wgslsmith_mult_u32(firstTrailingBit(4294967295u), var_0.a), reverseBits(var_0.b ^ -var_2.c.b), any(vec3<bool>(true, !var_1.d.d.x, var_3.d.x)), var_2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-366f))) * _wgslsmith_f_op_f32(var_2.d.e - var_1.c.e))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1126f, _wgslsmith_f_op_f32(var_2.d.e - _wgslsmith_f_op_f32(-var_3.e)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d.e))), var_0.e)), var_1);
}

fn func_1() -> vec3<i32> {
    let var_0 = func_2();
    let var_1 = var_0;
    var var_2 = func_2();
    let var_3 = Struct_2(Struct_1(firstLeadingBit(4294967295u), 23445i, !(!var_1.c.d.x), select(select(!var_0.e.b.d, !var_2.a.d, var_0.a.d), func_2().a.d, true), _wgslsmith_f_op_f32(462f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.e, var_2.e.b.e) * 1032f))), func_2().a, Struct_1(45687u, -((i32(-1i) * -2147483647i) & var_0.c.b), var_0.a.c || !var_1.c.d.x, select(vec4<bool>(true, true, true, true), var_1.e.e, select(vec4<bool>(var_0.a.d.x, true, var_2.e.a.d.x, true), select(var_2.c.d, var_2.c.d, var_1.c.d), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2().e.a.e + _wgslsmith_f_op_f32(step(var_1.a.e, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-918f + var_2.d.x) - var_0.c.e))), Struct_1(_wgslsmith_mult_u32(var_1.e.a.a, 12924u), abs(-1i), var_0.a.d.x, select(!(!var_0.e.d.d), !var_2.c.d, var_1.a.d), var_1.c.e), select(!var_0.c.d, vec4<bool>(var_1.a.d.x, true, all(vec2<bool>(var_0.c.c, false)) != (var_0.a.c || false), var_1.a.c), 62032u >= _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.e.b.a, 41795u, 0u, 0u), ~vec4<u32>(var_0.e.b.a, var_2.e.a.a, 4294967295u, 4294967295u))));
    let var_4 = _wgslsmith_sub_u32(~20863u | _wgslsmith_sub_u32(8665u << (var_3.c.a % 32u), _wgslsmith_sub_u32(var_0.c.a, 1u)), var_3.a.a | _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.a, var_3.b.a, 67669u, 0u), vec4<u32>(35367u, 1u, 17858u, 0u)) & _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.a, var_2.a.a, 1u, 12339u), vec4<u32>(var_3.a.a, var_2.c.a, var_1.a.a, var_1.e.a.a)), ~(vec4<u32>(0u, 0u, 4294967295u, var_0.c.a) >> (vec4<u32>(4294967295u, var_3.b.a, var_0.c.a, var_2.a.a) % vec4<u32>(32u)))));
    return -select(_wgslsmith_add_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-57i, 2147483647i, 15551i), u_input.a)), _wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a.x, -7006i, u_input.a.x), min(vec3<i32>(37000i, u_input.a.x, 2147483647i), u_input.a))), !vec3<bool>(var_2.e.a.c, false, true));
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = (~(func_2().c.a >> (abs(0u) % 32u)) >> (_wgslsmith_div_u32(min(~24934u, ~4294967295u), ~1u) % 32u)) != 4294967295u;
    var var_1 = vec4<f32>(323f, func_2().c.e, 1f, _wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_1(_wgslsmith_add_u32(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 26507u), vec2<u32>(25202u, 4294967295u))), (select(1u, 5371u, true) << (max(63762u, 5560u) % 32u)) & abs(~0u)), 1i, true, !(!(!func_2().e.a.d)), _wgslsmith_f_op_f32(var_1.x + var_1.x));
    let var_3 = func_2().a;
    let var_4 = func_2().e;
    return Struct_1(_wgslsmith_dot_vec4_u32(select(countOneBits(firstTrailingBit(vec4<u32>(0u, var_3.a, 0u, 11365u))), vec4<u32>(~var_2.a, var_3.a, countOneBits(var_2.a), 1u), all(vec3<bool>(true, var_3.d.x, false)) && !var_2.d.x), vec4<u32>(var_4.c.a, 32895u, 3292u, abs(~5041u))), 1i, false, var_3.d, 402f);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: i32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f))));
    let var_1 = func_4(-vec3<i32>(42291i, arg_3, _wgslsmith_mod_i32(arg_0.b, func_2().b))).d.wz;
    return StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(~arg_1.yz, _wgslsmith_div_vec2_i32(u_input.a.xz, arg_1.zz)), -u_input.a.yx) | ~vec2<i32>(-13657i, arg_1.x), arg_1.xw, max(vec3<u32>(31868u, 1u, arg_0.a) >> (~vec3<u32>(38388u, arg_0.a, 4294967295u) % vec3<u32>(32u)), vec3<u32>(34278u, _wgslsmith_clamp_u32(arg_0.a, arg_0.a, arg_0.a), 1u)) >> (_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(25986u, 26117u, arg_0.a) >> (vec3<u32>(arg_0.a, arg_0.a, 0u) % vec3<u32>(32u))), countOneBits(vec3<u32>(arg_0.a, arg_0.a, arg_0.a))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), false, any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))));
    let var_1 = -623f;
    var var_2 = 315f;
    var_2 = _wgslsmith_f_op_f32(abs(var_1));
    let var_3 = firstTrailingBit(-max(~(vec4<i32>(19979i, u_input.a.x, 45436i, -1i) & vec4<i32>(-9712i, -42052i, u_input.b, 4851i)), vec4<i32>(abs(0i), _wgslsmith_mult_i32(86141i, -510i), _wgslsmith_clamp_i32(u_input.b, 446i, u_input.b), u_input.a.x & u_input.a.x)));
    let x = u_input.a;
    s_output = func_5(func_4(~func_1()), vec4<i32>(reverseBits(~(~(-1i))), var_3.x, 28207i, var_3.x), ~1i, reverseBits(func_3(reverseBits(select(24724u, 36580u, var_0.x)), func_2())));
}

