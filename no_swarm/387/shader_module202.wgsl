struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = arg_1.a;
    var var_1 = abs(min(vec4<u32>(2025u, arg_1.a.b.x >> (arg_0.b.x % 32u), arg_1.a.b.x, ~max(arg_1.a.b.x, arg_0.b.x)), arg_0.b));
    var_1 = ~var_0.b & max(_wgslsmith_div_vec4_u32(max(min(vec4<u32>(1u, 19729u, 1u, var_0.b.x), arg_0.b), ~var_0.b), max(var_0.b, vec4<u32>(73431u, 60965u, 33430u, var_0.b.x))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b.x, 4294967295u, var_1.x, arg_1.a.b.x) ^ ~arg_1.a.b, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1.a.b.x, var_1.x, var_0.b.x), abs(vec4<u32>(arg_0.b.x, arg_1.a.b.x, 4294967295u, 33398u)))));
    var var_2 = -(i32(-1i) * -6279i);
    var_2 = 42427i;
    return arg_0.b;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2486f, 1226f), vec2<f32>(583f, -1816f))))))));
    let var_1 = -7659i;
    var var_2 = vec3<u32>(~0u, firstTrailingBit(10931u), 1u);
    var_2 = vec3<u32>(var_2.x, _wgslsmith_dot_vec4_u32(func_3(Struct_1(vec2<i32>(13403i, var_1), vec4<u32>(var_2.x, 46248u, var_2.x, var_2.x), 823f), Struct_2(Struct_1(vec2<i32>(32101i, 2147483647i), vec4<u32>(var_2.x, var_2.x, 43522u, var_2.x), var_0.x), _wgslsmith_f_op_f32(-var_0.x), vec3<i32>(-2147483647i, 1i, 2147483647i) | vec3<i32>(u_input.a, u_input.a, 32578i)), ~vec2<i32>(var_1, u_input.a) | vec2<i32>(-2147483647i, -7126i)), vec4<u32>(min(var_2.x, var_2.x), max(4294967295u, 4294967295u), 135125u, var_2.x) & (vec4<u32>(0u, 44282u, var_2.x, 59980u) ^ ~vec4<u32>(1u, 38364u, var_2.x, 83179u))), _wgslsmith_mult_u32(abs(~36715u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 5849u, var_2.x), vec3<u32>(11528u, var_2.x, var_2.x))) << (1u % 32u));
    let var_3 = any(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, false, false), true, false, true), false), vec4<bool>((0u != var_2.x) || true, false, all(vec2<bool>(true, true)), true), false));
    return Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(min(vec2<i32>(9799i, -8346i), abs(vec2<i32>(u_input.a, 56168i))), vec2<i32>(-1i) * -vec2<i32>(35338i, 1i)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_2.x, var_2.x, 181u, 79797u), vec4<u32>(var_2.x, var_2.x, 4294967295u, 1u)), max(~vec4<u32>(var_2.x, 0u, 4294967295u, 42791u), vec4<u32>(0u, var_2.x, var_2.x, 77928u) | vec4<u32>(var_2.x, 4294967295u, 43348u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(996f)) + _wgslsmith_f_op_f32(max(929f, -566f)))), -178f, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-9424i, min(-1i, u_input.a), -u_input.a), abs(vec3<i32>(var_1, -25832i, u_input.a))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1, u_input.a, var_1), vec3<i32>(-2147483647i, 0i, -29459i)), vec3<i32>(-10325i, u_input.a, -17659i), -vec3<i32>(var_1, u_input.a, -51952i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = 462f;
    return Struct_2(Struct_1(-vec2<i32>(-51078i, 0i), select(vec4<u32>(abs(arg_0.b.x), arg_1.a.b.x, arg_1.a.b.x, ~4294967295u), vec4<u32>(countOneBits(38059u), ~20313u, 1u, 61184u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), any(vec4<bool>(false, false, true, false)))), 1853f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c))), countOneBits(func_2().c));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_4(Struct_1(arg_2.a.a ^ arg_2.a.a, abs(~vec4<u32>(arg_2.a.b.x, 0u, arg_0, arg_2.a.b.x)), arg_2.b), func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1042f, arg_2.b, arg_2.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.b, -400f, -431f)))))));
    var var_1 = 0i;
    var var_2 = !vec3<bool>(arg_1.x, arg_1.x, all(!vec3<bool>(arg_1.x, false, arg_1.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, arg_2.a.c, var_0.a.c, var_0.a.c)) - vec4<f32>(-393f, 1000f, arg_2.b, arg_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(847f, var_0.b, -390f, 823f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c - 1000f)), arg_2.b, var_0.a.c, var_0.a.c))));
    var var_4 = func_2().a;
    return arg_2;
}

