struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_3(Struct_2(arg_0, Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 38829i, 20441i), vec3<i32>(-358i, u_input.a.x, 35923i) >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))), all(select(vec4<bool>(true, arg_1, true, false), vec4<bool>(false, arg_1, true, arg_1), arg_1)), !arg_1 && arg_1, arg_2), _wgslsmith_clamp_i32(34077i, ~(-19922i), ~abs(u_input.b))));
    var var_1 = vec3<i32>(-1i | _wgslsmith_add_i32(select(u_input.a.x, countOneBits(var_0.a.b.a.x), true), 46506i), countOneBits(14521i), ~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-11106i, 0i, -1i, 1i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 21005i, 20766i, -18823i), vec4<i32>(-1i, var_0.a.c, 2147483647i, var_0.a.c))));
    var_1 = select(-abs(var_0.a.b.a), max(~(max(vec3<i32>(2147483647i, var_0.a.c, u_input.a.x), var_0.a.b.a) << (max(vec3<u32>(51517u, u_input.c, 1u), vec3<u32>(1066u, 0u, u_input.c)) % vec3<u32>(32u))), firstLeadingBit(var_0.a.b.a) | u_input.a), vec3<bool>(any(!select(vec2<bool>(true, var_0.a.b.b), vec2<bool>(var_0.a.b.b, var_0.a.b.c), arg_1)), any(vec2<bool>(var_0.a.b.c, false)), true));
    var var_2 = _wgslsmith_sub_vec2_i32(~(-vec2<i32>(reverseBits(u_input.b), -1i)), vec2<i32>(max(~(22264i << (u_input.c % 32u)), _wgslsmith_div_i32(-2147483647i, -2147483647i & u_input.a.x)), var_0.a.c));
    var_0 = Struct_3(var_0.a);
    return _wgslsmith_div_vec3_u32(reverseBits(countOneBits(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 39527u, u_input.c)), ~vec3<u32>(u_input.c, u_input.c, u_input.c), ~vec3<u32>(u_input.c, u_input.c, u_input.c)))), vec3<u32>(11421u, 4294967295u, 13046u) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(36629u, 1u), vec2<u32>(u_input.c, 72930u)), 9249u, ~0u) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-28457i, -29755i) & -u_input.a.x, min(_wgslsmith_mod_i32(u_input.b, -3883i), 1i)), arg_1, 19408i), true != all(vec3<bool>(true, true, all(vec2<bool>(true, false)))), true, arg_0.x);
    var var_1 = ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(19424u, 108971u, u_input.c), vec3<u32>(52587u, 0u, 82773u), vec3<u32>(1u, u_input.c, 71654u)))) >> (func_3(var_0.d, any(vec3<bool>(var_0.b, var_0.b, var_0.b)) & var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(258f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))) % vec3<u32>(32u));
    var var_2 = select(select(!vec3<bool>(var_0.c, !var_0.b, true), select(select(!vec3<bool>(var_0.b, true, var_0.b), !vec3<bool>(var_0.c, true, true), true), select(vec3<bool>(false, var_0.b, var_0.c), vec3<bool>(true, true, true), !vec3<bool>(var_0.b, var_0.b, false)), select(!vec3<bool>(var_0.b, false, true), vec3<bool>(true, true, false), any(vec3<bool>(var_0.c, var_0.c, true)))), vec3<bool>(true, false, any(vec4<bool>(var_0.c, false, true, false)) || var_0.b)), !(!(!(!vec3<bool>(var_0.c, true, true)))), select(vec3<bool>(!(var_0.d > -135f), any(!vec2<bool>(var_0.b, var_0.b)), false && var_0.b), select(vec3<bool>(true, false, var_0.b), select(!vec3<bool>(var_0.c, var_0.c, true), select(vec3<bool>(true, var_0.b, true), vec3<bool>(true, false, true), vec3<bool>(var_0.b, false, var_0.b)), vec3<bool>(var_0.c, var_0.c, var_0.b)), var_0.b), true));
    let var_3 = Struct_1(-vec3<i32>(select(var_0.a.x, var_0.a.x, var_0.d >= arg_0.x), ~_wgslsmith_mod_i32(var_0.a.x, 2425i), arg_1), any(!(!select(vec3<bool>(true, var_0.c, false), vec3<bool>(false, true, false), true))), !(~_wgslsmith_div_u32(u_input.c, var_1.x) != ~(~var_1.x)), -612f);
    let var_4 = var_1.x;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = vec2<bool>(select(any(!vec2<bool>(true, arg_0.b)), arg_0.b, true), true);
    var_0 = !(!vec2<bool>(_wgslsmith_sub_i32(-2147483647i, u_input.b) >= u_input.b, !var_0.x && true));
    var_0 = select(!(!select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(arg_0.c, true), false))), !select(!(!vec2<bool>(var_0.x, true)), !(!vec2<bool>(false, arg_0.c)), !(!var_0.x)), true);
    let var_1 = Struct_3(Struct_2(arg_1, arg_0, countOneBits(i32(-1i) * -10799i)));
    var var_2 = arg_0.a.x;
    return var_1.a;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(263f, 128f, -584f, -1000f)), vec4<f32>(1000f, -756f, 999f, 265f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(-634f, 218f, 982f, -410f)))), 1i), 762f);
    let var_1 = vec4<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(false, var_0.b.b), false), !vec2<bool>(true, var_0.b.c), vec2<bool>(true, false))) || !(!(55812u > u_input.c)), all(select(select(vec3<bool>(var_0.b.c, var_0.b.c, false), vec3<bool>(false, var_0.b.c, false), vec3<bool>(var_0.b.c, var_0.b.b, true)), select(vec3<bool>(var_0.b.c, var_0.b.c, var_0.b.b), vec3<bool>(var_0.b.b, true, false), vec3<bool>(false, var_0.b.c, true)), !vec3<bool>(var_0.b.c, false, var_0.b.c))) || all(vec2<bool>(true, true)), all(vec3<bool>(!any(vec3<bool>(var_0.b.b, false, var_0.b.b)), any(vec3<bool>(true, true, var_0.b.c)), !var_0.b.c)), abs((1i >> (u_input.c % 32u)) >> (0u % 32u)) == u_input.b);
    var_0 = func_4(Struct_1(select(vec3<i32>(var_0.b.a.x ^ 0i, func_4(var_0.b, var_0.b.d).b.a.x, u_input.a.x ^ u_input.a.x), max(vec3<i32>(arg_0.x, arg_0.x, u_input.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, arg_0.x, arg_0.x), u_input.a)), !select(vec3<bool>(true, false, false), vec3<bool>(var_1.x, var_0.b.c, var_1.x), var_1.zzy)), true, true, var_0.a), _wgslsmith_f_op_f32(ceil(var_0.b.d)));
    var_0 = Struct_2(1119f, func_4(func_4(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-793f, 336f, -1593f, var_0.b.d) + vec4<f32>(var_0.a, var_0.a, -337f, var_0.a)), firstLeadingBit(962i)), -579f).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1817f, 498f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.d), _wgslsmith_f_op_f32(993f + var_0.b.d)))).b, abs(max(_wgslsmith_mult_i32(u_input.a.x >> (4294967295u % 32u), -2147483647i), max(arg_0.x, 1i))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(1000f - func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.d, -965f, -1699f, var_0.b.d))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-39871i, 0i, arg_0.x), vec3<i32>(var_0.c, var_0.c, arg_0.x)))).d), func_4(Struct_1(vec3<i32>(arg_0.x, min(arg_0.x, -2147483647i), ~u_input.a.x), var_0.b.b, var_0.b.c, _wgslsmith_f_op_f32(var_0.b.d + 889f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d) - _wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1301f, -1125f))))).b, countOneBits(firstTrailingBit(arg_0.x)));
    return ~max(~(~u_input.c), u_input.c);
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<f32> {
    return vec4<f32>(1285f, 139f, -472f, func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-191f, _wgslsmith_f_op_f32(-arg_2.d), 1166f, arg_2.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, arg_2.d, arg_2.d, arg_2.d)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.d, arg_2.d, -1996f, -1581f))), !arg_2.b)))), 4978i).d);
}

