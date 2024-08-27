struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<u32> {
    let var_0 = reverseBits(0u);
    var var_1 = 1212f;
    let var_2 = 941f;
    let var_3 = vec3<i32>(arg_0.c, ~(select(~(-34047i), u_input.b.x, false) ^ -2147483647i), arg_0.c);
    var_1 = -145f;
    return ~arg_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> bool {
    let var_0 = Struct_1(vec2<u32>(~(~arg_1.a.x) << (min(_wgslsmith_mult_u32(arg_1.a.x, arg_0.a.x), arg_1.b.x) % 32u), 34404u), vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(43288u, 32364u, 26869u, 33304u)), max(~vec4<u32>(83729u, arg_0.a.x, 52910u, arg_0.e), arg_1.b)), 63799u, arg_0.b.x, _wgslsmith_div_u32(0u | ~arg_0.a.x, 1u)), arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.d)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1478f)), _wgslsmith_f_op_f32(874f + -569f), _wgslsmith_f_op_f32(select(309f, 1476f, false)), 1787f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0.d)) * _wgslsmith_f_op_vec4_f32(-arg_0.d)))), 1u);
    var var_1 = var_0;
    var_1 = Struct_1(var_0.b.wx, ~arg_0.b, firstTrailingBit(max(var_0.c << (63178u % 32u), ~_wgslsmith_mult_i32(arg_2, var_1.c))), var_1.d, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(abs(arg_1.b.x)), ~abs(39246u), _wgslsmith_clamp_u32(79615u, 0u ^ var_0.b.x, arg_1.e), countOneBits(_wgslsmith_mult_u32(var_1.e, var_0.b.x))), ~vec4<u32>(var_0.a.x, ~37830u, arg_1.b.x, var_1.b.x << (0u % 32u))));
    var_1 = Struct_1(~max(select(_wgslsmith_mult_vec2_u32(var_0.a, vec2<u32>(arg_1.b.x, 6733u)), arg_0.b.zx, any(vec2<bool>(true, true))), firstLeadingBit(var_0.a)), select(vec4<u32>(abs(4294967295u), abs(arg_1.e), 39718u, arg_0.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(~53433u, func_3(arg_0, vec2<bool>(false, true)).x, _wgslsmith_mod_u32(arg_1.a.x, var_1.b.x), _wgslsmith_mult_u32(0u, 11448u)), vec4<u32>(arg_1.a.x ^ arg_0.a.x, func_3(Struct_1(var_1.b.yy, vec4<u32>(0u, 5970u, 46353u, 78707u), u_input.b.x, var_0.d, arg_0.e), vec2<bool>(false, true)).x, ~29240u, reverseBits(77086u))), select(vec4<bool>(false, any(vec2<bool>(false, false)), any(vec3<bool>(false, false, false)), false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))))), var_0.c, _wgslsmith_f_op_vec4_f32(var_0.d - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.d), arg_1.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -345f, 873f, var_1.d.x)) + vec4<f32>(-1317f, arg_3, var_0.d.x, arg_3)), any(vec2<bool>(true, true))))), _wgslsmith_dot_vec3_u32(~vec3<u32>(44898u, arg_1.e, var_1.a.x), vec3<u32>(1u, ~0u, var_1.a.x)) ^ _wgslsmith_sub_u32(var_0.e & arg_0.b.x, 59640u));
    var var_2 = ~_wgslsmith_sub_vec4_u32(var_1.b, countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, arg_1.a.x, 35356u), abs(vec4<u32>(9976u, 4294967295u, arg_1.b.x, var_0.a.x)))));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = true;
    var_0 = func_4(Struct_1(vec2<u32>(arg_0.a.x, _wgslsmith_div_u32(0u, arg_0.a.x)), func_3(Struct_1(arg_0.a, arg_0.b, 23527i, arg_0.d, arg_0.a.x), !vec2<bool>(arg_1, arg_1)), reverseBits(arg_2), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(376f, 2401f, -161f, arg_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.d.x, -1000f, 1898f)), arg_1)), 3576u), arg_0, ~_wgslsmith_div_i32(min(1i, -22138i), -u_input.a), 395f) || all(vec2<bool>(select(!arg_1, true, all(vec3<bool>(arg_1, arg_1, false))), select(true, arg_1, arg_1)));
    let var_1 = Struct_1(~firstLeadingBit(vec2<u32>(arg_0.b.x, 4294967295u)) ^ max(~countOneBits(vec2<u32>(4294967295u, 65357u)), arg_0.b.zx), ~vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(arg_0.b.yx, vec2<u32>(4294967295u, 65213u))), _wgslsmith_dot_vec2_u32(arg_0.a, arg_0.b.yz), _wgslsmith_add_u32(arg_0.e, arg_0.e), 1u), -48433i, _wgslsmith_f_op_vec4_f32(vec4<f32>(279f, arg_0.d.x, -553f, arg_0.d.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, arg_0.d.x, 1274f, 424f)), vec4<f32>(-1000f, -219f, -1925f, arg_0.d.x)))), ~43896u);
    let var_2 = select(vec3<bool>(all(!select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true))), true, any(!select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(arg_1, true, true, false), vec4<bool>(true, arg_1, arg_1, arg_1)))), vec3<bool>(false, any(vec4<bool>(var_1.d.x != 617f, any(vec2<bool>(arg_1, arg_1)), any(vec2<bool>(true, false)), !arg_1)), false), select(!vec3<bool>(any(vec3<bool>(false, arg_1, false)), func_4(arg_0, var_1, arg_2, -1411f), arg_1), !(!select(vec3<bool>(true, false, false), vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, false, arg_1))), vec3<bool>(all(!vec3<bool>(false, arg_1, arg_1)), false, !arg_1)));
    let var_3 = arg_0;
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-(min(0i, u_input.b.x) << (0u % 32u)), arg_0.c), ~vec2<i32>(-13981i, _wgslsmith_add_i32(firstTrailingBit(u_input.b.x), 5796i)));
    let var_1 = func_2(func_2(Struct_1(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(arg_0.e, 1u)), arg_0.a & vec2<u32>(1u, arg_0.a.x)), arg_0.b, ~(-var_0.x), vec4<f32>(-1913f, _wgslsmith_f_op_f32(arg_0.d.x * 338f), _wgslsmith_f_op_f32(floor(arg_0.d.x)), -1000f), min(arg_0.b.x, arg_0.b.x | 4294967295u)), false, _wgslsmith_sub_i32(~(-2147483647i), -firstTrailingBit(-21189i))), true, max(_wgslsmith_add_i32(arg_0.c, _wgslsmith_sub_i32(u_input.a, -2147483647i)), var_0.x ^ 1i));
    let var_2 = true;
    var var_3 = var_0.x;
    let var_4 = u_input.b.zz;
    return arg_0.b;
}

