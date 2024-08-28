struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(75059u, vec3<i32>(0i, 25957i, 2147483647i), -37052i, 1u), Struct_1(9304u, vec3<i32>(0i, -25578i, -8512i), -72376i, 19707u), Struct_1(1u, vec3<i32>(-40153i, 18766i, 1i), -1i, 1u), Struct_1(1u, vec3<i32>(-5902i, 0i, 2147483647i), 1i, 0u), Struct_1(67612u, vec3<i32>(-2310i, -62908i, 38008i), -13510i, 56959u), Struct_1(0u, vec3<i32>(-35763i, -1i, 13374i), -1i, 63980u), Struct_1(1u, vec3<i32>(-1i, -33055i, 31471i), 0i, 1u), Struct_1(17705u, vec3<i32>(1i, 0i, 27746i), -1i, 4294967295u), Struct_1(51011u, vec3<i32>(45759i, 1i, -1i), 4165i, 4294967295u), Struct_1(4872u, vec3<i32>(2147483647i, 1i, i32(-2147483648)), 1i, 25586u), Struct_1(0u, vec3<i32>(1i, 27845i, i32(-2147483648)), -1i, 1u), Struct_1(10298u, vec3<i32>(20262i, -409i, 7076i), 9324i, 43835u), Struct_1(0u, vec3<i32>(-16959i, -1768i, 0i), 41597i, 1u), Struct_1(0u, vec3<i32>(-26756i, -42617i, i32(-2147483648)), 1i, 0u), Struct_1(1u, vec3<i32>(-43426i, 0i, -76139i), 2147483647i, 24938u), Struct_1(1u, vec3<i32>(-24641i, 6067i, 0i), i32(-2147483648), 15756u), Struct_1(1u, vec3<i32>(-1i, -1i, 0i), -1i, 0u), Struct_1(4294967295u, vec3<i32>(66091i, i32(-2147483648), -1i), 2147483647i, 0u), Struct_1(20442u, vec3<i32>(2147483647i, -26835i, i32(-2147483648)), 6458i, 48014u), Struct_1(0u, vec3<i32>(1i, 787i, i32(-2147483648)), -32930i, 4294967295u), Struct_1(1u, vec3<i32>(-36054i, 35233i, -17041i), -39122i, 60875u), Struct_1(4294967295u, vec3<i32>(-1i, -22269i, 1i), -18257i, 56975u), Struct_1(1u, vec3<i32>(1i, 2147483647i, -8282i), -17195i, 52496u), Struct_1(1u, vec3<i32>(-1i, 23667i, 3238i), -59893i, 69682u), Struct_1(0u, vec3<i32>(0i, i32(-2147483648), 1i), 7244i, 0u), Struct_1(0u, vec3<i32>(0i, -1i, 21667i), -1i, 0u), Struct_1(0u, vec3<i32>(-1i, 25257i, 0i), -1i, 59070u), Struct_1(4294967295u, vec3<i32>(-7572i, 0i, -1i), -73294i, 19286u), Struct_1(57417u, vec3<i32>(47901i, 1i, -2252i), -9607i, 4294967295u), Struct_1(69664u, vec3<i32>(0i, -15474i, 0i), 2147483647i, 4294967295u), Struct_1(1u, vec3<i32>(62539i, -1i, -5973i), 25579i, 0u), Struct_1(1701u, vec3<i32>(48134i, 48911i, -44303i), -1i, 1u));

