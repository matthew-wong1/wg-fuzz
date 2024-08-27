struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(-14542i, _wgslsmith_f_op_f32(f32(-1f) * -665f));
    return Struct_1(u_input.b, false, var_0.a, !(!any(vec3<bool>(true, false, true))), -var_0.a);
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.b, -680f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, arg_1.b.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(273f, arg_1.b.b))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.b.b)) + _wgslsmith_f_op_f32(ceil(arg_1.b.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.b), -970f)))), vec2<bool>(all(!(!vec4<bool>(false, false, true, arg_1.a.d))), all(!select(vec4<bool>(false, arg_1.a.b, arg_1.a.d, arg_1.a.b), vec4<bool>(true, true, false, arg_1.a.b), vec4<bool>(false, false, true, false))))));
    var var_1 = abs(~_wgslsmith_add_u32(~57186u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 79568u, 23672u, 4294967295u), vec4<u32>(0u, 126u, 1u, 0u))) | 1u);
    var_1 = 34406u;
    let var_2 = func_1();
    var var_3 = Struct_2(arg_1.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.b + var_0.x) * -799f))), _wgslsmith_f_op_f32(-arg_1.b.b))));
    return select(u_input.b, _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-abs(u_input.b), ~vec2<i32>(10763i, -51278i)), u_input.b), !select(vec2<bool>(!var_2.d, any(vec2<bool>(var_2.d, false))), select(vec2<bool>(arg_1.a.d, false), !vec2<bool>(arg_1.a.b, true), var_2.b), select(select(vec2<bool>(false, arg_1.a.b), vec2<bool>(arg_1.a.b, var_2.b), var_2.b), vec2<bool>(var_2.b, arg_1.a.d), !vec2<bool>(true, arg_1.a.d))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_3(Struct_1(select(~(u_input.b & vec2<i32>(11208i, arg_0.c)), func_3(~u_input.b.x, Struct_3(Struct_1(vec2<i32>(1i, u_input.a), true, -84573i, arg_0.d, -2147483647i), Struct_2(-29821i, -1927f), vec4<i32>(u_input.a, arg_0.c, 2523i, u_input.b.x))), !select(vec2<bool>(arg_0.d, false), vec2<bool>(true, true), true)), false, u_input.b.x, ((arg_0.e >> (arg_1.x % 32u)) << (_wgslsmith_mult_u32(arg_1.x, arg_1.x) % 32u)) <= ~_wgslsmith_sub_i32(arg_0.e, 42351i), _wgslsmith_mod_i32(u_input.b.x, 906i)), Struct_2(min(-_wgslsmith_div_i32(1i, 29768i), _wgslsmith_div_i32(func_3(u_input.b.x, Struct_3(Struct_1(u_input.b, true, arg_0.a.x, true, u_input.a), Struct_2(-1i, -1486f), vec4<i32>(1i, -1i, -61526i, 12994i))).x, -50142i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3413f + 1000f) - -469f))), firstLeadingBit(vec4<i32>(1i, 2147483647i, 2147483647i, ~select(1i, -1i, false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-244f, var_0.b.b, var_0.b.b)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.b, -228f, var_0.b.b))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1129f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 1287f, arg_0.d)) + _wgslsmith_f_op_f32(f32(-1f) * -846f)))))));
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(round(var_0.b.b)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.b, 1515f, true)) * 1299f), var_0.a.b);
    let var_3 = var_0.a;
    let var_4 = arg_0.d;
    return var_0.c.wx | _wgslsmith_mod_vec2_i32(vec2<i32>(~func_1().e, 1i), ~var_0.c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b, select(true, true, true), firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x >> (_wgslsmith_mod_u32(63036u, 72845u) % 32u), u_input.b.x)), false, u_input.b.x);
    var_0 = Struct_1(reverseBits(func_2(func_1(), ~select(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(23309u, 66044u, 0u), vec3<bool>(var_0.b, false, var_0.b)))), !(max(u_input.a, 1i) == (var_0.e | (u_input.b.x >> (36440u % 32u)))), u_input.a, all(vec4<bool>(func_1().d, var_0.b, var_0.d, all(!vec3<bool>(var_0.d, var_0.b, false)))), 2147483647i);
    var var_1 = Struct_2(func_2(Struct_1(countOneBits(u_input.b), select(false, var_0.b, var_0.b), -52214i, var_0.b, countOneBits(-34884i)), vec3<u32>(1u, select(22479u, 29953u, var_0.d), ~0u)).x ^ var_0.e, _wgslsmith_f_op_f32(841f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1458f * -271f))));
    var_0 = Struct_1(vec2<i32>(1i, _wgslsmith_sub_i32(-97938i, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(18418i, 2147483647i, u_input.a), vec3<i32>(-1i, 26066i, 54092i))))), select(false, true, false), 62912i, true, u_input.b.x);
    var_0 = Struct_1(_wgslsmith_add_vec2_i32(u_input.b, ~vec2<i32>(countOneBits(var_0.e), _wgslsmith_div_i32(u_input.b.x, u_input.b.x))), !(!func_1().b), 29632i, (53852i >= ((var_1.a | -11026i) << (~1u % 32u))) || var_0.b, 0i);
    var_0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_1.a, var_1.a), vec3<i32>(u_input.a, var_1.a, u_input.b.x))), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, u_input.a, -2147483647i), min(vec3<i32>(u_input.a, u_input.a, var_0.a.x), vec3<i32>(20002i, -6520i, var_1.a)))), -min(var_0.e, ~(-14833i))), var_0.d, ~0i, true, -19457i);
    let var_2 = select(!(!select(select(vec4<bool>(var_0.b, var_0.b, false, var_0.d), vec4<bool>(var_0.b, false, var_0.d, var_0.d), var_0.b), vec4<bool>(var_0.b, true, false, true), true)), vec4<bool>(var_0.b, true, !func_1().d, var_0.b), vec4<bool>(func_1().b, false, any(select(select(vec2<bool>(var_0.b, false), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, true)), vec2<bool>(true, true), select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.d, false), vec2<bool>(false, var_0.d)))), true == all(!vec2<bool>(var_0.b, false))));
    var var_3 = Struct_3(func_1(), Struct_2(-1i, -491f), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, 19407i), _wgslsmith_mod_i32(var_0.a.x, var_1.a), u_input.b.x, var_0.c) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 60249u, 23438u, 1u), vec4<u32>(46081u, 1570u, 4294967295u, 14882u)) % vec4<u32>(32u)), vec4<i32>(15489i, _wgslsmith_div_i32(u_input.b.x, var_0.a.x), countOneBits(var_1.a), abs(-1i)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u)), 13975u, 1u, 89909u) % vec4<u32>(32u))));
    let var_4 = Struct_3(func_1(), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i) ^ _wgslsmith_sub_vec2_i32(var_0.a, u_input.b), ~(-u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -418f)), min(-var_3.c, vec4<i32>(min(abs(var_3.b.a), 1i), ~firstLeadingBit(u_input.a), abs(~(-19678i)), var_3.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(max(select(~vec3<u32>(25525u, 1u, 1u), ~vec3<u32>(32280u, 36232u, 21029u), vec3<bool>(var_0.d, var_4.a.d, false)) & ~countOneBits(vec3<u32>(53187u, 25975u, 4294967295u)), _wgslsmith_add_vec3_u32(select(~vec3<u32>(28414u, 4294967295u, 4294967295u), vec3<u32>(31735u, 4294967295u, 0u), any(vec2<bool>(var_0.d, var_3.a.d))), firstLeadingBit(~vec3<u32>(47023u, 4294967295u, 3432u)))));
}

