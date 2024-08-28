struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(1479i, 0i), vec2<i32>(3975i, 0i), vec2<i32>(26781i, -1i), vec2<i32>(2147483647i, -57510i), vec2<i32>(-1i, 0i), vec2<i32>(0i, -31018i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, -1i), vec2<i32>(-40522i, -73172i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(5305i, 34951i), vec2<i32>(4047i, i32(-2147483648)), vec2<i32>(-15176i, 28973i), vec2<i32>(2147483647i, -46735i), vec2<i32>(-1279i, -1756i), vec2<i32>(-1i, -1655i), vec2<i32>(19638i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(27888i, i32(-2147483648)), vec2<i32>(-12388i, 1i), vec2<i32>(-16713i, 2147483647i), vec2<i32>(54208i, i32(-2147483648)), vec2<i32>(17217i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(38741i, -19792i), vec2<i32>(2147483647i, 14314i), vec2<i32>(15071i, -13412i), vec2<i32>(1i, 31244i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    global0 = !any(vec4<bool>(true, true, true, true));
    global1 = array<vec2<i32>, 29>();
    var var_0 = ~(~vec2<u32>(21756u, 1u)) | ((~u_input.c << (~(~u_input.c) % vec2<u32>(32u))) | select(vec2<u32>(arg_0, 37176u) >> (countOneBits(u_input.c) % vec2<u32>(32u)), min(u_input.d.xx ^ vec2<u32>(1u, 1u), select(vec2<u32>(31560u, u_input.b), u_input.d.yx, false)), false));
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.xx, u_input.c), u_input.d.yz), firstTrailingBit(~(u_input.c << (u_input.d.zy % vec2<u32>(32u))))), -1i, any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, false), true), true)), 68431u);
    let var_2 = false;
    return Struct_1(var_1.a, -7313i, var_2, ~(~_wgslsmith_mult_u32(firstTrailingBit(69803u), 1u)));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.b, 9844i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, 2147483647i), vec3<i32>(-1i, arg_0.b, 1i))), -arg_0.b, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-10546i, arg_0.b, arg_0.b), vec3<i32>(7942i, arg_0.b, -76809i)), vec3<i32>(arg_0.b, arg_0.b, 22072i))), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-56277i, -2147483647i, -48823i)), vec3<i32>(29211i, -67053i, arg_0.b)) >> (select(firstLeadingBit(vec3<u32>(0u, 22795u, arg_0.a.x)), u_input.d, vec3<bool>(true, arg_0.c, false)) % vec3<u32>(32u))) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, firstTrailingBit(u_input.d.x)), u_input.d) << (4294967295u % 32u)) % 32u);
    var var_1 = arg_0;
    var var_2 = Struct_2(select(!select(select(vec3<bool>(arg_0.c, true, var_1.c), vec3<bool>(true, arg_0.c, false), vec3<bool>(var_1.c, false, false)), select(vec3<bool>(true, var_1.c, false), vec3<bool>(true, true, arg_0.c), vec3<bool>(true, true, arg_0.c)), var_1.c), select(!vec3<bool>(true, var_1.c, arg_0.c), vec3<bool>(all(vec3<bool>(false, var_1.c, arg_0.c)), false, var_1.c || false), vec3<bool>(false, true, var_1.c)), !(!vec3<bool>(arg_0.c, arg_0.c, var_1.c))), min(u_input.d, ~u_input.d), arg_0, !func_2(var_1.a.x, vec4<f32>(-311f, _wgslsmith_f_op_f32(f32(-1f) * -1777f), _wgslsmith_f_op_f32(f32(-1f) * -1451f), _wgslsmith_f_op_f32(floor(-1818f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(378f, -609f)))).c);
    var_0 = _wgslsmith_add_i32(reverseBits(arg_0.b), firstLeadingBit(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, arg_0.d), arg_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(591f, 584f, 1592f, 1835f) * vec4<f32>(-1272f, 1264f, -1000f, 650f)), _wgslsmith_f_op_f32(select(1226f, -123f, var_2.d))).b)) | ((~(-19107i << (var_2.c.a.x % 32u)) ^ _wgslsmith_mult_i32(var_2.c.b, 0i)) & var_1.b);
    let var_3 = _wgslsmith_sub_u32(firstLeadingBit(reverseBits(_wgslsmith_mod_u32(var_1.d | arg_0.a.x, ~1u))), 4294967295u);
    return Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~arg_0.a.x, 3652u), vec2<u32>(max(22702u, 62007u), var_3)) << (~(countOneBits(vec2<u32>(4294967295u, 1196u)) << (vec2<u32>(var_1.d, var_1.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), -2147483647i, var_1.c, reverseBits(var_2.c.a.x));
}

fn func_1() -> Struct_2 {
    global0 = true;
    var var_0 = func_3(func_2(1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-428f, 198f, 2189f, 345f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1583f, -1327f, -882f, -632f) - vec4<f32>(1022f, 788f, -1627f, 348f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1692f - _wgslsmith_f_op_f32(trunc(1104f)))))));
    var var_1 = vec3<bool>(var_0.c, func_3(Struct_1(~vec2<u32>(var_0.a.x, 97706u), var_0.b & -43896i, var_0.c, var_0.d)).c, true);
    global1 = array<vec2<i32>, 29>();
    var_1 = vec3<bool>(all(select(vec4<bool>(true, var_0.c, var_1.x, var_1.x), !(!vec4<bool>(false, false, false, var_1.x)), true)), any(var_1.xy) && func_3(func_2(~u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-265f, 841f, -689f, 1406f) + vec4<f32>(696f, -938f, 1146f, 707f)), -870f)).c, var_0.c);
    return Struct_2(!vec3<bool>(true, -var_0.b <= var_0.b, true), u_input.d, Struct_1(vec2<u32>(max(29598u, func_2(37303u, vec4<f32>(-1421f, 610f, -502f, -326f), 1272f).a.x), var_0.d), var_0.b, -_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(1u, 29u)], vec2<i32>(5735i, -2147483647i)) >= -var_0.b, select(~abs(u_input.a), func_2(35305u, _wgslsmith_f_op_vec4_f32(vec4<f32>(933f, -950f, -1000f, 142f) * vec4<f32>(-815f, 565f, -1000f, -654f)), _wgslsmith_div_f32(636f, -846f)).d, true)), all(vec3<bool>(!select(var_0.c, var_1.x, false), !var_1.x, false && var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = var_0.a.x != (true | func_1().a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(reverseBits(_wgslsmith_clamp_i32(29403i, -1i, var_0.c.b)), ~_wgslsmith_mult_i32(-55914i, 26968i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.b, var_0.c.b, -45182i) >> (vec3<u32>(u_input.c.x, 3498u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(var_0.c.b, var_0.c.b, 2147483647i) | vec3<i32>(2147483647i, 2147483647i, 2147483647i))), vec3<i32>(func_3(Struct_1(var_0.b.yz, reverseBits(var_0.c.b), true, 80487u << (var_0.b.x % 32u))).b, 2147483647i, func_1().c.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1710f)), _wgslsmith_f_op_f32(round(-358f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f - -1516f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, 1176f), 412f, _wgslsmith_f_op_f32(-1040f + 398f)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1956f)))))), 595f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1820f))))), _wgslsmith_f_op_f32(abs(-1013f))), _wgslsmith_mult_i32(~(var_0.c.b >> ((0u << (u_input.c.x % 32u)) % 32u)), abs((i32(-1i) * -1i) & select(var_0.c.b, var_0.c.b, false))));
}

