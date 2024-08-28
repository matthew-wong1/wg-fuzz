struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = ~select(abs(~(~vec4<u32>(u_input.b.x, 41514u, u_input.a, 4294967295u))), vec4<u32>(2846u, u_input.a, ~u_input.b.x, 4294967295u) ^ ~vec4<u32>(3342u, u_input.b.x, u_input.a, 1u), arg_0);
    let var_1 = min(var_0.yyz, min(min(abs(vec3<u32>(7582u, var_0.x, var_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.x, 4294967295u), var_0.wxy & vec3<u32>(20404u, 0u, var_0.x))), firstLeadingBit(var_0.wwz)));
    var var_2 = arg_1;
    let var_3 = var_0.x;
    var_2 = Struct_1(var_2.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b, 2320f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(exp2(arg_1.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(267f, -1192f)))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(715f, _wgslsmith_div_f32(arg_1.b, 723f))), var_2.c.x)), _wgslsmith_f_op_f32(sign(arg_1.c.x))), abs(countOneBits(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(47493i, u_input.d.x, 48816i), arg_1.a), abs(vec3<i32>(arg_2, arg_1.a.x, var_2.e))))), firstLeadingBit(u_input.c.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -160f);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = select(_wgslsmith_mod_vec4_u32(~select(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u), vec4<u32>(u_input.b.x, 0u, u_input.a, 35118u), true & arg_2.a), vec4<u32>(u_input.b.x, u_input.b.x ^ select(u_input.a, 0u, true), abs(_wgslsmith_mult_u32(97837u, u_input.b.x)), _wgslsmith_add_u32(u_input.a, abs(0u)))), min(_wgslsmith_mod_vec4_u32(vec4<u32>(~42966u, _wgslsmith_div_u32(u_input.a, 33171u), _wgslsmith_add_u32(1u, u_input.a), 14732u), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 3886u, u_input.b.x, 0u), vec4<u32>(30858u, 1u, 80396u, u_input.a)), select(vec4<u32>(1135u, u_input.a, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.a, u_input.b.x, 1u), vec4<bool>(false, arg_0, arg_2.a, arg_2.a)), reverseBits(vec4<u32>(u_input.b.x, 1u, 0u, 52025u)))), vec4<u32>(~u_input.a, u_input.b.x, 0u, u_input.b.x)), !select(vec4<bool>(true, !arg_0, true, arg_0), select(!vec4<bool>(arg_0, arg_2.a, arg_2.a, arg_0), select(vec4<bool>(arg_2.a, arg_2.a, false, arg_0), vec4<bool>(false, false, true, arg_2.a), true), true), select(true, true, any(vec3<bool>(true, false, arg_2.a)))));
    var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a, 82059u, 0u, 1u)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, var_0.x, var_0.x), vec4<u32>(133322u, 15307u, 12741u, u_input.b.x)))), ~firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 58104u), vec4<u32>(u_input.a, var_0.x, var_0.x, 23743u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_2.a || true, arg_1, u_input.c.x)), -319f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_1.c)))))));
    return ~(~(~(~51640u) << (~(u_input.b.x & 1u) % 32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = ~1i;
    let var_1 = vec3<u32>(countOneBits(func_4(false, Struct_1(vec3<i32>(-1i, arg_0.x, -13548i), _wgslsmith_f_op_f32(func_3(false, Struct_1(u_input.d.yzz, -1000f, vec2<f32>(674f, -256f), vec3<i32>(45954i, u_input.d.x, var_0), 21047i), var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1607f, -3121f)), _wgslsmith_div_vec3_i32(vec3<i32>(5308i, 2147483647i, arg_0.x), arg_0), ~18976i), Struct_2(!arg_1.x))), 1u, _wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 21381u), vec3<u32>(0u, 82495u, 36686u)), _wgslsmith_clamp_u32(4294967295u, u_input.b.x, u_input.b.x)), 1u)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f + 2221f)) * -409f))), _wgslsmith_f_op_f32(-1017f + _wgslsmith_f_op_f32(floor(1380f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1044f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, Struct_1(vec3<i32>(3940i, var_0, arg_0.x), 1855f, vec2<f32>(-2286f, -1377f), vec3<i32>(21234i, u_input.d.x, -2147483647i), var_0), arg_0.x)) * -795f)))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.xxw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1402f, var_2.x, -1354f) - _wgslsmith_f_op_vec3_f32(var_2.zxw * var_2.yyw)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1457f, -181f, var_2.x)), _wgslsmith_f_op_vec3_f32(-var_2.yzw))) * vec3<f32>(-1283f, 799f, _wgslsmith_f_op_f32(var_2.x + 187f)))));
}

