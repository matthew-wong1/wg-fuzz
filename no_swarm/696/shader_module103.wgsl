struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_4) -> vec2<u32> {
    global0 = arg_3.c.yw;
    global0 = max(select(arg_3.c.xy ^ arg_3.c.xw, _wgslsmith_add_vec2_i32(vec2<i32>(1i, global0.x), vec2<i32>(global0.x, -4456i)), vec2<bool>(arg_1.c.x, arg_1.a)) >> (u_input.a % vec2<u32>(32u)), arg_3.c.xy);
    let var_0 = Struct_4(arg_0.a, arg_3.b, vec4<i32>(global0.x, _wgslsmith_mod_i32(max(global0.x, _wgslsmith_mult_i32(24347i, arg_3.c.x)), _wgslsmith_dot_vec3_i32(arg_3.c.zyx, arg_3.c.zyw) ^ global0.x), global0.x, arg_3.c.x), arg_0, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.b.c.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -134f)), arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-105f, 1039f)))));
    let var_1 = vec4<bool>(true || arg_3.b.b, var_0.b.b, any(select(select(vec4<bool>(true, true, var_0.b.b, arg_3.b.b), vec4<bool>(arg_2, false, false, var_0.b.b), vec4<bool>(false, true, false, arg_2)), vec4<bool>(true, false, arg_1.c.x, false), vec4<bool>(arg_2, false, true, arg_3.b.b))) && arg_3.b.b, true);
    let var_2 = ~11888u;
    return u_input.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> vec3<bool> {
    global0 = ~vec2<i32>(-16181i, min(2147483647i, ~(global0.x << (0u % 32u))));
    var var_0 = 581f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_1.c.a.xx))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.c.a.x, _wgslsmith_f_op_f32(max(arg_1.c.a.x, _wgslsmith_div_f32(605f, -868f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.a.x * -1000f), _wgslsmith_div_f32(var_1.x, 2073f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), -346f));
    let var_3 = vec2<bool>(any(!arg_0.zz), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), arg_0.zy, all(arg_0.zx)), all(select(vec4<bool>(arg_0.x, false, true, arg_1.b), vec4<bool>(true, true, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))))));
    return !vec3<bool>(select(arg_1.b, true, arg_0.x), true, true);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    global0 = _wgslsmith_add_vec2_i32(select(arg_0, ~max(arg_0, vec2<i32>(arg_0.x, global0.x)), select(vec2<bool>(arg_3, arg_3), func_3(vec3<bool>(false, arg_1.x, false), Struct_3(u_input.a.x, arg_1.x, Struct_1(vec3<f32>(-353f, -169f, arg_2.a.x))), u_input.b).xx, arg_3)), _wgslsmith_sub_vec2_i32(arg_0, ~vec2<i32>(arg_0.x, arg_0.x))) | -_wgslsmith_sub_vec2_i32(arg_0, arg_0);
    global0 = _wgslsmith_mult_vec2_i32(arg_0, -abs(firstLeadingBit(abs(arg_0))));
    let var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a));
    let var_2 = arg_0.x >> (54279u % 32u);
    return select(!vec4<bool>(false, select(true, true, arg_0.x != -13679i), any(vec3<bool>(true, false, true)), all(vec4<bool>(arg_3, true, true, true))), vec4<bool>(!(var_0.x || false), any(func_3(vec3<bool>(false, var_0.x, arg_1.x), Struct_3(13036u, arg_3, Struct_1(vec3<f32>(926f, -1741f, var_1.a.x))), _wgslsmith_div_u32(u_input.b, u_input.a.x)).xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)) == -416f, !(false & (arg_0.x > global0.x))), all(!arg_1.zx));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<bool>) -> vec3<u32> {
    let var_0 = select(select(func_4(arg_0.c.zy >> (func_2(arg_0.b.c, Struct_2(arg_2.x, arg_1.x, vec3<bool>(arg_2.x, arg_0.b.b, arg_2.x)), true, Struct_4(arg_0.b.c.a, Struct_3(arg_1.x, arg_2.x, Struct_1(arg_0.d.a)), arg_0.c, Struct_1(arg_0.a), Struct_1(arg_0.a))) % vec2<u32>(32u)), !func_3(arg_2.zxw, Struct_3(arg_0.b.a, arg_0.b.b, Struct_1(vec3<f32>(arg_0.a.x, 414f, arg_0.b.c.a.x))), 4294967295u), arg_0.b.c, select(arg_1.x == 39792u, all(arg_2.xz), true)), !(!(!arg_2)), vec4<bool>(arg_2.x, all(!vec4<bool>(arg_0.b.b, false, false, false)), any(!arg_2), !select(arg_2.x, arg_2.x, true))), arg_2, vec4<bool>(true, any(func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 7351i), arg_0.c.zw), select(vec3<bool>(arg_2.x, false, false), arg_2.xyx, vec3<bool>(arg_2.x, arg_0.b.b, arg_2.x)), Struct_1(arg_0.b.c.a), arg_0.b.b).zx), all(arg_2.xzz), arg_0.c.x > global0.x));
    let var_1 = ~(~max(_wgslsmith_add_i32(-global0.x, -19476i), -48937i));
    let var_2 = true;
    var var_3 = Struct_4(arg_0.d.a, Struct_3(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_1.x, arg_1.x, 33005u, arg_1.x)), vec4<u32>(arg_1.x, 4294967295u, 4676u, arg_1.x)), all(!arg_2.ywx), arg_0.d), vec4<i32>(arg_0.c.x, _wgslsmith_mult_i32(12079i, 0i), -_wgslsmith_mod_i32(~var_1, max(-2147483647i, -2147483647i)), var_1), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1042f, 423f, -1731f), vec3<f32>(_wgslsmith_f_op_f32(2396f - arg_0.b.c.a.x), -351f, 833f)))), Struct_1(vec3<f32>(-637f, 819f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.c.a.x - -918f), 228f, !var_0.x)))));
    var var_4 = arg_1.x;
    return vec3<u32>(102966u, u_input.a.x, 1u);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = -19741i;
    global0 = select(_wgslsmith_sub_vec2_i32(vec2<i32>(~var_0, 0i), _wgslsmith_div_vec2_i32(reverseBits(abs(vec2<i32>(-4530i, -58259i))), firstTrailingBit(vec2<i32>(1i, 1i)))), reverseBits(~firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, global0.x), vec2<i32>(1i, global0.x)))), any(select(func_3(func_3(vec3<bool>(false, false, false), Struct_3(17896u, false, Struct_1(vec3<f32>(203f, 1111f, -2198f))), arg_1.x), Struct_3(11044u, true, Struct_1(vec3<f32>(-252f, 109f, 1000f))), arg_1.x), vec3<bool>(any(vec3<bool>(true, false, true)), true, func_4(vec2<i32>(-12540i, var_0), vec3<bool>(true, true, true), Struct_1(vec3<f32>(-1120f, -563f, -311f)), true).x), vec3<bool>(true, true, true))));
    global0 = vec2<i32>(-2147483647i, 1i);
    global0 = firstLeadingBit(min(-vec2<i32>(20644i, global0.x) & vec2<i32>(~var_0, 26879i & var_0), _wgslsmith_mult_vec2_i32(reverseBits(firstTrailingBit(vec2<i32>(0i, global0.x))), countOneBits(vec2<i32>(var_0, global0.x)))));
    var var_1 = _wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_0, var_0, global0.x, 0i)), firstLeadingBit(~vec4<i32>(global0.x, 0i, global0.x, global0.x))), vec4<i32>(-1i) * -((vec4<i32>(-1i, global0.x, -21734i, -2147483647i) & vec4<i32>(2147483647i, -11737i, global0.x, global0.x)) << ((vec4<u32>(arg_1.x, 1471u, 1u, arg_0.x) | vec4<u32>(0u, 73723u, u_input.a.x, 1u)) % vec4<u32>(32u))));
    return StorageBuffer(~firstLeadingBit(min(max(1i, 0i), -56735i)), firstTrailingBit(_wgslsmith_mod_u32(30263u, min(~arg_0.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(18324u, u_input.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(vec2<i32>((-2147483647i << (u_input.a.x % 32u)) | (i32(-1i) * -2147483647i), ~select(global0.x, global0.x, true))) | vec2<i32>(0i, global0.x);
    global0 = (vec2<i32>(~1i, 1i) >> ((select(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(15933u, 17527u), u_input.a), vec2<u32>(7237u, 32597u), true) ^ ~u_input.a) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, global0.x), vec2<i32>(global0.x, global0.x))), countOneBits(vec2<i32>(global0.x, global0.x) ^ vec2<i32>(-166i, global0.x)) >> (~vec2<u32>(41514u, u_input.a.x) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_add_u32(4814u, u_input.b) << (~26211u % 32u)), u_input.a), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 27672u), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)), u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 1u), ~u_input.a)) << (~(vec3<u32>(u_input.b, u_input.b, u_input.b) >> (func_1(Struct_4(vec3<f32>(-226f, 143f, -1000f), Struct_3(u_input.b, false, Struct_1(vec3<f32>(1146f, 1074f, -740f))), vec4<i32>(-649i, 2147483647i, -2675i, global0.x), Struct_1(vec3<f32>(1226f, -1460f, -1500f)), Struct_1(vec3<f32>(252f, -853f, -320f))), vec4<u32>(u_input.b, u_input.a.x, 23531u, 9330u), vec4<bool>(false, true, true, false)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