var<private> global2: array<i32, 24> = array<i32, 24>(45116i, 1i, 8521i, -22125i, 1i, 0i, 1i, -4581i, i32(-2147483648), 13560i, -57859i, -52273i, i32(-2147483648), 2767i, 2879i, 10539i, -19718i, -1i, 20021i, 1i, 2147483647i, i32(-2147483648), 41196i, -32628i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(arg_0.a, ~58494u), u_input.b), 5u)], all(vec2<bool>(45213i >= global2[_wgslsmith_index_u32(arg_0.a, 24u)], all(vec4<bool>(true, true, false, true)))))), _wgslsmith_div_f32(288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.d, 5u)]))));
    var var_1 = 28058u;
    var var_2 = Struct_1(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.a, arg_0.d ^ 79546u), (22776u << (u_input.b % 32u)) >> (u_input.a % 32u)) << (~_wgslsmith_clamp_u32(4294967295u, arg_0.a & 13457u, _wgslsmith_mult_u32(arg_0.d, 4294967295u)) % 32u), vec3<i32>(countOneBits(arg_0.c) >> (abs(u_input.a) % 32u), ~1i, arg_0.b.x) & arg_0.b, -(2147483647i << ((~arg_0.d & firstLeadingBit(1u)) % 32u)), u_input.a);
    return -261f;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(482f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 5u)] * 523f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(11068u, 5u)]), _wgslsmith_f_op_f32(-243f + -619f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(754f, 854f, global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(0u, 5u)])))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 5u)])), _wgslsmith_div_f32(355f, _wgslsmith_f_op_f32(f32(-1f) * -576f)), -1575f, 305f)))));
    var var_1 = u_input.b;
    let var_2 = true;
    var var_3 = vec3<u32>(~((abs(32009u) | _wgslsmith_div_u32(u_input.b, 84053u)) << (0u % 32u)), 4294967295u, ~(~_wgslsmith_clamp_u32(u_input.b, 41376u, 4294967295u | u_input.b)));
    var var_4 = global0[_wgslsmith_index_u32(u_input.b, 5u)];
    return global0[_wgslsmith_index_u32(~countOneBits(countOneBits(1u)), 5u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = select(vec3<u32>((abs(4294967295u) >> (countOneBits(u_input.a) % 32u)) << (arg_1.d % 32u), u_input.b, 0u), max(~abs(vec3<u32>(u_input.a, u_input.a, arg_1.a)), ~vec3<u32>(arg_1.a, arg_1.a, 0u)), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), true), vec3<bool>(true, true, _wgslsmith_div_f32(503f, global0[_wgslsmith_index_u32(0u, 5u)]) >= _wgslsmith_f_op_f32(-1000f + arg_3.x))));
    var var_1 = _wgslsmith_mod_u32(~u_input.b, 1394u);
    var var_2 = arg_1;
    var var_3 = all(vec4<bool>(true, true, true, true));
    var_0 = ~vec3<u32>(_wgslsmith_add_u32(~var_2.a >> (var_0.x % 32u), 1u), var_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a, var_0.x, 80977u), vec3<u32>(arg_1.a, u_input.b, 5733u)) << (vec3<u32>(36900u, 0u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(var_2.a, arg_1.d, 40757u) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 68094u, 4294967295u), vec3<u32>(var_2.d, var_0.x, 94416u))));
    return Struct_1(1u, -firstLeadingBit(max(-arg_1.b, vec3<i32>(0i, var_2.c, arg_1.c))), arg_2 >> (_wgslsmith_clamp_u32(~11428u, ~63451u, ~1u) % 32u), firstLeadingBit(0u));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(~arg_0.d, 5u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(15220u, arg_0.a), 5u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(18569u, 5u)], global0[_wgslsmith_index_u32(arg_0.d, 5u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_0.d, 5u)], 431f, global0[_wgslsmith_index_u32(u_input.b, 5u)])) * vec3<f32>(-743f, -155f, global0[_wgslsmith_index_u32(arg_0.a, 5u)])) - vec3<f32>(_wgslsmith_f_op_f32(func_2(arg_0)), -3013f, _wgslsmith_f_op_f32(f32(-1f) * -595f)))), Struct_1(arg_0.a, arg_0.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 0i), vec4<i32>(2147483647i, arg_0.c, arg_0.b.x, global2[_wgslsmith_index_u32(0u, 24u)])) >> (arg_0.d % 32u), abs(6558u)), 1i, vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, ~(arg_0.a & u_input.b)), 5u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_0.d, 5u)] * _wgslsmith_f_op_f32(f32(-1f) * -674f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    var_0 = func_4(vec3<f32>(global0[_wgslsmith_index_u32(~10842u, 5u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a, 5u)]), global0[_wgslsmith_index_u32(~(~(~var_0.a)), 5u)]), global1[_wgslsmith_index_u32(~arg_0.d, 32u)], firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(~global2[_wgslsmith_index_u32(var_0.d, 24u)], arg_0.b.x), arg_0.b.xx)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2329f, global0[_wgslsmith_index_u32(1u, 5u)]) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 5u)] * global0[_wgslsmith_index_u32(499u, 5u)])), 2096f, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 24359u, 16872u, 14427u), vec4<u32>(arg_0.a, u_input.a, 1u, 774u)), 5u)])));
    let var_1 = vec2<u32>(20535u, u_input.b);
    let var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global0[_wgslsmith_index_u32(~arg_0.a, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)]), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1030f, -580f, 766f) * vec3<f32>(global0[_wgslsmith_index_u32(arg_0.a, 5u)], -1133f, global0[_wgslsmith_index_u32(59143u, 5u)]))))), global1[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(46752u, 24u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(95448u, 5u)], global0[_wgslsmith_index_u32(var_0.a, 5u)], global0[_wgslsmith_index_u32(57006u, 5u)], -1534f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(552f, global0[_wgslsmith_index_u32(var_0.a, 5u)], -626f, global0[_wgslsmith_index_u32(92408u, 5u)])))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(43804u, 5u)], 1045f, -809f, -632f)))), ~0i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_0)), 1288f, -1029f, global0[_wgslsmith_index_u32(~1u, 5u)])))));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(_wgslsmith_mult_u32(u_input.a << (1u % 32u), 4294967295u), u_input.a & arg_0.a), ~arg_0.d), 5u)] * 244f);
}

