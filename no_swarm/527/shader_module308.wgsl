struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: vec3<f32>;

var<private> global2: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = vec2<bool>(all(!vec2<bool>(!arg_1.c, true)), arg_1.c | true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1216f);
    let var_2 = u_input.c << (global0[_wgslsmith_index_u32(~u_input.c, 13u)] % 32u);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1918f, arg_2.x, 201f), vec4<f32>(-1080f, global1.x, 314f, arg_2.x))), _wgslsmith_f_op_vec4_f32(-arg_2))))));
    let var_4 = _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2, reverseBits(global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 13u)])) & _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_2, 13u)], var_2), vec2<u32>(4294967295u, var_2)) << (_wgslsmith_sub_u32(67839u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 13u)], 13u)], 13u)]) % 32u), _wgslsmith_dot_vec2_u32(u_input.a, abs(u_input.a))), 13u)], 1769u);
    return Struct_1(arg_1.a.x);
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> i32 {
    global0 = array<u32, 13>();
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a.x, 0u, ~4294967295u ^ arg_1.a.x, reverseBits(_wgslsmith_dot_vec4_u32(arg_1.a, arg_1.a))), vec4<u32>(reverseBits(max(19424u, 21760u)), 22486u, abs(firstLeadingBit(49502u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 20801u), vec3<u32>(1u, arg_1.a.x, u_input.c))) << ((vec4<u32>(firstTrailingBit(86851u), global0[_wgslsmith_index_u32(17513u, 13u)], 1u, global0[_wgslsmith_index_u32(max(arg_1.a.x, 73594u), 13u)]) << (arg_1.a % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = Struct_4(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a.x) | arg_1.a, _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], var_0, 63453u, 18607u), arg_1.a), _wgslsmith_mult_vec4_u32(vec4<u32>(12795u, 1u, u_input.a.x, 1808u), arg_1.a)) | ~arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1313f)) * _wgslsmith_f_op_f32(f32(-1f) * -1305f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1274f))) * _wgslsmith_f_op_f32(f32(-1f) * -337f)), _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1917f, -1955f)))), _wgslsmith_div_vec3_i32(max(arg_1.c, _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.c.x, arg_1.c.x, -1i), vec3<i32>(9042i, 0i, -58605i))), vec3<i32>(-arg_1.c.x, min(i32(-1i) * -24434i, u_input.b), firstLeadingBit(arg_1.c.x))), 0u);
    global2 = _wgslsmith_f_op_f32(var_1.b.x - global1.x);
    var var_2 = _wgslsmith_f_op_f32(513f - 113f);
    return -1i;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_4) -> vec4<f32> {
    global2 = global1.x;
    let var_0 = (~arg_2.x << (~(~min(arg_3.d, global0[_wgslsmith_index_u32(arg_3.d, 13u)])) % 32u)) ^ 4294967295u;
    global0 = array<u32, 13>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_3.b, arg_3.b));
}

