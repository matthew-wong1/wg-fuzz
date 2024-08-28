struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> vec4<f32> {
    var var_0 = true;
    var_0 = false;
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(round(-364f));
    return vec4<f32>(_wgslsmith_div_f32(arg_1.x, -708f), _wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.x - -151f)))) - 1162f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0.a.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.a.x, arg_0.a.x, _wgslsmith_f_op_f32(sign(845f)), arg_0.a.x))), -arg_2.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, arg_0.c.x), arg_2.c), ~arg_2.c.x), arg_0.c.x, arg_2.c.x), vec4<u32>(arg_2.c.x, arg_2.c.x, 16391u, firstTrailingBit(1u)) << (vec4<u32>(25506u, _wgslsmith_add_u32(arg_0.c.x, arg_2.c.x), 1u, ~arg_2.c.x) % vec4<u32>(32u)), ~vec4<u32>(firstLeadingBit(u_input.b), _wgslsmith_mult_u32(6602u, u_input.b), u_input.b, _wgslsmith_dot_vec2_u32(arg_2.c.xx, arg_0.c.wz))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a.x, arg_2.a.x))))) - _wgslsmith_f_op_f32(step(-224f, 146f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), var_0.a.x), _wgslsmith_f_op_f32(532f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-247f, 1155f))))), arg_2.a.x);
    let var_2 = 730f;
    let var_3 = select(!arg_3, arg_3, true);
    var var_4 = arg_0;
    return vec4<bool>(!(all(select(vec3<bool>(arg_3.x, false, arg_1), vec3<bool>(var_3.x, arg_1, var_3.x), true)) & arg_1), var_3.x, var_3.x, true);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = true;
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -564f, -1663f, 738f), _wgslsmith_f_op_vec4_f32(func_3(arg_2, vec3<f32>(2071f, arg_2.a.x, -1133f), arg_2.a, arg_2.a)))))), ~u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~arg_2.c.x, arg_2.c.x << (66061u % 32u), 0u), countOneBits(arg_2.c ^ vec4<u32>(u_input.b, 0u, 42188u, u_input.b)))), true, arg_2, select(vec4<bool>((u_input.b >> (u_input.b % 32u)) > (15505u >> (0u % 32u)), any(vec4<bool>(true, true, true, true)), !select(true, true, false), true), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false)), false));
    let var_2 = _wgslsmith_mod_i32(u_input.a.x, -2147483647i);
    var var_3 = arg_2;
    var_3 = arg_2;
    return select(func_4(Struct_1(vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(449f + 470f), var_3.a.x), vec4<i32>(_wgslsmith_dot_vec2_i32(var_3.b.wx, vec2<i32>(-17576i, 46667i)), ~var_3.b.x, _wgslsmith_clamp_i32(var_3.b.x, u_input.a.x, var_2), -4632i), var_3.c), any(vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, -842f, 804f, arg_2.a.x))), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 2147483647i) | firstTrailingBit(vec4<i32>(arg_2.b.x, 2147483647i, 32462i, 36202i)), _wgslsmith_add_vec4_u32(~var_3.c, _wgslsmith_sub_vec4_u32(var_3.c, var_3.c))), vec4<bool>(_wgslsmith_div_i32(var_2, 21697i) > var_2, var_1.x, (arg_2.b.x >= -37940i) & var_1.x, true)).wz, var_1.wx, all(var_1.ywx));
}

