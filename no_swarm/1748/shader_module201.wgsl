struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_4, 26>;

var<private> global2: array<i32, 6>;

var<private> global3: f32;

var<private> global4: f32 = -861f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = min(u_input.b, (_wgslsmith_dot_vec3_i32(vec3<i32>(-36769i, arg_0.d.a, arg_2.a), u_input.c.xxw) & -arg_1.d.a) ^ arg_2.a);
    var var_1 = ~arg_0.d.d.x;
    var_1 = arg_2.d.x;
    let var_2 = _wgslsmith_f_op_f32(-arg_0.c);
    var var_3 = Struct_1(_wgslsmith_mult_i32(arg_1.d.a << (abs(~arg_2.d.x) % 32u), -arg_1.d.a), arg_1.e, arg_2.e.x, ~_wgslsmith_clamp_vec3_u32(arg_0.d.d, arg_2.d, ~firstLeadingBit(arg_0.d.d)), select(select(select(arg_1.d.e, arg_2.e, arg_0.a == arg_0.a), select(vec4<bool>(false, true, arg_2.b, false), vec4<bool>(false, true, false, arg_0.b), arg_1.d.e), arg_0.e), arg_1.d.e, select(vec4<bool>(true, all(arg_2.e), !arg_0.e, arg_3), select(select(arg_1.d.e, arg_2.e, true), arg_1.d.e, !arg_2.e), select(select(arg_1.d.e, arg_2.e, true), select(vec4<bool>(false, arg_0.e, false, arg_2.c), arg_2.e, false), select(arg_1.d.e, arg_0.d.e, arg_1.b)))));
    return -1587f;
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1014f, _wgslsmith_f_op_f32(arg_0 * 128f)), vec2<f32>(-834f, _wgslsmith_div_f32(arg_0, arg_0))), vec2<f32>(1000f, _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(arg_0 * 1000f)))))));
    global4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(2706u, true, -1000f, Struct_1(53295i, true, true, vec3<u32>(17195u, 27867u, 1102u), vec4<bool>(true, false, false, true)), true), Struct_4(0u, true, -1316f, Struct_1(u_input.c.x, true, false, vec3<u32>(100131u, 1u, 1u), vec4<bool>(false, true, true, true)), true), Struct_1(-24245i, true, true, vec3<u32>(2055u, 0u, 1u), vec4<bool>(true, true, true, true)), -2147483647i < global2[_wgslsmith_index_u32(4294967295u, 6u)])) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-401f, 938f)))) + _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_mod_u32(12823u, 74224u), any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(f32(-1f) * -709f), Struct_1(global2[_wgslsmith_index_u32(25707u, 6u)], false, true, vec3<u32>(112202u, 4294967295u, 1u), vec4<bool>(false, false, true, false)), true), Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 6007u, 71764u), vec4<u32>(102584u, 5118u, 4294967295u, 0u)), true, _wgslsmith_f_op_f32(f32(-1f) * -1134f), Struct_1(-2147483647i, true, true, vec3<u32>(13739u, 17702u, 4294967295u), vec4<bool>(false, true, true, false)), true), Struct_1(~global2[_wgslsmith_index_u32(0u, 6u)], false, false, firstTrailingBit(vec3<u32>(1u, 4294967295u, 8779u)), vec4<bool>(true, true, true, true)), true)))));
    var var_1 = _wgslsmith_div_f32(652f, arg_0);
    let var_2 = abs(~max(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 29616u), vec2<u32>(32308u, 5374u)))) < 1u;
    let var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(~(~vec3<u32>(24490u, 62803u, 0u)), max(reverseBits(vec3<u32>(4294967295u, 1u, 58510u)), vec3<u32>(1u, 1u, 1u)), !(!vec3<bool>(false, true, var_2)))), min(abs(~_wgslsmith_sub_u32(104u, 0u)), reverseBits(~abs(20398u))), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(90667u, abs(0u), countOneBits(4294967295u)))));
    return vec2<bool>(any(select(vec3<bool>(false, select(var_2, false, var_2), var_2), !vec3<bool>(var_2, false, var_2), false)), var_2);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    global3 = _wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(ceil(1117f)), true));
    let var_0 = all(!arg_1.d.e.ywz);
    let var_1 = Struct_3(Struct_2(u_input.a.x, _wgslsmith_f_op_f32(func_3(Struct_4(arg_1.d.d.x, false, 1212f, arg_1.d, true), arg_1, arg_1.d, var_0)) < -729f, arg_1.c, !arg_1.d.e, max(_wgslsmith_div_vec4_u32(max(vec4<u32>(29577u, arg_1.d.d.x, arg_2, 1u), vec4<u32>(arg_2, 11960u, arg_1.d.d.x, arg_2)), select(vec4<u32>(arg_1.a, arg_1.d.d.x, 66524u, arg_2), vec4<u32>(0u, 69766u, arg_2, 4294967295u), arg_1.d.e)), abs(vec4<u32>(39532u, arg_1.a, arg_2, arg_2)))), Struct_2(arg_0.x, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(214f, arg_1.c)), _wgslsmith_f_op_f32(exp2(arg_1.c)), !arg_3.x)), arg_1.c), !select(select(vec4<bool>(arg_1.b, false, var_0, var_0), vec4<bool>(arg_1.e, true, true, true), arg_1.d.e.x), arg_1.d.e, var_0), firstTrailingBit(~vec4<u32>(17108u, 16884u, arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_1.c, arg_1.c, arg_1.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1015f, 1000f, 179f, 930f) * vec4<f32>(1000f, 372f, 406f, -1349f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(285f * -504f), _wgslsmith_f_op_f32(-arg_1.c), -2207f)))));
    let var_2 = !vec3<bool>(false, any(vec2<bool>(true, true)), arg_1.d.a <= _wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, u_input.c.x), _wgslsmith_sub_i32(arg_0.x, arg_0.x)));
    let var_3 = global1[_wgslsmith_index_u32(countOneBits(countOneBits(_wgslsmith_dot_vec2_u32(var_1.a.e.zz, ~vec2<u32>(4294967295u, var_1.b.e.x)))), 26u)];
    return arg_2;
}

