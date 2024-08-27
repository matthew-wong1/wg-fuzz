struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(2134f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-855f))))))) >= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(154f - _wgslsmith_f_op_f32(ceil(-1217f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-311f)))), 205f);
    var_0 = any(vec4<bool>(true, true, false, true));
    var_0 = !any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)), true));
    var_0 = any(vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1052f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2147f * -996f))))));
    return ~vec2<u32>(4294967295u, u_input.a.x);
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -478f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-386f, -665f, true)) - var_0)), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) + 195f)));
    let var_2 = Struct_3(func_3() >> (~vec2<u32>(42930u, u_input.a.x) % vec2<u32>(32u)), Struct_2(select(vec3<bool>(true, true, all(vec3<bool>(false, false, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, false)), abs(0u), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.a, countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u))), abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 71945u))), vec4<bool>(true, any(vec2<bool>(true, false)), arg_0 != ~arg_0, true)), _wgslsmith_add_u32(~(reverseBits(0u) >> (u_input.a.x % 32u)), func_3().x), vec3<bool>(true, !(arg_0 < arg_0) & (u_input.a.x != ~u_input.a.x), !(!(u_input.a.x < 4294967295u))), arg_0);
    let var_3 = var_2.b;
    var var_4 = vec2<bool>(!(var_2.d.x == true), true);
    return vec3<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), var_1.x))), var_1.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0, var_0)))), var_4.x);
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(func_2(2147483647i), reverseBits(countOneBits(~select(u_input.a.x, 16212u, false))), abs(_wgslsmith_mod_vec4_u32(abs(firstTrailingBit(u_input.a)), vec4<u32>(35991u << (1u % 32u), u_input.a.x >> (3514u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 54562u, 0u), u_input.a), ~16049u))), !select(vec4<bool>(true, func_2(-29648i).x, all(vec2<bool>(true, false)), false), vec4<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(true, false, false, true)), 1412f == arg_0.x, false), vec4<bool>(true, true, false, false)));
    var var_1 = Struct_2(select(func_2(1i), var_0.d.wxx, var_0.d.xxw), 108052u, ~(vec4<u32>(var_0.b, 42822u, 4294967295u, 0u) & u_input.a) | ~firstTrailingBit(~vec4<u32>(4294967295u, var_0.b, var_0.b, 46000u)), select(var_0.d, !var_0.d, !vec4<bool>(select(var_0.d.x, var_0.a.x, var_0.a.x), true, func_2(-26692i).x, var_0.a.x)));
    var_0 = Struct_2(vec3<bool>(var_1.a.x, all(var_0.a) & all(vec2<bool>(true, true)), var_1.a.x), u_input.a.x, ~vec4<u32>(u_input.a.x, u_input.a.x, countOneBits(u_input.a.x), (41934u | var_0.b) >> (7187u % 32u)), vec4<bool>(false, select(true, all(!var_0.a.zz), all(select(var_0.a.yz, vec2<bool>(var_1.d.x, false), var_0.a.yz))), var_1.a.x, true));
    let var_2 = firstLeadingBit(~0u);
    var_0 = Struct_2(var_1.d.yzz, ~var_2, vec4<u32>(_wgslsmith_sub_u32(func_3().x, ~(~1356u)), ~var_1.c.x, firstTrailingBit(countOneBits(59309u)), _wgslsmith_dot_vec4_u32(select(~var_0.c, select(u_input.a, var_1.c, var_0.d), var_0.a.x), vec4<u32>(select(0u, var_1.c.x, var_1.d.x), u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, var_1.c), ~var_2))), select(var_1.d, vec4<bool>(-486f == arg_0.x, _wgslsmith_f_op_f32(-arg_0.x) < arg_0.x, all(!vec2<bool>(true, var_0.a.x)), !all(var_0.d)), var_1.d.x));
    return Struct_2(var_0.d.xzz, _wgslsmith_clamp_u32(select(~0u, ~_wgslsmith_div_u32(39015u, var_0.b), true), ~_wgslsmith_clamp_u32(46309u, min(var_1.b, var_1.b), u_input.a.x), u_input.a.x), vec4<u32>(4578u, 4294967295u, ~(~(~18539u)), ~31775u), !vec4<bool>(any(!vec2<bool>(var_1.a.x, false)), !(var_1.a.x || true), true, !any(vec2<bool>(false, false))));
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-796f)), -374f)) - -504f), -1010f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3062f * 311f) - 1526f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -135f)))), _wgslsmith_f_op_f32(f32(-1f) * -134f)));
    return -_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(1i, 1i, 1i)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-29390i, -2147483647i, -21472i), vec3<i32>(2147483647i, -29547i, -2147483647i), arg_0.a)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-36196i, -3379i, 27169i), firstLeadingBit(vec3<i32>(1i, 13383i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<u32>(~_wgslsmith_div_u32(27530u, u_input.a.x), 4294967295u, _wgslsmith_sub_u32(~u_input.a.x, ~76934u), ~(~1u) | _wgslsmith_div_u32(58803u, ~u_input.a.x)), _wgslsmith_mult_vec4_u32(max(u_input.a, ~u_input.a), abs(vec4<u32>(21587u, u_input.a.x, ~u_input.a.x, 1u))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), true, select(true, false, true), true), true));
    var var_1 = _wgslsmith_div_vec3_i32(-_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-1i, -40743i, -2147483647i), vec3<i32>(1i, -52776i, 0i), true)), vec3<i32>(1i, -29475i, 2147483647i), reverseBits(vec3<i32>(1i, 1i, 1i))), func_4(func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -739f), 787f))));
    var_1 = _wgslsmith_add_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(19677i, -15626i), 32170i, var_1.x ^ var_1.x), min(-vec3<i32>(39582i, var_1.x, -25414i), vec3<i32>(0i, 26309i, var_1.x))), firstLeadingBit(-(~vec3<i32>(var_1.x, var_1.x, 8752i))) << ((u_input.a.zyz ^ ~firstLeadingBit(var_0.xxy)) % vec3<u32>(32u)));
    let var_2 = ~_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(firstTrailingBit(0u), var_0.x), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(692f, -539f))).b), _wgslsmith_mult_u32(29418u, 1u));
    var var_3 = Struct_3(u_input.a.wz, Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(258f, 679f)))).a, countOneBits(~countOneBits(u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(min(7980u, 4294967295u), ~var_2, ~4294967295u, var_2), vec4<u32>(var_0.x, _wgslsmith_sub_u32(var_0.x, var_0.x), var_2, var_0.x)), vec4<bool>(true, true, true, true)), 4294967295u, vec3<bool>(!all(vec2<bool>(false, false)), firstTrailingBit(_wgslsmith_add_i32(var_1.x, var_1.x)) <= var_1.x, true), var_1.x << (abs(~(~0u)) % 32u));
    var_1 = _wgslsmith_mod_vec3_i32(-abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, var_1.x, 41125i), vec3<i32>(var_3.e, var_3.e, var_3.e), vec3<i32>(var_3.e, var_1.x, 2147483647i)) & vec3<i32>(-24074i, var_1.x, 41961i)), vec3<i32>(firstLeadingBit(~(-69854i)), 1i, ~(~var_3.e)) & _wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_1.x, var_1.x), vec3<i32>(var_1.x, var_3.e, var_1.x), vec3<i32>(var_1.x, 0i, 2147483647i))), ~vec3<i32>(var_3.e, -23768i, 0i)));
    var_1 = select(min(abs(-(vec3<i32>(var_3.e, var_1.x, var_1.x) | vec3<i32>(2147483647i, var_1.x, -2147483647i))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_3.e) | vec3<i32>(var_3.e, var_1.x, var_3.e), -vec3<i32>(54307i, 1i, 1i)), vec3<i32>(_wgslsmith_sub_i32(var_1.x, var_3.e), var_3.e | -50455i, ~(-16842i)))), vec3<i32>(var_3.e, max(-var_3.e ^ 1i, ~var_3.e), _wgslsmith_clamp_i32(10218i, ~(i32(-1i) * -1i), func_4(Struct_2(vec3<bool>(var_3.b.d.x, false, true), 4294967295u, vec4<u32>(var_3.b.c.x, u_input.a.x, var_2, 13637u), vec4<bool>(false, var_3.d.x, true, var_3.b.d.x))).x)), !var_3.d);
    let var_4 = var_3.d.x;
    var_3 = Struct_3(firstLeadingBit(~(~u_input.a.xy)), var_3.b, var_2 ^ (17456u ^ _wgslsmith_dot_vec2_u32(abs(vec2<u32>(12431u, 4294967295u)), vec2<u32>(var_3.c, 0u))), var_3.d, _wgslsmith_div_i32(~1i, ~max(1i, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x >> ((min(_wgslsmith_mod_u32(var_3.c, u_input.a.x), abs(0u)) << (reverseBits(var_2) % 32u)) % 32u), u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(2630f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -897f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-760f, 1225f))))), firstLeadingBit(~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, var_1.x), var_1.zy), vec2<i32>(var_3.e, 14029i) & vec2<i32>(2651i, var_3.e))));
}

