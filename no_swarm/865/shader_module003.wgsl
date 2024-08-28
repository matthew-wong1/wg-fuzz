struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-643f, arg_1, arg_1)))))));
    var var_1 = select(arg_2.a.a.zxz, !select(arg_2.d, select(select(vec3<bool>(arg_2.d.x, false, arg_2.a.a.x), arg_2.a.a.yxy, arg_2.a.a.x), select(arg_2.d, vec3<bool>(arg_2.d.x, arg_2.d.x, false), arg_2.a.a.x), true), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_2.a.a.x, arg_2.d.x), 161f != arg_2.b)), select(min(select(u_input.a, 1u, arg_2.a.a.x), ~arg_2.c.x), arg_0, arg_2.d.x) < _wgslsmith_dot_vec3_u32(arg_2.c.xxy, arg_2.c.wxx));
    var var_2 = arg_2.a.a;
    var_2 = select(arg_2.a.a, select(vec4<bool>(!var_1.x, !all(vec3<bool>(true, false, false)), true, !(arg_2.e.x < arg_2.e.x)), vec4<bool>(var_2.x, -661f > _wgslsmith_f_op_f32(-arg_2.b), any(select(vec3<bool>(var_1.x, var_2.x, false), vec3<bool>(true, false, false), false)), any(arg_2.d)), any(!(!arg_2.a.a.wz))), vec4<bool>(true, var_2.x, any(!var_2.wzy), true));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, -198f), vec3<f32>(-504f, 303f, -490f), arg_2.a.a.x)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -1318f, 667f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1882f, -1226f, arg_2.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2.b, 550f) + vec3<f32>(276f, -1105f, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.b, arg_2.b, arg_2.b)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-393f, 207f, arg_1) * vec3<f32>(1352f, 191f, -1484f)), vec3<f32>(1373f, -129f, -811f))))));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.e.x, arg_2.e.x & _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_2.e.yyz, arg_2.e.xxy), vec3<i32>(0i, arg_2.e.x, arg_2.e.x)), i32(-1i) * -36519i, _wgslsmith_add_i32(21317i, arg_2.e.x)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-3115i, arg_2.e.x, 2147483647i, arg_2.e.x), arg_2.e, arg_2.a.a), ~arg_2.e), arg_2.e), select(reverseBits(~arg_2.e), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, 41737i, arg_2.e.x, arg_2.e.x)), vec4<i32>(-50334i, arg_2.e.x, arg_2.e.x, 1i), arg_2.e << (vec4<u32>(0u, arg_2.c.x, 0u, 38518u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(step(-1000f, 786f)) != _wgslsmith_f_op_f32(var_0.x - -1000f))));
}

