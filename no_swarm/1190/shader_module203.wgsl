struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_2(arg_0, Struct_1(abs(_wgslsmith_mult_vec4_u32(arg_0.a, arg_0.a << (vec4<u32>(42874u, arg_3.a.x, arg_1.a.x, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-arg_0.b), u_input.a));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.b * -2109f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.b, arg_3.b.x, arg_2)))) + vec2<f32>(-1408f, _wgslsmith_f_op_f32(-265f - _wgslsmith_f_op_f32(arg_3.b.x + -1211f)))), !vec4<bool>(arg_2, arg_2, arg_1.b.x == _wgslsmith_f_op_f32(-var_0.a.b), false), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 52999i, -30624i), vec3<i32>(-12706i, 14878i, -16945i), vec3<i32>(var_0.a.c, var_0.b.c, arg_0.c)) & -vec3<i32>(17489i, 78529i, 2147483647i)) << (~reverseBits(~vec3<u32>(u_input.b, var_0.b.a.x, arg_0.a.x)) % vec3<u32>(32u)), var_0.b, var_0.b);
    let var_2 = arg_3;
    let var_3 = abs(_wgslsmith_mod_vec3_u32(firstLeadingBit(arg_1.a) | vec3<u32>(u_input.b, ~arg_3.a.x, min(var_1.d.a.x, arg_1.a.x)), vec3<u32>(min(var_1.e.a.x, ~52474u), select(arg_0.a.x, ~44266u, true), ~reverseBits(253u))));
    var var_4 = var_0.b.a ^ _wgslsmith_div_vec4_u32(select(countOneBits(~var_0.a.a), select(vec4<u32>(arg_3.a.x, arg_3.a.x, 0u, 0u), arg_0.a, var_1.b), arg_2), var_0.a.a ^ vec4<u32>(_wgslsmith_clamp_u32(var_0.a.a.x, 1u, var_3.x), ~var_3.x, firstLeadingBit(var_2.a.x), var_2.a.x));
    return ~_wgslsmith_add_u32(_wgslsmith_sub_u32(~max(var_2.a.x, 33622u), _wgslsmith_div_u32(~57416u, ~var_3.x)), 0u);
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<i32>) -> bool {
    var var_0 = vec4<bool>(any(vec4<bool>((i32(-1i) * -28641i) >= arg_3.x, (71597i > u_input.a) & true, (arg_2.x == 474u) || all(vec3<bool>(false, false, true)), true)), true, false, !(_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(arg_0.a.x, 1u), u_input.b ^ 0u) <= 13695u));
    global0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(reverseBits(func_3(Struct_1(arg_2, arg_0.b.x, -2147483647i), Struct_4(arg_0.a, vec4<f32>(1600f, arg_0.b.x, arg_1, 796f)), var_0.x, Struct_4(arg_0.a, vec4<f32>(-1064f, arg_0.b.x, arg_0.b.x, -392f)))), 4294967295u), ~(~arg_2.x));
    var var_1 = arg_0;
    var_0 = !select(!select(vec4<bool>(var_0.x, var_0.x, false, false), !vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x)), !select(!vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, var_0.x, true, true)), !vec4<bool>(var_0.x, true, select(false, false, var_0.x), true));
    var_0 = select(select(!vec4<bool>(!var_0.x, any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), 2147483647i > arg_3.x), select(!vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, all(var_0.xx), var_0.x || var_0.x, all(var_0.xyy)), true), select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), !select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), !(!select(vec4<bool>(var_0.x, var_0.x, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, false, true, true)), false)), vec4<bool>(true, var_0.x, u_input.b > ~1u, true));
    return !all(vec4<bool>(var_0.x, var_0.x, true, 4294967295u > _wgslsmith_add_u32(4294967295u, var_1.a.x)));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = !(!(!(func_2(Struct_4(vec3<u32>(arg_1.x, u_input.b, arg_1.x), vec4<f32>(149f, arg_0.c.d.b, 1590f, -1367f)), 437f, vec4<u32>(arg_0.c.d.a.x, 1u, arg_0.c.d.a.x, arg_1.x), vec4<i32>(0i, u_input.a, 2147483647i, u_input.a)) || arg_0.a)));
    let var_1 = vec4<bool>(select(func_2(Struct_4(countOneBits(vec3<u32>(1u, 4294967295u, arg_0.c.d.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.e.b, 496f, 339f, 1968f))), _wgslsmith_f_op_f32(floor(-430f)), vec4<u32>(_wgslsmith_mult_u32(1u, u_input.b), ~u_input.b, ~1u, max(4294967295u, arg_0.c.d.a.x)), abs(~vec4<i32>(arg_0.c.e.c, arg_0.c.c.x, -26993i, arg_0.c.d.c))), arg_0.c.b.x, true), !arg_0.c.b.x, func_2(Struct_4(countOneBits(arg_0.c.d.a.xwx << (arg_0.c.e.a.yxx % vec3<u32>(32u))), vec4<f32>(1459f, arg_0.c.e.b, arg_0.c.a.x, arg_0.c.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.c.d.b)) + _wgslsmith_f_op_f32(arg_0.c.d.b * 117f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x))), arg_0.c.d.a, _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -3978i, u_input.a, -27537i), vec4<i32>(-35881i, 8976i, 14242i, arg_0.c.e.c)), _wgslsmith_sub_i32(62414i, -62784i), select(7369i, arg_0.c.e.c, arg_0.a), reverseBits(-56040i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c.c.x, arg_0.c.d.c, 3662i, arg_0.c.e.c) ^ vec4<i32>(-2147483647i, arg_0.c.d.c, arg_0.c.c.x, u_input.a), -vec4<i32>(2147483647i, arg_0.c.c.x, 23126i, u_input.a)))), all(vec2<bool>(arg_0.c.b.x, false)));
    var var_2 = vec4<bool>(select(4629i, 8376i, true) > -53520i, true, true, any(select(vec2<bool>(false, select(arg_0.b.x, var_1.x, true)), arg_0.b, vec2<bool>(false, all(vec2<bool>(var_1.x, true))))));
    var var_3 = select(!var_1.zzy, var_1.zww, vec3<bool>(select(!var_2.x, var_1.x, arg_0.a), all(!var_2.xy) && !var_2.x, true));
    let var_4 = Struct_2(Struct_1(~vec4<u32>(0u, ~arg_1.x, ~0u, 1u), arg_0.c.a.x, 0i & ~select(arg_0.c.d.c, u_input.a, true)), Struct_1(vec4<u32>(reverseBits(countOneBits(arg_1.x)), 16715u, arg_1.x, arg_0.c.d.a.x), _wgslsmith_f_op_f32(-619f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a.x * arg_0.c.e.b) + -231f)), -abs(abs(arg_0.c.c.x))));
    return arg_0.c.e;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0.a.x;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -667f), func_1(Struct_5(true, vec2<bool>(true, true), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 748f), vec2<f32>(arg_0.b, arg_0.b)), vec4<bool>(true, true, true, true), -vec3<i32>(-1i, u_input.a, u_input.a), func_1(Struct_5(false, vec2<bool>(false, true), Struct_3(vec2<f32>(-1000f, -257f), vec4<bool>(false, true, false, false), vec3<i32>(arg_0.c, u_input.a, -2147483647i), Struct_1(vec4<u32>(80338u, arg_0.a.x, arg_0.a.x, u_input.b), arg_0.b, u_input.a), arg_0)), vec2<u32>(58111u, 0u)), func_1(Struct_5(false, vec2<bool>(true, true), Struct_3(vec2<f32>(1306f, 938f), vec4<bool>(true, false, true, true), vec3<i32>(arg_0.c, arg_0.c, arg_0.c), arg_0, arg_0)), vec2<u32>(u_input.b, u_input.b)))), vec2<u32>(arg_0.a.x, 1u)).b);
    global0 = 22733u;
    let var_1 = Struct_4(vec3<u32>(u_input.b, 4294967295u, _wgslsmith_div_u32(112631u, u_input.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(floor(-1969f))), var_0.x, arg_0.b)));
    let var_2 = vec4<u32>(11944u, ~(~reverseBits(_wgslsmith_div_u32(1u, 4294967295u))), 82249u >> (_wgslsmith_sub_u32(~var_1.a.x & func_1(Struct_5(true, vec2<bool>(false, true), Struct_3(vec2<f32>(arg_0.b, var_0.x), vec4<bool>(true, false, false, false), vec3<i32>(u_input.a, u_input.a, 56711i), Struct_1(vec4<u32>(var_1.a.x, u_input.b, arg_0.a.x, u_input.b), 1000f, arg_0.c), Struct_1(arg_0.a, var_1.b.x, u_input.a))), vec2<u32>(4294967295u, u_input.b)).a.x, arg_0.a.x) % 32u), _wgslsmith_sub_u32(max(_wgslsmith_mult_u32(firstLeadingBit(23152u), ~var_1.a.x), ~59554u), ~u_input.b));
    return Struct_1(max(_wgslsmith_clamp_vec4_u32(arg_0.a, ~arg_0.a, arg_0.a), arg_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, var_1.b.x))), arg_0.c);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.b, 3252f)), vec4<bool>(all(!select(vec3<bool>(false, arg_2, true), vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, true, arg_2))), false, false, any(!select(vec2<bool>(arg_2, true), vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2)))), vec3<i32>(40564i, arg_0, -5546i), Struct_1(vec4<u32>(arg_1.b.a.x, countOneBits(60904u), arg_1.b.a.x, u_input.b), _wgslsmith_f_op_f32(-arg_1.b.b), ~_wgslsmith_div_i32(arg_1.b.c, u_input.a)), Struct_1(~vec4<u32>(1u ^ arg_1.b.a.x, _wgslsmith_dot_vec2_u32(arg_1.b.a.yz, arg_1.a.a.yw), u_input.b, countOneBits(17913u)), 303f, _wgslsmith_add_i32(_wgslsmith_sub_i32(max(u_input.a, u_input.a), min(-2147483647i, -41493i)), arg_0)));
    var var_1 = var_0.e;
    var_1 = arg_1.a;
    var var_2 = -344f;
    var_1 = func_4(Struct_1(~(~(~var_1.a)), _wgslsmith_f_op_f32(-arg_1.a.b), 0i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.a, Struct_2(func_4(func_1(Struct_5(false, vec2<bool>(true, false), Struct_3(vec2<f32>(196f, 1175f), vec4<bool>(true, true, true, true), vec3<i32>(-65958i, u_input.a, 14189i), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), -248f, u_input.a), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), -740f, -1i))), ~vec2<u32>(4294967295u, 71837u))), func_1(Struct_5(false, vec2<bool>(true, true), Struct_3(vec2<f32>(1829f, 898f), vec4<bool>(true, true, false, true), vec3<i32>(0i, 0i, u_input.a), Struct_1(vec4<u32>(1u, 0u, u_input.b, 81678u), 268f, -4335i), Struct_1(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), -1000f, u_input.a))), abs(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(73427u, u_input.b)))), any(vec3<bool>(true, true, true)));
    var var_1 = vec4<u32>(func_5(var_0.c.x, Struct_2(Struct_1(var_0.e.a, func_5(u_input.a, Struct_2(var_0.d, var_0.d), var_0.b.x).a.x, -u_input.a), Struct_1(var_0.d.a, 1000f, 67937i)), all(func_5(15109i, Struct_2(var_0.d, Struct_1(var_0.e.a, var_0.a.x, 1i)), any(vec4<bool>(true, true, var_0.b.x, var_0.b.x))).b)).d.a.x, ~var_0.d.a.x, ~_wgslsmith_dot_vec3_u32(max(~var_0.e.a.yzz, vec3<u32>(var_0.d.a.x, 0u, 4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(15721u, u_input.b, var_0.e.a.x), vec3<u32>(var_0.d.a.x, u_input.b, var_0.e.a.x)), min(var_0.d.a.xwx, vec3<u32>(10603u, 39659u, u_input.b)))), u_input.b);
    let var_2 = select(!var_0.b, !select(!(!vec4<bool>(false, true, false, var_0.b.x)), select(!var_0.b, vec4<bool>(false, false, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, false)), false), true);
    global0 = 48153u;
    var var_3 = var_2.x;
    global0 = 1u;
    let var_4 = var_0.d.c;
    var var_5 = -45262i;
    let x = u_input.a;
    s_output = StorageBuffer(0u, -2146f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-896f, var_0.a.x, var_0.e.b, -630f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.b, var_0.d.b, -1332f, var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1502f, var_0.e.b, 2090f, var_0.d.b)))), vec4<f32>(func_1(Struct_5(var_2.x, var_0.b.wz, var_0), _wgslsmith_mod_vec2_u32(vec2<u32>(33000u, var_0.d.a.x), var_1.zz)).b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.e.b + var_0.d.b), var_0.e.b)), _wgslsmith_f_op_f32(-var_0.e.b), var_0.a.x)), 60028i, vec2<f32>(-715f, _wgslsmith_f_op_f32(round(105f))));
}

