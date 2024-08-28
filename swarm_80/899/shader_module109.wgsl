struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = ~1u;
    return Struct_3(arg_1.xw, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(select(select(vec2<u32>(4294967295u, 87188u), vec2<u32>(1u, 0u), vec2<bool>(true, false)), ~vec2<u32>(4294967295u, 4294967295u), true), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(45076u, 4294967295u)), vec2<u32>(4294967295u, 32172u))), vec2<u32>(22152u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_clamp_u32(27133u, 0u, 0u), 1u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_2.x, -720f), _wgslsmith_f_op_f32(floor(arg_2.x)))))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(0i, 1i, 0i), ~arg_0.a.x);
    let var_1 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.c.x, -672f, arg_0.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.c.x, -598f, -1405f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(464f, arg_0.c.x, 917f), vec3<f32>(490f, arg_0.c.x, 1000f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, 296f, arg_0.c.x) - vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x))))), Struct_1(vec4<u32>(arg_0.b.x, arg_0.b.x, reverseBits(min(37752u, 54882u)), arg_0.b.x), abs(vec2<u32>(arg_0.b.x >> (arg_0.b.x % 32u), _wgslsmith_div_u32(97424u, 4294967295u))), true, -arg_0.a.x < var_0.x, arg_0.b.x), ((u_input.a.x <= u_input.a.x) && true) || false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, 913f, arg_0.c.x) - vec3<f32>(-343f, arg_0.c.x, -1193f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(995f, -235f, -109f) + vec3<f32>(1554f, arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1188f, 1000f, arg_0.c.x)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec3<f32>(582f, -207f, -1000f))))))));
    var var_2 = Struct_1(var_1.b.a, abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.b.x, 0u), select(vec2<u32>(arg_0.b.x, 9080u), var_1.b.a.yy, vec2<bool>(true, true)) | _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b.a.x, arg_0.b.x), vec2<u32>(arg_0.b.x, 38056u)))), false, true, 29808u);
    let var_3 = Struct_1(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_2.a.x, arg_0.b.x, var_2.e, var_1.b.b.x)), abs(vec4<u32>(3629u, var_1.b.a.x, 0u, arg_0.b.x))) | vec4<u32>(_wgslsmith_dot_vec3_u32(~var_2.a.zxz, var_1.b.a.xyx), 4294967295u, abs(var_2.a.x) & _wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_mod_u32(~var_1.b.b.x, 915u)), func_2(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.d.x))), 2066f, var_1.a.x), u_input.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(arg_0.c.x, -1357f), _wgslsmith_f_op_f32(-423f + 1000f), 111f, _wgslsmith_div_f32(arg_0.c.x, arg_0.c.x))))).b, true, true, arg_0.b.x);
    var var_4 = ~((-u_input.a | firstLeadingBit(u_input.a)) & u_input.a) ^ u_input.a;
    return abs(var_0.x);
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> vec2<i32> {
    var var_0 = func_3(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-798f, -1489f, _wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_f_op_f32(trunc(arg_1.x))))), u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -2787f), vec4<f32>(-153f, 829f, arg_1.x, 1006f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, 1269f, 1091f, -443f), vec4<f32>(arg_3, -702f, arg_1.x, -789f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(947f, arg_2, arg_2, arg_1.x))))));
    let var_1 = vec2<u32>(arg_0, _wgslsmith_dot_vec2_u32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-458f, 266f, 131f, 980f)))), vec4<i32>(min(u_input.a.x, 0i), u_input.a.x, u_input.a.x, 0i), vec4<f32>(-1374f, 480f, arg_2, -237f)).b, vec2<u32>(~arg_0, arg_0) | _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(arg_0, 1u)), abs(vec2<u32>(arg_0, arg_0)))));
    var_0 = u_input.a.x;
    var var_2 = vec2<bool>(true, true);
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(var_1.x, ~(~_wgslsmith_div_u32(arg_0, 0u))), var_1.x, ~(~0u), 25231u);
    return u_input.a.yx;
}

