struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> u32 {
    global0 = abs(abs(4294967295u >> (_wgslsmith_clamp_u32(u_input.c, 27422u, u_input.c) % 32u))) == countOneBits(_wgslsmith_mult_u32(2171u, firstLeadingBit(min(u_input.c, 4294967295u))));
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(u_input.c & ~u_input.c), ~u_input.c, u_input.c), vec3<u32>(u_input.c, ~(~(~0u)), 59020u));
    let var_1 = arg_1;
    var var_2 = select(~countOneBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), true), countOneBits(vec4<u32>(1u, 4294967295u, u_input.c, 24256u)), ~vec4<u32>(u_input.c, 30011u, 23194u, 0u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.c, u_input.c, u_input.c << (_wgslsmith_add_u32(u_input.c, u_input.c) % 32u), ~1u), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, 1u, u_input.c, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(17472u, u_input.c, u_input.c, u_input.c))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, 1u, u_input.c, 25230u), select(vec4<u32>(u_input.c, 4294967295u, 70818u, 4294967295u), vec4<u32>(1u, u_input.c, 33030u, u_input.c), vec4<bool>(arg_1.b.x, true, true, false))), vec4<u32>(~17486u, _wgslsmith_dot_vec2_u32(vec2<u32>(59003u, 50229u), vec2<u32>(35626u, 0u)), u_input.c, ~u_input.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 41764u, u_input.c) | vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec4<u32>(1u, u_input.c, u_input.c, u_input.c) | vec4<u32>(42374u, u_input.c, u_input.c, u_input.c), ~vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 51116u), vec4<u32>(0u, u_input.c, 4294967295u, 10625u), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 69849u))), vec4<bool>(true, _wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 10159u, u_input.c, u_input.c), vec4<u32>(4294967295u, 0u, 1u, 0u))) >= (~u_input.c << (57618u % 32u)), !(!arg_1.b.x), var_1.b.x));
    let var_3 = arg_1.a;
    return 1u;
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = ~vec4<u32>(u_input.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 37300u, 4294967295u) | vec3<u32>(1u, 0u, 89854u)), ~_wgslsmith_clamp_u32(u_input.c, _wgslsmith_add_u32(1u, 16366u), u_input.c), 71340u);
    let var_1 = ~abs(max(~(u_input.c << (1u % 32u)), var_0.x));
    var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(func_3(vec3<i32>(u_input.b.x, -1818i, u_input.b.x), Struct_3(Struct_1(vec3<f32>(392f, 1431f, 568f)), vec3<bool>(false, arg_0.x, true))), var_0.x, u_input.c >> (21782u % 32u), 14424u) & _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(6016u, 0u, var_1, u_input.c), ~vec4<u32>(86134u, var_1, 4752u, var_1))), reverseBits((vec4<u32>(1u, var_0.x, var_1, var_0.x) ^ vec4<u32>(4294967295u, var_1, u_input.c, 65995u)) | (vec4<u32>(1u, 21977u, u_input.c, var_1) ^ vec4<u32>(0u, var_1, var_0.x, 1u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(~var_0.x, 27886u, abs(4294967295u), ~var_0.x), firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.c, u_input.c, var_1, var_0.x)))));
    var var_2 = _wgslsmith_sub_u32(~28111u ^ (_wgslsmith_dot_vec3_u32(var_0.xzz, _wgslsmith_mult_vec3_u32(var_0.zyy, var_0.xyz)) ^ 4294967295u), ~(~0u));
    var var_3 = ~var_0.wxz;
    return Struct_2(-countOneBits(u_input.b.x), ~((_wgslsmith_mult_i32(-48187i, 33503i) & _wgslsmith_mult_i32(-46739i, u_input.a)) | 1i), vec2<f32>(-991f, -271f), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -35445i), _wgslsmith_mod_vec2_i32(u_input.b.yz, u_input.b.yy)), 2147483647i, -30254i), vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(23114i, 20738i, 0i)), _wgslsmith_add_i32(u_input.b.x, u_input.a), abs(u_input.b.x))), select(abs(~countOneBits(var_0.xwz)), _wgslsmith_mod_vec3_u32(select(var_0.zwx & var_0.zyx, vec3<u32>(1u, u_input.c, u_input.c) | vec3<u32>(var_0.x, var_1, u_input.c), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x)), ~(~var_0.yxy)), select(!(!vec3<bool>(arg_0.x, arg_0.x, false)), select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), true), select(!vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, true, true)), arg_0.x))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> i32 {
    global0 = ~(reverseBits(~0u) ^ ((u_input.c | u_input.c) | ~1u)) < 31370u;
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 2070f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -698f, -1287f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c.x, 714f, arg_2), vec3<f32>(arg_1.c.x, arg_2, arg_2)))))), select(vec3<bool>(all(vec3<bool>(false, true, true)) && true, any(vec4<bool>(true, true, true, true)), true), select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), true), vec3<bool>(true, true, true), !(0i != u_input.b.x)), all(vec3<bool>(true, true, any(vec3<bool>(true, true, true))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-440f, -675f, func_2(var_0.b.yx).c.x))) - _wgslsmith_f_op_vec3_f32(-var_0.a.a))));
    var_0 = Struct_3(var_0.a, vec3<bool>(false, !(min(arg_1.e.x, arg_1.e.x) < _wgslsmith_dot_vec2_u32(vec2<u32>(13218u, arg_1.e.x), arg_1.e.zz)), var_0.b.x && var_0.b.x));
    let var_2 = func_2(var_0.b.xz);
    return ~u_input.a;
}