fn func_1() -> u32 {
    let var_0 = vec4<f32>(1472f, _wgslsmith_f_op_f32(1056f - 1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(676f + 333f) + _wgslsmith_f_op_f32(f32(-1f) * -710f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1200f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1541f * 494f) * _wgslsmith_div_f32(-383f, 1560f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f))));
    var var_1 = Struct_1(select(~vec2<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u)), vec2<u32>(1u, 1u), -20304i > _wgslsmith_mult_i32(2147483647i, u_input.b.x)), func_5(func_2(Struct_1(vec2<u32>(1u, 1u), ~vec4<u32>(10696u, 4294967295u, 13672u, 1u), u_input.b.x | u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -881f, 1262f, -149f)), abs(4294967295u)), all(vec2<bool>(false, false)), -25165i)), 2147483647i, var_0, _wgslsmith_mod_u32(4294967295u, ~select(~2980u, ~4294967295u, true)));
    var_1 = Struct_1(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(var_1.a.x, var_1.b.x)), var_1.a) << (vec2<u32>(0u, 13429u) % vec2<u32>(32u)), vec4<u32>(var_1.e, var_1.b.x, var_1.a.x, _wgslsmith_div_u32(0u, 4294967295u)), _wgslsmith_sub_i32(-26256i, ~(var_1.c >> (var_1.b.x % 32u)) ^ (var_1.c | firstTrailingBit(-2147483647i))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(var_1.d))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) - var_1.d))), 93683u);
    var var_2 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -256f));
    var var_3 = var_1.b;
    return _wgslsmith_sub_u32(var_1.a.x, min(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(1u, var_1.e), func_5(func_2(Struct_1(vec2<u32>(var_3.x, var_3.x), var_1.b, var_1.c, var_1.d, 11930u), true, -48352i)).x), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(4343u, func_1() & 26595u);
    let var_1 = Struct_1(~select(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(~14046u, _wgslsmith_mod_u32(0u, var_0.x)), true), vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5121u, 11825u), vec2<u32>(51936u, var_0.x)), 9711u), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 91945u, var_0.x), vec4<bool>(true, true, true, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 20575u, var_0.x, 37198u), vec4<u32>(4936u, var_0.x, var_0.x, 0u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(max(var_0.x, 130760u), firstTrailingBit(var_0.x)), 91733u, countOneBits(34729u)), ~var_0.x), 8123i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f - -136f)), -479f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-2861f, 247f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-155f, -456f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1524f), _wgslsmith_f_op_f32(exp2(1f)), -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(418f, -1383f))))), _wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 32801u)), _wgslsmith_mult_u32(17352u, var_0.x))) << (_wgslsmith_add_u32(var_0.x, var_0.x) % 32u));
    var var_2 = 47180u;
    var var_3 = 0u;
    let var_4 = u_input.a;
    let var_5 = var_1;
    let var_6 = var_5.b.zx;
    let var_7 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(countOneBits(countOneBits(u_input.b.wyx))), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, _wgslsmith_add_i32(-11550i, u_input.b.x), -u_input.a), select(vec3<i32>(var_1.c & var_5.c, ~(-11651i), var_5.c), vec3<i32>(_wgslsmith_sub_i32(1i, var_5.c), 1i, u_input.b.x & u_input.b.x), false)), ~u_input.b.xwz);
    var var_8 = !vec3<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), !func_4(func_2(Struct_1(vec2<u32>(0u, 0u), vec4<u32>(var_6.x, 0u, 0u, var_1.b.x), var_7.x, var_5.d, var_6.x), true, 19967i), func_2(Struct_1(var_5.b.wz, var_1.b, var_4, var_5.d, var_1.b.x), false, 17347i), ~(-58620i), _wgslsmith_f_op_f32(-var_5.d.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(var_7.x, 8430i, 2147483647i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_1.c, var_1.c, var_4), vec3<i32>(-20527i, -2147483647i, 2147483647i))), var_5.c << (min(reverseBits(55070u), ~0u) % 32u), ~2147483647i), var_5.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.x, 392f) * _wgslsmith_div_f32(-1502f, var_1.d.x)) - var_5.d.x), -305f)));
}