fn func_4(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_1(~vec4<u32>(min(~1u, 1u), ~1u, 1u, 54238u), _wgslsmith_div_vec2_u32(~firstTrailingBit(~vec2<u32>(1u, 0u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(49588u, 9340u), vec2<u32>(1u, 0u), false) & vec2<u32>(1u, 4294967295u), ~vec2<u32>(1u, 1u))), true, any(select(vec2<bool>(true, u_input.a.x != arg_0.x), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true))), ~abs(1u));
    let var_1 = var_0.d;
    var var_2 = reverseBits(~(~86951u));
    var var_3 = _wgslsmith_clamp_i32(-48016i, abs(~_wgslsmith_mult_i32(5266i | u_input.a.x, -1i)), _wgslsmith_dot_vec3_i32(u_input.a.wxx | (vec3<i32>(-24651i, 20561i, arg_0.x) ^ vec3<i32>(-1i, arg_0.x, arg_0.x)), -u_input.a.xxz));
    let var_4 = !var_0.d;
    return vec4<u32>(_wgslsmith_clamp_u32(~max(13157u, _wgslsmith_sub_u32(var_0.b.x, var_0.a.x)), abs(~var_0.a.x), 0u), _wgslsmith_sub_u32((var_0.e ^ ~24469u) & 81111u, 4294967295u), ~_wgslsmith_mod_u32(var_0.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(63399u, var_0.b.x, var_0.a.x), select(var_0.a.yyw, var_0.a.zxx, vec3<bool>(var_0.c, false, var_0.d)))), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~abs(0u));
    var var_1 = ~(countOneBits(vec4<u32>(var_0, var_0, 1u, var_0)) ^ _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, var_0, var_0, 43606u), vec4<u32>(var_0, var_0, 4294967295u, var_0)), vec4<u32>(21379u, 6794u, var_0, 0u))) >> (_wgslsmith_mult_vec4_u32(func_4(func_1(_wgslsmith_add_u32(var_0, 4195u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1155f, -1327f, 223f)), 603f, -1403f)), ~select(vec4<u32>(42907u, var_0, var_0, var_0) << (vec4<u32>(var_0, 74816u, 0u, 1u) % vec4<u32>(32u)), abs(vec4<u32>(var_0, var_0, var_0, var_0)), select(true, true, false))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_mult_u32(var_0, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~var_1.zw, ~var_1.zx), _wgslsmith_sub_vec2_u32(var_1.yy, vec2<u32>(var_0, 44043u))));
    var_1 = _wgslsmith_sub_vec4_u32(~vec4<u32>(abs(firstLeadingBit(var_2)), var_1.x, var_1.x, ~56767u), vec4<u32>(var_2, min(~(~18997u), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 141618u), 33900u)), ~var_0, 27116u >> (~_wgslsmith_dot_vec2_u32(var_1.yz, var_1.zy) % 32u)));
    var_1 = vec4<u32>(var_2, 4294967295u, ~_wgslsmith_mod_u32(1u >> (var_2 % 32u), var_2), 49433u) ^ countOneBits(vec4<u32>(_wgslsmith_add_u32(0u, ~37100u), ~1u, ~(var_0 | var_2), var_1.x));
    var var_3 = ~(_wgslsmith_add_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2, var_2, 4294967295u, 0u), vec4<u32>(var_1.x, 70468u, var_0, var_1.x)), func_4(u_input.a.xw), true), max(~vec4<u32>(var_1.x, 1u, var_2, 39262u), vec4<u32>(var_1.x, var_1.x, var_0, 4294967295u) | vec4<u32>(0u, 4294967295u, 3240u, var_0))) ^ (firstLeadingBit(firstTrailingBit(vec4<u32>(var_2, 5420u, var_2, 0u))) << (~(~vec4<u32>(var_1.x, var_2, var_0, var_0)) % vec4<u32>(32u))));
    let var_4 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 74569u, var_0, var_3.x), vec4<u32>(var_2, 1u, var_1.x, var_0)), firstLeadingBit(vec4<u32>(var_0, var_0, var_2, var_3.x)))), ~vec2<u32>(34050u, _wgslsmith_mod_u32(var_0, var_0)), true, false, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_3.xxy, var_3.xwz, var_1.xww), _wgslsmith_clamp_vec3_u32(var_1.yyw, var_3.zwy, vec3<u32>(var_1.x, 4581u, var_2)))), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(109132u, ~0u, firstLeadingBit(var_1.x), max(4294967295u, var_0)), abs(max(vec4<u32>(0u, 15011u, 5992u, var_0), vec4<u32>(0u, var_3.x, 86131u, var_2)))), _wgslsmith_div_vec2_u32(min(vec2<u32>(0u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_3.wy, vec2<u32>(var_0, var_2))), vec2<u32>(var_3.x, var_1.x) | _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_0), var_1.yz, var_3.yz)), true, false, var_3.x), 4294967295u, !vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), vec3<u32>(var_2, _wgslsmith_mod_u32(var_0, _wgslsmith_sub_u32(var_1.x, 74138u)), ~var_1.x));
    var var_5 = abs(~(~(~reverseBits(vec3<u32>(var_3.x, 12919u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~92171u & _wgslsmith_sub_u32(var_0, 33266u), _wgslsmith_div_u32(var_0, _wgslsmith_dot_vec3_u32(var_3.xzy, var_3.yzx)), var_0, ~(~var_1.x)));
}