fn func_1() -> bool {
    global0 = firstTrailingBit(u_input.b.x) != _wgslsmith_sub_i32(_wgslsmith_mod_i32(-u_input.a, u_input.b.x), 1i);
    global0 = !any(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), false), true));
    var var_0 = Struct_2(max(max(func_4(~u_input.a, func_2(vec2<bool>(true, true)), _wgslsmith_f_op_f32(floor(1000f))), abs(u_input.a)), u_input.b.x), abs((u_input.a | _wgslsmith_clamp_i32(u_input.a, u_input.b.x, 19552i)) & -1i), func_2(vec2<bool>(select(select(true, true, true), true, u_input.b.x > -1i), true)).c, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -(u_input.a << (u_input.c % 32u)), u_input.a), abs(vec3<i32>(-1i) * -vec3<i32>(-1i, 2147483647i, u_input.a))), vec3<u32>(u_input.c, firstLeadingBit(_wgslsmith_mod_u32(u_input.c, 8279u) & 1u), 4294967295u));
    var var_1 = ~u_input.b;
    global0 = false;
    return any(!select(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(false | func_1(), any(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec4<bool>(true, false, false, false))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    var var_1 = vec2<u32>(u_input.c, u_input.c);
    var var_2 = Struct_2(select(u_input.a << (0u % 32u), -47146i, var_0.x), -16042i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -359f), -512f), _wgslsmith_clamp_vec3_i32(~(~u_input.b.yyz), select(~(~vec3<i32>(-25520i, 2147483647i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 1i, u_input.a) & vec3<i32>(u_input.b.x, 9849i, u_input.a), u_input.b.xxw), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, var_0.x)), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), true), true)), u_input.b.wzw), countOneBits(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.c, var_1.x) & vec3<u32>(u_input.c, u_input.c, 0u)), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, var_1.x), vec3<u32>(4294967295u, var_1.x, 67166u), vec3<u32>(4294967295u, 2156u, u_input.c))))));
    let var_3 = Struct_2(u_input.b.x, u_input.a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.c.x, -193f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(var_2.c, vec2<f32>(-1444f, var_2.c.x))))))))), vec3<i32>(u_input.b.x, i32(-1i) * -1i, abs(-_wgslsmith_add_i32(1i, var_2.d.x))), var_2.e);
    global0 = ~1u <= var_3.e.x;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.c.x * var_2.c.x), var_3.c.x, _wgslsmith_f_op_f32(-var_2.c.x)))));
    var_1 = var_2.e.yz;
    let var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.c.x, -2010f, var_2.c.x, var_4.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -1132f, -612f, var_2.c.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a.x, var_3.c.x, var_3.c.x, 1976f), vec4<f32>(var_3.c.x, var_4.a.x, 500f, 551f), vec4<bool>(var_0.x, var_0.x, false, var_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(276f, var_2.c.x, -1000f, -1000f) * vec4<f32>(var_2.c.x, -421f, var_2.c.x, 823f)))))), vec3<f32>(-119f, -361f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.c.x), 736f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x * 351f)), var_2.c.x)), ~_wgslsmith_dot_vec2_u32(var_2.e.zy, vec2<u32>(~52143u, func_2(vec2<bool>(false, var_0.x)).e.x)), var_4.a);
}