fn func_1() -> Struct_3 {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-274f, 865f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f), -137f));
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, _wgslsmith_sub_u32(59474u, 1u)), select(vec2<u32>(32772u, 4294967295u), ~vec2<u32>(4294967295u, 56001u), vec2<bool>(true, false)))), ~_wgslsmith_add_u32(1u, 15038u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 62996u, 1u), max(vec4<u32>(0u, 59227u, 4294967295u, 1u), vec4<u32>(0u, 21776u, 15928u, 4294967295u)))), ~func_4(firstTrailingBit(u_input.c.wzz), global1[_wgslsmith_index_u32(1u, 26u)], min(86647u, 34486u), func_2(-381f))));
    let var_1 = 490f;
    let var_2 = Struct_1(-1i, any(vec3<bool>(true, true, true)), true | (!any(vec3<bool>(false, false, true)) | !all(vec2<bool>(false, false))), firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(7843u, 2086u, 11088u))), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, any(vec4<bool>(true, true, true, false)), true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, 7009i == u_input.c.x, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(u_input.c.x >= 2147483647i, true, all(vec4<bool>(false, true, false, true)), true))));
    var var_3 = Struct_2(-(~select(global2[_wgslsmith_index_u32(~4294967295u, 6u)], u_input.b, !var_2.c)), all(var_2.e.yz), var_1, select(var_2.e, var_2.e, var_2.c), abs(~(~(~vec4<u32>(0u, var_2.d.x, var_2.d.x, var_2.d.x)))));
    return Struct_3(Struct_2(-39737i, var_3.b, 719f, vec4<bool>(1f > _wgslsmith_f_op_f32(-var_1), abs(var_3.e.x) >= reverseBits(var_2.d.x), any(!vec2<bool>(var_2.b, var_3.b)), !var_3.d.x || var_3.b), _wgslsmith_mod_vec4_u32(var_3.e, var_3.e)), Struct_2(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_3.a, 0i), ~(-var_3.a)), var_3.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f)))), !var_3.d, var_3.e | var_3.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, var_1, var_3.c, -1184f))))))));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global0 = ~u_input.b;
    let var_0 = arg_3;
    global2 = array<i32, 6>();
    var var_1 = arg_0.a.d.x;
    var var_2 = vec3<bool>(any(vec3<bool>(true, true, true)), true && !(!(u_input.c.x == -2147483647i)), func_2(1f).x);
    return func_1().b;
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1575f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c + -169f)))));
    global2 = array<i32, 6>();
    let var_1 = any(vec2<bool>(arg_1.x, !arg_1.x));
    var var_2 = !func_1().b.d.wxz;
    let var_3 = Struct_1(~(2147483647i << (arg_2.e.x % 32u)), true, func_5(func_1(), 1019f, abs(u_input.c.x), Struct_1(global2[_wgslsmith_index_u32(abs(func_1().b.e.x), 6u)], all(arg_1.wy), !var_1, vec3<u32>(arg_2.e.x, 1u, arg_2.e.x), !select(arg_2.d, arg_1, arg_2.d))).d.x, _wgslsmith_add_vec3_u32(select(~min(arg_2.e.xzw, arg_2.e.xwx), ~arg_2.e.xxx, func_1().a.b), ~(~(~vec3<u32>(arg_2.e.x, 4294967295u, arg_2.e.x)))), !vec4<bool>(~arg_2.e.x > ~4294967295u, any(vec4<bool>(true, false, var_2.x, true)), !(!var_2.x), any(vec2<bool>(true, true))));
    return func_5(func_1(), arg_2.c, u_input.b << (arg_2.e.x % 32u), var_3);
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    let var_0 = -1i & _wgslsmith_sub_i32(abs(8778i), -_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(7583u, 6u)], -30156i));
    var var_1 = max(~(vec2<i32>(~24292i, -23102i) << (vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0.e.wwx, vec3<u32>(arg_0.e.x, arg_0.e.x, 12917u)), 1u) % vec2<u32>(32u))), u_input.c.xw);
    var_1 = (~_wgslsmith_sub_vec2_i32(u_input.a, u_input.c.xz) | u_input.a) << (~(~vec2<u32>(arg_0.e.x, 0u)) % vec2<u32>(32u));
    var var_2 = _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.zwx, u_input.c.xxz), ~vec3<i32>(u_input.b, 2147483647i, -2147483647i))), _wgslsmith_mod_vec3_i32(~u_input.c.xyz << (arg_0.e.xzz % vec3<u32>(32u)), ~u_input.c.wxw));
    var var_3 = countOneBits(-2147483647i);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_7(func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, 2392f, 1546f, 2231f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, 1553f, 1966f, -994f) - vec4<f32>(-883f, -507f, -659f, -180f))), vec4<bool>(true, true, true, true), func_5(func_1(), _wgslsmith_f_op_f32(-1000f * -2077f), -32493i, Struct_1(u_input.c.x, true, false, vec3<u32>(31644u, 4667u, 79909u), vec4<bool>(false, true, false, true))))), Struct_2(1i, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(425f + 1137f)), func_6(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_f_op_f32(round(1737f)), -1000f, _wgslsmith_f_op_f32(788f + -596f)), vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(60248u, 6u)] == u_input.b), Struct_2(_wgslsmith_add_i32(0i, 57552i), true, _wgslsmith_f_op_f32(trunc(712f)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), ~vec4<u32>(0u, 68144u, 0u, 1u))).d, ~vec4<u32>(max(21477u, 4300u), 4294967295u, ~4294967295u, 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_5(Struct_3(Struct_2(u_input.b, false, 459f, vec4<bool>(false, true, true, false), vec4<u32>(1u, 6393u, 4294967295u, 0u)), Struct_2(-2147483647i, true, -1000f, vec4<bool>(true, true, true, true), vec4<u32>(4294967295u, 4294967295u, 1u, 1u)), vec4<f32>(-424f, 1970f, -1164f, 531f)), -620f, global2[_wgslsmith_index_u32(1u, 6u)], Struct_1(13840i, true, true, vec3<u32>(40284u, 1791u, 74368u), vec4<bool>(false, false, true, false))).c + _wgslsmith_f_op_f32(min(-827f, -307f))), func_1().b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1377f - -1505f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1431f), _wgslsmith_f_op_f32(round(func_5(Struct_3(Struct_2(1i, false, 313f, vec4<bool>(true, true, true, true), vec4<u32>(94710u, 28394u, 90275u, 0u)), Struct_2(1i, false, -923f, vec4<bool>(false, true, true, false), vec4<u32>(0u, 0u, 25239u, 1u)), vec4<f32>(531f, -487f, 175f, -847f)), -806f, 0i, Struct_1(u_input.b, false, true, vec3<u32>(0u, 4294967295u, 0u), vec4<bool>(false, true, true, false))).c)), _wgslsmith_f_op_f32(trunc(1f)), -1722f)));
    let var_1 = ~var_0.a.e;
    let var_2 = func_1();
    global3 = _wgslsmith_f_op_f32(-var_2.b.c);
    let var_3 = -min(firstTrailingBit(vec4<i32>(~global2[_wgslsmith_index_u32(1u, 6u)], 2147483647i, _wgslsmith_div_i32(var_0.a.a, var_2.a.a), u_input.c.x)), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(abs(vec2<u32>(1u, 28760u)), var_1.xw, func_6(func_1().c, var_2.b.d, Struct_2(1i, false, var_0.c.x, var_2.b.d, var_1)).d.x)), i32(-1i) * -40122i);
}

