struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> i32 {
    var var_0 = Struct_3(arg_1.a);
    var_0 = Struct_3(vec4<bool>(var_0.a.x, false, !(!var_0.a.x), any(arg_1.a)));
    var_0 = Struct_3(!select(vec4<bool>(true, !arg_1.a.x, true, false | arg_1.a.x), !select(var_0.a, vec4<bool>(var_0.a.x, arg_1.a.x, var_0.a.x, true), false), (arg_0.x <= arg_0.x) || arg_1.a.x));
    var_0 = Struct_3(!arg_1.a);
    var_0 = arg_1;
    return _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(32343i, firstLeadingBit(2147483647i)), min(-vec2<i32>(13057i, -2147483647i), -vec2<i32>(1i, 0i))), max(1i, ~1i)), i32(-1i) * -109097i, -1i);
}

fn func_4(arg_0: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(345f + 553f)), 508f, _wgslsmith_sub_i32(arg_0.x, 0i) > 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1197f, -995f) * -1267f) - 1f))));
    var_0 = _wgslsmith_f_op_f32(ceil(-328f));
    var_0 = 1135f;
    var var_1 = Struct_3(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, true, false, false)), all(vec2<bool>(true, false)) || any(vec4<bool>(true, false, false, true))));
    let var_2 = Struct_1(!(!vec3<bool>(var_1.a.x | var_1.a.x, all(vec2<bool>(true, var_1.a.x)), var_1.a.x && true)), vec3<u32>(u_input.a, 4294967295u, _wgslsmith_div_u32(reverseBits(1u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(1u, 24220u, u_input.a)), firstLeadingBit(vec3<u32>(u_input.a, 46013u, u_input.a))))));
    return false;
}

fn func_2(arg_0: u32) -> vec3<i32> {
    let var_0 = vec2<bool>(all(vec2<bool>(false, false)), !func_4(vec2<i32>(func_3(vec2<f32>(-1030f, -841f), Struct_3(vec4<bool>(false, true, false, true))), ~1i)));
    let var_1 = Struct_1(vec3<bool>(var_0.x, false, all(!select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, true), var_0.x))), select(vec3<u32>(~abs(u_input.a), 1u, 4294967295u), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 43284u, 1u)), vec3<u32>(0u, 15174u, u_input.a)) >> (min(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 28001u, 17379u) % vec3<u32>(32u)), vec3<u32>(0u, arg_0, arg_0)) % vec3<u32>(32u)), true));
    let var_2 = Struct_1(vec3<bool>(any(var_1.a), var_1.a.x, all(select(!vec3<bool>(var_1.a.x, var_0.x, var_1.a.x), !vec3<bool>(var_1.a.x, true, true), any(var_1.a)))), ~_wgslsmith_sub_vec3_u32(var_1.b, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, arg_0, var_1.b.x), vec4<u32>(0u, 50818u, 1u, 728u)), _wgslsmith_mod_u32(arg_0, u_input.a), 54051u & var_1.b.x)));
    var var_3 = Struct_3(!(!vec4<bool>(true, false, false, var_0.x & true)));
    let var_4 = var_1;
    return vec3<i32>(-2147483647i, max((_wgslsmith_sub_i32(-7429i, 1i) << ((0u >> (var_1.b.x % 32u)) % 32u)) | _wgslsmith_sub_i32(_wgslsmith_div_i32(-4251i, 7609i), -14683i), -1i), select(firstTrailingBit(1i), ~min(38329i, i32(-1i) * -26377i), true));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    let var_0 = -func_2(11888u);
    var var_1 = any(vec2<bool>(true, true));
    return Struct_2(Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)), select(vec3<u32>(u_input.a, 35265u, 18327u) ^ vec3<u32>(40691u, u_input.a, u_input.a), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), true))), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(abs(vec2<u32>(1u, 1u))), select(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, u_input.a), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), ~abs(34844u | u_input.a), _wgslsmith_mult_u32(15885u, abs(u_input.a))));
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = 76773u >> (arg_2.x % 32u);
    var var_1 = Struct_3(vec4<bool>(true, true, select(arg_3.a.a.x, func_1(870f, arg_0.x).a.a.x, true) || arg_3.a.a.x, true));
    let var_2 = arg_2.xww;
    return Struct_3(select(var_1.a, var_1.a, any(var_1.a)));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    var var_0 = countOneBits(abs(countOneBits(~_wgslsmith_mult_u32(52056u, 38465u))));
    var var_1 = Struct_3(!(!vec4<bool>(arg_1.x, true, true, arg_3.a.a.x)));
    var_1 = arg_2;
    var_0 = func_1(_wgslsmith_f_op_f32(step(-871f, _wgslsmith_f_op_f32(step(1315f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2014f, -792f)), _wgslsmith_f_op_f32(-1319f + -643f)))))), 11293i).b.x;
    var var_2 = -(~(vec2<i32>(1i, 1i) << (_wgslsmith_clamp_vec2_u32(arg_0.zx, arg_3.a.b.zy, arg_3.a.b.yy) % vec2<u32>(32u))) << (vec2<u32>(~(arg_0.x & 4294967295u), min(4294967295u, 0u)) % vec2<u32>(32u)));
    return arg_3;
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = ~select(arg_0.a.b, max(countOneBits(abs(vec3<u32>(4294967295u, 78294u, 27649u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.x, u_input.a, 1u), vec4<u32>(arg_0.b.x, u_input.a, u_input.a, arg_2.x)), arg_2.x, _wgslsmith_div_u32(87052u, arg_2.x))), !select(arg_0.a.a, !arg_0.a.a, func_6(vec3<u32>(4294967295u, 4294967295u, arg_0.a.b.x), vec3<bool>(true, arg_0.a.a.x, false), Struct_3(vec4<bool>(false, arg_1, false, true)), arg_0).a.a));
    let var_1 = _wgslsmith_mult_vec3_i32(-(~max(vec3<i32>(18802i, arg_3.x, arg_3.x) & vec3<i32>(26860i, 0i, arg_3.x), countOneBits(vec3<i32>(arg_3.x, arg_3.x, arg_3.x)))), -vec3<i32>(arg_3.x, ~arg_3.x, ~arg_3.x) << (func_6(vec3<u32>(u_input.a | u_input.a, _wgslsmith_mult_u32(arg_2.x, 39408u), var_0.x), func_1(_wgslsmith_div_f32(-1093f, 988f), -arg_3.x).a.a, Struct_3(!vec4<bool>(false, false, arg_1, arg_0.a.a.x)), func_1(-911f, arg_3.x)).b % vec3<u32>(32u)));
    let var_2 = _wgslsmith_mod_i32(~_wgslsmith_mod_i32(arg_3.x, -13659i) & _wgslsmith_mod_i32(-12801i, abs(23337i)), 8903i) << (arg_2.x % 32u);
    let var_3 = select(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1881f - 681f)))), i32(-1i) * -1i).a.a.x, arg_0.a.a.x && any(vec3<bool>(!arg_1, true, true)), func_4(max(reverseBits(var_1.zz), var_1.xy)) || false);
    var var_4 = i32(-1i) * -_wgslsmith_dot_vec3_i32(var_1 | var_1, -var_1);
    return func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1622f)))))), -countOneBits(~(~(-1i)))).a;
}