fn func_2() -> vec2<bool> {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(func_3(u_input.a, 135f, Struct_3(Struct_1(vec4<bool>(false, true, true, false)), 680f, vec4<u32>(u_input.a, 1u, u_input.a, 75717u), vec3<bool>(true, false, false), vec4<i32>(-2147483647i, 10239i, -6225i, 16306i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, 0i, 1i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 2147483647i, -2147483647i, -20369i), vec4<i32>(-2147483647i, 5097i, -1i, -17498i)))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, -48695i, 16187i) ^ reverseBits(-7006i), ~1i)) ^ abs(vec2<i32>(43526i, ~_wgslsmith_add_i32(-59178i, -23596i)));
    var_0 = vec2<i32>(-(i32(-1i) * -reverseBits(var_0.x)), _wgslsmith_mult_i32(select(abs(-2147483647i), var_0.x, u_input.a > u_input.a), _wgslsmith_div_i32(0i, var_0.x)));
    var var_1 = Struct_3(Struct_1(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(all(vec2<bool>(false, false)), true, true, all(vec4<bool>(true, true, false, false))))), _wgslsmith_f_op_f32(-946f + -531f), ~countOneBits(abs(vec4<u32>(u_input.a, 1229u, u_input.a, u_input.a)) & _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, 39330u, u_input.a), vec4<u32>(0u, u_input.a, 21309u, 7028u))), vec3<bool>(true, any(vec4<bool>(true, true, true, true)) | true, u_input.a == u_input.a), vec4<i32>(_wgslsmith_add_i32(var_0.x, var_0.x), 1i & var_0.x, var_0.x, 1i));
    let var_2 = firstLeadingBit(var_1.e.x | abs(var_0.x));
    var var_3 = var_1.c;
    return select(select(var_1.d.yy, select(select(!vec2<bool>(var_1.d.x, var_1.d.x), !var_1.d.xy, select(var_1.d.yy, var_1.d.zy, vec2<bool>(false, var_1.d.x))), select(var_1.a.a.xz, vec2<bool>(true, true), select(var_1.a.a.zy, var_1.a.a.wx, vec2<bool>(var_1.a.a.x, false))), var_1.d.x), any(select(select(vec3<bool>(var_1.d.x, true, var_1.d.x), var_1.d, true), !var_1.d, !var_1.a.a.x))), vec2<bool>(all(!var_1.a.a.xy) | false, var_1.d.x), select(vec2<bool>(all(select(var_1.a.a, vec4<bool>(var_1.d.x, var_1.a.a.x, false, var_1.a.a.x), var_1.d.x)), firstLeadingBit(var_0.x) != var_0.x), select(vec2<bool>(false | var_1.d.x, true && var_1.a.a.x), vec2<bool>(all(vec4<bool>(var_1.d.x, true, false, var_1.d.x)), var_3.x > 16013u), !any(var_1.a.a)), var_1.a.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = arg_0;
    var_0 = Struct_1(select(select(vec4<bool>(false, true, 47391u == u_input.a, arg_0.a.x), vec4<bool>(any(var_0.a.yyy), var_0.a.x, true, !arg_1.x), arg_0.a), arg_0.a, true));
    let var_1 = Struct_2(any(select(select(select(var_0.a.wx, vec2<bool>(false, true), arg_1), !vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(arg_0.a.x, false)), !(!vec2<bool>(arg_0.a.x, true)), select(func_2(), arg_1, func_2()))));
    let var_2 = Struct_2(true && var_0.a.x);
    var var_3 = Struct_3(Struct_1(vec4<bool>(true, func_2().x, false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-387f, _wgslsmith_f_op_f32(f32(-1f) * -529f)))), abs(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(0u, 24638u, u_input.a), ~u_input.a, 5149u) >> (abs(abs(vec4<u32>(0u, 12616u, u_input.a, 4294967295u))) % vec4<u32>(32u))), !(!var_0.a.wxz), (abs(-vec4<i32>(-56429i, -1127i, -10185i, 54531i)) >> (~abs(vec4<u32>(u_input.a, 13476u, 9372u, 0u)) % vec4<u32>(32u))) & vec4<i32>(reverseBits(0i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(21365i, -37214i, -2147483647i, -2147483647i), vec4<i32>(1747i, -11607i, -13828i, 0i)), 0i), _wgslsmith_mod_i32(abs(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-33944i, -1945i, -14359i, 1i), vec4<i32>(15224i, 1i, 17949i, -1i))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2016i, 1i, 15432i), vec3<i32>(6211i, 1i, 0i), vec3<i32>(1i, 1i, 33109i)))));
    return vec3<bool>(arg_1.x, arg_0.a.x, true);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -473f);
    let var_1 = min(abs(~(~(vec3<u32>(u_input.a, 1u, u_input.a) | vec3<u32>(49751u, 44536u, 12371u)))), select(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, ~u_input.a, u_input.a)), reverseBits(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.a, 29613u, 0u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), !func_4(Struct_1(vec4<bool>(true, false, true, false)), func_2())));
    var var_2 = !((_wgslsmith_sub_u32(var_1.x & 12310u, ~u_input.a) <= _wgslsmith_dot_vec2_u32(countOneBits(var_1.yz), countOneBits(var_1.zy))) & all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 4294967295u > var_1.x)));
    let var_3 = _wgslsmith_mod_u32(0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), ~vec2<u32>(0u, 1770u)) % 32u), ~(_wgslsmith_clamp_u32(0u << (var_1.x % 32u), _wgslsmith_mult_u32(1u, var_1.x), 1u) >> ((select(u_input.a, u_input.a, false) ^ 24409u) % 32u)));
    var_2 = select(!(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))) < _wgslsmith_f_op_f32(-1197f + _wgslsmith_f_op_f32(select(var_0, 793f, true)))), (~(var_3 << (var_1.x % 32u)) ^ ~abs(var_1.x)) > _wgslsmith_clamp_u32(4294967295u & var_3, 39730u, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.x, 4294967295u), ~0u)), true);
    return Struct_2(!((true || all(vec4<bool>(false, true, true, true))) == true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~(~0i), ~26587i), ~vec2<i32>(70163i, select(4453i, -2147483647i, false))));
    var var_1 = var_0;
    var var_2 = ~0u;
    var var_3 = 0i;
    var var_4 = Struct_3(Struct_1(!select(select(vec4<bool>(var_1.a, var_0.a, true, true), vec4<bool>(var_1.a, var_1.a, var_0.a, true), vec4<bool>(var_1.a, true, var_0.a, false)), select(vec4<bool>(var_1.a, true, var_1.a, var_0.a), vec4<bool>(var_0.a, false, var_1.a, var_1.a), var_1.a), !vec4<bool>(var_1.a, var_1.a, false, var_0.a))), -1000f, vec4<u32>(u_input.a, ~_wgslsmith_mod_u32(firstTrailingBit(74335u), ~60649u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(15229u, u_input.a)), select(vec2<u32>(42657u, u_input.a), vec2<u32>(u_input.a, 88294u), var_1.a) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), select(~4294967295u, ~(~0u), false)), !vec3<bool>(var_0.a, false, func_4(Struct_1(vec4<bool>(var_1.a, var_0.a, true, true)), !vec2<bool>(false, var_1.a)).x), _wgslsmith_clamp_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, 44443i, 4965i), vec4<i32>(-2147483647i, 1i, 0i, -16340i) >> (vec4<u32>(95724u, 0u, 1u, u_input.a) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -18897i, abs(~2681i), _wgslsmith_dot_vec2_i32(vec2<i32>(2153i, 2147483647i), vec2<i32>(-2147483647i, 2147483647i)) >> (max(u_input.a, 4294967295u) % 32u), 33966i >> (u_input.a % 32u)), select(vec4<i32>(_wgslsmith_add_i32(-16766i, 1610i), 55402i, 50025i, select(5377i, -1i, var_1.a)), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 38580i, -35291i), 0i, i32(-1i) * -5286i, abs(33622i)), !vec4<bool>(var_1.a, var_1.a, var_0.a, true))));
    var var_5 = func_1(_wgslsmith_div_i32(-50642i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b);
}

