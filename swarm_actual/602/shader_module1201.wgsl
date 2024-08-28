struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(867f, 662f, -1707f, 308f, 1213f, 148f, -1577f, 668f, -874f, 652f, -189f, 505f, 388f, -1106f, 773f, -413f, -893f, 936f, 199f, -1000f, 1000f, -536f, -1295f, 686f, -211f, 132f, 1806f, 154f, 1000f, -756f, 629f, 181f);

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> i32 {
    global0 = array<f32, 32>();
    var var_0 = ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_1), u_input.a, vec2<u32>(min(65800u, 4294967295u), 8513u >> (arg_1 % 32u))), select(u_input.a, _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(1u, u_input.a.x)), firstLeadingBit(u_input.c)), !(-9205i > u_input.d)));
    let var_1 = Struct_1(vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(2576u, 32u)])), _wgslsmith_div_f32(179f, global0[_wgslsmith_index_u32(22651u, 32u)])) >= _wgslsmith_f_op_f32(abs(-1265f)), -1i > (u_input.d >> (arg_1 % 32u))));
    var var_2 = ~(~arg_1);
    let var_3 = Struct_2(vec4<bool>(arg_0.x, (u_input.b ^ _wgslsmith_clamp_i32(u_input.d, 41898i, -4044i)) > u_input.e, true, false));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -3313i, min(abs(u_input.b) << (var_0.x % 32u), firstTrailingBit(-1i))), vec2<i32>(select(reverseBits(u_input.d), ~u_input.b, all(var_1.a)) >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, var_0.x, 4294967295u)), vec3<u32>(var_0.x, arg_1, 1u)) % 32u), u_input.e));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_2, 3>();
    var var_0 = max(max(vec2<i32>(func_3(vec2<bool>(true, false), ~u_input.c.x), ~func_3(vec2<bool>(true, true), u_input.c.x)), ~vec2<i32>(u_input.d, firstTrailingBit(-22033i))), vec2<i32>(u_input.d, _wgslsmith_clamp_i32(select(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 56901i, u_input.d), vec3<i32>(u_input.d, -2147483647i, u_input.d)), true), -1i, _wgslsmith_mult_i32(u_input.d, func_3(vec2<bool>(false, true), u_input.c.x)))));
    let var_1 = Struct_2(vec4<bool>(abs(max(21712i, var_0.x)) <= (4931i & u_input.d), true, true != (true || (global0[_wgslsmith_index_u32(47505u, 32u)] != 269f)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)))));
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    return Struct_1(var_1.a.zx);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = arg_2.a;
    let var_2 = Struct_3(arg_2.a, all(vec2<bool>(false, !var_1.a.x)), max(vec3<i32>(-1i) * -vec3<i32>(-1i, arg_2.c.x, arg_2.c.x), _wgslsmith_mult_vec3_i32(-max(arg_2.c, arg_2.c), vec3<i32>(func_3(var_1.a, u_input.c.x), arg_0, -5186i << (u_input.c.x % 32u)))));
    global1 = array<Struct_2, 3>();
    global0 = array<f32, 32>();
    return var_2.a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = -327f >= _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 146722u, u_input.c.x)), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), 32u)]));
    let var_1 = Struct_3(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.d, 19811i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.e, 2147483647i), vec3<i32>(0i, u_input.d, 0i))), -max(vec3<i32>(0i, u_input.d, 37359i), vec3<i32>(-11819i, 2147483647i, -1i))), !(!vec4<bool>(false, arg_0, arg_0, true)), Struct_3(func_2(), -u_input.b == (u_input.b & u_input.d), -select(vec3<i32>(1i, u_input.e, 2384i), vec3<i32>(-1i, 5163i, u_input.e), arg_0))), true, vec3<i32>(-u_input.d, _wgslsmith_sub_i32(firstLeadingBit(u_input.e), u_input.e), firstTrailingBit(31007i)));
    var var_2 = Struct_3(Struct_1(vec2<bool>(true, all(select(vec3<bool>(true, var_1.a.a.x, arg_0), vec3<bool>(var_1.a.a.x, false, var_1.b), false)))), any(vec4<bool>(false, func_2().a.x && true, !all(vec3<bool>(arg_0, var_1.b, arg_0)), true)), select(vec3<i32>(_wgslsmith_div_i32(select(2147483647i, 40405i, arg_0), u_input.e), u_input.b, select(-1i, abs(var_1.c.x), true)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, 5590i, u_input.b), min(var_1.c, vec3<i32>(-24316i, 7393i, -9147i)) ^ (vec3<i32>(0i, var_1.c.x, var_1.c.x) << (vec3<u32>(1u, u_input.a.x, u_input.c.x) % vec3<u32>(32u)))), min(-var_1.c.x, var_1.c.x & u_input.e) < ~16516i));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.e, 2147483647i), vec2<i32>(2147483647i, u_input.e | u_input.e), vec2<i32>(~u_input.b, u_input.b)), -vec2<i32>(-1i, -54806i) << (u_input.c % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 212f, 113f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 975f, global0[_wgslsmith_index_u32(34146u, 32u)]), false)) + vec3<f32>(-653f, -1538f, 1477f)))));
    var_0 = vec2<i32>(-var_0.x, var_0.x);
    var var_2 = !(-967f >= global0[_wgslsmith_index_u32(4294967295u, 32u)]);
    let var_3 = func_1(true);
    let var_4 = vec4<bool>(true, func_4(firstLeadingBit(firstTrailingBit(-2147483647i)), select(vec4<bool>(any(var_3.a), all(vec3<bool>(false, true, var_3.a.x)), false, !var_3.a.x), vec4<bool>(true, var_3.a.x, true, var_3.a.x), select(!vec4<bool>(false, true, var_3.a.x, true), !vec4<bool>(var_3.a.x, false, var_3.a.x, var_3.a.x), vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x))), Struct_3(var_3, var_3.a.x, ~vec3<i32>(9463i, 1i, -1i))).a.x, firstLeadingBit(~(~4294967295u)) < u_input.a.x, true);
    var_0 = min(-abs(-vec2<i32>(-2147483647i, -1i)), ~vec2<i32>(-1i, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1471f + 235f), _wgslsmith_f_op_f32(step(var_1.x, global0[_wgslsmith_index_u32(54650u, 32u)])))), var_1.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 32u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -874f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 32u)]))))), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(firstLeadingBit(u_input.b)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-75887i, -36398i, 1i, var_0.x), vec4<i32>(-11323i, var_0.x, 2147483647i, u_input.d), vec4<bool>(var_4.x, var_4.x, true, true)), vec4<i32>(19844i, u_input.e, -2147483647i, var_0.x) ^ vec4<i32>(u_input.e, 2147483647i, -18319i, -5243i)), countOneBits(i32(-1i) * -23764i)), vec3<i32>(-1i) * -vec3<i32>(u_input.b, var_0.x, 20395i)), firstTrailingBit(-(reverseBits(vec3<i32>(var_0.x, 1i, -2147483647i)) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.d, u_input.d), vec3<i32>(5455i, 1i, var_0.x)))), func_3(vec2<bool>(!var_4.x, false), 19067u) << (~u_input.a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 32u)]))));
}

