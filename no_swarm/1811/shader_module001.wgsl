struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    let var_0 = -u_input.a.x;
    var var_1 = select(select(select(arg_1.yy, !(!arg_1.xy), vec2<bool>(true, true)), arg_1.xx, vec2<bool>(true, true)), !vec2<bool>(any(arg_1.yy), true), !vec2<bool>(false, !all(vec4<bool>(true, true, false, false))));
    var_1 = !(!select(select(select(arg_1.xx, vec2<bool>(true, false), true), select(vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, var_1.x), arg_1.xy), arg_1.zz), select(vec2<bool>(var_1.x, var_1.x), !arg_1.yz, arg_1.zy), vec2<bool>(arg_1.x, true)));
    let var_2 = _wgslsmith_sub_i32(var_0, abs(0i));
    let var_3 = 49692u;
    return var_3;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec3<u32>) -> f32 {
    var var_0 = ~(vec2<u32>(_wgslsmith_mod_u32(16498u, func_1(-364f, vec3<bool>(true, true, true))), 4294967295u) >> ((firstTrailingBit(~arg_3.zy) | max(vec2<u32>(0u, 4294967295u), firstLeadingBit(arg_3.zx))) % vec2<u32>(32u)));
    let var_1 = arg_2;
    var_0 = vec2<u32>(~firstLeadingBit(~arg_3.x), ~((41330u | var_0.x) << (~var_0.x % 32u)));
    let var_2 = vec2<i32>(var_1, arg_1);
    var var_3 = select(select(select(vec3<bool>(true, true, 1u < var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec3<bool>(false, true, false))), vec3<bool>(true, true, true)), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true), any(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), true))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), false), all(vec4<bool>(arg_0.b.a > -1286f, 1i >= arg_1, true, all(vec3<bool>(false, false, false)))) | true);
    return _wgslsmith_f_op_f32(-2237f + -1000f);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = 432f;
    let var_1 = firstLeadingBit(max(countOneBits(u_input.a.x), ~_wgslsmith_clamp_i32(u_input.c & u_input.b.x, u_input.c & u_input.a.x, -13642i)));
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(770f, 6437u), arg_0, -31772i, Struct_1(-1070f, 1u)), 2147483647i, 1i, vec3<u32>(arg_0.b, 4294967295u, 89779u))) * -2017f)) < -479f, arg_1, false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))) != _wgslsmith_f_op_f32(arg_0.a - 1749f));
    let var_3 = u_input.b.x;
    var_2 = !select(select(vec4<bool>(false || var_2.x, true, false, all(vec4<bool>(true, false, false, arg_1))), !select(vec4<bool>(false, var_2.x, var_2.x, arg_1), vec4<bool>(false, true, var_2.x, var_2.x), var_2.x), arg_1), vec4<bool>(var_2.x, all(select(vec2<bool>(false, true), var_2.zx, true)), any(select(var_2.yx, vec2<bool>(false, var_2.x), arg_1)), _wgslsmith_add_i32(1i, 8739i) >= select(-1i, 2147483647i, false)), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1, var_2.x, false, arg_1), var_2.x & arg_1), select(vec4<bool>(arg_1, var_2.x, false, true), !vec4<bool>(false, true, var_2.x, true), select(vec4<bool>(true, false, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), var_2.x)), var_2.x));
    return Struct_2(arg_0, arg_0, var_1 << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(29168u, arg_0.b, arg_0.b), vec3<u32>(arg_0.b, arg_0.b, 0u)), vec3<u32>(4294967295u, arg_0.b, 4294967295u) | vec3<u32>(1617u, arg_0.b, 12144u)), ~firstLeadingBit(vec3<u32>(arg_0.b, 18365u, arg_0.b))) % 32u), arg_0);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_2(func_2(arg_0.d, !all(vec3<bool>(false, false, true))).b, arg_0.b, _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.c, arg_0.c), vec3<i32>(-2898i, 0i, 1i))), _wgslsmith_mult_i32((arg_0.c | -2147483647i) >> (96138u % 32u), select(u_input.b.x ^ arg_2, ~0i, any(vec3<bool>(false, false, true))))), Struct_1(arg_0.a.a, ~abs(0u)));
    var var_1 = select(vec3<u32>(4294967295u, arg_1, ~select(1u, 26881u, true)), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_0.a.b, 5956u, 1u)) >> (~select(vec3<u32>(0u, 1u, arg_0.d.b), vec3<u32>(var_0.a.b, arg_1, 1u), vec3<bool>(true, true, false)) % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_mult_u32(1u, 1234u), abs(~arg_1), arg_1)), true);
    var_1 = vec3<u32>(firstTrailingBit(select(_wgslsmith_add_u32(24239u, 1606u), 17911u, 0u >= _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b, var_0.a.b, var_0.d.b), vec3<u32>(1u, 1u, 31448u)))), arg_1, min(_wgslsmith_dot_vec2_u32(var_1.zy, vec2<u32>(var_1.x, arg_1)) >> (arg_1 % 32u), ~(~var_1.x)));
    let var_2 = func_2(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1892f), select(reverseBits(40006u), min(var_1.x, var_0.d.b), true)), true).d, true);
    var_1 = select(countOneBits(firstLeadingBit(~(vec3<u32>(arg_0.b.b, 1u, 0u) >> (vec3<u32>(arg_0.d.b, 66938u, 79979u) % vec3<u32>(32u))))), ~vec3<u32>(var_0.d.b, abs(arg_1 ^ var_1.x), 60450u), false);
    return func_2(Struct_1(1366f, ~_wgslsmith_mult_u32(~arg_1, func_1(var_0.a.a, vec3<bool>(true, true, false)))), all(select(vec4<bool>(true, arg_1 != var_1.x, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), true)));
}

