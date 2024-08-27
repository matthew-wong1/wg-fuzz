struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1064f, 307f, -598f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1042f, -2054f, 989f))) + vec3<f32>(-1000f, 446f, 1058f))))), firstLeadingBit(firstTrailingBit(~abs(2147483647i))), Struct_1(u_input.e.x ^ -u_input.e.x, ~_wgslsmith_mod_u32(~1u, u_input.a), !(!select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, true, arg_1))), 1i), arg_1, u_input.e.x);
    var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(abs(var_0.a)), u_input.e.x, var_0.c, any(vec2<bool>(reverseBits(arg_0) >= 0u, all(vec3<bool>(true, true, true)))), -1i);
    let var_1 = var_0.a.yx;
    var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1096f, _wgslsmith_f_op_f32(sign(var_0.a.x)), 360f)), u_input.e.x, var_0.c, !var_0.d, 1i);
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.d, vec3<u32>(~4294967295u, abs(59384u), 120348u)), u_input.c, var_0.c.b);
    return any(select(vec2<bool>(var_0.c.c.x, all(var_0.c.c.yy)), var_0.c.c.yy, any(!var_0.c.c.yy)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = 4294967295u;
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(844f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1943f))))), -753f);
    let var_1 = Struct_1(u_input.e.x ^ -22391i, arg_0, select(vec3<bool>(false, true, func_3(1u, true)), select(vec3<bool>(false, 120230u < arg_0, true), vec3<bool>(select(true, false, false), u_input.e.x < u_input.e.x, all(vec2<bool>(false, true))), vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, true))), _wgslsmith_sub_i32(firstTrailingBit(-3362i), u_input.e.x));
    let var_2 = _wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.e.x, -31634i, var_1.d, 6893i)), vec4<i32>(_wgslsmith_mult_i32(-25332i, -1i), i32(-1i) * -1i, ~var_1.a, -21043i)), vec4<i32>((i32(-1i) * -2147483647i) & u_input.e.x, _wgslsmith_mod_i32(~var_1.a, _wgslsmith_add_i32(-29868i, _wgslsmith_div_i32(-21193i, u_input.e.x))), _wgslsmith_div_i32(1i, 1i), u_input.e.x), countOneBits(abs(abs(vec4<i32>(var_1.a, u_input.e.x, u_input.e.x, -40007i))) & (vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_1.d, 0i, -1195i))));
    global0 = 74422u;
    return Struct_2(var_2, var_1, vec2<f32>(1175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 - 960f))))), -4873i, Struct_1(46772i, 1u, var_1.c, ~38326i));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = 4294967295u;
    let var_1 = arg_2.b.b;
    var var_2 = 4294967295u;
    let var_3 = ~vec3<u32>(~3453u, 4294967295u, ~var_1 & _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4776u, arg_2.b.b, 42724u), u_input.d), vec3<u32>(4294967295u, var_1, u_input.b.x) ^ vec3<u32>(arg_2.e.b, u_input.c, var_1)));
    global0 = 0u;
    return func_2(~(~64764u));
}