fn func_5(arg_0: Struct_2) -> bool {
    let var_0 = 32183i;
    let var_1 = _wgslsmith_sub_vec4_i32(min(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-14920i, 0i, 2147483647i, 0i), vec4<i32>(u_input.a, arg_0.c.x, u_input.a, -8852i), vec4<i32>(u_input.a, arg_0.a.a.x, u_input.a, 1i)) << ((arg_0.a.b | vec4<u32>(112927u, arg_0.a.b.x, 4294967295u, 4294967295u)) % vec4<u32>(32u))), -vec4<i32>(u_input.a, 1i, select(-47395i, 19659i, false), arg_0.c.x ^ var_0)), min(max(~vec4<i32>(arg_0.c.x, 2147483647i, -1i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, var_0, -43352i) | vec4<i32>(31566i, u_input.a, -4603i, var_0), vec4<i32>(arg_0.c.x, u_input.a, -2147483647i, -47233i) & vec4<i32>(arg_0.c.x, -2147483647i, u_input.a, -1i))), vec4<i32>(-func_1(arg_0.a.b.x, vec2<bool>(false, true), Struct_2(arg_0.a, arg_0.a.c, arg_0.c)).c.x, -2147483647i, ~_wgslsmith_mult_i32(37338i, var_0), ~(0i >> (arg_0.a.b.x % 32u)))));
    var var_2 = ~arg_0.a.b.x;
    var_2 = _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(arg_0.a.b, vec4<u32>(40959u, 1u, arg_0.a.b.x, 4294967295u)), vec4<u32>(arg_0.a.b.x, 4294967295u, 4294967295u, arg_0.a.b.x) >> (arg_0.a.b % vec4<u32>(32u)))) << (~arg_0.a.b % vec4<u32>(32u)), arg_0.a.b);
    let var_3 = arg_0.a.b | vec4<u32>(func_4(func_1(~arg_0.a.b.x, select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), func_2()).a, Struct_2(arg_0.a, _wgslsmith_f_op_f32(arg_0.a.c + arg_0.a.c), select(var_1.xxw, var_1.xww, false)), vec3<f32>(-710f, -808f, _wgslsmith_f_op_f32(f32(-1f) * -492f))).a.b.x, ~arg_0.a.b.x, ~select(arg_0.a.b.x, _wgslsmith_div_u32(27400u, arg_0.a.b.x), true), _wgslsmith_div_u32(arg_0.a.b.x, arg_0.a.b.x));
    return true;
}

fn func_6(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(~10702u, min(~_wgslsmith_sub_u32(1u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 0u, 4294967295u)))) | func_2().a.b.x;
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), func_5(func_1(17556u, vec2<bool>(true, false), Struct_2(Struct_1(vec2<i32>(36248i, 0i), vec4<u32>(4294967295u, 4294967295u, 15146u, 1u), 1086f), 420f, vec3<i32>(u_input.a, u_input.a, 1i)))))));
    let var_1 = !vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c - 1652f))) < var_0.c, true);
    var var_2 = select(vec3<bool>(!any(select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, true))), var_1.x, any(!var_1)), !(!vec3<bool>(var_1.x, !var_1.x, any(vec2<bool>(var_1.x, var_1.x)))), !((_wgslsmith_f_op_f32(-var_0.c) > _wgslsmith_f_op_f32(1012f + 435f)) & true));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -52481i, ~(~vec4<u32>(~var_0.b.x, firstTrailingBit(30933u), 1u, ~93675u)));
}

