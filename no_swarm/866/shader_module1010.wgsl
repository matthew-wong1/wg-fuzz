struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    return vec2<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), any(vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: vec2<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f)))), -1133f, any(select(vec2<bool>(arg_0.x, arg_0.x), func_3(), !vec2<bool>(arg_0.x, true))))));
    var var_1 = Struct_5(select(vec3<bool>(true, 2147483647i >= u_input.b.x, true), vec3<bool>(true, true, !any(vec4<bool>(arg_0.x, arg_0.x, true, false))), select(select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(arg_0.x, true, arg_0.x)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, arg_0.x), 0u > u_input.a), _wgslsmith_f_op_f32(sign(665f)) > -285f)));
    return vec2<u32>(1u >> (~(~1u) % 32u), ~0u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5) -> Struct_1 {
    let var_0 = !vec4<bool>(true, any(select(!arg_1.a, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), arg_1.a), !arg_0.a)), false, !any(!vec4<bool>(arg_1.a.x, false, arg_1.a.x, false)));
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(22433u, ~u_input.c, 8827u, 4294967295u), ~(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.c.x, 18u)], 18u)], 0u, arg_0.c.x, 76888u), vec4<u32>(17159u, arg_0.c.x, arg_0.c.x, 58234u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(77462u, 27085u, 32284u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(26906u, 18u)], arg_0.c.x, global0[_wgslsmith_index_u32(arg_0.c.x, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18145u, 18u)], 18u)])) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a, u_input.c, 0u, 0u)), ~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 18u)], 1u, arg_0.c.x)) & _wgslsmith_sub_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(67797u, 18u)], 1u, global0[_wgslsmith_index_u32(u_input.a, 18u)], 0u), vec4<u32>(arg_0.c.x, 1u, 0u, 26522u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, global0[_wgslsmith_index_u32(u_input.c, 18u)], u_input.a), vec4<u32>(arg_0.c.x, 9295u, 913u, 0u) ^ vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], 1u))));
    let var_2 = vec4<u32>(~(1u & ~_wgslsmith_div_u32(arg_0.c.x, var_1.x)), _wgslsmith_add_u32(~4294967295u, select(_wgslsmith_sub_u32(70650u, abs(0u)), ~u_input.a >> (firstLeadingBit(global0[_wgslsmith_index_u32(1u, 18u)]) % 32u), arg_0.a)), arg_0.c.x, 0u);
    global0 = array<u32, 18>();
    global1 = -31003i ^ u_input.b.x;
    return Struct_1(0i);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(4294967295u);
    let var_1 = !any(vec4<bool>(all(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), arg_0)), true, false, arg_0));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1865f, -916f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(241f * -959f), -216f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1575f) * _wgslsmith_div_f32(-199f, -1402f)))), -830f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-673f + 345f), _wgslsmith_f_op_f32(min(1764f, -2002f)), -129f), vec3<f32>(_wgslsmith_f_op_f32(trunc(1111f)), _wgslsmith_f_op_f32(ceil(-792f)), _wgslsmith_f_op_f32(f32(-1f) * -327f)), vec3<bool>(!var_1, !arg_0, all(vec3<bool>(true, true, true)))))));
    let var_3 = var_2.x;
    var var_4 = Struct_2(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(var_0.a, var_0.a)), vec2<u32>(62042u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 18u)], 18u)], 18u)])), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(5621u, var_0.a)) & _wgslsmith_mod_vec2_u32(vec2<u32>(37511u, u_input.c), vec2<u32>(53872u, 10961u))), -16827i >> (var_0.a % 32u), func_4(Struct_4(false, countOneBits(~u_input.b), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 11453u), vec2<u32>(u_input.a, var_0.a)), select(vec2<u32>(105113u, var_0.a), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25222u, 18u)], 18u)]), vec2<bool>(var_1, false)))), Struct_5(vec3<bool>(true, var_1, var_1))), _wgslsmith_f_op_f32(select(1640f, 1253f, true)), Struct_1(-(~arg_1 << (global0[_wgslsmith_index_u32(~4294967295u, 18u)] % 32u))));
    return Struct_3(~u_input.a);
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1476f)), _wgslsmith_f_op_f32(step(-252f, _wgslsmith_f_op_f32(ceil(1594f)))))))));
    var var_1 = _wgslsmith_f_op_f32(step(2590f, _wgslsmith_f_op_f32(sign(var_0))));
    var var_2 = func_5(true, u_input.b.x, Struct_1(-(~(-3669i))), func_4(Struct_4(true, ~_wgslsmith_mult_vec4_i32(vec4<i32>(-12570i, 2147483647i, u_input.b.x, -16653i), u_input.b), _wgslsmith_add_vec2_u32(func_2(vec2<bool>(true, true)), countOneBits(vec2<u32>(arg_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9968u, 18u)], 18u)])))), Struct_5(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, true)))));
    let var_3 = Struct_2(26847u, 1i, Struct_1(27335i), -1698f, func_4(Struct_4(true, vec4<i32>(-u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, 2147483647i), ~32643i, -25816i), ~select(vec2<u32>(global0[_wgslsmith_index_u32(22472u, 18u)], var_2.a), vec2<u32>(global0[_wgslsmith_index_u32(119596u, 18u)], u_input.a), vec2<bool>(true, true))), Struct_5(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.d, 947f), vec2<f32>(-561f, var_0)))))));
    return ~(-36484i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(~u_input.b.wyy, u_input.b.xxy), var_3.b, ~(1i ^ var_3.c.a)), abs(reverseBits(~vec3<i32>(9879i, -51326i, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(select(vec2<i32>(reverseBits(-17134i << (u_input.a % 32u)), 0i), u_input.b.wx, false), vec2<i32>(_wgslsmith_sub_i32(func_1(38539u), u_input.b.x) & u_input.b.x, -1i));
    global0 = array<u32, 18>();
    var var_1 = Struct_2(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71320u, 18u)], 18u)]), 18u)], 18u)] ^ _wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(65780u, 19569u)), func_5(true, firstTrailingBit(u_input.b.x) >> ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21117u, 18u)], 18u)] >> (4294967295u % 32u)) % 32u), func_4(Struct_4(true, u_input.b, vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(17208u, 18u)])), Struct_5(vec3<bool>(false, true, false))), func_4(Struct_4(false, u_input.b, vec2<u32>(4294967295u, u_input.c)), Struct_5(vec3<bool>(true, false, true)))).a), u_input.b.x, func_4(Struct_4(false, _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, 5835i, var_0.x, var_0.x)), vec4<i32>(u_input.b.x, -37250i, var_0.x, var_0.x) & u_input.b), firstLeadingBit(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40228u, 18u)], 18u)], 18u)], 18u)]))), Struct_5(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), 1i == var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(341f)) * 315f)), -431f), Struct_1(-48058i));
    let var_2 = false;
    let var_3 = Struct_2(~0u, -27766i, func_4(Struct_4(any(func_3()), ~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 63977i, 62644i, -10806i), vec4<i32>(-6428i, var_1.b, 0i, -83695i)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(56729u, 29248u), vec2<u32>(13392u, 1u))), Struct_5(vec3<bool>(!var_2, any(vec4<bool>(true, var_2, var_2, var_2)), true))), var_1.d, func_4(Struct_4(var_2, reverseBits(vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, var_1.c.a)), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, var_1.a), vec2<u32>(4294967295u, u_input.a))), Struct_5(!select(vec3<bool>(true, true, var_2), vec3<bool>(true, true, true), var_2))));
    var var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.d * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2166f) * -308f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-325f, _wgslsmith_f_op_f32(-var_1.d))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_3.d)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_3.d, var_3.d), vec2<f32>(159f, 315f)))))));
    let var_5 = ~select(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(5621u, 0u), vec2<u32>(u_input.c, 1u), ~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(var_1.a, 18u)])), vec2<u32>(var_3.a, 118050u) ^ vec2<u32>(49349u, 0u)), firstLeadingBit(min(vec2<u32>(15062u, 53228u), vec2<u32>(0u, 4294967295u)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_1.a, 18u)], 19350u), vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)]), vec2<u32>(4294967295u, 35536u))), !(!all(vec3<bool>(var_2, var_2, var_2))));
    var_1 = Struct_2(88701u, _wgslsmith_div_i32(-13701i, -var_1.b), Struct_1(_wgslsmith_div_i32(2147483647i >> (0u % 32u), var_3.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.d))) * 429f) * var_3.d), func_4(Struct_4((var_0.x != -49414i) || true, u_input.b, min(var_5, vec2<u32>(global0[_wgslsmith_index_u32(19341u, 18u)], 36259u)) << (var_5 % vec2<u32>(32u))), Struct_5(select(vec3<bool>(var_2, false, true), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(var_2, true, var_2), vec3<bool>(false, false, var_2), var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-199f, 409f));
}

