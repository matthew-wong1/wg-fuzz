struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(0u, 44410u, 4294967295u, 60087u, 1u, 23833u, 66629u, 16838u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    return Struct_1(8052u, _wgslsmith_f_op_f32(f32(-1f) * -143f));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    global0 = array<u32, 8>();
    var var_0 = Struct_2(func_2(vec4<i32>(1i, ~_wgslsmith_add_i32(-1i, u_input.b.x), firstLeadingBit(u_input.b.x), u_input.c.x)), true, !select(!(!vec4<bool>(true, arg_2, false, false)), vec4<bool>(false != arg_0, arg_0, false, true), true), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.b, 1652f))), arg_1);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 2118f, -2995f, arg_1.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.a.b, arg_1.b, -352f) * vec4<f32>(-1068f, arg_1.b, 949f, var_0.d.x)))))));
    var var_2 = Struct_2(func_2(vec4<i32>(-3689i, -(i32(-1i) * -2147483647i), u_input.b.x, 2147483647i)), arg_0 || arg_0, vec4<bool>(!(!arg_2), u_input.b.x >= max(u_input.c.x, -2147483647i), arg_2, all(select(vec2<bool>(true, true), !var_0.c.wz, var_0.c.yw))), var_1.yw, func_2(vec4<i32>(-5818i, u_input.b.x, u_input.b.x, select(firstTrailingBit(-1i), countOneBits(2147483647i), false))));
    var_0 = Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1500f))), !(!any(vec4<bool>(false, var_2.c.x, var_2.c.x, var_2.c.x))), var_2.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1172f, -902f), var_0.d))), _wgslsmith_f_op_vec2_f32(var_0.d - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, arg_1.b) * var_1.zz)))))), Struct_1(63611u, -2023f));
    return Struct_2(Struct_1(_wgslsmith_mod_u32(arg_1.a, ~arg_1.a), _wgslsmith_f_op_f32(max(arg_1.b, -270f))), arg_2, vec4<bool>(!arg_0, arg_2, true, any(vec2<bool>(9855u == u_input.a, true))), var_0.d, func_2(max(max(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, 0i), _wgslsmith_sub_vec4_i32(u_input.c, u_input.c)), vec4<i32>(u_input.b.x ^ u_input.b.x, 1702i, ~(-2147483647i), -u_input.b.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    var var_0 = arg_2.b;
    global0 = array<u32, 8>();
    let var_1 = _wgslsmith_div_i32(1i, -u_input.b.x);
    var var_2 = func_3(arg_1.c.x, func_2(vec4<i32>(min(-69073i, u_input.b.x), reverseBits(~2516i), ~(~13994i), 1383i)), arg_1.b, vec2<u32>(~39993u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_3.x << (0u % 32u), _wgslsmith_mult_u32(1u, arg_3.x)), 54650u)));
    let var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(37968i, -2643i), select(-2984i, 39282i, false), u_input.b.x), u_input.b.zxw), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1, var_1, var_1), u_input.b.zyy) ^ _wgslsmith_add_vec3_i32(u_input.c.zzw, vec3<i32>(1i, 57055i, -47365i)))) ^ ~select(u_input.c.xwy, _wgslsmith_mod_vec3_i32(-vec3<i32>(-3550i, 17582i, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_1, 1i), u_input.c.zzy)), select(vec3<bool>(true, true, var_2.b), func_3(false, Struct_1(1u, -871f), true, vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(48262u, 8u)])).c.yzw, var_2.c.x));
    return _wgslsmith_add_u32(arg_2.a, countOneBits(32130u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(firstLeadingBit(0u)), 55259u, max(func_1(4294967295u | global0[_wgslsmith_index_u32(1u, 8u)], Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 8u)], -585f), false, vec4<bool>(true, false, false, false), vec2<f32>(1680f, 840f), Struct_1(1u, -850f)), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 8u)], -136f), vec2<u32>(47014u, 0u)), func_3(true, Struct_1(global0[_wgslsmith_index_u32(1u, 8u)], -185f), false, vec2<u32>(u_input.a, 75954u)).a.a)), vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(22296u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23770u, 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)]), vec3<bool>(true, false, true)), vec3<u32>(1u, u_input.a, 0u)), 17934u), 8u)], ~u_input.a, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(22501u, u_input.a)), 8u)]));
    var var_1 = -105f;
    var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(569f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-106f, -143f)))), 152f), -794f);
    var_1 = 666f;
    var var_2 = Struct_2(Struct_1(u_input.a, 998f), true, select(!vec4<bool>(true, any(vec4<bool>(false, false, false, false)), true, all(vec3<bool>(false, true, true))), select(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), true, all(vec3<bool>(true, true, true))), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true), true), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1428f, 1145f) - vec2<f32>(822f, 255f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1320f, -797f)), vec2<f32>(-1000f, -1000f)))), true)), Struct_1(max(global0[_wgslsmith_index_u32(69150u, 8u)], ~_wgslsmith_div_u32(22916u, 33564u)), _wgslsmith_f_op_f32(f32(-1f) * -2041f)));
    var_2 = func_3(!all(select(!vec3<bool>(var_2.b, var_2.c.x, false), var_2.c.xxw, true)), func_2(u_input.b), (~(~u_input.b.x) >> (var_2.e.a % 32u)) < ~(~_wgslsmith_add_i32(41605i, u_input.c.x)), vec2<u32>(11862u, func_3(var_2.c.x, func_2(u_input.c), select(false, true, true), var_0.yz).a.a | select(global0[_wgslsmith_index_u32(17464u, 8u)] << (8328u % 32u), var_2.a.a ^ 55118u, true)));
    let var_3 = vec3<i32>(countOneBits(-(i32(-1i) * -27197i)), countOneBits(u_input.b.x >> (_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, global0[_wgslsmith_index_u32(90669u, 8u)], global0[_wgslsmith_index_u32(var_2.e.a, 8u)]), vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<u32>(var_2.a.a, 63204u, 36450u)) % 32u)), countOneBits(firstLeadingBit(countOneBits(u_input.b.x))));
    let var_4 = var_3;
    var var_5 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u | abs(reverseBits(u_input.a)), min(39130u, 1u ^ global0[_wgslsmith_index_u32(87110u, 8u)]) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 26302u), vec2<u32>(global0[_wgslsmith_index_u32(var_2.a.a, 8u)], global0[_wgslsmith_index_u32(13162u, 8u)])) << (_wgslsmith_mod_u32(var_2.a.a, 0u) % 32u))), 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b + func_3(select(false, true, var_2.b), func_2(vec4<i32>(u_input.b.x, -2147483647i, var_4.x, u_input.b.x)), any(vec2<bool>(var_2.b, false)), _wgslsmith_mod_vec2_u32(var_0.xx, var_0.xx)).e.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(69148u, ~(var_2.e.a & global0[_wgslsmith_index_u32(var_5.a, 8u)]), _wgslsmith_add_u32(52158u, var_0.x)) & ~0u);
}

