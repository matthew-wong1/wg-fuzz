struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(8045u, u_input.b, 4294967295u), vec3<u32>(29100u, u_input.b, u_input.a.x), vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x))), 54425u, 1u, ~min(u_input.c.x, u_input.b))), (vec4<u32>(3658u, u_input.c.x, u_input.a.x, 1u) | ~vec4<u32>(56191u, u_input.a.x, u_input.b, u_input.c.x)) & vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), u_input.c), u_input.c.x), ~(~u_input.c.x), 30684u), Struct_1(vec4<u32>(u_input.c.x, ~27677u, u_input.a.x, ~16156u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-960f, -1000f, 166f, -1476f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-730f, 764f, 1211f, 751f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(262f, 1172f, -440f, 1476f) - vec4<f32>(-1758f, -1000f, -1019f, -664f)) - vec4<f32>(404f, -2222f, 861f, -473f)))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 80658u), u_input.c.x, 30686u, u_input.b), abs(select(~vec4<u32>(u_input.c.x, 0u, u_input.b, u_input.a.x), vec4<u32>(4294967295u, 1u, u_input.c.x, u_input.c.x), vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_1(vec4<u32>(var_0.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(23094u, var_0.e.x, u_input.c.x)), var_0.c.a.yww), ~20135u, firstLeadingBit(~u_input.a.x)));
    let var_2 = vec2<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true);
    let var_3 = select(select(select(vec3<bool>(any(vec4<bool>(false, var_2.x, var_2.x, var_2.x)), false, var_2.x), select(!vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, true, false)), !vec3<bool>(false, var_2.x, var_2.x)), select(!vec3<bool>(true, var_2.x, var_2.x), !vec3<bool>(true, true, var_2.x), true), all(!(!vec3<bool>(var_2.x, var_2.x, var_2.x)))), select(vec3<bool>(var_2.x || !var_2.x, false, !all(vec4<bool>(false, var_2.x, true, false))), !(!select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x), false)), false), !select(!(!vec3<bool>(true, var_2.x, false)), !vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.x));
    let var_4 = Struct_4(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(var_1.a, ~vec4<u32>(var_1.a.x, u_input.c.x, var_0.b.x, u_input.b)), ~25458u));
    return countOneBits(select(~(~(~vec2<u32>(var_0.c.a.x, var_0.b.x))), max(var_1.a.zz, abs(vec2<u32>(89290u, var_4.a.x))), true));
}

fn func_2() -> bool {
    var var_0 = Struct_3(func_3(), Struct_2(Struct_1(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.b, 0u, 0u), vec4<u32>(1u, 1u, u_input.a.x, 24701u), vec4<bool>(false, false, true, true)), vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u) & vec4<u32>(u_input.c.x, 4294967295u, 37442u, 5633u))), _wgslsmith_mult_vec4_u32(max(~vec4<u32>(0u, u_input.a.x, 1u, 5336u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(64092u, 14834u, 29467u, u_input.c.x), vec4<u32>(86472u, u_input.c.x, 0u, u_input.c.x))), reverseBits(select(vec4<u32>(u_input.b, u_input.a.x, u_input.b, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, u_input.b), true))), Struct_1(max(select(vec4<u32>(14163u, u_input.c.x, u_input.b, u_input.b), vec4<u32>(6057u, u_input.a.x, 83850u, 56568u), true), abs(vec4<u32>(u_input.b, u_input.c.x, 0u, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -722f, 1391f, -1000f) + vec4<f32>(-1038f, 1145f, 1149f, -1135f))))), vec4<u32>(func_3().x, ~u_input.c.x, u_input.b & 11322u, u_input.b) | _wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 14977u, u_input.b, 0u), vec4<u32>(4294967295u, u_input.a.x, 57301u, u_input.a.x), false), vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x) & vec4<u32>(3222u, 0u, 4294967295u, 0u))), _wgslsmith_clamp_vec4_u32((vec4<u32>(1u, u_input.b, u_input.a.x, u_input.b) >> (~vec4<u32>(0u, u_input.c.x, 0u, u_input.b) % vec4<u32>(32u))) | ~vec4<u32>(u_input.c.x, u_input.b, 0u, u_input.a.x), vec4<u32>(~select(u_input.c.x, 2112u, false), ~(~u_input.c.x), ~16791u, 60527u), ~(vec4<u32>(37382u, u_input.a.x, 36463u, u_input.a.x) >> (vec4<u32>(21675u, u_input.b, u_input.c.x, 0u) % vec4<u32>(32u)))));
    var var_1 = true;
    let var_2 = true;
    var var_3 = ~select(reverseBits(vec2<i32>(1i, 1i)), -(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 60878i), vec2<i32>(28781i, 19947i)) >> (u_input.c % vec2<u32>(32u))), !all(vec3<bool>(false, var_2, true)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.d.wwx) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-188f, var_0.b.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -615f), -1009f))));
    return true;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_4(~select((vec3<u32>(u_input.b, 8293u, 73987u) | vec3<u32>(u_input.b, u_input.c.x, 1u)) & _wgslsmith_div_vec3_u32(vec3<u32>(1u, 60179u, 0u), vec3<u32>(u_input.b, 22267u, 58831u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.a.x, u_input.b), vec3<u32>(u_input.c.x, u_input.a.x, 24714u)), arg_1.x));
    var var_1 = -1012f;
    var var_2 = ~(~var_0.a.xz);
    var_1 = -983f;
    var_1 = _wgslsmith_f_op_f32(-140f - -1384f);
    return Struct_2(Struct_1(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(30708u, 4294967295u, 3657u, var_2.x), vec4<u32>(var_0.a.x, u_input.a.x, 25009u, var_2.x)), countOneBits(u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_2.x, var_0.a.x)), var_0.a.x))), vec4<u32>(_wgslsmith_clamp_u32(94128u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(var_2.x, 27974u)), abs(var_0.a.x)), ~u_input.b, max(31217u, 0u) >> ((4294967295u | u_input.a.x) % 32u), func_3().x) | abs(max(vec4<u32>(u_input.b, var_2.x, 8957u, var_0.a.x), ~vec4<u32>(1u, 1u, 1u, 41061u))), Struct_1(~(~(vec4<u32>(u_input.a.x, 19697u, u_input.b, u_input.a.x) << (vec4<u32>(17192u, 1u, 9885u, 0u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-943f, arg_0.x, _wgslsmith_f_op_f32(626f * -938f), -694f), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(trunc(1024f)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x))))), ~vec4<u32>(1u, _wgslsmith_mod_u32(1u, reverseBits(46262u)), max(firstTrailingBit(1u), var_2.x), select(var_2.x, var_0.a.x >> (u_input.b % 32u), select(false, true, arg_1.x))));
}