fn func_5(arg_0: Struct_2) -> u32 {
    let var_0 = u_input.a;
    var var_1 = -1914f;
    let var_2 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, ~arg_0.d.b), abs(firstTrailingBit(vec2<u32>(4294967295u, arg_0.d.b))))), ~(~vec2<u32>(arg_0.d.b >> (0u % 32u), ~arg_0.b.b)), abs(vec2<u32>(~arg_0.d.b, 1u) ^ (~vec2<u32>(1u, 4294967295u) ^ (vec2<u32>(4294967295u, 1u) ^ vec2<u32>(arg_0.d.b, arg_0.b.b)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) + arg_0.a.a) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.a)))));
    let var_3 = (~1i >> (~var_2.x % 32u)) ^ max(0i, _wgslsmith_mod_i32(6717i, var_0.x));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(select(_wgslsmith_div_vec2_u32(min(vec2<u32>(34230u, 54157u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, 1u)), vec2<u32>(func_1(357f, vec3<bool>(false, false, false)), 1u), select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec4<bool>(true, false, true, false)))) << (reverseBits(vec2<u32>(select(1u, 1u, false), ~4294967295u)) % vec2<u32>(32u)));
    let var_1 = u_input.b.xy >> (vec2<u32>(var_0.x, func_5(func_4(func_2(Struct_1(1656f, var_0.x), true), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<u32>(4294967295u, 0u, 31687u, 18408u)), -2147483647i))) % vec2<u32>(32u));
    let var_2 = Struct_3(func_4(Struct_2(func_4(Struct_2(Struct_1(-725f, var_0.x), Struct_1(-494f, var_0.x), var_1.x, Struct_1(715f, 4381u)), 918u, var_1.x).b, Struct_1(629f, var_0.x), firstLeadingBit(var_1.x), Struct_1(_wgslsmith_f_op_f32(floor(-1864f)), ~var_0.x)), 1u, ~(-56024i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1345f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f), func_2(Struct_1(515f, 0u), false).b.a))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(417f * 1000f), func_2(Struct_1(-1541f, 0u), false).b.a))))));
    var var_3 = Struct_4(var_2.a.a, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), (var_0.x << (0u % 32u)) < func_5(var_2.a)), var_2.a.a.b & _wgslsmith_mod_u32(1u, var_2.a.d.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(372f, var_2.b)), _wgslsmith_f_op_f32(-801f - 808f), any(vec3<bool>(true, true, false))))), var_0.x), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), vec2<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false)))));
    var var_4 = Struct_4(var_2.a.b, select(!(!vec3<bool>(var_3.e.x, var_3.b.x, false)), var_3.b, false), ~var_3.d.b, func_2(var_3.d, var_3.b.x).b, select(select(var_3.e, vec2<bool>(var_3.e.x, any(vec4<bool>(var_3.e.x, var_3.e.x, var_3.b.x, true))), false), vec2<bool>(22680i <= ~var_2.a.c, false), any(vec3<bool>(!var_3.b.x, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(508f, var_2.a.d.a, var_2.b, 2072f) - vec4<f32>(-1634f, -261f, var_2.a.b.a, var_2.a.a.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b.a, 1000f, var_2.a.b.a, var_4.d.a) * vec4<f32>(var_3.a.a, var_3.d.a, 394f, var_2.a.b.a)), true)))), -5627i, var_4.d.b);
}

