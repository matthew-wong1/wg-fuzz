struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1.b.c, arg_1.b.c, 38559i, arg_1.b.c) & abs(vec4<i32>(-2147483647i, 4175i, -2611i, arg_1.b.c)), abs(~vec4<i32>(11601i, u_input.b, arg_1.a, 1661i))), firstLeadingBit(_wgslsmith_add_vec4_i32(-(~vec4<i32>(0i, 0i, 1i, 39722i)), -select(vec4<i32>(2147483647i, -2147483647i, u_input.b, 5749i), vec4<i32>(arg_1.b.c, arg_0.c, u_input.b, arg_0.c), arg_1.b.e))));
    return vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_add_i32(arg_1.a, i32(-1i) * -30192i), u_input.b), ~0i, _wgslsmith_div_i32(2147483647i, u_input.b)), (u_input.c << (~reverseBits(arg_0.b.x) % 32u)) << (max(4294967295u, 10974u) % 32u));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = Struct_3(2147483647i, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f) - _wgslsmith_f_op_f32(f32(-1f) * -1222f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1112f), _wgslsmith_f_op_f32(f32(-1f) * -1685f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(494f))), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_2.x))), ~firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 56025u, 1u, u_input.d), vec4<u32>(0u, u_input.d, u_input.d, 1u))), -1i, _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(step(arg_2, _wgslsmith_f_op_vec2_f32(-arg_2)))), all(!(!vec2<bool>(arg_0, true)))), u_input.d, countOneBits(~(~(vec3<u32>(u_input.d, 0u, 4294967295u) & vec3<u32>(4294967295u, u_input.d, u_input.d)))), arg_2.x);
    let var_1 = arg_1;
    let var_2 = ~(~vec2<u32>(~18518u, _wgslsmith_sub_u32(u_input.d, var_0.d.x)) | var_0.b.b.wx);
    var var_3 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(countOneBits(15903u)), 1u), vec2<u32>(~_wgslsmith_div_u32(4294967295u, var_0.b.b.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_0.d.x, var_2.x), var_0.b.b.wzx)))));
    var_3 = 43935u;
    return var_1;
}