fn func_1() -> Struct_4 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(776f, -1139f, -835f) + vec3<f32>(-497f, 144f, -332f)), vec3<f32>(-167f, 427f, -1498f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-662f, -936f, 2166f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-955f, 926f, -119f) - vec3<f32>(1000f, -1098f, -887f))))), select(select(vec3<bool>(false, true, false), vec3<bool>(select(false, false, true), false, true), func_2() & true), !select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)))));
    var var_1 = var_0.a;
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(var_0.e, ~var_1.a)), ~vec4<u32>(firstLeadingBit(firstLeadingBit(var_1.a.x)), ~(~12928u), ~_wgslsmith_sub_u32(0u, var_1.a.x), firstLeadingBit(countOneBits(var_1.a.x))), func_4(_wgslsmith_div_vec3_f32(func_4(var_0.d.yxy, select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))).d.wzw, vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x)), vec3<bool>(true, true, true)).c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.d))))))), vec4<u32>(u_input.a.x, countOneBits(reverseBits(1u)), var_0.c.a.x, 19604u));
    var var_3 = firstTrailingBit(_wgslsmith_div_vec2_i32(-vec2<i32>(1i, 1i), select(~(-vec2<i32>(-1i, -32492i)), min(vec2<i32>(2147483647i, 43980i), -vec2<i32>(-709i, -36214i)), vec2<bool>(true, false))));
    var_3 = (-(~(-vec2<i32>(-1i, -2147483647i))) | abs(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, var_3.x)), max(vec2<i32>(var_3.x, var_3.x), vec2<i32>(-26071i, 2147483647i)), vec2<i32>(-10396i, 32950i)))) >> (~(~(~var_1.a.yx)) % vec2<u32>(32u));
    return Struct_4(firstTrailingBit(min(~abs(var_0.a.a.xxy), var_0.e.wxy)));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = vec3<bool>(true, all(vec3<bool>(any(vec2<bool>(true, true)), true, any(vec2<bool>(true, true)))), !func_2());
    let var_1 = vec4<i32>(min(-20739i, _wgslsmith_dot_vec4_i32(vec4<i32>(-36520i, 85216i, 15208i, -9131i), vec4<i32>(-2147483647i, -4610i, -42724i, 104906i)) ^ firstTrailingBit(18521i)) | 2147483647i, -2147483647i, _wgslsmith_sub_i32(-26328i << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.a.x, u_input.b), arg_0.a) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 22241i, 29347i, 25323i), -vec4<i32>(0i, -18948i, -5177i, 1i))) & max(firstTrailingBit(_wgslsmith_mod_i32(-15590i, 1i)), i32(-1i) * -2147483647i), _wgslsmith_mod_i32(-47886i, 2147483647i));
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_3.d.wy + vec2<f32>(1827f, arg_3.d.x));
    var_2 = vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(90057u, 72426u)), u_input.c));
    return min(vec4<u32>(func_4(vec3<f32>(736f, var_3.x, -2560f), !var_0).b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, 17193u, 1u), vec4<u32>(35141u, 84248u, arg_0.a.x, 42614u) >> (vec4<u32>(72346u, arg_2, 1u, arg_2) % vec4<u32>(32u))), _wgslsmith_div_u32(var_2.x, u_input.a.x) | 52739u, ~_wgslsmith_sub_u32(u_input.a.x, 12841u)), _wgslsmith_clamp_vec4_u32(arg_3.b, ~(vec4<u32>(var_2.x, 0u, 76520u, u_input.a.x) ^ arg_3.a.a), arg_3.e)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(35695u, arg_3.c.a.x, arg_2), 4294967295u, ~firstLeadingBit(1u), _wgslsmith_add_u32(~0u, u_input.c.x ^ 1u)), ~arg_3.c.a) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(~vec4<u32>(u_input.b, u_input.b | 33748u, 53981u, 51673u)), _wgslsmith_mult_vec4_u32(~firstLeadingBit(~vec4<u32>(4294967295u, 71289u, 1u, 54981u)), _wgslsmith_mod_vec4_u32(func_5(func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2406f, -1066f, 1477f)), 1u, Struct_2(Struct_1(vec4<u32>(1u, u_input.a.x, 5598u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.b, u_input.c.x, u_input.b), Struct_1(vec4<u32>(0u, u_input.b, u_input.b, 4294967295u)), vec4<f32>(1341f, -265f, 1378f, -1710f), vec4<u32>(u_input.b, 0u, 4350u, u_input.a.x))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.a.x, 55498u), vec4<u32>(35019u, u_input.c.x, 0u, 24783u)))), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 421f, 1274f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, -680f, 583f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(617f, -301f, 559f) * vec3<f32>(367f, 665f, -1225f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(696f, -1154f, 1427f))))), vec3<bool>(true, true, all(vec2<bool>(true, true)))).c, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-2034f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(524f * _wgslsmith_f_op_f32(sign(-344f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-139f)), 134f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -790f) + func_4(vec3<f32>(-235f, -1486f, 1342f), vec3<bool>(true, true, true)).d.x)))), vec4<u32>(26468u, u_input.a.x, 188u, 1u));
    let var_1 = false;
    let var_2 = func_1();
    var var_3 = Struct_3(~func_1().a.zz, Struct_2(func_4(func_4(vec3<f32>(-851f, var_0.d.x, var_0.d.x), !vec3<bool>(var_1, var_1, var_1)).d.yyy, vec3<bool>(true, true, true)).c, var_0.a.a, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.b.x) & var_0.a.a, var_0.a.a ^ var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), -881f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1064f - var_0.d.x) * _wgslsmith_f_op_f32(ceil(1602f))), func_4(_wgslsmith_f_op_vec3_f32(abs(var_0.d.yxx)), select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, false, false), vec3<bool>(true, false, true))).d.x), _wgslsmith_sub_vec4_u32(countOneBits(select(var_0.a.a, vec4<u32>(var_2.a.x, 21077u, var_2.a.x, u_input.a.x), vec4<bool>(var_1, var_1, true, var_1))), vec4<u32>(~u_input.a.x, var_0.a.a.x, var_2.a.x | 4294967295u, ~var_2.a.x))), min(~var_0.e, var_0.c.a));
    var var_4 = Struct_3(countOneBits(~select(var_2.a.xy, vec2<u32>(29289u, 4294967295u), false)) << (func_3() % vec2<u32>(32u)), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1148f, -357f, var_3.b.d.x)) - _wgslsmith_div_vec3_f32(var_0.d.wyx, vec3<f32>(1332f, -937f, var_3.b.d.x))), vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x + var_3.b.d.x), _wgslsmith_f_op_f32(step(var_0.d.x, var_3.b.d.x)), _wgslsmith_f_op_f32(-2480f + -1534f))), !(!(!vec3<bool>(false, false, var_1)))), abs(~var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(-(~min(3757i, _wgslsmith_mult_i32(0i, 1241i))), vec4<f32>(var_3.b.d.x, var_4.b.d.x, _wgslsmith_f_op_f32(412f * var_4.b.d.x), 1000f));
}