fn func_1() -> vec4<f32> {
    var var_0 = true;
    let var_1 = -2147483647i;
    let var_2 = func_2(-1893f, _wgslsmith_f_op_f32(-515f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1223f))))))), Struct_1(vec4<f32>(-1268f, -255f, _wgslsmith_f_op_f32(floor(-722f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(533f)), 161f))), u_input.a, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, u_input.b), reverseBits(vec4<u32>(u_input.b, 67530u, u_input.b, u_input.b))), vec4<u32>(0u, u_input.b, 65241u, u_input.b) | _wgslsmith_mod_vec4_u32(vec4<u32>(33813u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, 0u, 1u, 0u)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-514f)))), 1f, _wgslsmith_f_op_f32(min(-275f, _wgslsmith_f_op_f32(507f * -2273f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1632f)) - -751f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-207f, _wgslsmith_f_op_f32(519f + 653f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -864f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1224f, -401f, -451f, -135f) + vec4<f32>(-219f, -305f, 1000f, 1686f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 459f, 639f, 848f) + vec4<f32>(-2358f, 728f, -667f, -1380f))))), reverseBits(-vec4<i32>(-7124i, u_input.a.x ^ u_input.a.x, abs(2147483647i), ~(-13283i))), reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(76294u, 74143u, u_input.b, 90412u), vec4<u32>(1u, 4294967295u, 1u, u_input.b)), 1u, ~u_input.b, ~u_input.b)) & vec4<u32>(~u_input.b, _wgslsmith_clamp_u32(~7996u, abs(u_input.b), max(u_input.b, u_input.b)), ~1u, select(~u_input.b, 6065u, var_2.x)));
    let var_4 = firstTrailingBit(_wgslsmith_add_vec2_u32(~firstLeadingBit(select(var_3.c.ww, vec2<u32>(var_3.c.x, var_3.c.x), vec2<bool>(var_2.x, var_2.x))), vec2<u32>(min(0u, select(var_3.c.x, 55410u, false)), firstTrailingBit(1u))));
    return _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1698f, var_3.a.x, var_3.a.x, var_3.a.x)))), -u_input.a, ~var_3.c), var_3.a.xxw, var_3.a, vec4<f32>(-921f, -245f, -487f, _wgslsmith_f_op_f32(var_3.a.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(var_3, var_3.a.yxz, vec4<f32>(var_3.a.x, -1073f, -1124f, 1184f), var_3.a)).x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(31033i & _wgslsmith_add_i32(0i >> (u_input.b % 32u), 2147483647i), _wgslsmith_mod_i32(-36907i, 1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(770f * -925f), -265f, -516f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -939f) + _wgslsmith_f_op_f32(-202f - 531f)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-854f, 745f)) + _wgslsmith_f_op_f32(-1696f + 1195f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-983f + 608f)) - _wgslsmith_f_op_f32(-696f * _wgslsmith_f_op_f32(min(-701f, 437f)))), -575f, _wgslsmith_f_op_f32(f32(-1f) * -549f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()))), vec4<i32>(u_input.a.x, 11821i, ~_wgslsmith_sub_i32(2147483647i, var_0.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(~9483i, _wgslsmith_mult_i32(u_input.a.x, var_0.x)), -(~var_0.x))), vec4<u32>(u_input.b, 54214u, (~u_input.b << (_wgslsmith_add_u32(u_input.b, u_input.b) % 32u)) & max(countOneBits(u_input.b), 62747u), ~u_input.b));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-704f - var_1.x), _wgslsmith_f_op_f32(ceil(-487f)), _wgslsmith_f_op_f32(trunc(-181f)), _wgslsmith_f_op_f32(step(var_2.a.x, var_2.a.x))))), vec4<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(_wgslsmith_mod_i32(56277i, var_0.x), -2147483647i)), u_input.a.x, u_input.a.x, var_2.b.x), var_2.c);
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -488f), var_1.x, -826f, _wgslsmith_f_op_vec4_f32(func_1()).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.x, 1191f, var_2.a.x, var_1.x), var_2.a, false))))) * var_1), vec4<i32>((firstTrailingBit(var_0.x) >> (4294967295u % 32u)) >> (firstTrailingBit(18383u) % 32u), u_input.a.x, _wgslsmith_mod_i32(-abs(u_input.a.x), _wgslsmith_sub_i32(var_2.b.x, -1i)), 2147483647i), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~4294967295u, var_2.c.x), ~1u, firstLeadingBit(_wgslsmith_clamp_u32(1u, 1u, 28686u))), ~_wgslsmith_dot_vec4_u32(var_2.c, var_2.c >> (vec4<u32>(u_input.b, 77418u, u_input.b, 37870u) % vec4<u32>(32u))), var_2.c.x, var_2.c.x));
    var_2 = Struct_1(vec4<f32>(var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a.x, var_2.a.x)) * _wgslsmith_f_op_f32(-var_2.a.x)), -490f), var_1.x, _wgslsmith_div_f32(-784f, 1963f)), select(var_2.b, vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(50021i, var_0.x, -1i, 82710i)), true), ~(~(~(~var_2.c))));
    var var_3 = Struct_1(var_2.a, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, -u_input.a.x), var_2.b.x, _wgslsmith_sub_i32(u_input.a.x, 1i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_2.b.x, u_input.a.x, 1i)), ~u_input.a.wzx)), ~_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(0i, var_2.b.x, u_input.a.x, u_input.a.x)), -u_input.a)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, var_2.c.x, 0u, u_input.b)), var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_vec4_f32(func_1()).x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz) * var_3.a.xy));
}

