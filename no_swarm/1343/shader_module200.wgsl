struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-1032f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1312f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -985f))))), max(firstLeadingBit(abs(vec4<u32>(0u, 5321u, u_input.b, u_input.b))), vec4<u32>(_wgslsmith_div_u32(1u, 9805u), ~u_input.b, ~1717u, 4294967295u & u_input.b)) << (vec4<u32>(u_input.b, ~21052u, 1u, min(~43260u, reverseBits(0u))) % vec4<u32>(32u)), arg_0, !any(!vec2<bool>(true, arg_2)), select(select(vec3<bool>(arg_2, true, arg_2), !(!vec3<bool>(arg_2, arg_2, false)), true), select(vec3<bool>(arg_2 != arg_2, any(vec2<bool>(arg_2, true)), true), !vec3<bool>(true, true, arg_2), select(vec3<bool>(false, arg_2, arg_2), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), all(vec4<bool>(arg_2, arg_2, arg_2, arg_2)))), select(select(vec3<bool>(arg_2, true, arg_2), !vec3<bool>(arg_2, false, false), !vec3<bool>(arg_2, false, arg_2)), select(!vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, true, arg_2), vec3<bool>(true, true, arg_2)), !vec3<bool>(arg_2, false, arg_2))));
    let var_1 = Struct_1(vec2<i32>(-(~(arg_0.a.x ^ 35534i)), ~(-18915i)));
    var_0 = Struct_2(-601f, vec4<u32>(~1u, 0u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b, u_input.b, 4294967295u, 7894u)), var_0.b), var_0.b.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, u_input.b, _wgslsmith_mod_u32(u_input.b, var_0.b.x), ~0u), ~(~vec4<u32>(u_input.b, var_0.b.x, 8200u, 0u))) % vec4<u32>(32u)), var_0.c, !any(select(vec3<bool>(true, arg_2, arg_2), !vec3<bool>(false, arg_2, false), any(vec4<bool>(true, arg_2, var_0.d, arg_2)))), vec3<bool>(all(!select(vec4<bool>(false, var_0.d, arg_2, var_0.d), vec4<bool>(true, var_0.d, arg_2, arg_2), false)), !(u_input.a <= ~arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(520f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a), 229f), -116f)), var_0.b, Struct_1(var_1.a ^ vec2<i32>(u_input.c.x, -u_input.c.x)), !(~_wgslsmith_div_i32(u_input.a, arg_1) <= _wgslsmith_dot_vec2_i32(var_0.c.a, vec2<i32>(20072i, 0i))), !select(!var_0.e, vec3<bool>(false, !arg_2, !var_0.e.x), false));
    var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(549f)))))), _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(u_input.b, var_0.b.x, 27172u, var_2.b.x)), countOneBits(min(var_0.b, vec4<u32>(4294967295u, 9434u, 12906u, 4294967295u)))) << (select(vec4<u32>(~var_2.b.x, reverseBits(var_2.b.x), var_2.b.x << (49676u % 32u), var_2.b.x >> (78258u % 32u)), vec4<u32>(1u, ~26059u, ~4294967295u, _wgslsmith_mod_u32(61854u, var_0.b.x)), true) % vec4<u32>(32u)), Struct_1(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(46019i, var_1.a.x, arg_1), u_input.c.xyw), -1i & var_1.a.x)), arg_2, vec3<bool>(var_2.e.x, !all(select(vec4<bool>(false, var_0.d, var_2.e.x, var_0.e.x), vec4<bool>(true, false, true, var_0.d), vec4<bool>(arg_2, true, arg_2, false))), arg_2));
    return min(firstLeadingBit(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.b.x, 1u) & var_2.b.yz, vec2<u32>(var_2.b.x, 4294967295u) ^ var_2.b.zw))), var_2.b.xw);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = arg_2.a != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * _wgslsmith_f_op_f32(-arg_3.a))));
    var var_1 = vec2<u32>(u_input.b ^ ~4294967295u, (~19866u & ~(arg_2.b.x & arg_3.b.x)) | ~arg_2.b.x);
    var_1 = ~arg_2.b.xx;
    var_1 = arg_2.b.xy;
    var_1 = ~func_3(arg_2.c, countOneBits(u_input.a), arg_3.e.x);
    return select(arg_2.e.zx, vec2<bool>(!arg_3.d, false), arg_2.e.xy);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u | ~u_input.b, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, u_input.b, u_input.b), vec4<u32>(u_input.b, 23104u, 10136u, 1u)))), vec2<u32>((arg_1.b.x ^ u_input.b) ^ 0u, ~firstLeadingBit(0u))));
    var var_1 = vec4<bool>(26129i == select(min(countOneBits(-2147483647i), firstTrailingBit(2147483647i)), arg_3, !select(arg_2.x, arg_2.x, true)), arg_1.d, select(false, all(vec4<bool>(all(arg_2), 6971u > arg_1.b.x, arg_1.a <= -799f, all(vec2<bool>(arg_0, arg_1.d)))), true), true & (-55252i > (firstTrailingBit(2147483647i) | 15455i)));
    var_1 = !vec4<bool>(any(select(var_1.xy, func_2(arg_1.e.yy, arg_2, arg_1, arg_1), func_2(vec2<bool>(arg_0, arg_0), arg_2, Struct_2(-766f, vec4<u32>(0u, 23060u, u_input.b, var_0), arg_1.c, arg_2.x, var_1.zzy), arg_1))), !(arg_1.a < 453f) || ((arg_2.x && arg_1.e.x) & (arg_2.x | arg_1.d)), all(select(vec3<bool>(true, arg_0, arg_0), arg_1.e, vec3<bool>(arg_2.x, arg_1.d, false))) && arg_0, true);
    let var_2 = Struct_2(arg_1.a, arg_1.b, arg_1.c, false, select(select(!select(vec3<bool>(true, arg_1.e.x, true), vec3<bool>(true, arg_2.x, false), var_1.x), select(var_1.xyz, select(arg_1.e, vec3<bool>(false, true, true), vec3<bool>(arg_0, arg_2.x, false)), vec3<bool>(true, arg_2.x, true)), arg_0), select(!(!vec3<bool>(false, arg_0, arg_0)), select(select(vec3<bool>(arg_2.x, false, false), arg_2.yyz, var_1.x), arg_2.xzx, arg_2.xxy), arg_2.zzy), arg_1.e));
    var var_3 = var_2;
    return Struct_2(var_3.a, vec4<u32>(abs(~4294967295u), reverseBits(~var_2.b.x), ~_wgslsmith_mult_u32(var_3.b.x, var_0), ~max(4294967295u, var_0)) >> (~var_3.b % vec4<u32>(32u)), var_3.c, any(select(!vec3<bool>(var_2.d, true, arg_2.x), vec3<bool>(true, true, !var_1.x), true)), select(!select(vec3<bool>(true, var_3.d, false), !arg_1.e, true), select(select(select(var_1.wwz, vec3<bool>(var_2.e.x, arg_2.x, false), vec3<bool>(var_3.e.x, false, var_2.d)), !vec3<bool>(true, true, var_2.e.x), arg_0), vec3<bool>(all(vec3<bool>(true, true, arg_1.e.x)), any(arg_2), var_1.x), var_2.e), select(arg_1.d || !arg_0, any(vec4<bool>(true, false, true, false)), func_2(var_1.xz, !arg_2, arg_1, arg_1).x)));
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = firstTrailingBit(~countOneBits(~(-u_input.c)));
    let var_1 = func_1(all(func_1(firstLeadingBit(var_0.x) != u_input.a, Struct_2(467f, arg_0.b, Struct_1(vec2<i32>(arg_0.c.a.x, 0i)), all(vec4<bool>(arg_0.d, arg_0.d, false, arg_0.e.x)), arg_0.e), vec4<bool>(all(vec2<bool>(arg_0.e.x, true)), arg_0.d, any(vec3<bool>(true, false, true)), u_input.b >= u_input.b), i32(-1i) * -1i).e), Struct_2(-1120f, vec4<u32>(_wgslsmith_add_u32(~arg_0.b.x, 0u), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 6699u, 6003u), vec3<u32>(u_input.b, arg_0.b.x, arg_0.b.x))), ~_wgslsmith_dot_vec3_u32(arg_0.b.ywy, vec3<u32>(0u, 21573u, 1u)), u_input.b ^ select(25885u, arg_0.b.x, arg_0.e.x)), Struct_1(var_0.xx), true, vec3<bool>(func_1(true, Struct_2(arg_0.a, arg_0.b, arg_0.c, arg_0.e.x, vec3<bool>(arg_0.e.x, true, arg_0.d)), vec4<bool>(arg_0.e.x, arg_0.e.x, false, arg_0.e.x), 5923i).a != _wgslsmith_f_op_f32(arg_0.a + arg_0.a), true, -arg_0.c.a.x != ~arg_0.c.a.x)), vec4<bool>(func_1(false, Struct_2(_wgslsmith_f_op_f32(ceil(863f)), max(vec4<u32>(u_input.b, u_input.b, 15487u, 1u), arg_0.b), func_1(arg_0.d, arg_0, vec4<bool>(arg_0.d, true, arg_0.d, false), 0i).c, false, !arg_0.e), select(!vec4<bool>(true, arg_0.e.x, arg_0.d, arg_0.e.x), !vec4<bool>(false, false, arg_0.d, false), vec4<bool>(arg_0.e.x, arg_0.d, true, arg_0.d)), arg_0.c.a.x).d, arg_0.d, arg_0.d, !(!arg_0.d)), arg_0.c.a.x).c;
    var var_2 = var_1;
    var_2 = arg_0.c;
    return arg_0.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-func_4(func_1(true, Struct_2(-105f, vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), Struct_1(vec2<i32>(2147483647i, u_input.c.x)), false, vec3<bool>(false, true, false)), vec4<bool>(true, false, false, false), 1i)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f + 896f) + -1349f) + 616f))), ~vec4<u32>(_wgslsmith_add_u32(u_input.b, 4294967295u), 0u, u_input.b ^ u_input.b, 1u) >> (~(~vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)) % vec4<u32>(32u)), Struct_1(vec2<i32>(var_0.a.x, ~24227i)), true, select(select(vec3<bool>(true, true, all(vec4<bool>(true, true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec3<bool>(false, true, false))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec3<bool>(!any(vec4<bool>(false, false, false, false)), all(vec3<bool>(true, false, true)), all(vec3<bool>(true, false, true))), !any(vec4<bool>(true, true, true, true))));
    var_0 = Struct_1(~firstLeadingBit(select(u_input.c.zy, vec2<i32>(var_0.a.x, 1i), any(vec3<bool>(var_1.d, var_1.d, var_1.d)))));
    var_0 = func_1(any(vec3<bool>(!var_1.e.x && var_1.d, (1i >> (var_1.b.x % 32u)) == 51627i, !(var_1.d != false))), var_1, select(!(!(!vec4<bool>(true, false, false, var_1.e.x))), vec4<bool>(func_1(false, Struct_2(var_1.a, vec4<u32>(var_1.b.x, 65485u, var_1.b.x, 1u), var_1.c, var_1.e.x, var_1.e), vec4<bool>(false, var_1.d, var_1.e.x, var_1.e.x), -2147483647i).c.a.x > ~var_1.c.a.x, any(!var_1.e), (false && var_1.e.x) & !var_1.d, var_1.e.x), var_1.e.x), _wgslsmith_clamp_i32(var_0.a.x, u_input.d >> ((_wgslsmith_sub_u32(4294967295u, 0u) & select(45953u, var_1.b.x, false)) % 32u), max(var_1.c.a.x, 20488i))).c;
    var_0 = func_1(var_1.a < 1739f, var_1, !select(select(!vec4<bool>(false, var_1.d, false, true), !vec4<bool>(var_1.d, true, var_1.d, true), select(vec4<bool>(true, var_1.d, false, var_1.e.x), vec4<bool>(var_1.d, false, false, false), false)), !select(vec4<bool>(var_1.d, var_1.e.x, false, true), vec4<bool>(var_1.d, true, var_1.e.x, false), vec4<bool>(var_1.d, false, var_1.e.x, var_1.e.x)), !(-2513i < u_input.d)), 2147483647i).c;
    let var_2 = func_1(u_input.b == (~(~4294967295u) << (~u_input.b % 32u)), Struct_2(_wgslsmith_f_op_f32(-var_1.a), abs(vec4<u32>(u_input.b, 38350u, u_input.b, 4294967295u)) >> (~vec4<u32>(var_1.b.x, 21022u, var_1.b.x, 10076u) % vec4<u32>(32u)), func_1(var_1.e.x, Struct_2(func_1(true, Struct_2(var_1.a, var_1.b, Struct_1(vec2<i32>(u_input.a, var_1.c.a.x)), var_1.d, var_1.e), vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, true), 0i).a, vec4<u32>(var_1.b.x, u_input.b, u_input.b, 1u), Struct_1(vec2<i32>(var_0.a.x, -33805i)), true, !vec3<bool>(true, true, var_1.e.x)), vec4<bool>(false, true, true, var_1.e.x), 0i).c, func_1(true, func_1(var_1.d, func_1(false, var_1, vec4<bool>(true, var_1.d, true, var_1.e.x), var_1.c.a.x), !vec4<bool>(false, var_1.e.x, false, true), _wgslsmith_div_i32(u_input.a, 3127i)), !select(vec4<bool>(var_1.d, var_1.d, var_1.e.x, false), vec4<bool>(false, false, var_1.d, var_1.d), vec4<bool>(true, var_1.e.x, false, var_1.d)), _wgslsmith_mod_i32(abs(u_input.a), 64207i)).d, vec3<bool>(var_1.e.x, !all(vec4<bool>(var_1.e.x, var_1.d, var_1.e.x, var_1.d)), var_1.d)), vec4<bool>(all(vec2<bool>(true, !var_1.d)), true, false, false), (u_input.a << (func_1(var_1.d, Struct_2(-1193f, vec4<u32>(var_1.b.x, u_input.b, 4294967295u, 1u), Struct_1(vec2<i32>(47536i, var_0.a.x)), true, var_1.e), select(vec4<bool>(true, var_1.e.x, var_1.e.x, true), vec4<bool>(false, false, var_1.e.x, true), false), abs(u_input.d)).b.x % 32u)) & u_input.c.x).e.xz;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(259f, var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1535f * -362f)) + _wgslsmith_f_op_f32(-1147f + _wgslsmith_f_op_f32(min(-722f, -1166f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-340f + 1f), -143f, _wgslsmith_div_f32(-2037f, var_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(952f + var_1.a), _wgslsmith_f_op_f32(var_1.a * 1107f)) - vec3<f32>(_wgslsmith_f_op_f32(-695f * var_1.a), _wgslsmith_f_op_f32(step(var_1.a, var_1.a)), 810f)))));
    var var_4 = Struct_2(-420f, var_1.b, var_1.c, var_2.x, select(!(!select(vec3<bool>(var_2.x, true, var_1.d), var_1.e, var_2.x)), select(!select(var_1.e, vec3<bool>(var_1.d, var_1.d, false), var_1.e), !vec3<bool>(var_1.e.x, var_1.e.x, true), var_1.d), false));
    let var_5 = Struct_1(var_1.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-490f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_3.x) - 1084f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a))))));
}

