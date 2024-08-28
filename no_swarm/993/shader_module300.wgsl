struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = -160f;
    let var_1 = any(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(any(vec3<bool>(true, true, false)), var_0 >= var_0), all(vec3<bool>(true, true, true)))) & !(true || all(vec4<bool>(true, true, true, true)));
    var var_2 = Struct_2(Struct_1(select(~(~vec4<u32>(0u, 1u, 35732u, 0u)), vec4<u32>(_wgslsmith_mod_u32(28482u, 1u), ~7292u, _wgslsmith_dot_vec4_u32(vec4<u32>(43359u, 0u, 74339u, 4294967295u), vec4<u32>(16813u, 0u, 0u, 1u)), 0u), !all(vec4<bool>(var_1, var_1, true, true))), _wgslsmith_f_op_f32(floor(-508f)), false, -2147483647i, select(firstLeadingBit(max(u_input.a.x, 23921i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 1i, u_input.a.x), vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<bool>(var_1, false, var_1)), vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x)), false)));
    var_2 = Struct_2(Struct_1(~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.a.x, 1u, 62191u, var_2.a.a.x), vec4<u32>(1u, 34775u, 51105u, 55443u)) ^ (var_2.a.a & var_2.a.a)), _wgslsmith_f_op_f32(sign(var_2.a.b)), all(!select(vec3<bool>(var_2.a.c, false, false), vec3<bool>(var_2.a.c, var_2.a.c, false), var_1)), _wgslsmith_add_i32(u_input.a.x, var_2.a.e), u_input.a.x));
    var var_3 = Struct_1(~(~(~(~vec4<u32>(var_2.a.a.x, var_2.a.a.x, 4294967295u, 1u)))), _wgslsmith_f_op_f32(ceil(-1379f)), true, -2431i, 0i);
    return 4294967295u;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = ~(vec4<u32>(0u, func_3(), firstLeadingBit(1u), 0u) ^ vec4<u32>(4294967295u, 14966u, func_3(), ~select(13308u, 14067u, arg_0.x)));
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1046f + -232f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(609f * -196f)))), 1000f), vec3<bool>(!arg_0.x | all(!vec4<bool>(true, arg_0.x, arg_0.x, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-261f, -1279f, false)), _wgslsmith_f_op_f32(f32(-1f) * -647f))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-238f, 2071f, false)))), true), vec2<u32>(4294967295u, var_0.x));
    var_1 = Struct_3(var_1.a, select(select(!var_1.b, vec3<bool>(arg_0.x | var_1.b.x, var_1.b.x | false, 1u < var_1.c.x), var_1.b.x), var_1.b, select(vec3<bool>(true, any(vec4<bool>(var_1.b.x, true, false, true)), true), select(vec3<bool>(var_1.b.x, false, false), vec3<bool>(true, true, arg_0.x), vec3<bool>(var_1.b.x, arg_0.x, false)), all(!vec4<bool>(var_1.b.x, arg_0.x, arg_0.x, false)))), _wgslsmith_mult_vec2_u32(var_1.c, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.c.x), ~vec2<u32>(var_0.x, 1u)), var_1.c)));
    var var_2 = any(vec4<bool>(arg_0.x, !(_wgslsmith_f_op_f32(var_1.a * var_1.a) == -627f), true, arg_0.x));
    var var_3 = 4294967295u;
    return Struct_1(~var_0, _wgslsmith_f_op_f32(min(1291f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(516f)))) + var_1.a))), (_wgslsmith_dot_vec2_i32(min(u_input.a, vec2<i32>(0i, 2147483647i)), firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x))) << ((10807u ^ select(var_1.c.x, 1u, false)) % 32u)) <= 1i, 1140i, ~(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x)) & ~(-1i));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.a.b);
    var var_1 = vec3<f32>(-388f, _wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(min(var_0, var_0)));
    var var_2 = Struct_3(var_0, !vec3<bool>(true, true, !(!arg_1.a.c)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.a.a.xy, arg_1.a.a.ww), ~arg_1.a.a.x >> (~1u % 32u)));
    var var_3 = arg_1.a;
    var var_4 = _wgslsmith_add_vec3_i32(reverseBits(abs(max(u_input.b.xxz, _wgslsmith_add_vec3_i32(vec3<i32>(-15040i, arg_0.x, arg_1.a.d), u_input.b.yzy)))), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, ~arg_2.x | -1i, i32(-1i) * -arg_1.a.d), _wgslsmith_mult_vec3_i32(firstTrailingBit(arg_2), vec3<i32>(5449i, -33322i, arg_0.x)) & min(vec3<i32>(arg_2.x, 0i, var_3.e) >> (arg_1.a.a.zxw % vec3<u32>(32u)), arg_0)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yy), _wgslsmith_f_op_vec2_f32(max(var_1.zy, _wgslsmith_f_op_vec2_f32(select(var_1.yz, vec2<f32>(var_2.a, -640f), var_2.b.zz))))) - var_1.xz), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xz)))));
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(func_2(vec2<bool>(true, true)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.b))), var_0.a.b))), !vec3<bool>(var_0.a.c, !var_0.a.c & (var_0.a.c && true), !(var_0.a.c | true)), vec2<u32>(func_2(!vec2<bool>(true, var_0.a.c)).a.x, 0u) >> (vec2<u32>(~4294967295u, var_0.a.a.x) % vec2<u32>(32u)));
    return func_2(select(!vec2<bool>(true, var_1.c.x >= 0u), var_1.b.yx, !(!var_1.b.xy)));
}

