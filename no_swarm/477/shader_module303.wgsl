struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_3,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = arg_0.c;
    var_0 = arg_0.c;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(846f - 212f), _wgslsmith_div_f32(-305f, 205f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2025f, -848f))))))), u_input.c, _wgslsmith_div_i32(-1i, arg_0.b.x), arg_0.a, Struct_1(abs(_wgslsmith_add_i32(0i, -12010i)) & _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, 0i, u_input.d, arg_0.b.x), vec4<i32>(-30568i, arg_0.b.x, u_input.d, 1i)), vec4<i32>(0i, 0i, 2147483647i, 21418i) | vec4<i32>(-1i, -21305i, arg_0.d, 36522i)), _wgslsmith_div_vec4_i32(~(vec4<i32>(-2147483647i, 0i, u_input.c, u_input.d) << (vec4<u32>(u_input.b, var_0.b.x, 43388u, arg_0.c.c.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(min(vec4<i32>(arg_0.b.x, arg_0.b.x, -2147483647i, 0i), vec4<i32>(arg_0.e.x, arg_0.b.x, u_input.c, u_input.c)), min(vec4<i32>(arg_0.e.x, u_input.d, u_input.d, 2147483647i), vec4<i32>(1i, arg_0.d, 19552i, arg_0.b.x)))), ~_wgslsmith_div_vec3_u32(arg_0.c.c, vec3<u32>(u_input.a, 9u, u_input.a))));
    var_0 = Struct_3(!(!(false && select(var_1.d, false, false))), ~vec2<u32>(abs(~4294967295u), abs(2938u)), var_0.c >> ((vec3<u32>(1u, ~16427u, firstLeadingBit(58873u)) >> ((_wgslsmith_div_vec3_u32(vec3<u32>(21522u, 0u, 6810u), vec3<u32>(var_0.c.x, var_0.b.x, u_input.b)) << (abs(var_1.e.c) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), true);
    var var_2 = _wgslsmith_div_i32(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(68869i, 29276i, var_1.c), var_1.e.b.zxy, select(false, var_0.a, true)), vec3<i32>(~(-6661i), 1i, reverseBits(2126i)))), 1i);
    return select(!vec4<bool>(var_1.d, all(!vec4<bool>(true, false, arg_0.c.d, false)), arg_0.a, all(vec3<bool>(false, false, var_0.a))), select(!select(!vec4<bool>(true, var_0.d, false, false), select(vec4<bool>(var_0.a, false, var_1.d, var_0.d), vec4<bool>(true, true, var_0.a, var_0.d), true), vec4<bool>(true, false, var_1.d, var_0.d)), vec4<bool>(all(select(vec2<bool>(var_0.a, false), vec2<bool>(var_1.d, true), arg_0.c.d)), !(var_1.a.x >= var_1.a.x), select(var_0.a, arg_0.a, arg_0.c.a && var_0.a), true), !(!(!vec4<bool>(arg_0.a, var_0.a, arg_0.c.a, arg_0.a)))), select(!vec4<bool>(!var_0.d, all(vec2<bool>(false, true)), arg_0.a, true), vec4<bool>(var_1.d, select(any(vec4<bool>(false, arg_0.c.a, true, false)), !var_0.d, var_1.d), true, all(select(vec3<bool>(arg_0.c.a, arg_0.c.d, arg_0.a), vec3<bool>(var_0.a, true, false), vec3<bool>(var_1.d, true, true)))), var_0.a));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-296f, _wgslsmith_f_op_f32(arg_0 - -663f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1304f, 290f), vec2<f32>(1000f, arg_0), arg_1.a)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0))))))), arg_1.d, firstTrailingBit(815i), any(func_3(arg_1)), Struct_1(-19560i >> (~arg_3.x % 32u), select(firstTrailingBit(vec4<i32>(u_input.c, arg_1.b.x, arg_1.b.x, arg_1.b.x)), reverseBits(vec4<i32>(8643i, 43225i, arg_2, u_input.c)), true), vec3<u32>(_wgslsmith_sub_u32(arg_1.c.c.x, 7896u), ~1u, ~arg_3.x) | select(~arg_1.c.c, ~vec3<u32>(arg_3.x, arg_1.c.c.x, 44363u), true || arg_1.c.a)));
    let var_1 = abs(arg_3.x);
    let var_2 = arg_1;
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, var_0.a.x, var_0.d))), _wgslsmith_f_op_f32(968f * 741f))), 755f), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, 19103i), _wgslsmith_add_i32(-16824i, 57891i), _wgslsmith_dot_vec3_i32(var_0.e.b.zxx, vec3<i32>(var_2.e.x, -44929i, arg_2)))), u_input.c), _wgslsmith_dot_vec3_i32(-(~countOneBits(arg_1.e)), arg_1.e), arg_1.c.d, var_0.e);
    let var_3 = Struct_2(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), -2147483647i, arg_1.e.x & ~_wgslsmith_clamp_i32(33670i, _wgslsmith_clamp_i32(0i, u_input.d, var_2.d), -21311i >> (arg_3.x % 32u)), !(!(!all(vec2<bool>(var_0.d, false)))), var_0.e);
    return arg_1.c;
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b) << (reverseBits(vec4<u32>(79412u, 0u, u_input.a, 0u)) % vec4<u32>(32u)), ~(~vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u))), u_input.a, _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.a, 1u), vec4<u32>(4294967295u, u_input.b, u_input.a, u_input.b)) >> (u_input.b % 32u))), 4469u, _wgslsmith_dot_vec4_u32(~(firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, 1u, 46321u)) >> ((vec4<u32>(u_input.a, u_input.a, u_input.b, 0u) & vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.a)) % vec4<u32>(32u))), vec4<u32>(firstTrailingBit(u_input.a >> (u_input.a % 32u)), u_input.b, u_input.a >> (30168u % 32u), 0u)));
    let var_1 = Struct_4(true, vec2<i32>(u_input.c, -49291i), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1548f))) + 1f), Struct_4(any(vec3<bool>(true, true, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.d) << (var_0.zz % vec2<u32>(32u)), vec2<i32>(u_input.d, -2147483647i) | vec2<i32>(u_input.c, u_input.d)), Struct_3(true, countOneBits(var_0.xz), ~vec3<u32>(56209u, u_input.b, 0u), all(vec2<bool>(true, false))), -1i, select(vec3<i32>(u_input.c, -69969i, 1i), vec3<i32>(u_input.c, -2147483647i, 0i), vec3<bool>(true, true, true))), ~(~countOneBits(u_input.c)), vec3<u32>(11887u, ~4366u << (~4294967295u % 32u), _wgslsmith_sub_u32(var_0.x, 40520u))), u_input.d ^ -2147483647i, _wgslsmith_div_vec3_i32(reverseBits(abs(-vec3<i32>(u_input.c, 1i, u_input.d))), vec3<i32>(1i, _wgslsmith_mult_i32(8279i, u_input.d) & -47327i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 0i), vec3<i32>(-2147483647i, u_input.c, u_input.c)))));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(631f, 1510f, true)) + _wgslsmith_f_op_f32(ceil(1000f))))), Struct_4(false, -vec2<i32>(55349i, countOneBits(-48679i)), Struct_3(false, ~_wgslsmith_add_vec2_u32(vec2<u32>(35540u, var_0.x), vec2<u32>(u_input.a, var_0.x)), firstTrailingBit(countOneBits(var_1.c.c)), var_1.c.d), -45158i << (_wgslsmith_mod_u32(1u, var_1.c.b.x | 4179u) % 32u), ~_wgslsmith_mod_vec3_i32(max(vec3<i32>(var_1.b.x, var_1.b.x, 0i), vec3<i32>(u_input.d, var_1.b.x, u_input.c)), var_1.e)), var_1.d, max(var_0, ~vec3<u32>(11647u, 28701u << (u_input.b % 32u), _wgslsmith_add_u32(44583u, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, vec2<u32>(~u_input.a, max(~5740u, ~u_input.a)) | vec2<u32>(_wgslsmith_sub_u32(~1u, ~u_input.b), ~40414u), vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(28200u, 37375u), _wgslsmith_sub_u32(56641u, u_input.b)), 1u, ~u_input.b), !(28355u < u_input.a));
    var_0 = func_1();
    let var_1 = 0u <= _wgslsmith_dot_vec2_u32(~(var_0.c.zx >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), var_0.b) % vec2<u32>(32u))), var_0.c.xy);
    let var_2 = func_3(Struct_4(true, -vec2<i32>(2147483647i << (u_input.b % 32u), abs(0i)), Struct_3(false, abs(var_0.b) | firstTrailingBit(vec2<u32>(4294967295u, u_input.b)), ~(~var_0.c), true & !var_1), reverseBits(39507i), vec3<i32>(i32(-1i) * -u_input.c, -1i, 1i)));
    var var_3 = -8297i;
    var var_4 = ~abs(abs(u_input.a) & abs(u_input.b & u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(453f, -1264f, 932f, -467f) - vec4<f32>(257f, -1680f, 1000f, -268f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1058f, -1266f, 576f, -647f))))), min(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 0u), abs(1u), u_input.b ^ u_input.b, func_2(-970f, Struct_4(true, vec2<i32>(u_input.c, 0i), Struct_3(var_1, var_0.c.yx, var_0.c, var_0.d), u_input.c, vec3<i32>(0i, u_input.d, 1i)), 6762i, vec3<u32>(11152u, u_input.b, 4294967295u)).c.x), vec4<u32>(34934u, u_input.a | u_input.a, _wgslsmith_sub_u32(9709u, u_input.b), _wgslsmith_clamp_u32(864u, var_0.c.x, u_input.a))) & _wgslsmith_sub_vec4_u32(vec4<u32>(27279u, u_input.a, ~u_input.b, ~var_0.c.x), ~(~vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, var_0.c.x))), -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(674f, -496f, 1000f, 235f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2556f, -509f, -1636f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 367f, -1948f, 250f))), select(!vec4<bool>(var_1, var_0.d, false, false), func_3(Struct_4(true, vec2<i32>(18800i, 0i), Struct_3(true, var_0.c.zz, var_0.c, var_0.a), u_input.c, vec3<i32>(u_input.c, u_input.d, u_input.c))), !var_2.x)))));
}

