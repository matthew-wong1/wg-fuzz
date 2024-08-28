struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(_wgslsmith_add_vec3_u32(~((vec3<u32>(2935u, u_input.b, 1u) ^ vec3<u32>(u_input.b, u_input.d, 1u)) | ~vec3<u32>(4294967295u, u_input.d, u_input.a)), ~vec3<u32>(firstLeadingBit(u_input.c), u_input.c, u_input.a & u_input.c)));
    let var_1 = var_0;
    var var_2 = select(var_1.a.zx, select(var_0.a.yy, ~var_0.a.yx, vec2<bool>(true, true)), true);
    var_2 = ~vec2<u32>(u_input.b, u_input.c);
    var var_3 = 22820u;
    return -vec3<i32>(~(-26060i), 1i, reverseBits(~(~(-1i))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = ~(abs(func_3()) | _wgslsmith_sub_vec3_i32(vec3<i32>(~(-5645i), 1i, 1i), countOneBits(reverseBits(vec3<i32>(-2147483647i, -1i, 2147483647i)))));
    var_0 = ~(-countOneBits(firstTrailingBit(countOneBits(vec3<i32>(var_0.x, var_0.x, 26845i)))));
    var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(select(min(vec3<i32>(-19171i, var_0.x, var_0.x), countOneBits(vec3<i32>(var_0.x, var_0.x, -2147483647i))), select(vec3<i32>(var_0.x, 0i, var_0.x), vec3<i32>(-1i, -28964i, 41684i), false) >> (~vec3<u32>(u_input.c, u_input.d, u_input.c) % vec3<u32>(32u)), _wgslsmith_f_op_f32(ceil(arg_1)) > _wgslsmith_f_op_f32(min(-613f, 2550f))), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, var_0.x, 0i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), countOneBits(~54927i), ~(-2147483647i) << ((u_input.b ^ 0u) % 32u))), vec3<i32>(0i, var_0.x, 15808i));
    var_0 = ~max(vec3<i32>(-27632i, var_0.x, ~(2147483647i >> (arg_0.a.x % 32u))), select(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 2147483647i, var_0.x), -vec3<i32>(var_0.x, var_0.x, var_0.x)), vec3<i32>(var_0.x, _wgslsmith_sub_i32(var_0.x, var_0.x), abs(var_0.x)), all(vec2<bool>(true, true))));
    let var_1 = !select(vec2<bool>(!select(true, true, true), false), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), select(vec2<bool>(any(vec4<bool>(true, false, false, true)), true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    return -652f;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-183f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1f)))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f * _wgslsmith_f_op_f32(f32(-1f) * -418f))) + _wgslsmith_f_op_f32(-121f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<u32>(0u, 76843u, 0u)), _wgslsmith_div_f32(950f, 802f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(f32(-1f) * -723f)))));
    var var_1 = arg_0;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-303f)) * 1196f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1777f)))));
    var var_2 = Struct_2(max(select(~(vec3<u32>(u_input.b, arg_1.e, u_input.b) | vec3<u32>(u_input.b, 29247u, arg_1.d)), vec3<u32>(1u, 1u, ~arg_1.d), !(!var_1.yzx)), reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_1.e, arg_1.d, u_input.b), vec3<u32>(u_input.a, 0u, 3930u) << (vec3<u32>(19510u, 44231u, u_input.c) % vec3<u32>(32u))))));
    return ~1u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = max(vec2<u32>(abs(1u), arg_1.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u | arg_0.x, arg_0.x), ~countOneBits(firstTrailingBit(vec2<u32>(68762u, 1u))), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(85630u, arg_1.x), ~arg_1.zx)));
    var var_1 = _wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(max(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-12357i, 22343i, -29587i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i))), select(vec4<i32>(31957i, select(-2147483647i, 22121i, false), 31608i, 12804i << (u_input.d % 32u)) & vec4<i32>(countOneBits(47827i), firstLeadingBit(-53165i), 1i, 1i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), ~vec2<i32>(0i, 2147483647i)), ~(i32(-1i) * -1i), -33618i, -2147483647i), false));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(31340i, max(abs(reverseBits(-2147483647i)), 26520i)), _wgslsmith_mult_i32(var_1.x, -(select(var_1.x, var_1.x, true) >> (4294967295u % 32u))));
    var_2 = var_1.x;
    var_2 = -var_1.x;
    return -var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_vec4_i32(~(~vec4<i32>(2147483647i, -37318i, 46097i, 1i)), vec4<i32>(i32(-1i) * -1i, ~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(24449i, -2147483647i, 47804i), vec3<i32>(-8836i, 0i, -2147483647i)), ~0i)) >> (firstTrailingBit(vec4<u32>(1u, reverseBits(~u_input.a), u_input.b, u_input.b)) % vec4<u32>(32u));
    var_0 = vec4<i32>(func_4(vec2<u32>(abs(func_1(vec4<bool>(true, false, true, false), Struct_1(1i, vec3<bool>(false, true, false), var_0.x, 26257u, u_input.c), 2147483647i, -30575i)), u_input.a), ~max(_wgslsmith_add_vec3_u32(vec3<u32>(26679u, 0u, 53060u), vec3<u32>(4294967295u, 1u, u_input.d)), min(vec3<u32>(97999u, u_input.c, u_input.d), vec3<u32>(1599u, u_input.a, 36310u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(483f, 1263f) - vec2<f32>(-293f, -1418f)), _wgslsmith_div_vec2_f32(vec2<f32>(1950f, 745f), vec2<f32>(409f, 253f))))), _wgslsmith_mod_i32(abs(0i), var_0.x | var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>((47872i ^ var_0.x) << (~u_input.d % 32u), -1i, 1i, 6996i), -vec4<i32>(-16205i, max(var_0.x, var_0.x), var_0.x & var_0.x, -1i)), -var_0.x);
    let var_1 = Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 38569u, u_input.c), ~vec3<u32>(u_input.a, u_input.b, u_input.d)), select(vec3<u32>(u_input.c, 39561u, 85926u) | vec3<u32>(u_input.b, 1u, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.d, u_input.c, 4294967295u)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), _wgslsmith_sub_vec3_u32(vec3<u32>(40686u, u_input.d, u_input.c), ~(vec3<u32>(u_input.b, u_input.a, u_input.d) | vec3<u32>(1u, u_input.a, u_input.b)))));
    let var_2 = Struct_1(1i, !vec3<bool>(true, _wgslsmith_f_op_f32(sign(191f)) <= -647f, any(vec3<bool>(false, false, false)) && true), var_0.x, u_input.b << (u_input.c % 32u), _wgslsmith_mult_u32(1u, ~(var_1.a.x ^ 28223u)) >> (~(~firstTrailingBit(u_input.c)) % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1257f, -1195f))))));
    let var_4 = u_input.b;
    var_0 = firstTrailingBit(-(~(~vec4<i32>(var_2.a, var_0.x, var_2.a, var_2.a))) | ~firstTrailingBit(~vec4<i32>(26985i, var_0.x, var_0.x, var_2.a)));
    let var_5 = Struct_1(-(func_3().x | var_0.x), vec3<bool>(var_2.b.x, false, true), var_2.c, _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u) ^ var_1.a.yx, ~var_1.a.zz)), 4294967295u, ~abs(_wgslsmith_add_u32(0u, u_input.c))), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4908u, u_input.d, var_2.e, 4294967295u) ^ reverseBits(vec4<u32>(var_4, 2588u, 1u, 50694u))), vec4<u32>(_wgslsmith_mod_u32(reverseBits(0u), var_1.a.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.d, 18196u), select(u_input.b, 32081u, var_2.b.x)), func_1(vec4<bool>(false, var_2.b.x, true, false), Struct_1(2147483647i, vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x), 1i, var_2.d, u_input.c), -3201i, var_2.c) & var_4, _wgslsmith_div_u32(_wgslsmith_div_u32(var_1.a.x, var_1.a.x), _wgslsmith_sub_u32(15071u, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, ~(~vec4<u32>(1u, countOneBits(4294967295u), 18200u, ~var_4)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_3.x)), -367f)), 829f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-825f)))), _wgslsmith_f_op_f32(-var_3.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, var_3.x, var_3.x, 1159f) * vec4<f32>(-707f, 942f, -1000f, 2342f)))))), ~_wgslsmith_div_vec3_u32(~countOneBits(var_1.a), ~var_1.a));
}