fn func_2() -> f32 {
    var var_0 = vec3<i32>(u_input.b, u_input.b, _wgslsmith_add_i32(u_input.a, -func_4(false, u_input.c, vec2<f32>(603f, 312f), func_3(Struct_1(vec4<f32>(619f, 2005f, 685f, -956f), vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d), 35238i, vec2<f32>(702f, -1633f), true), Struct_3(u_input.a, Struct_1(vec4<f32>(-861f, 1505f, -112f, -511f), vec4<u32>(17430u, 4294967295u, 0u, u_input.d), u_input.b, vec2<f32>(-409f, -1392f), false), 38712u, vec3<u32>(u_input.d, 1u, 1u), -309f)))));
    let var_1 = vec4<i32>(1i << (reverseBits(u_input.d << (u_input.d % 32u)) % 32u), _wgslsmith_mult_i32(var_0.x, min(-2147483647i, u_input.a)) | var_0.x, u_input.a, _wgslsmith_sub_i32(reverseBits(~u_input.c), 8767i)) << (_wgslsmith_add_vec4_u32(max(~vec4<u32>(u_input.d, 27879u, 4294967295u, 25840u), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.d, 94085u, 74719u), vec4<u32>(4294967295u, 0u, 0u, 1775u)), reverseBits(vec4<u32>(15722u, 4294967295u, 3180u, u_input.d)), ~vec4<u32>(1u, 51539u, 4294967295u, 4294967295u))), vec4<u32>(u_input.d, ~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, 0u) & vec4<u32>(0u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, 0u, u_input.d, u_input.d) >> (vec4<u32>(4294967295u, u_input.d, 0u, 2350u) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.d, 19710u, 1u), vec4<u32>(1u, 47522u, u_input.d, u_input.d), true), vec4<u32>(4294967295u, u_input.d, u_input.d, 56414u)))) % vec4<u32>(32u));
    let var_2 = u_input.a;
    var_0 = var_1.yzw;
    let var_3 = select(36227u, _wgslsmith_clamp_u32(~4294967295u, ~u_input.d, countOneBits(1u) << ((4294967295u | u_input.d) % 32u)), true) >> (u_input.d % 32u);
    return _wgslsmith_f_op_f32(384f * -1224f);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-538f)), _wgslsmith_f_op_f32(max(-830f, _wgslsmith_f_op_f32(732f * -878f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1815f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3062f) - _wgslsmith_div_f32(-117f, -223f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-926f - _wgslsmith_f_op_f32(trunc(733f))))), firstTrailingBit(firstLeadingBit(arg_0)), 13665i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1351f, 197f), vec2<f32>(367f, -935f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(520f, 251f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-423f, -928f) * vec2<f32>(1192f, -711f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(422f, -352f)))), true || all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), false)));
    let var_1 = vec2<f32>(262f, -1336f);
    let var_2 = _wgslsmith_dot_vec3_i32(abs(select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.c, u_input.a), vec3<i32>(var_0.c, var_0.c, 0i)), select(vec3<i32>(var_0.c, var_0.c, u_input.c), vec3<i32>(1i, u_input.c, 95914i), vec3<bool>(var_0.e, var_0.e, var_0.e)), !vec3<bool>(var_0.e, false, var_0.e))) << (var_0.b.yzy % vec3<u32>(32u)), ~vec3<i32>(~11423i, _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, -2242i), vec2<i32>(var_0.c, u_input.a))), u_input.a));
    var var_3 = Struct_3(var_0.c, var_0, u_input.d, select(abs(~_wgslsmith_mult_vec3_u32(var_0.b.xzx, vec3<u32>(var_0.b.x, arg_0.x, var_0.b.x))), arg_0.zzx, var_0.e), -142f);
    let var_4 = var_3.b;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<u32>(0u, 27036u, _wgslsmith_div_u32(u_input.d, ~(45946u ^ u_input.d)), u_input.d));
    let var_1 = var_0.e;
    var var_2 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(var_0.b.xx, func_1(~vec4<u32>(28439u, u_input.d, 0u, u_input.d)).b.xz), vec2<u32>(var_0.b.x | 44222u, ~select(1u, _wgslsmith_sub_u32(var_0.b.x, var_0.b.x), all(vec3<bool>(false, var_0.e, true)))), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.b.x, 15243u), ~var_0.b.zz) & ((vec2<u32>(11170u, 56305u) << (vec2<u32>(u_input.d, var_0.b.x) % vec2<u32>(32u))) | vec2<u32>(u_input.d, 0u)), _wgslsmith_add_vec2_u32(var_0.b.xw, select(vec2<u32>(48194u, 62862u), abs(var_0.b.wz), var_0.e))));
    var var_3 = -_wgslsmith_dot_vec4_i32(vec4<i32>(func_4(any(vec4<bool>(var_0.e, true, true, false)), max(var_0.c, var_0.c), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.d.x, 216f), vec2<f32>(-666f, 674f))), ~vec2<i32>(u_input.b, u_input.b)), firstLeadingBit(u_input.a), -(~var_0.c), 0i), select((vec4<i32>(u_input.a, u_input.a, u_input.b, var_0.c) | vec4<i32>(var_0.c, var_0.c, -1i, var_0.c)) >> ((vec4<u32>(var_2.x, var_0.b.x, 1u, 4245u) & var_0.b) % vec4<u32>(32u)), max(countOneBits(vec4<i32>(var_0.c, u_input.b, -30704i, -2147483647i)), vec4<i32>(u_input.a, var_0.c, u_input.c, -1i)), !var_0.e));
    var_2 = vec2<u32>(var_2.x, ~var_2.x ^ select(~20276u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 1u, var_2.x) >> (vec3<u32>(0u, 66093u, 0u) % vec3<u32>(32u)), max(vec3<u32>(17991u, u_input.d, var_2.x), vec3<u32>(79933u, u_input.d, var_2.x))), all(!vec4<bool>(false, var_0.e, var_0.e, false))));
    var var_4 = !select(select(vec2<bool>(func_1(vec4<u32>(var_0.b.x, var_0.b.x, var_2.x, 41475u)).e, any(vec3<bool>(false, false, false))), select(vec2<bool>(var_0.e, false), !vec2<bool>(var_0.e, var_0.e), vec2<bool>(var_0.e, true)), false), !vec2<bool>(22638i != u_input.a, true), any(select(!vec2<bool>(var_0.e, var_0.e), vec2<bool>(true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, -2147483647i, max(i32(-1i) * -11253i, abs(-func_3(Struct_1(vec4<f32>(var_0.d.x, -1834f, var_0.d.x, 1876f), var_0.b, u_input.a, vec2<f32>(204f, var_0.d.x), true), Struct_3(-2147483647i, Struct_1(var_0.a, vec4<u32>(var_2.x, 4158u, 7324u, u_input.d), 0i, var_0.a.xy, true), u_input.d, var_0.b.zxx, 280f)).x)), ~var_0.b.ywx);
}