fn func_1() -> u32 {
    let var_0 = global1.yy;
    global2 = 660f;
    global2 = _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -406f))) - var_0.x), true));
    var var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec4_f32(func_4(func_2(u_input.b, Struct_3(vec3<i32>(4487i, 2147483647i, 1i), vec4<i32>(u_input.b, u_input.b, -14087i, 10352i), true, u_input.b), vec4<f32>(1000f, var_0.x, global1.x, 1671f)), func_3(true, Struct_4(vec4<u32>(global0[_wgslsmith_index_u32(76198u, 13u)], 1u, u_input.c, u_input.a.x), vec4<f32>(1685f, -1962f, -210f, -1093f), vec3<i32>(u_input.b, -10359i, -20750i), u_input.a.x)), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 17522u), Struct_4(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 29575u), vec4<f32>(1685f, -1519f, -697f, -1000f), vec3<i32>(u_input.b, 2577i, 1i), 4294967295u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1643f, _wgslsmith_f_op_vec4_f32(func_4(Struct_1(-17141i), 0i, vec2<u32>(global0[_wgslsmith_index_u32(33277u, 13u)], 4294967295u), Struct_4(vec4<u32>(10312u, 4294967295u, 1u, 1762u), vec4<f32>(-797f, var_0.x, var_0.x, global1.x), vec3<i32>(0i, 0i, -22455i), 4294967295u))).x, -360f, _wgslsmith_f_op_vec4_f32(func_4(Struct_1(u_input.b), u_input.b, vec2<u32>(1u, u_input.c), Struct_4(vec4<u32>(31455u, global0[_wgslsmith_index_u32(1u, 13u)], 62306u, global0[_wgslsmith_index_u32(u_input.c, 13u)]), vec4<f32>(var_0.x, var_0.x, global1.x, global1.x), vec3<i32>(2147483647i, -28272i, -13287i), 60151u))).x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-643f, var_0.x, 308f, global1.x)))))));
    global0 = array<u32, 13>();
    return _wgslsmith_add_u32(22257u, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.c, u_input.c, 19823u), vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(1u, 13u)], 10960u) & vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 54683u, u_input.c, u_input.a.x)) ^ ~global0[_wgslsmith_index_u32(abs(u_input.a.x), 13u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~(~select(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], u_input.a.x, u_input.c), vec4<u32>(global0[_wgslsmith_index_u32(67385u, 13u)], 1u, global0[_wgslsmith_index_u32(35240u, 13u)], 4294967295u), vec4<bool>(true, true, true, false))) & (vec4<u32>(0u | u_input.c, _wgslsmith_mod_u32(27453u, global0[_wgslsmith_index_u32(0u, 13u)]), 22750u, ~u_input.c) | select(vec4<u32>(u_input.c, 4294967295u, 33281u, 103329u) >> (vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], u_input.c) % vec4<u32>(32u)), ~vec4<u32>(37117u, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 13u)], 623u), true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(max(global1.x, -224f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -677f), global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), -913f, 397f), ~(countOneBits(max(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, 2147483647i, 2147483647i))) >> (vec3<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(25354u, 13u)], 0u), 14511u, ~4294967295u) % vec3<u32>(32u))), _wgslsmith_sub_u32(~(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.c), 13u)]), _wgslsmith_add_u32(0u, ~func_1())));
    var var_1 = !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2027f, var_0.b.x, global1.x, global1.x) * var_0.b))), var_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global1.x, -817f)), var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(938f, global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, global1.x, var_0.b.x, 211f), var_0.b, vec4<bool>(true, true, false, true))) * _wgslsmith_f_op_vec4_f32(exp2(var_0.b)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(var_0.b.x, global1.x, -1279f, global1.x))), true))));
    let var_3 = -2959i;
    global0 = array<u32, 13>();
    var var_4 = func_2(-75848i, Struct_3(_wgslsmith_clamp_vec3_i32(min(_wgslsmith_mult_vec3_i32(var_0.c, vec3<i32>(-49493i, 38163i, 0i)), var_0.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_3, 21034i), -var_0.c, var_0.c), var_0.c), min(max(~vec4<i32>(var_0.c.x, u_input.b, -2147483647i, var_0.c.x), vec4<i32>(2147483647i, var_3, var_0.c.x, var_0.c.x) & vec4<i32>(var_3, u_input.b, 36118i, 0i)), -vec4<i32>(-1i, u_input.b, 2147483647i, 2147483647i)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false)))), var_3), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-361f, var_0.b.x, -1119f, 806f) + var_0.b))), var_0.b, any(vec3<bool>(false, true, any(vec2<bool>(true, true)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, -2152f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, global1.x)) + _wgslsmith_f_op_f32(-var_0.b.x))), var_0.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * var_0.b))) - vec4<f32>(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - 332f), 1260f), -2486f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -973f)))));
    var var_5 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_sub_i32(max(var_3, var_3), -2147483647i), var_3, 0i, -1i);
    var var_6 = Struct_1(-2147483647i | ((u_input.b ^ -2799i) ^ var_4.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(91629u, global0[_wgslsmith_index_u32(u_input.a.x | 17237u, 13u)]) & vec2<u32>(~firstLeadingBit(1u), u_input.c), vec2<u32>(abs(_wgslsmith_clamp_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.c, 13u)]), 77795u & global0[_wgslsmith_index_u32(var_0.a.x, 13u)], select(var_0.a.x, 0u, true))), ~(~_wgslsmith_add_u32(var_0.a.x, var_0.a.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(min(vec4<i32>(20109i, var_3, var_6.a, var_5.x), vec4<i32>(var_4.a, var_3, var_5.x, 0i))), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_4.a, u_input.b, var_3, var_6.a), vec4<i32>(1i, var_4.a, var_5.x, 1i))), _wgslsmith_add_i32(var_5.x, _wgslsmith_add_i32(abs(var_4.a), select(var_4.a, -1i, false)))), -_wgslsmith_add_vec4_i32(vec4<i32>(var_3, 2147483647i, 0i, -2147483647i), vec4<i32>(2147483647i, 33944i, -16527i, var_3)) & _wgslsmith_sub_vec4_i32(min(-vec4<i32>(-1i, 33976i, var_6.a, -14432i), vec4<i32>(var_6.a, var_0.c.x, var_3, var_6.a)), vec4<i32>(i32(-1i) * -1i, var_0.c.x | var_4.a, -1i, var_6.a)));
}