fn func_5(arg_0: f32) -> u32 {
    var var_0 = ~min(vec3<i32>(-30706i, _wgslsmith_add_i32(~global2[_wgslsmith_index_u32(60684u, 24u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4423u, u_input.a, u_input.b, u_input.a), vec4<u32>(41131u, u_input.b, u_input.b, u_input.b)), 24u)]), ~(-global2[_wgslsmith_index_u32(u_input.a, 24u)])), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)]) >> (vec3<u32>(u_input.b, u_input.a, 0u) % vec3<u32>(32u)), vec3<i32>(global2[_wgslsmith_index_u32(1u, 24u)], 4451i, 0i) | vec3<i32>(global2[_wgslsmith_index_u32(122113u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)], 2147483647i)), countOneBits(~vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], -2147483647i, global2[_wgslsmith_index_u32(u_input.a, 24u)])), vec3<i32>(~global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(abs(0u), 24u)], _wgslsmith_mult_i32(51520i, 19694i))));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(61622u, 0u, 1u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 91108u, 44313u, 66811u), vec4<u32>(60982u, 28354u, u_input.b, 46350u)))), firstTrailingBit(select(vec4<u32>(0u, _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.b, _wgslsmith_mod_u32(42690u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 53247u), vec3<u32>(28756u, u_input.a, 42416u)), 0u, 10122u, u_input.a), vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(sign(arg_0));
    var var_3 = reverseBits(~(~var_0.x)) < -1i;
    global1 = array<Struct_1, 32>();
    return u_input.b;
}

fn func_6(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<f32, 5>();
    var var_0 = Struct_1(_wgslsmith_mult_u32(countOneBits(firstTrailingBit(max(arg_0, 4294967295u))), (_wgslsmith_mod_u32(u_input.b, u_input.a) ^ u_input.a) & 0u), _wgslsmith_add_vec3_i32(arg_1.zww, vec3<i32>(~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a, 24u)], 1i), 17368i, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(arg_0, 5u)], 2088f) - vec3<f32>(global0[_wgslsmith_index_u32(41165u, 5u)], 215f, -1000f)), Struct_1(arg_0, vec3<i32>(arg_1.x, 2113i, global2[_wgslsmith_index_u32(48340u, 24u)]), global2[_wgslsmith_index_u32(u_input.b, 24u)], arg_0), ~(-1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], -852f))).c)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 0i, arg_1.x, global2[_wgslsmith_index_u32(38980u, 24u)]), ~vec4<i32>(arg_1.x, 1i, arg_1.x, 17698i)) ^ ~_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 2147483647i), ~59532i), reverseBits(arg_0));
    global0 = array<f32, 5>();
    return Struct_1(_wgslsmith_mod_u32(min(select(u_input.b, ~arg_0, true), 89329u), var_0.a), var_0.b & vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(var_0.d, 24u)], var_0.c), firstTrailingBit(48836i)), _wgslsmith_dot_vec4_i32(-arg_1, select(arg_1, vec4<i32>(var_0.c, 0i, global2[_wgslsmith_index_u32(23945u, 24u)], global2[_wgslsmith_index_u32(arg_0, 24u)]), false)), -34865i), -25241i, abs(1u | u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_div_u32(1u, 34605u));
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    var var_1 = func_6(~func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.a, vec3<i32>(0i, -43240i, 51984i), global2[_wgslsmith_index_u32(u_input.b, 24u)], u_input.a))))), -_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(8292i, 2147483647i, -2147483647i, global2[_wgslsmith_index_u32(u_input.a, 24u)]), vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)])) | (vec4<i32>(global2[_wgslsmith_index_u32(25079u, 24u)], -2147483647i, global2[_wgslsmith_index_u32(u_input.b, 24u)], 1i) << (vec4<u32>(1u, 0u, u_input.b, 0u) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 24u)], 6437i, global2[_wgslsmith_index_u32(77660u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 24u)], 0i, global2[_wgslsmith_index_u32(4294967295u, 24u)], -21015i))));
    let var_2 = global1[_wgslsmith_index_u32(264u, 32u)];
    global2 = array<i32, 24>();
    var_1 = global1[_wgslsmith_index_u32(abs(21328u), 32u)];
    let var_3 = vec2<i32>(0i, var_2.b.x);
    var var_4 = Struct_1(var_1.a, var_1.b, var_3.x, abs(6965u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_1.d, _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_2.d, u_input.b), vec2<u32>(30085u, var_1.d), vec2<bool>(true, true)), vec2<u32>(var_4.a, 4294967295u)), ~20343u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~123720u, 5u)]) - _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(48728u, 32u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_4.a, var_2.d, 1u), vec3<u32>(78905u, u_input.a, 39353u), vec3<u32>(var_2.a, 51585u, 0u)), ~vec3<u32>(48011u, u_input.a, 1u)), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 5u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-750f)))))));
}