fn func_8(arg_0: Struct_1) -> Struct_3 {
    let var_0 = -(~vec4<i32>(1i, 1i, 1i, 1i));
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_div_u32(~u_input.a, countOneBits(0u)), _wgslsmith_mult_u32(arg_0.b.x, u_input.a), countOneBits(~u_input.a ^ 1u)), ~(~abs(countOneBits(vec4<u32>(u_input.a, 3644u, 0u, u_input.a)))));
    let var_2 = Struct_3(vec4<bool>(true, true, _wgslsmith_mult_u32(4294967295u, 1u) >= ~abs(var_1), func_7(func_1(_wgslsmith_f_op_f32(1740f + 979f), -2147483647i << (arg_0.b.x % 32u)), !(!arg_0.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), ~vec4<u32>(4294967295u, 4294967295u, arg_0.b.x, var_1)), -countOneBits(var_0.xx)).a.x));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1228f, 1498f)) * _wgslsmith_f_op_f32(962f + 2809f)))))));
    var var_4 = ~136488u;
    return Struct_3(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(func_6(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 49519u, 37332u), vec3<u32>(4294967295u, 31283u, 7012u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), func_5(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(676f - 837f), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)), func_1(-334f, -1i)), Struct_2(func_1(-554f, -2147483647i).a, ~vec3<u32>(u_input.a, 1u, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(582f)) + _wgslsmith_f_op_f32(f32(-1f) * -540f)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-491f)))), ~countOneBits(~vec4<u32>(1u, 39275u, u_input.a, u_input.a)), ~select(~vec2<i32>(43512i, -28587i), vec2<i32>(2147483647i, 2147483647i), func_6(vec3<u32>(u_input.a, 60601u, 37441u), vec3<bool>(true, false, false), Struct_3(vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<u32>(u_input.a, u_input.a, 14798u)), vec3<u32>(u_input.a, 29461u, 58964u))).a.a.x)));
    let var_1 = !(!select(vec3<bool>(true, true && var_0.a.x, func_6(vec3<u32>(69666u, u_input.a, 4294967295u), vec3<bool>(var_0.a.x, true, false), Struct_3(var_0.a), Struct_2(Struct_1(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<u32>(17086u, u_input.a, u_input.a))).a.a.x), !vec3<bool>(var_0.a.x, var_0.a.x, false), true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1573f, 180f), _wgslsmith_f_op_f32(f32(-1f) * -529f)))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f));
    var var_3 = func_6(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(39918u, 0u, 44089u) & vec3<u32>(u_input.a, u_input.a, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(43814u, 75517u, 31419u), vec3<u32>(51305u, u_input.a, 46120u)), func_7(Struct_2(Struct_1(var_1, vec3<u32>(u_input.a, u_input.a, 14749u)), vec3<u32>(u_input.a, u_input.a, u_input.a)), var_1.x, vec4<u32>(45813u, 1u, u_input.a, u_input.a), vec2<i32>(62657i, -23123i)).a), vec3<u32>(23431u, 1u << (u_input.a % 32u), u_input.a)), ~select(vec3<u32>(69885u, u_input.a, 17964u) | vec3<u32>(u_input.a, u_input.a, 51424u), ~vec3<u32>(u_input.a, u_input.a, u_input.a), 1u != u_input.a)), vec3<bool>(var_1.x & !var_0.a.x, any(vec3<bool>(var_2, true, var_2 | var_1.x)), !(!func_7(Struct_2(Struct_1(var_1, vec3<u32>(23867u, 49019u, u_input.a)), vec3<u32>(1u, 66109u, u_input.a)), var_0.a.x, vec4<u32>(36627u, 18567u, u_input.a, 4294967295u), vec2<i32>(-2147483647i, 2147483647i)).a.x)), func_8(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-307f + -627f) - -638f), _wgslsmith_div_i32(_wgslsmith_mult_i32(4771i, -1i), -13607i)).a), Struct_2(Struct_1(func_5(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(1224f - 225f), vec4<u32>(0u, u_input.a, 37902u, 1u), Struct_2(Struct_1(var_1, vec3<u32>(u_input.a, u_input.a, 61766u)), vec3<u32>(u_input.a, u_input.a, 0u))).a.xzy, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(6331u, u_input.a, u_input.a), vec3<u32>(96945u, u_input.a, 0u)), u_input.a, 15644u)), (vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 49178u, 0u) % vec3<u32>(32u))) ^ countOneBits(vec3<u32>(4809u, 4294967295u, 1u))));
    var var_4 = ~2147483647i;
    var_4 = -func_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 765f), -327f), _wgslsmith_f_op_f32(-1467f - 1065f)), func_8(Struct_1(!var_3.a.a, var_3.a.b)));
    let var_5 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(172f, 210f)))), _wgslsmith_f_op_f32(round(-155f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1678f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(598f, 2152f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 174f, var_3.a.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-711f, 563f, _wgslsmith_f_op_f32(f32(-1f) * -2069f), -244f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1088f, -594f, -1000f, 963f) - vec4<f32>(228f, -1352f, 283f, 155f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-706f, 1306f, -1882f, 610f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, 915f, -2108f, -760f))))));
    var_4 = -(~(firstTrailingBit(-2147483647i) << (0u % 32u))) & _wgslsmith_div_i32(2147483647i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, 82459u, func_6(var_3.b, var_1, Struct_3(var_0.a), func_6(vec3<u32>(var_3.a.b.x, 3793u, var_3.b.x) & _wgslsmith_clamp_vec3_u32(var_3.b, vec3<u32>(1u, var_3.b.x, u_input.a), vec3<u32>(u_input.a, 1u, var_3.b.x)), func_6(~var_3.a.b, var_0.a.xzx, Struct_3(var_0.a), Struct_2(Struct_1(vec3<bool>(false, var_1.x, false), var_3.a.b), vec3<u32>(var_3.a.b.x, var_3.a.b.x, 28713u))).a.a, Struct_3(var_0.a), func_6(vec3<u32>(4294967295u, 4294967295u, 0u), !var_3.a.a, var_0, func_1(var_5.x, 2147483647i)))).a.b.zy, ~select(vec4<u32>(u_input.a, 4294967295u, func_7(Struct_2(Struct_1(vec3<bool>(true, false, var_1.x), var_3.a.b), vec3<u32>(1u, 1u, var_3.b.x)), false, vec4<u32>(56694u, 4294967295u, var_3.a.b.x, var_3.b.x), vec2<i32>(-1i, -27646i)).b.x, 4294967295u), reverseBits(vec4<u32>(1u, 4294967295u, var_3.b.x, 0u)) | vec4<u32>(4294967295u, u_input.a, u_input.a, var_3.a.b.x), vec4<bool>(!var_1.x, !var_0.a.x, var_1.x, var_3.b.x >= u_input.a)));
}

