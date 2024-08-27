struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec3<i32> {
    var var_0 = Struct_1(reverseBits(_wgslsmith_mult_vec3_i32(~vec3<i32>(0i, u_input.a, u_input.d), ~vec3<i32>(-168i, 0i, u_input.e)) ^ -vec3<i32>(2147483647i, 1i, u_input.e)), ~u_input.b, u_input.a);
    let var_1 = max(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~var_0.b.x), vec2<u32>(var_0.b.x, 3569u)), var_0.b.xy, ~(~(vec2<u32>(11095u, u_input.c) & var_0.b.zx))), min(var_0.b.yy, u_input.b.yy));
    var_0 = Struct_1(select(select(~reverseBits(vec3<i32>(u_input.a, var_0.c, var_0.a.x)), vec3<i32>(~u_input.a, 62959i, 0i), !arg_1), _wgslsmith_mod_vec3_i32(var_0.a, ~abs(var_0.a)), !all(arg_1)), max(~select(~vec3<u32>(var_0.b.x, 48368u, var_1.x), u_input.b, all(vec3<bool>(true, false, arg_1.x))), ~select(vec3<u32>(u_input.c, var_0.b.x, var_1.x), firstLeadingBit(var_0.b), select(arg_1, vec3<bool>(arg_1.x, false, true), arg_1.x))), _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(max(vec4<i32>(var_0.a.x, u_input.a, u_input.e, -1i), vec4<i32>(0i, -8900i, var_0.a.x, -18614i)), firstLeadingBit(vec4<i32>(1i, var_0.a.x, u_input.d, -23495i))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(1i, -2147483647i, var_0.c, 0i)) >> (~vec4<u32>(12877u, var_0.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u)), ~vec4<i32>(15240i, var_0.a.x, var_0.a.x, u_input.a))));
    var var_2 = Struct_1(firstTrailingBit(vec3<i32>(~2307i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.c, 1i, u_input.a, var_0.c), vec4<i32>(u_input.d, u_input.d, var_0.c, -1i)), vec4<i32>(u_input.a, 12375i, 0i, 0i)), _wgslsmith_clamp_i32(~1i, -13984i, 4946i | var_0.a.x))), _wgslsmith_div_vec3_u32(var_0.b ^ ~(~var_0.b), _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(var_1.x), 0u, var_1.x), u_input.b)), 2311i);
    var var_3 = _wgslsmith_add_vec2_i32(~var_2.a.zy, vec2<i32>(max(u_input.a, select(~u_input.a, u_input.d & -36525i, 1i < var_0.a.x)), i32(-1i) * -var_2.a.x));
    return ~vec3<i32>(_wgslsmith_sub_i32(var_2.a.x, u_input.d), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, u_input.e, var_3.x, var_0.c), vec4<i32>(var_3.x, var_0.c, 44785i, 11562i)), vec4<i32>(1i, var_0.c, var_3.x, var_2.a.x))), ~(~var_3.x) << (var_0.b.x % 32u));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(~_wgslsmith_mod_vec3_i32(~func_3(vec3<f32>(337f, 738f, 400f), vec3<bool>(false, false, true)), firstLeadingBit(vec3<i32>(-1i, u_input.a, -2147483647i))), u_input.b, 5255i);
    var_0 = Struct_1(firstLeadingBit(vec3<i32>(min(var_0.a.x, u_input.a), (u_input.e ^ 22970i) & var_0.c, u_input.d)), _wgslsmith_div_vec3_u32(vec3<u32>(27079u >> (_wgslsmith_dot_vec2_u32(u_input.b.yx, var_0.b.yz) % 32u), 5586u, select(40543u, u_input.c, true)), vec3<u32>(u_input.c, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, 59496u), 1u, 73006u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, var_0.b.x, 2132u, u_input.b.x)), vec4<u32>(u_input.b.x, 1u, var_0.b.x, 68237u)))), -37951i);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -401f, 1000f, -1000f), vec4<f32>(-262f, 1282f, -881f, 174f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1577f, 790f, -526f, 1561f), vec4<f32>(-641f, 545f, 2927f, 740f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(771f, 260f, 1565f, -1336f)) - vec4<f32>(1000f, -1000f, 617f, -1000f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1361f, _wgslsmith_f_op_f32(ceil(-135f)), _wgslsmith_f_op_f32(f32(-1f) * -1283f), _wgslsmith_f_op_f32(f32(-1f) * -758f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, 530f, 982f, 1170f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-272f, -1936f, -270f, 909f), vec4<f32>(-1000f, -2086f, 1000f, 595f)))), any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)))))));
    let var_2 = 89384i;
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1998f - 1089f)))), -418f, 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1000f)), -2079f))))));
    return _wgslsmith_dot_vec2_u32(u_input.b.xx, ~select(var_0.b.zy, vec2<u32>(u_input.c, 4294967295u), true)) << (23800u % 32u);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = vec2<bool>(true, true);
    return select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), select(!vec4<bool>(true, all(vec3<bool>(false, var_0.x, false)), true, !var_0.x), !select(select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, false)), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !var_0.x), (any(vec3<bool>(var_0.x, true, var_0.x)) || all(vec2<bool>(var_0.x, true))) || true), true);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    let var_0 = select(func_4(reverseBits(-312i) >> (func_2() % 32u), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, u_input.d), firstTrailingBit(vec3<i32>(20757i, u_input.a, u_input.e))), vec3<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.b.x, u_input.c), u_input.b.x, 14520u), _wgslsmith_clamp_i32(~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.e, -1i, 2147483647i), vec4<i32>(0i, u_input.e, u_input.d, -21112i)), -u_input.e))), select(select(vec4<bool>(true, true, !arg_0.x, all(vec4<bool>(arg_1, arg_0.x, arg_0.x, arg_0.x))), vec4<bool>(func_4(u_input.e, Struct_1(vec3<i32>(-9947i, u_input.d, u_input.a), vec3<u32>(u_input.c, u_input.b.x, u_input.c), u_input.e)).x, true, arg_1, true), select(vec4<bool>(arg_1, arg_0.x, arg_1, arg_1), vec4<bool>(arg_0.x, arg_1, true, arg_1), !arg_0.x)), select(!(!vec4<bool>(false, true, arg_1, arg_1)), !vec4<bool>(true, true, arg_0.x, false), true | arg_1), !select(vec4<bool>(arg_1, arg_0.x, true, true), select(vec4<bool>(true, arg_0.x, arg_1, arg_0.x), vec4<bool>(arg_0.x, arg_1, true, false), false), select(vec4<bool>(false, arg_1, arg_0.x, false), vec4<bool>(arg_0.x, arg_1, arg_1, false), arg_0.x))), !select(select(select(vec4<bool>(arg_0.x, arg_1, arg_1, true), vec4<bool>(arg_0.x, arg_1, arg_1, false), false), !vec4<bool>(true, false, arg_0.x, arg_1), !vec4<bool>(false, true, arg_1, false)), vec4<bool>(!arg_1, true, true || arg_0.x, true), !(!vec4<bool>(arg_1, true, false, true))));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(u_input.d, -u_input.a), u_input.a);
    var var_2 = -vec3<i32>(~var_1.x, -60679i, u_input.a);
    var var_3 = u_input.e << (~(~firstLeadingBit(_wgslsmith_clamp_u32(18741u, 0u, 0u))) % 32u);
    var_3 = i32(-1i) * -8682i;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(firstLeadingBit(u_input.e), u_input.d, u_input.d), u_input.b, ~reverseBits(countOneBits(func_1(vec3<bool>(true, true, true), true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(423f + -508f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f) + _wgslsmith_f_op_f32(abs(-849f))) + 1000f) * 1344f));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(2331f)), 285f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(139f, -954f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f))));
}

