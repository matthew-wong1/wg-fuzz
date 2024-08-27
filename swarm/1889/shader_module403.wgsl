struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = select(firstLeadingBit(u_input.a), vec3<i32>(-1i) * -((arg_0.c << (vec3<u32>(25463u, 30020u, 1u) % vec3<u32>(32u))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), false);
    var var_1 = firstTrailingBit(~_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_mult_u32(29277u, 26571u), countOneBits(0u), 0u, ~39225u)));
    var_1 = ~firstTrailingBit(~(firstLeadingBit(vec4<u32>(25249u, var_1.x, 31683u, 54174u)) << (vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x) % vec4<u32>(32u))));
    let var_2 = select(!all(vec2<bool>(true, true)) && any(vec2<bool>(true, true)), true, !all(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)));
    var_1 = vec4<u32>(~(1810u ^ ~var_1.x), select(0u, _wgslsmith_add_u32(var_1.x, select(4294967295u, var_1.x ^ var_1.x, true)), false), var_1.x, var_1.x);
    return u_input.a.x;
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = ~vec4<i32>(reverseBits(-u_input.a.x), func_3(Struct_3(Struct_2(vec4<f32>(424f, -355f, -247f, 1000f), Struct_1(-287f)), u_input.a.x, vec3<i32>(80755i, 1i, u_input.a.x), vec3<f32>(-981f, -541f, -1714f), -534f)), -u_input.a.x, firstLeadingBit(u_input.a.x >> (1u % 32u))) ^ abs(abs(reverseBits(vec4<i32>(-23057i, -951i, -1i, u_input.a.x))) & firstTrailingBit(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(arg_0.x, 50783u, arg_0.x, arg_0.x) % vec4<u32>(32u))));
    let var_1 = 11797i;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-446f, -1455f, -320f, -903f) * vec4<f32>(700f, 1128f, 526f, -1775f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2198f - 762f) + _wgslsmith_f_op_f32(ceil(2626f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-529f)) * _wgslsmith_f_op_f32(995f + -1186f)), 1182f, _wgslsmith_f_op_f32(select(-1021f, _wgslsmith_f_op_f32(floor(-1000f)), true))), !vec4<bool>(72547u <= arg_0.x, true, true, true))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(438f - 1707f), 1032f, any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(789f)) - _wgslsmith_f_op_f32(f32(-1f) * -931f)))));
    let var_3 = min(1i, -4134i);
    var_0 = ~vec4<i32>(2147483647i, -_wgslsmith_mult_i32(var_3, 2147483647i) ^ abs(_wgslsmith_add_i32(var_1, 16063i)), var_1, -_wgslsmith_mult_i32(var_1, 1532i));
    return ~(~1u);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(40546u, 49714u)), vec2<u32>(firstTrailingBit(1u), ~58383u)) >> (max(abs(vec2<u32>(1u, 6761u)), ~vec2<u32>(1u, 0u)) % vec2<u32>(32u));
    let var_1 = -1066f;
    var_0 = vec2<u32>(var_0.x, ~func_2(abs(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u) | vec4<u32>(29181u, 14615u, var_0.x, 65976u))));
    var_0 = vec2<u32>(34060u, _wgslsmith_mod_u32(~_wgslsmith_add_u32(var_0.x, var_0.x), ~92770u)) ^ vec2<u32>(abs(1u), 67464u);
    var_0 = ~abs(firstLeadingBit(~(vec2<u32>(82631u, var_0.x) ^ vec2<u32>(0u, 0u))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a.a * vec4<f32>(var_1, _wgslsmith_f_op_f32(select(-257f, -2034f, arg_3.x)), _wgslsmith_f_op_f32(-1115f - var_1), arg_1.e)) - _wgslsmith_f_op_vec4_f32(-arg_1.a.a)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -668f)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1841f + 1520f), _wgslsmith_div_f32(1695f, -1229f), _wgslsmith_f_op_f32(ceil(arg_2.b.a)), _wgslsmith_f_op_f32(min(arg_2.a.x, 1000f))))), arg_2.a)), arg_1.b);
    var var_1 = -1000f;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - arg_2.a.x) + _wgslsmith_f_op_f32(arg_1.b.a * arg_2.b.a))) + _wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(423f * -820f))), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.a)) + _wgslsmith_f_op_f32(max(arg_2.b.a, _wgslsmith_f_op_f32(f32(-1f) * -191f))))));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(round(-596f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f), -1000f) * arg_1.a.x))));
    var_1 = var_0.a.x;
    return _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(~(~4294967295u)), abs(1166u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 79803u), vec2<u32>(106498u, 0u), vec2<u32>(41565u, 27974u))), _wgslsmith_mult_u32(countOneBits(15609u >> (0u % 32u)), min(1u, ~1u))), reverseBits(vec4<u32>(1u, 1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(4777i, -60646i, u_input.a.x, u_input.a.x) >> (vec4<u32>(4294967295u, 39380u, 1u, 79660u) % vec4<u32>(32u))) << (func_4(4024i, Struct_2(vec4<f32>(592f, -152f, 280f, 434f), Struct_1(-115f)), func_1(vec4<bool>(false, true, true, false), Struct_3(Struct_2(vec4<f32>(745f, 1815f, -854f, 547f), Struct_1(-295f)), -57082i, u_input.a, vec3<f32>(1559f, 731f, -668f), -826f), vec4<i32>(-27863i, u_input.a.x, 2147483647i, u_input.a.x), vec3<bool>(true, true, true))) % vec4<u32>(32u)), ~abs(min(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 47837i), vec4<i32>(u_input.a.x, 1i, 1i, u_input.a.x)))), reverseBits(firstLeadingBit(select(vec4<i32>(1i, u_input.a.x, 21300i, -25470i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), true))) ^ firstTrailingBit(vec4<i32>(-2147483647i, i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 0i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 2147483647i)), -u_input.a.x)));
    let var_1 = func_1(vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), (select(-2147483647i, u_input.a.x, true) == -u_input.a.x) & (all(vec3<bool>(true, false, true)) | true), true, !all(vec3<bool>(false, true, false))), Struct_3(func_1(vec4<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, false)), true, any(vec4<bool>(true, false, false, true))), Struct_3(func_1(vec4<bool>(false, false, false, true), Struct_3(Struct_2(vec4<f32>(-766f, 1028f, -477f, -959f), Struct_1(-506f)), -8760i, vec3<i32>(11785i, 2147483647i, u_input.a.x), vec3<f32>(-778f, 602f, -1000f), -427f), vec4<i32>(-2147483647i, -30545i, u_input.a.x, -1i), vec3<bool>(true, false, true)), -u_input.a.x, u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(425f, 648f, -611f)), -1446f), _wgslsmith_add_vec4_i32(-vec4<i32>(39349i, -6432i, -552i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 0i, 25693i), vec4<i32>(-1i, 36107i, 1i, u_input.a.x))), vec3<bool>(true, true, true)), _wgslsmith_sub_i32(1i, 1i) >> (1u % 32u), min(-vec3<i32>(u_input.a.x, 0i, 41202i), -vec3<i32>(u_input.a.x, u_input.a.x, -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-463f, -529f, -699f), func_1(vec4<bool>(false, false, false, true), Struct_3(Struct_2(vec4<f32>(880f, 214f, 285f, -1451f), Struct_1(699f)), -5456i, vec3<i32>(-1i, u_input.a.x, 49922i), vec3<f32>(-155f, 1143f, -1000f), 128f), vec4<i32>(-34405i, 49027i, u_input.a.x, 32159i), vec3<bool>(true, false, false)).a.ywx) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1633f, -1276f, -2018f), vec3<f32>(-1446f, 1311f, 840f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1181f, 895f, 893f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(994f + -282f))))), countOneBits(-(~(~vec4<i32>(2147483647i, 2147483647i, 1221i, 2617i)))), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true)).b;
    var_0 = -countOneBits(i32(-1i) * -max(u_input.a.x, u_input.a.x));
    var_0 = _wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x);
    let var_2 = _wgslsmith_dot_vec4_i32(~vec4<i32>(79633i, _wgslsmith_dot_vec2_i32(u_input.a.zz | u_input.a.yz, u_input.a.yz), func_3(Struct_3(Struct_2(vec4<f32>(560f, 1369f, 546f, -1480f), Struct_1(397f)), u_input.a.x, u_input.a, vec3<f32>(var_1.a, 1430f, 297f), -918f)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-4543i, 2147483647i, -2147483647i, -2147483647i), vec4<i32>(u_input.a.x, -753i, u_input.a.x, u_input.a.x)))), vec4<i32>(33445i, ~_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 1i ^ u_input.a.x), u_input.a.x, -51268i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1084f * -403f) - _wgslsmith_f_op_f32(trunc(-1678f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) * var_1.a)), var_1.a));
}