fn func_6(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_5(u_input.c, vec3<u32>(9454u, u_input.c, 9485u), Struct_1(vec3<i32>(29898i, -12278i, 0i), arg_0, true, -109f))).x))))), Struct_1(_wgslsmith_sub_vec3_i32(max(~arg_2, countOneBits(vec3<i32>(2147483647i, u_input.a.x, arg_2.x))), vec3<i32>(-u_input.a.x, u_input.a.x, func_4(Struct_1(u_input.a, arg_0, false, 746f), -785f).c)), true, !(!(arg_0 | arg_0)), _wgslsmith_div_f32(arg_1.x, 117f)), 0i);
    let var_1 = func_4(Struct_1(var_0.b.a, !arg_0, all(!(!vec3<bool>(arg_0, arg_0, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1119f), _wgslsmith_f_op_f32(821f - _wgslsmith_f_op_f32(-arg_1.x))))), var_0.b.d).b.d;
    var var_2 = arg_1;
    var var_3 = func_4(Struct_1(arg_2, true, any(!vec3<bool>(true, var_0.b.c, true)), -1000f), _wgslsmith_f_op_f32(step(var_0.a, 1964f)));
    var_3 = var_0;
    return Struct_2(1236f, Struct_1(abs(~firstTrailingBit(vec3<i32>(-1i, 35345i, arg_2.x))), true, var_3.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(arg_2, ~u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, arg_2.x), vec3<i32>(arg_2.x, var_3.c, arg_2.x)))) >> (u_input.c % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(true, _wgslsmith_f_op_vec4_f32(func_5(u_input.c, vec3<u32>(~(~u_input.c), func_1(u_input.a.yy), ~(~66748u)), Struct_1(vec3<i32>(1i, 0i, 50313i), true, ~u_input.c >= u_input.c, 113f))), vec3<i32>(-1i) * -u_input.a);
    let var_1 = vec3<f32>(func_2(vec4<f32>(_wgslsmith_f_op_f32(1177f - _wgslsmith_f_op_f32(-943f + -1782f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))), 717f), firstLeadingBit(u_input.a.x)).d, _wgslsmith_f_op_f32(1409f * var_0.b.d), var_0.a);
    let var_2 = false;
    var var_3 = func_4(Struct_1(~max(u_input.a, var_0.b.a), !select(u_input.a.x != u_input.b, func_6(var_0.b.c, vec4<f32>(var_1.x, -1447f, -1000f, var_0.b.d), u_input.a).b.b, false), any(vec4<bool>(true, true, true, true)), var_0.a), _wgslsmith_f_op_f32(step(1000f, var_1.x))).b.a;
    var var_4 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(2147483647i, -u_input.b), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(select(-14017i, -2147483647i, false), -30370i, 1i), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.b.d, -447f, -229f)), -1i).a.x), var_0.b.a.x), vec3<i32>(~(~(~var_0.b.a.x)), abs(1i), 58581i));
    var_4 = firstTrailingBit(vec3<i32>(0i, ~(-37367i << (u_input.c % 32u)), var_3.x) & u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_6(!all(select(vec2<bool>(var_0.b.b, true), vec2<bool>(var_2, false), vec2<bool>(var_0.b.c, var_0.b.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1738f, -229f, var_0.b.d, _wgslsmith_f_op_f32(select(-645f, -234f, false)))), select(~vec3<i32>(-17612i, var_4.x, 2147483647i), firstTrailingBit(vec3<i32>(u_input.a.x, var_3.x, var_4.x)), any(select(vec4<bool>(true, false, true, var_0.b.c), vec4<bool>(false, var_0.b.c, var_0.b.b, var_2), false)))).b.a.x);
}