fn func_1() -> Struct_1 {
    let var_0 = !select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(any(vec2<bool>(false, false)), false), true), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(576f, -759f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-182f, -1368f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-399f))))), -1581f) + _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mod_vec3_i32(-(u_input.d.zwz << (vec3<u32>(3563u, 51173u, u_input.b.x) % vec3<u32>(32u))), u_input.d.wxy), !select(!vec4<bool>(false, false, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, true), true))));
    let var_2 = u_input.d.x;
    var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -929f, 671f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(-560f)), _wgslsmith_f_op_f32(414f - 233f), _wgslsmith_f_op_f32(f32(-1f) * -921f)), vec3<f32>(_wgslsmith_div_f32(-581f, var_1.x), _wgslsmith_f_op_f32(sign(932f)), var_1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, var_1.x, 357f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 440f, 1151f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1353f, 453f, var_1.x), vec3<f32>(1000f, var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 358f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, 1669f, -902f), vec3<f32>(267f, var_1.x, 387f))), vec3<f32>(2179f, -1026f, 1134f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(max(-652f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * 1994f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1327f), var_1.x)), _wgslsmith_f_op_f32(func_3(var_1.x != _wgslsmith_f_op_f32(-var_1.x), Struct_1(select(u_input.d.zzw, vec3<i32>(u_input.c.x, 0i, var_2), vec3<bool>(true, false, var_0.x)), _wgslsmith_f_op_f32(var_1.x * 1283f), var_1.zy, firstTrailingBit(u_input.d.zxz), firstTrailingBit(-3182i)), -u_input.c.x & (2147483647i | u_input.c.x))))));
    return Struct_1(reverseBits(u_input.d.wzw), _wgslsmith_f_op_f32(select(829f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-391f)))))), var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-153f, -1000f), vec2<f32>(var_1.x, -852f)) + _wgslsmith_div_vec2_f32(var_1.yy, vec2<f32>(var_1.x, var_1.x))))), -(~u_input.d.wzz), (-15462i << (_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, 0u), 0u) % 32u)) >> (0u % 32u));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    var var_0 = vec4<u32>(u_input.a, u_input.a, _wgslsmith_div_u32(max(u_input.b.x, 17260u), _wgslsmith_add_u32(arg_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, u_input.a), vec2<u32>(4294967295u, arg_2.x))) ^ 8364u), _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, arg_2.x, 1u, arg_2.x)), ~vec4<u32>(arg_2.x, 1u, 63667u, u_input.a)), u_input.b.x));
    var var_1 = u_input.b.x;
    let var_2 = arg_1.e;
    var_0 = abs(vec4<u32>(10382u, arg_2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 6597u), var_0.zz), ~abs(arg_2.x)) | _wgslsmith_add_vec4_u32(firstTrailingBit(select(vec4<u32>(u_input.b.x, 4294967295u, 1u, 0u), vec4<u32>(var_0.x, 27763u, var_0.x, arg_2.x), vec4<bool>(true, true, false, arg_0))), vec4<u32>(~0u, arg_2.x, arg_2.x, ~var_0.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(2091f * arg_1.c.x), _wgslsmith_f_op_f32(exp2(arg_1.c.x)), -737f))));
    return _wgslsmith_sub_i32(~3392i, func_1().e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var_0 = func_5(true, func_1(), min(vec2<u32>(u_input.b.x, firstTrailingBit(61282u)), select(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, u_input.a), vec2<bool>(true, false)) << (u_input.b % vec2<u32>(32u)))) >> (((u_input.b.x << (_wgslsmith_add_u32(47615u, u_input.a) % 32u)) ^ 76931u) % 32u);
    var var_1 = firstTrailingBit(~(~(~vec3<u32>(u_input.b.x, u_input.b.x, 4834u) & firstLeadingBit(vec3<u32>(u_input.a, u_input.b.x, 1u)))));
    let var_2 = true;
    var_1 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(var_1.x, u_input.b.x), _wgslsmith_sub_u32(var_1.x, 0u)), ~1u), abs(1u)), _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(6092u, var_1.x, 0u)), vec3<u32>(max(_wgslsmith_mod_u32(var_1.x, var_1.x), 20962u), var_1.x, var_1.x)), var_1.x);
    var_0 = -1i;
    let var_3 = Struct_1(u_input.d.zxz, _wgslsmith_f_op_f32(floor(388f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f) - 271f), func_1().b), vec3<i32>(-1i, -u_input.c.x, i32(-1i) * -u_input.d.x) & vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d.x, u_input.d.x), abs(u_input.d.xy)), u_input.d.x, -1i), -58461i);
    var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, ~firstTrailingBit(16573u) << (_wgslsmith_add_u32(select(var_1.x, 4294967295u, var_2), ~1u) % 32u), ~_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(1u, u_input.a), ~var_1.x)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, 29826u), vec3<u32>(0u, u_input.b.x, 4294967295u)) | vec3<u32>(var_1.x, 27218u, u_input.a)) >> ((vec3<u32>(var_1.x, 1u, var_1.x) | ~select(vec3<u32>(45440u, 4294967295u, var_1.x), vec3<u32>(1u, u_input.a, u_input.a), vec3<bool>(false, true, true))) % vec3<u32>(32u)));
    let var_4 = select(select(!vec3<bool>(false, 143f > var_3.b, var_2), vec3<bool>(!var_2, any(vec4<bool>(var_2, false, var_2, var_2)), true), !vec3<bool>(!var_2, var_2, var_2)), !(!(!vec3<bool>(false, false, var_2))), !select(select(vec3<bool>(true, true, false), !vec3<bool>(var_2, true, var_2), var_2), vec3<bool>(true, var_3.b <= var_3.c.x, true), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, -5716i) >> (~vec3<u32>(var_1.x, 13035u, u_input.a) % vec3<u32>(32u)), var_3.a), vec4<bool>(any(!vec4<bool>(true, var_4.x, true, var_4.x)), true | any(var_4), true, !(var_3.c.x > var_3.b)))).x, 21045u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-215f, -352f))))), 1f)), var_3.c.x, -1i);
}

