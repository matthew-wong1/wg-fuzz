struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_4) -> i32 {
    return u_input.a.x;
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = -1526f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -2388f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1187f, _wgslsmith_f_op_f32(ceil(-1707f)), !arg_0.x))) + 1573f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-939f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1237f + 347f), _wgslsmith_f_op_f32(1327f + 202f)))) + 1727f));
    var_0 = -644f;
    var var_1 = 1u;
    return u_input.c.x;
}

fn func_2() -> vec2<f32> {
    let var_0 = ~_wgslsmith_div_vec4_u32(abs(~vec4<u32>(3561u, u_input.c.x, 47757u, u_input.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(1878u, 4294967295u, u_input.c.x, u_input.c.x)) >> (~vec4<u32>(u_input.c.x, 0u, 22022u, 28109u) % vec4<u32>(32u))) | (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, 0u, 28327u, u_input.c.x), firstTrailingBit(vec4<u32>(1u, 1u, 96786u, 1u)) << (vec4<u32>(u_input.c.x, 56445u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) | vec4<u32>(17809u, 34382u, 0u, abs(55871u)));
    let var_1 = Struct_5(Struct_2(countOneBits(u_input.c.x), _wgslsmith_add_vec3_u32(u_input.c, ~(~vec3<u32>(var_0.x, 0u, 4294967295u))), vec2<i32>(-1i) * -vec2<i32>(1i, u_input.a.x)), Struct_1(vec3<i32>(6401i, u_input.a.x, _wgslsmith_add_i32(u_input.b | 0i, u_input.b)), u_input.a.x), u_input.b & -1i, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x | 13615u, _wgslsmith_mod_u32(func_3(vec3<bool>(true, false, false)), 50614u)), _wgslsmith_mod_vec2_u32(var_0.yx ^ vec2<u32>(var_0.x, u_input.c.x), ~(~vec2<u32>(var_0.x, u_input.c.x)))), Struct_2((firstLeadingBit(var_0.x) >> (var_0.x % 32u)) << (u_input.c.x % 32u), u_input.c, -(u_input.a << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(floor(-613f));
    var var_3 = select(vec3<bool>(true, true, true), vec3<bool>(!(select(72158u, var_1.e.b.x, true) > 0u), false, !all(vec4<bool>(false, true, false, false))), ~var_1.a.a >= ~(~_wgslsmith_mod_u32(u_input.c.x, 40108u)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -612f));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(549f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1306f)) - _wgslsmith_f_op_f32(f32(-1f) * -425f))), _wgslsmith_f_op_f32(-186f - -1197f)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-387f, -1973f) * vec2<f32>(1780f, 622f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(994f, 397f), vec2<f32>(-656f, -564f), var_3.yy))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(205f, -955f) - vec2<f32>(-293f, 1621f)))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    return Struct_2(~firstLeadingBit(~71353u), u_input.c, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.c.x, u_input.c, _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_mult_i32(-27093i, 27524i) & func_1(Struct_4(Struct_3(u_input.c.x), Struct_3(u_input.c.x), 196f, Struct_2(1u, u_input.c, u_input.a), 56828u)), -(-18536i ^ u_input.b))));
    var_0 = func_4(Struct_3(u_input.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x), vec4<u32>(u_input.c.x, var_0.a, 32307u >> (1u % 32u), ~firstLeadingBit(var_0.b.x)));
    var_0 = func_4(Struct_3(~1u & _wgslsmith_sub_u32(var_0.a, u_input.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec2<f32>(_wgslsmith_f_op_f32(-2092f * 715f), 280f)), -1744f, abs(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_0.b.x, var_0.a, var_0.b.x, u_input.c.x) ^ vec4<u32>(var_0.a, u_input.c.x, var_0.a, u_input.c.x)), ~vec4<u32>(1u, var_0.b.x, 16724u, var_0.b.x) >> (abs(vec4<u32>(33146u, var_0.b.x, 4294967295u, var_0.a)) % vec4<u32>(32u)), ~reverseBits(vec4<u32>(var_0.a, 4294967295u, 1u, 0u)))));
    var var_1 = select(select(vec3<bool>(!all(vec2<bool>(false, true)), true, true || select(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, true, true, true)), true)), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), !select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, false)), select(false, false, false), true), vec3<bool>(all(vec3<bool>(true, true, true)), true, -1i >= u_input.a.x)), vec3<bool>(!any(vec2<bool>(true, true)), countOneBits(~u_input.c.x) < var_0.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_0.a, u_input.c.x, 0u), vec4<u32>(var_0.a, 19568u, u_input.c.x, u_input.c.x)) == abs(1u)));
    let var_2 = Struct_5(func_4(Struct_3(~(u_input.c.x ^ var_0.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(326f - 1055f)), -536f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-300f - -1439f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1601f)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.a, 16702u, 60595u), select(vec4<u32>(1u, 49784u, 25385u, 4544u), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 60761u), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), vec4<u32>(u_input.c.x, var_0.a, var_0.b.x, var_0.b.x))), Struct_1(vec3<i32>(~1i >> (~var_0.a % 32u), ~1i, 2147483647i), ((u_input.a.x << (u_input.c.x % 32u)) << (var_0.a % 32u)) | ~(i32(-1i) * -2147483647i)), countOneBits(var_0.c.x) >> (83395u % 32u), u_input.c.yz | vec2<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.c.x), ~func_4(Struct_3(u_input.c.x), vec2<f32>(-221f, 1595f), -511f, vec4<u32>(45744u, u_input.c.x, u_input.c.x, var_0.a)).a), Struct_2(_wgslsmith_dot_vec2_u32(select(~u_input.c.xz, ~vec2<u32>(var_0.a, 39354u), var_1.yz), _wgslsmith_add_vec2_u32(abs(u_input.c.yy), var_0.b.zy)), vec3<u32>(reverseBits(~u_input.c.x), ~32019u, abs(1u)), -_wgslsmith_mod_vec2_i32(~u_input.a, firstTrailingBit(u_input.a))));
    let var_3 = _wgslsmith_div_vec2_u32(~var_2.d, vec2<u32>(_wgslsmith_mult_u32(var_0.a, var_0.a & var_2.a.b.x), var_2.a.a));
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(firstTrailingBit(~(~vec4<u32>(82214u, var_3.x, 7247u, 14112u))), min(_wgslsmith_mult_vec4_u32(vec4<u32>(18130u, 13013u, var_3.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, 32126u, 1u, 36859u), vec4<u32>(var_2.d.x, 1u, var_4.b.x, var_3.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 67376u, var_0.b.x, 6742u), vec4<u32>(24469u, var_4.a, var_2.d.x, 1u), vec4<u32>(19950u, var_4.b.x, 1u, 0u)))), ~var_4.c.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-353f, 429f, -423f, -991f), vec4<f32>(1626f, -1863f, -1469f, -735f))))), _wgslsmith_div_vec4_f32(vec4<f32>(1347f, 203f, -941f, -1366f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-291f, 657f, 759f, 1320f), vec4<f32>(1143f, -1353f, -1000f, -362f), vec4<bool>(var_1.x, false, var_1.x, var_1.x))))))));
}