fn func_1() -> f32 {
    var var_0 = select(firstLeadingBit(abs(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.b.x), reverseBits(1i), firstLeadingBit(13356i), u_input.b.x))), _wgslsmith_sub_vec4_i32(-(~u_input.b) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(25049u, 78562u, 0u, 0u), min(vec4<u32>(37977u, 68121u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 35481u, 1u))) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(1i, -u_input.a.x, 2147483647i, ~54414i))), true);
    var_0 = _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, vec4<i32>(var_0.x & -48893i, _wgslsmith_div_i32(0i, u_input.b.x), ~(-var_0.x), abs(u_input.b.x))) << (abs(vec4<u32>(~(~102572u), _wgslsmith_dot_vec4_u32(vec4<u32>(24390u, 1u, 48371u, 38221u), vec4<u32>(55808u, 25191u, 90762u, 4294967295u)), 1u, ~1u)) % vec4<u32>(32u));
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_4(vec3<i32>(4945i, 18663i, -21823i) ^ -vec3<i32>(u_input.a.x, 0i, u_input.a.x), Struct_2(func_2(vec2<bool>(true, false))), ~(u_input.b.yww << (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u))))))));
    let var_2 = Struct_2(func_5(vec2<f32>(1436f, var_1.b)));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1311f), _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mult_vec3_i32(firstLeadingBit(var_0.zyx), var_0.yxw), Struct_2(var_2.a), var_0.zzy)).x, 1003f)));
    return _wgslsmith_f_op_f32(-var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(2147483647i);
    let var_1 = Struct_4(Struct_1(_wgslsmith_add_vec4_u32(~(~vec4<u32>(31720u, 30825u, 1u, 45125u)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(24448u, 1u, 65082u, 87615u), vec4<u32>(75166u, 10436u, 83638u, 0u), vec4<u32>(13651u, 1u, 4294967295u, 47470u)))), _wgslsmith_f_op_f32(func_1()), true, ~(~u_input.a.x), u_input.a.x), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 4294967295u), abs(vec2<u32>(80286u, 18734u))), vec2<u32>(1u, ~57779u)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(3365u, 31125u)), vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(34887u, 4294967295u, 4294967295u), vec3<u32>(57535u, 0u, 16690u))))), true, Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1891f)), ~u_input.b.x > (21380i >> (1u % 32u)), ~u_input.a.x, 10499i)));
    var_0 = _wgslsmith_sub_i32(58932i, 7516i);
    var_0 = countOneBits(abs(-var_1.a.e)) & -firstTrailingBit(max(-var_1.d.a.d, u_input.b.x));
    let var_2 = func_2(select(select(!vec2<bool>(true, var_1.a.c), vec2<bool>(true, true), true), select(vec2<bool>(true, !var_1.a.c), vec2<bool>(var_1.d.a.b >= var_1.a.b, any(vec3<bool>(false, true, var_1.d.a.c))), select(true, var_1.c, select(var_1.c, var_1.a.c, true))), select(vec2<bool>(true, !var_1.c), select(select(vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, var_1.d.a.c), vec2<bool>(false, false)), select(vec2<bool>(false, var_1.d.a.c), vec2<bool>(true, var_1.c), vec2<bool>(true, true)), vec2<bool>(var_1.c, true)), !(!var_1.c))));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.d.a.a.zyy), var_3.a.a.x, _wgslsmith_add_vec4_u32(~firstLeadingBit(var_1.d.a.a), abs(var_2.a | vec4<u32>(0u, 14277u, 0u, 63737u))) ^ select(var_1.d.a.a, reverseBits(var_3.a.a), vec4<bool>(func_5(vec2<f32>(118f, 160f)).c, var_3.a.c && false, true && var_1.c, true)), 4294967295u);
}

