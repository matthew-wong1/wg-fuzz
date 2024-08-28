struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<Struct_2, 4>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<u32>) -> vec3<u32> {
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    let var_0 = vec2<u32>(~arg_1.c.a, 0u);
    global0 = array<Struct_2, 4>();
    var var_1 = countOneBits(select(vec3<i32>(arg_1.d, -1i, -firstTrailingBit(-1i)), arg_1.b.a.yxx, any(!arg_1.b.c)));
    return firstTrailingBit(~(vec3<u32>(4294967295u, 1u, var_0.x) ^ ~vec3<u32>(61751u, 30128u, 61530u)) ^ vec3<u32>(_wgslsmith_mult_u32(arg_1.c.a, 1u), arg_1.b.b.a, 0u));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(arg_3.a, arg_1.a)))) * arg_3.a), arg_3.b, Struct_1(~arg_3.c.a, _wgslsmith_f_op_f32(-arg_3.c.b), true), arg_0, any(vec4<bool>(true, true, arg_1.e, !arg_2.x))));
    global0 = array<Struct_2, 4>();
    var var_1 = _wgslsmith_f_op_f32(arg_1.c.b * 1236f);
    let var_2 = global0[_wgslsmith_index_u32(11640u, 4u)];
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(select(reverseBits(func_3(vec4<i32>(u_input.b, var_0.a.d, var_2.a.x, arg_1.b.a.x), var_0.a, vec2<u32>(17113u, 4294967295u))), ~vec3<u32>(144818u, 47636u, var_0.a.b.b.a), vec3<bool>(false, arg_2.x, var_0.a.c.c)), vec3<u32>(1u, ~abs(4294967295u), arg_1.b.b.a)), 1383f, true & select(any(!vec4<bool>(var_2.b.c, true, var_2.c.x, arg_3.e)), true, true));
    return Struct_1(countOneBits(~_wgslsmith_mod_u32(firstLeadingBit(110614u), select(60530u, 1u, arg_3.c.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - arg_1.a.x)), 1138f))), var_0.a.b.b.c);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_mod_i32(~(-2147483647i), ~u_input.b), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(382f * arg_0), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -319f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.b, arg_3.b, 717f))))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_3.a, 1u), vec3<u32>(arg_3.a, arg_3.a, arg_3.a)) << (~1u % 32u), 4u)], func_2(u_input.a.x, Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.b, arg_0, -1375f), vec3<f32>(-469f, arg_3.b, -204f), vec3<bool>(false, arg_3.c, arg_2))), Struct_2(vec4<i32>(u_input.a.x, 1i, -2147483647i, 1i), Struct_1(44978u, arg_0, arg_2), vec2<bool>(false, arg_3.c)), arg_3, 0i, 14170u != arg_3.a), vec3<bool>(false, arg_3.c, !arg_2), Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(172f, -434f, 340f))), Struct_2(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, u_input.c), Struct_1(arg_3.a, -424f, true), vec2<bool>(arg_2, true)), Struct_1(arg_3.a, arg_1, arg_2), 1i, true)), ~(-2147483647i), true), select(select(vec3<bool>(true, true, false), select(select(vec3<bool>(true, true, arg_3.c), vec3<bool>(true, arg_2, true), true), vec3<bool>(arg_2, arg_3.c, true), select(vec3<bool>(arg_2, arg_3.c, arg_3.c), vec3<bool>(arg_3.c, true, arg_2), vec3<bool>(false, true, true))), arg_3.c), select(vec3<bool>(arg_3.c, true, true), select(select(vec3<bool>(arg_3.c, true, arg_2), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, arg_2, arg_2)), !arg_3.c & (arg_2 || arg_2)), vec3<bool>(true, !arg_2, arg_2)), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_3.b))), Struct_2(min(reverseBits(vec4<i32>(0i, u_input.a.x, u_input.a.x, -2147483647i)), select(vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.c), vec4<i32>(u_input.a.x, -22894i, -58878i, u_input.c), arg_3.c)), Struct_1(1u, _wgslsmith_f_op_f32(sign(-2777f)), arg_2), vec2<bool>(!arg_2, arg_3.c)), Struct_1(_wgslsmith_mod_u32(26214u, max(0u, arg_3.a)), _wgslsmith_f_op_f32(-arg_3.b), arg_3.b != 102f), _wgslsmith_sub_i32(7529i >> (select(47684u, arg_3.a, arg_2) % 32u), 13314i), !all(vec3<bool>(true, true, true))));
    var var_1 = vec3<u32>(11432u, _wgslsmith_mod_u32(var_0.a, 6743u), ~0u);
    let var_2 = -214f;
    var_1 = firstTrailingBit(~vec3<u32>(_wgslsmith_mod_u32(0u, max(3259u, 4294967295u)), var_0.a, _wgslsmith_mod_u32(~var_0.a, 58085u)));
    var var_3 = ~_wgslsmith_sub_i32(-(~(i32(-1i) * -1i)), -57798i);
    return Struct_1(~(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 12792u), ~14208u, 77833u) << (~arg_3.a % 32u)), var_0.b, false);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> u32 {
    global0 = array<Struct_2, 4>();
    var var_0 = ~(~(~abs(reverseBits(vec3<u32>(1u, arg_0, arg_2.c.a)))));
    global0 = array<Struct_2, 4>();
    var_0 = _wgslsmith_clamp_vec3_u32(min(select(~max(vec3<u32>(9492u, 12237u, 0u), vec3<u32>(arg_2.b.b.a, var_0.x, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 28869u, 1u), vec3<u32>(63822u, var_0.x, arg_0), vec3<u32>(4294967295u, arg_0, 0u) & vec3<u32>(arg_2.c.a, 38342u, 25490u)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, arg_2.e), vec3<bool>(false, false, false))), firstLeadingBit(vec3<u32>(~27270u, 0u, var_0.x))), ~(~vec3<u32>(var_0.x, arg_0, arg_0)), countOneBits(abs(_wgslsmith_add_vec3_u32(vec3<u32>(33583u, arg_2.b.b.a, 1u), vec3<u32>(27833u, 22288u, 0u)))));
    let var_1 = ~2239u;
    return ~var_1;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> StorageBuffer {
    var var_0 = vec3<u32>(~(~firstLeadingBit(select(0u, 1u, true))), func_5(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(17709u, 0u)), 61306u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1585f, 968f)) - _wgslsmith_f_op_f32(trunc(-127f)))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))), Struct_2(~vec4<i32>(u_input.c, -830i, u_input.a.x, -4996i), Struct_1(6130u, 260f, true), vec2<bool>(true, true)), func_4(_wgslsmith_f_op_f32(ceil(-2062f)), 1052f, true, func_2(107056i, Struct_3(vec3<f32>(234f, arg_0, arg_0), global0[_wgslsmith_index_u32(0u, 4u)], Struct_1(3265u, -468f, false), arg_1.x, false), vec3<bool>(true, true, true), Struct_3(vec3<f32>(-109f, arg_0, -551f), Struct_2(vec4<i32>(u_input.a.x, arg_1.x, -35090i, arg_1.x), Struct_1(17170u, arg_0, false), vec2<bool>(true, true)), Struct_1(51420u, 1431f, true), 2147483647i, false))), select(16968i, 71526i, false) ^ 2147483647i, true)), 47635u);
    let var_1 = u_input.a.x;
    var var_2 = func_2(u_input.b, Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -350f))))), global0[_wgslsmith_index_u32(1u, 4u)], func_2(arg_1.x ^ (var_1 ^ var_1), Struct_3(vec3<f32>(arg_0, 743f, -1477f), global0[_wgslsmith_index_u32(func_2(2147483647i, Struct_3(vec3<f32>(1075f, arg_0, 100f), global0[_wgslsmith_index_u32(var_0.x, 4u)], Struct_1(4294967295u, arg_0, true), -1i, false), vec3<bool>(false, true, true), Struct_3(vec3<f32>(518f, arg_0, -1087f), Struct_2(vec4<i32>(var_1, -2147483647i, 2147483647i, -20070i), Struct_1(1u, -185f, true), vec2<bool>(true, true)), Struct_1(84266u, arg_0, true), var_1, true)).a, 4u)], Struct_1(var_0.x, arg_0, true), countOneBits(-2147483647i), any(vec4<bool>(true, true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, arg_0, arg_0)), global0[_wgslsmith_index_u32(0u, 4u)], func_4(arg_0, -463f, true, Struct_1(17826u, arg_0, true)), var_1, true)), var_1, !(!all(vec4<bool>(false, true, false, false)))), vec3<bool>(false, true, true), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(248f, arg_0, 430f) * vec3<f32>(arg_0, arg_0, 1895f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(341f, -204f, -1000f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 200f, -763f), vec3<f32>(arg_0, -1111f, -576f))), vec3<bool>(true, true, true)))), global0[_wgslsmith_index_u32(1u, 4u)], func_4(-771f, -552f, true, Struct_1(var_0.x, _wgslsmith_f_op_f32(round(arg_0)), true)), _wgslsmith_add_i32(abs(arg_1.x), abs(~0i)), 0i < (var_1 | var_1)));
    let var_3 = any(vec4<bool>(true, var_2.c, true, var_2.c));
    var var_4 = !select(!(!vec2<bool>(var_3, var_2.c)), select(select(select(vec2<bool>(var_2.c, var_3), vec2<bool>(true, false), vec2<bool>(var_2.c, false)), !vec2<bool>(true, var_3), func_2(u_input.b, Struct_3(vec3<f32>(-1660f, -121f, arg_0), global0[_wgslsmith_index_u32(31736u, 4u)], Struct_1(47180u, -536f, false), 2147483647i, true), vec3<bool>(var_3, var_3, var_3), Struct_3(vec3<f32>(arg_0, 477f, 758f), global0[_wgslsmith_index_u32(var_2.a, 4u)], Struct_1(var_2.a, var_2.b, true), 1i, var_3)).c), !select(vec2<bool>(var_2.c, true), vec2<bool>(var_3, var_2.c), true), true && var_3), true);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-1000f, firstLeadingBit(firstLeadingBit(firstLeadingBit(vec3<i32>(-2147483647i, u_input.b, -84880i) >> (vec3<u32>(4294967295u, 0u, 25508u) % vec3<u32>(32u))))));
}

