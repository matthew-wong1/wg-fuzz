struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> vec4<u32> {
    let var_0 = -140f;
    var var_1 = max(-reverseBits(~vec4<i32>(-4947i, 52172i, arg_0.d.c.x, arg_2.x)), ~vec4<i32>(_wgslsmith_mod_i32(-1i, u_input.c), ~2147483647i, reverseBits(0i), firstTrailingBit(u_input.c))) ^ -vec4<i32>(70902i, ~u_input.c & (i32(-1i) * -1i), arg_2.x, _wgslsmith_sub_i32(min(arg_0.b.c.x, -68148i), i32(-1i) * -42987i));
    var_1 = ~select(~vec4<i32>(-1i, arg_0.d.c.x, arg_0.b.c.x, 2147483647i), -_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.c.x, 30556i, -2147483647i, u_input.d), vec4<i32>(-48254i, -2147483647i, u_input.c, arg_0.b.c.x)), select(!arg_0.c, vec4<bool>(arg_0.c.x, true, false, false), vec4<bool>(arg_0.c.x, true, arg_1, true))) & vec4<i32>(0i, (_wgslsmith_div_i32(arg_0.b.c.x, -2147483647i) | 2420i) ^ ~(u_input.c ^ u_input.c), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstTrailingBit(var_1.x), ~var_1.x), -abs(arg_2.x), -1i), _wgslsmith_mult_i32(var_1.x, firstTrailingBit(~u_input.c)));
    var_1 = -(~reverseBits(~vec4<i32>(-40190i, -2147483647i, arg_0.b.c.x, 9103i)));
    var_1 = abs(vec4<i32>(19077i, firstTrailingBit(max(-3024i, arg_0.d.c.x)), countOneBits(-(var_1.x ^ arg_0.b.c.x)), min(6930i >> (arg_0.d.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 0i, -6703i), vec4<i32>(arg_2.x, arg_2.x, u_input.d, var_1.x))) | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, -17733i) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<i32>(var_1.x, u_input.d))));
    return vec4<u32>(1u, (4294967295u >> (_wgslsmith_sub_u32(u_input.e ^ arg_0.d.b.x, u_input.e) % 32u)) | abs(u_input.e), 0u, arg_0.b.b.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32) -> Struct_2 {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1517f + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 474f)) + 802f), 1411f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(900f, 1363f, 341f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1761f, -1000f, -1070f)), var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2831f, -300f, 654f))), !vec3<bool>(arg_1.x, arg_1.x, true)))), select(u_input.a, max(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), func_3(Struct_2(vec3<f32>(-715f, -1184f, 293f), Struct_1(vec3<f32>(-1100f, 763f, -485f), u_input.a, vec2<i32>(arg_2, u_input.d)), vec4<bool>(true, arg_1.x, var_0, true), Struct_1(vec3<f32>(-482f, -621f, 1057f), u_input.a, vec2<i32>(-5132i, -1671i))), var_0, vec2<i32>(0i, -2147483647i), -1000f)), vec4<bool>(true, arg_2 < 2147483647i, true, true)) << (countOneBits(max(u_input.a, vec4<u32>(arg_0.x, arg_0.x, u_input.e, u_input.b))) % vec4<u32>(32u)), vec2<i32>(select(arg_2, ~u_input.c, true) | -u_input.c, arg_2 << (func_3(Struct_2(vec3<f32>(-2340f, -1342f, -304f), Struct_1(vec3<f32>(584f, -1019f, -709f), u_input.a, vec2<i32>(u_input.c, 8984i)), vec4<bool>(arg_1.x, false, var_0, var_0), Struct_1(vec3<f32>(-1741f, -509f, -179f), u_input.a, vec2<i32>(-1i, u_input.d))), var_0, ~vec2<i32>(-53341i, arg_2), -685f).x % 32u)));
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_2, u_input.c), vec3<i32>(_wgslsmith_div_i32(countOneBits(u_input.d), -var_1.c.x), _wgslsmith_add_i32(select(arg_2, 0i, var_0), -50352i), var_1.c.x)), vec3<i32>(-(~var_1.c.x), max(~(-1i), -1i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 9176i, 1i, u_input.c), ~vec4<i32>(var_1.c.x, 13322i, var_1.c.x, var_1.c.x)), reverseBits(-10216i) ^ _wgslsmith_sub_i32(var_1.c.x, 0i))));
    var_2 = ~(~u_input.c);
    var var_3 = _wgslsmith_mult_u32(~(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0.x, 39044u), 83060u)), 39140u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.a), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) - vec3<f32>(var_1.a.x, 692f, -1005f)) * var_1.a), ~abs(abs(u_input.a)), var_1.c), select(vec4<bool>(true && arg_1.x, _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x) == var_1.a.x, -2147483647i <= (var_1.c.x ^ -1i), any(vec3<bool>(var_0, arg_1.x, arg_1.x))), vec4<bool>(var_0, true, any(vec3<bool>(arg_1.x, true, false)), true), true), Struct_1(_wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(select(var_1.a, vec3<f32>(-1417f, var_1.a.x, var_1.a.x), true)))), ~u_input.a, vec2<i32>(abs(-1i), var_1.c.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1.d;
    let var_1 = func_2(~(~var_0.b.yz), !(!vec3<bool>(arg_1.c.x, false, true)), u_input.d);
    var var_2 = false;
    var_2 = arg_1.c.x;
    var_2 = true;
    return Struct_2(func_2(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x, var_1.d.b.x), vec2<u32>(arg_1.d.b.x, 70283u)) << (vec2<u32>(71567u, var_1.b.b.x) % vec2<u32>(32u)), ~(var_1.b.b.wx ^ var_1.b.b.xy)), select(vec3<bool>(var_1.c.x, var_1.c.x, true), !arg_1.c.wzw, all(!vec4<bool>(false, arg_1.c.x, false, false))), _wgslsmith_add_i32(var_0.c.x, -(~arg_1.b.c.x))).a, var_1.d, var_1.c, arg_1.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_1(arg_1.yz, func_2(u_input.a.yy, vec3<bool>(false, arg_0.c.x, true), u_input.d)).b.a)), u_input.a, ~_wgslsmith_sub_vec2_i32(arg_0.b.c & arg_0.d.c, vec2<i32>(u_input.c, -2147483647i)) ^ arg_0.d.c);
    var var_1 = ~firstTrailingBit(~(~(~var_0.b.wy)));
    let var_2 = all(arg_0.c.wx);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 53302u;
    var_0 = u_input.a.x;
    var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(func_4(func_1(vec2<f32>(-178f, 663f), Struct_2(vec3<f32>(1510f, 2562f, 1000f), Struct_1(vec3<f32>(1151f, -1554f, 476f), vec4<u32>(72638u, 73062u, u_input.a.x, 17507u), vec2<i32>(u_input.d, u_input.c)), vec4<bool>(true, false, false, true), Struct_1(vec3<f32>(-1404f, 1000f, -403f), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x), vec2<i32>(u_input.d, -2147483647i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-748f, -1398f, -1552f, 1476f) - vec4<f32>(458f, 1011f, 1279f, 1029f)), _wgslsmith_f_op_f32(round(920f)), 1u), 15762u, 20200u)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~20579u, u_input.b), u_input.e), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 1u ^ _wgslsmith_mult_u32(u_input.e, func_4(Struct_2(vec3<f32>(761f, 1222f, 1137f), Struct_1(vec3<f32>(2123f, -631f, 1497f), vec4<u32>(64402u, 54098u, 0u, 1u), vec2<i32>(-74i, u_input.d)), vec4<bool>(true, true, true, true), Struct_1(vec3<f32>(-1057f, 1246f, 693f), u_input.a, vec2<i32>(54631i, u_input.d))), vec4<f32>(-1481f, 1000f, -554f, -482f), -629f, u_input.e))));
    var_0 = 4294967295u;
    var_0 = min(4294967295u, (u_input.a.x << (u_input.a.x % 32u)) ^ 0u);
    let var_1 = func_2(~(u_input.a.wx >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x), min(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, 39057u))) % vec2<u32>(32u))), vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1445f - 1138f) + 1152f) >= _wgslsmith_f_op_f32(-394f - func_2(vec2<u32>(4294967295u, u_input.a.x), vec3<bool>(false, true, false), u_input.d).d.a.x), all(func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(575f, -396f), vec2<f32>(316f, 615f))), func_1(vec2<f32>(287f, 769f), Struct_2(vec3<f32>(1000f, -885f, 2247f), Struct_1(vec3<f32>(-904f, 832f, -124f), u_input.a, vec2<i32>(-106111i, u_input.c)), vec4<bool>(true, false, false, true), Struct_1(vec3<f32>(1654f, 1340f, -1000f), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.e), vec2<i32>(6864i, u_input.d))))).c)), _wgslsmith_add_i32(u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c, u_input.c, 4496i, u_input.c), ~vec4<i32>(0i, u_input.d, u_input.d, u_input.c), min(vec4<i32>(42333i, -2147483647i, u_input.d, u_input.d), vec4<i32>(-143i, -7066i, u_input.d, 0i))), vec4<i32>(func_2(u_input.a.xx, vec3<bool>(false, true, true), 2147483647i).d.c.x, i32(-1i) * -2147483647i, i32(-1i) * -1i, u_input.d)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) * 714f)), _wgslsmith_f_op_f32(ceil(1000f)));
}