fn func_1() -> u32 {
    let var_0 = Struct_3(func_4(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, false, false, true)), false), vec2<bool>(true, true)), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1623i, -54354i), u_input.e.yz)), 1i), func_2(~abs(u_input.d.x))), firstTrailingBit(func_2(~u_input.c).a) ^ reverseBits(~(~vec4<i32>(u_input.e.x, 39937i, -15100i, u_input.e.x))), Struct_1(firstTrailingBit(~44375i), 18139u, func_4(vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.e, vec3<i32>(41889i, 57927i, -8485i)), u_input.e), func_2(76547u >> (u_input.d.x % 32u))).e.c, max(~(-u_input.e.x), countOneBits(u_input.e.x))), vec3<i32>(select(~countOneBits(-1i), ~min(u_input.e.x, 11827i), ~u_input.b.x != ~4294967295u), _wgslsmith_div_i32(0i, u_input.e.x), i32(-1i) * -27900i));
    var var_1 = func_2(_wgslsmith_sub_u32(1u & u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b.zzy, u_input.b.yyw))).b;
    global0 = var_1.b;
    global0 = 15003u;
    var var_2 = -254f;
    return select(u_input.d.x, 4294967295u, true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global0 = arg_0.b | ~_wgslsmith_dot_vec3_u32(abs(u_input.d), _wgslsmith_mult_vec3_u32(vec3<u32>(18473u, arg_0.b, arg_0.b), vec3<u32>(arg_0.b, 22389u, arg_0.b)) | _wgslsmith_div_vec3_u32(u_input.b.wyy, u_input.d));
    var var_0 = Struct_3(Struct_2(~vec4<i32>(0i << (1u % 32u), arg_1.a, u_input.e.x, func_4(vec2<bool>(false, false), arg_0.a, Struct_2(vec4<i32>(u_input.e.x, 2147483647i, -18173i, 0i), Struct_1(-2147483647i, 4294967295u, vec3<bool>(false, true, arg_0.c.x), arg_0.a), vec2<f32>(-189f, 1000f), arg_1.d, arg_0)).e.d), func_4(!vec2<bool>(arg_0.c.x, false), u_input.e.x, Struct_2(vec4<i32>(arg_1.a, 1i, arg_1.a, u_input.e.x) | vec4<i32>(8107i, u_input.e.x, 1i, -9784i), Struct_1(u_input.e.x, arg_1.b, arg_0.c, -55383i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1156f, -639f), vec2<f32>(-200f, -664f))), firstLeadingBit(u_input.e.x), arg_1)).e, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2587f, 574f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, -385f)))))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, reverseBits(arg_0.d), firstLeadingBit(u_input.e.x)), _wgslsmith_div_vec3_i32(u_input.e, reverseBits(u_input.e))), arg_0), vec4<i32>(func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.b.x, arg_1.b, 1u)), arg_1.b)).a.x, _wgslsmith_mod_i32(-1i, reverseBits(func_4(vec2<bool>(arg_0.c.x, arg_1.c.x), arg_1.d, Struct_2(vec4<i32>(24053i, 1i, -1i, u_input.e.x), Struct_1(-1i, arg_1.b, arg_0.c, 0i), vec2<f32>(-1570f, 735f), 1311i, Struct_1(-35311i, u_input.b.x, arg_1.c, 2147483647i))).e.a)), i32(-1i) * -5044i, u_input.e.x & -(i32(-1i) * -15393i)), Struct_1(_wgslsmith_div_i32(arg_1.a, ~_wgslsmith_dot_vec3_i32(u_input.e, u_input.e)), reverseBits(_wgslsmith_mod_u32(1u, u_input.a)), arg_0.c, _wgslsmith_mult_i32(reverseBits(arg_1.d), -47190i)), vec3<i32>(~_wgslsmith_sub_i32(-2147483647i, -u_input.e.x), 0i, _wgslsmith_mod_i32(arg_0.a, -_wgslsmith_add_i32(27651i, u_input.e.x))));
    var_0 = Struct_3(Struct_2(min(var_0.a.a, countOneBits(_wgslsmith_div_vec4_i32(var_0.b, var_0.a.a))), Struct_1(20095i, _wgslsmith_div_u32(4294967295u, arg_1.b), arg_0.c, _wgslsmith_mult_i32(var_0.c.a ^ arg_0.a, max(arg_1.d, arg_1.d))), var_0.a.c, u_input.e.x, Struct_1(abs(0i), arg_0.b, !select(vec3<bool>(true, true, var_0.a.e.c.x), var_0.c.c, var_0.a.e.c.x), i32(-1i) * -19567i)), vec4<i32>(~(i32(-1i) * -u_input.e.x), var_0.c.a & -arg_0.d, var_0.a.b.d, 0i), func_2(~_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, arg_0.b), u_input.a)).e, vec3<i32>(reverseBits((arg_0.a >> (1u % 32u)) ^ ~var_0.b.x), abs(-2147483647i), -var_0.d.x));
    var var_1 = var_0.a;
    let var_2 = 4294967295u;
    return _wgslsmith_mod_vec3_u32(select(_wgslsmith_clamp_vec3_u32(u_input.d, firstTrailingBit(u_input.b.yzy), ~vec3<u32>(var_2, 15398u, arg_1.b)) ^ u_input.d, vec3<u32>(u_input.d.x & var_0.c.b, 1u, var_0.c.b), vec3<bool>(true, all(arg_1.c), false & (61168i == var_1.e.a))), u_input.b.yzx >> (u_input.b.yyw % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(func_5(Struct_1(_wgslsmith_div_i32(-u_input.e.x, ~(-23243i)), func_1(), !func_4(vec2<bool>(false, false), u_input.e.x, Struct_2(vec4<i32>(0i, -1i, 24403i, u_input.e.x), Struct_1(u_input.e.x, u_input.b.x, vec3<bool>(false, true, true), u_input.e.x), vec2<f32>(1449f, -1023f), u_input.e.x, Struct_1(u_input.e.x, u_input.b.x, vec3<bool>(true, true, true), 2147483647i))).b.c, _wgslsmith_sub_i32(~u_input.e.x, -1i)), Struct_1(abs(u_input.e.x), 0u, func_2(56219u).b.c, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, 1i, 10368i, u_input.e.x), vec4<i32>(-25146i, u_input.e.x, u_input.e.x, u_input.e.x)), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 1i)))), _wgslsmith_div_vec3_u32(~u_input.b.xxw, ~select(vec3<u32>(u_input.d.x, 1u, u_input.d.x), ~vec3<u32>(u_input.d.x, 40045u, u_input.a), vec3<bool>(false, false, false))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1252f, -814f, 1456f), vec3<f32>(383f, 260f, -349f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1111f, -170f, 667f) + vec3<f32>(-1000f, -740f, 209f)))))), select(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, -46342i), u_input.e.yy), countOneBits(u_input.e.xx)), u_input.e.x, true), Struct_1(i32(-1i) * -firstLeadingBit(-52771i), u_input.b.x, func_4(vec2<bool>(true, all(vec3<bool>(false, false, true))), u_input.e.x, Struct_2(vec4<i32>(u_input.e.x, 6712i, u_input.e.x, u_input.e.x), func_4(vec2<bool>(false, true), -1i, Struct_2(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -21382i), Struct_1(u_input.e.x, 13726u, vec3<bool>(false, false, true), -1i), vec2<f32>(532f, 1000f), -4447i, Struct_1(49394i, var_0.x, vec3<bool>(true, true, true), -2147483647i))).b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(139f, 1214f))), u_input.e.x, Struct_1(u_input.e.x, 72934u, vec3<bool>(false, false, true), -58533i))).e.c, firstLeadingBit(firstTrailingBit(u_input.e.x)) | _wgslsmith_dot_vec2_i32(u_input.e.xz, _wgslsmith_sub_vec2_i32(u_input.e.yx, vec2<i32>(u_input.e.x, u_input.e.x)))), false, u_input.e.x);
    global0 = func_4(var_1.c.c.zy, abs(-9229i) & _wgslsmith_clamp_i32(abs(2147483647i), var_1.b, _wgslsmith_div_i32(1i, var_1.c.a) >> (1u % 32u)), func_2(~reverseBits(19279u))).b.b;
    var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1000f, -880f) + var_1.a)), vec3<f32>(_wgslsmith_f_op_f32(-1599f - var_1.a.x), 2052f, func_4(vec2<bool>(var_1.d, var_1.d), var_1.c.a, Struct_2(vec4<i32>(0i, var_1.c.a, u_input.e.x, var_1.e), var_1.c, vec2<f32>(-820f, var_1.a.x), 40091i, Struct_1(2147483647i, u_input.a, vec3<bool>(var_1.c.c.x, var_1.d, var_1.d), 0i))).c.x)))), 37538i, var_1.c, var_1.c.c.x, 0i);
    var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -332f, 1541f))))))), var_1.c.a, func_4(vec2<bool>(~var_1.b > -2147483647i, select(true, var_1.c.c.x, var_1.d)), _wgslsmith_mult_i32(var_1.c.d ^ var_1.b, u_input.e.x), Struct_2(vec4<i32>(-var_1.e, func_4(vec2<bool>(true, false), -1i, Struct_2(vec4<i32>(0i, 35439i, 66453i, u_input.e.x), Struct_1(u_input.e.x, 8691u, vec3<bool>(var_1.c.c.x, var_1.c.c.x, true), -1i), vec2<f32>(var_1.a.x, 328f), 27840i, var_1.c)).d, 50324i, var_1.b), func_2(20753u).b, var_1.a.zx, 1i, var_1.c)).e, var_1.c.c.x, -2147483647i);
    let var_2 = 1i;
    global0 = firstTrailingBit(func_4(var_1.c.c.xx, 12932i, func_2(41550u)).b.b);
    var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-254f, 1858f)))), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), 2147483647i, var_1.c, any(!vec2<bool>(var_1.d, all(vec3<bool>(false, var_1.c.c.x, true)))), 19371i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, u_input.b.x);
}

