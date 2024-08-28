struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-324f, -911f, 391f, 1293f, 301f, 1434f, 283f, -927f, -142f, -416f, 1012f, -709f, 966f, -774f, 328f, -273f, 440f, 368f);

var<private> global1: Struct_2 = Struct_2(333f, Struct_1(2301f, -308f, 71113u), Struct_1(272f, -964f, 10373u), Struct_1(-1681f, -1178f, 3808u), Struct_1(-1159f, 878f, 1u));

var<private> global2: Struct_1 = Struct_1(-680f, -702f, 26053u);

var<private> global3: vec3<f32> = vec3<f32>(655f, 830f, -1232f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<u32> {
    var var_0 = u_input.c;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-310f - 221f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, -1406f))))), global1.e, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global1.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1394f) + _wgslsmith_f_op_f32(-511f * -1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b.b + global3.x), _wgslsmith_f_op_f32(arg_0.a + 184f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.c, _wgslsmith_div_u32(66015u, arg_0.c)), ~(vec2<u32>(arg_0.c, 0u) >> (vec2<u32>(65913u, global2.c) % vec2<u32>(32u))))), global1.d, arg_0);
    global3 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-347f * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(global3.x * global0[_wgslsmith_index_u32(var_1.d.c, 18u)]))), true)), global1.d.b, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_1.b.c | (global1.e.c ^ ~global2.c), 18u)])));
    global2 = global1.c;
    let var_2 = abs(_wgslsmith_mult_u32(~1u, abs(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(104334u, 68725u), vec2<u32>(1u, global2.c), vec2<u32>(global2.c, var_1.d.c)), ~vec2<u32>(arg_0.c, u_input.a)))));
    return firstLeadingBit(~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(36169u, 4294967295u, var_1.d.c, 25893u), vec4<u32>(var_2, 91179u, var_2, 22215u)), 1u, 41224u, global1.b.c));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = vec2<i32>(u_input.c.x, -arg_0.x);
    let var_1 = arg_0.x;
    let var_2 = -arg_0;
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(reverseBits(0u), global2.c, ~global1.d.c, 10156u << (global2.c % 32u)), abs(~func_3(global1.e, vec2<f32>(383f, 231f)))), _wgslsmith_mod_vec4_u32(vec4<u32>(func_3(global1.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.b, -258f) - vec2<f32>(-185f, 227f))).x, u_input.b, 65086u, ~_wgslsmith_div_u32(global1.c.c, global1.d.c)), countOneBits(vec4<u32>(1u, 0u, ~27789u, abs(global2.c)))));
    global3 = vec3<f32>(-203f, -1522f, _wgslsmith_f_op_f32(-global2.b));
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29406u, 18u)] - global3.x), global3.x, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))))), -1991f, u_input.a);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global1 = Struct_2(arg_2.a, Struct_1(_wgslsmith_f_op_f32(462f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.d.a), arg_2.c.a))), global3.x, 9607u), func_2(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c.x, 1i, -2147483647i), vec3<i32>(select(2147483647i, -25154i, arg_1), u_input.c.x, u_input.c.x))), global1.b, func_2(vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, -21383i)) & ~(~vec3<i32>(49865i, -56645i, 9246i))));
    global2 = arg_2.c;
    global3 = vec3<f32>(1607f, global1.d.b, 334f);
    global0 = array<f32, 18>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.a + arg_0.b.b) + _wgslsmith_f_op_f32(ceil(-931f))))), _wgslsmith_f_op_f32(trunc(123f)), 4294967295u);
    return Struct_2(arg_2.c.b, func_2(vec3<i32>(-1i, u_input.c.x, u_input.c.x)), arg_2.b, Struct_1(global2.b, -780f, 34920u), arg_0.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = firstTrailingBit(u_input.c.x);
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    var var_1 = 13265u;
    let var_2 = vec4<i32>(-1i) * -vec4<i32>(-637i, var_0, var_0, _wgslsmith_sub_i32(abs(u_input.c.x), abs(0i)));
    return -var_2.x | _wgslsmith_clamp_i32(firstLeadingBit(var_0), _wgslsmith_mod_i32(max(~(-1i), max(6277i, var_2.x)), ~(-1i)), firstTrailingBit(-9711i));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(2147483647i, (i32(-1i) * -17049i) & _wgslsmith_mult_i32(firstLeadingBit(arg_3) >> (_wgslsmith_div_u32(9217u, 68793u) % 32u), firstLeadingBit(-arg_2.x)));
    global1 = arg_0;
    var_0 = _wgslsmith_add_i32(arg_2.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(26933i, u_input.c.x) & firstLeadingBit(arg_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, arg_2.x, -2147483647i), arg_2), 2147483647i) & select(-1i, _wgslsmith_mult_i32(arg_3, -35893i) & ~arg_2.x, true));
    global2 = func_2(arg_2.yww);
    let var_1 = countOneBits(-arg_2.x);
    return arg_0.c;
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec3_f32(arg_2 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 + arg_2)));
    global3 = arg_2;
    global0 = array<f32, 18>();
    var var_0 = arg_1;
    global2 = func_2(firstTrailingBit(-(~(-vec3<i32>(u_input.c.x, arg_0, 29053i)))));
    return func_5(func_1(Struct_2(global0[_wgslsmith_index_u32(func_5(Struct_2(-1290f, global1.d, Struct_1(global1.e.a, -1000f, 62480u), Struct_1(arg_1.b, -351f, 1u), Struct_1(-1066f, arg_2.x, global2.c)), true, ~vec4<i32>(-38658i, arg_0, -2147483647i, -1972i), 1i).c, 18u)], global1.b, arg_1, func_2(-vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i)), func_1(func_1(Struct_2(-422f, global1.d, global1.d, Struct_1(global1.d.a, 422f, var_0.c), Struct_1(-1763f, 214f, global2.c)), true, Struct_2(global3.x, arg_1, Struct_1(-505f, global3.x, u_input.b), arg_1, Struct_1(global3.x, -2708f, 1u))), true, func_1(Struct_2(896f, arg_1, Struct_1(var_0.b, 229f, 0u), global1.b, arg_1), false, Struct_2(global0[_wgslsmith_index_u32(global1.d.c, 18u)], Struct_1(-307f, global1.a, var_0.c), Struct_1(global2.a, global3.x, u_input.a), Struct_1(1934f, -433f, u_input.d), Struct_1(941f, global2.a, var_0.c)))).b), any(vec4<bool>(true, false, true, true)), func_1(Struct_2(_wgslsmith_f_op_f32(select(arg_2.x, global1.e.b, false)), global1.e, func_1(Struct_2(336f, global1.b, Struct_1(arg_2.x, global3.x, arg_1.c), Struct_1(-145f, global3.x, 25512u), Struct_1(arg_1.b, arg_2.x, global2.c)), false, Struct_2(-1290f, arg_1, Struct_1(arg_1.b, -1017f, 85198u), global1.e, global1.b)).b, arg_1, global1.b), any(vec2<bool>(false, true)), func_1(func_1(Struct_2(global2.b, Struct_1(global1.a, -2012f, global1.d.c), global1.e, Struct_1(713f, global0[_wgslsmith_index_u32(u_input.b, 18u)], arg_1.c), Struct_1(arg_2.x, global3.x, u_input.d)), false, Struct_2(1277f, global1.d, global1.d, Struct_1(-613f, -302f, 13810u), arg_1)), arg_0 != 3196i, Struct_2(1064f, Struct_1(-1032f, -1102f, 4294967295u), Struct_1(-638f, global0[_wgslsmith_index_u32(3953u, 18u)], global1.d.c), Struct_1(global1.d.a, 1308f, 1u), arg_1)))), any(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), u_input.c.x == -2147483647i)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-29649i, arg_0, u_input.c.x, u_input.c.x) & vec4<i32>(u_input.c.x, arg_0, -20469i, 2147483647i), countOneBits(vec4<i32>(2147483647i, -15542i, arg_0, arg_0))) << (func_3(func_1(Struct_2(var_0.b, global1.d, global1.b, arg_1, Struct_1(-725f, 218f, var_0.c)), true, Struct_2(global3.x, arg_1, Struct_1(global3.x, 469f, 1u), global1.b, Struct_1(arg_2.x, global3.x, 1u))).d, vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 18u)], -906f)) % vec4<u32>(32u))), ~(-_wgslsmith_mult_i32(u_input.c.x, -1i) << (var_0.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(u_input.c.x, func_5(Struct_2(-122f, Struct_1(_wgslsmith_f_op_f32(-global1.d.b), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(31922u, 18u)], -741f), ~32519u), global1.b, global1.d, global1.c), 4294967295u <= ((global2.c ^ 53003u) | ~0u), -vec4<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x, -64831i), ~func_4(func_1(Struct_2(245f, global1.e, global1.c, global1.e, global1.e), false, Struct_2(142f, Struct_1(global2.b, global3.x, 61u), Struct_1(global0[_wgslsmith_index_u32(global1.e.c, 18u)], 940f, global2.c), global1.e, global1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.d.b) + global3.zx), Struct_1(-707f, global2.b, u_input.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), global1.e.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-766f, global2.a, 852f) + vec3<f32>(506f, -471f, 753f)))));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(firstTrailingBit(u_input.a), 2567u), ~global2.c), 18u)] + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.b) + global1.a)))), Struct_1(-495f, _wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_clamp_u32(global2.c, _wgslsmith_clamp_u32(0u, 0u, ~global2.c), 4294967295u)), func_2(min(-select(vec3<i32>(u_input.c.x, -29787i, -2147483647i), vec3<i32>(-1i, 2147483647i, 28550i), vec3<bool>(false, false, true)), vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, -1i), 23222i, min(u_input.c.x, u_input.c.x)))), func_6(-_wgslsmith_add_i32(-34779i | u_input.c.x, u_input.c.x ^ u_input.c.x), global1.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(909f, global2.a, global3.x) + vec3<f32>(-1553f, 186f, 1000f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, 436f, -484f), vec3<f32>(1105f, global0[_wgslsmith_index_u32(4294967295u, 18u)], -426f))))))), Struct_1(1356f, -171f, _wgslsmith_add_u32(1u, ~u_input.d)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.b, global0[_wgslsmith_index_u32(0u, 18u)], var_0.a))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, -1758f, -563f) - vec3<f32>(global1.e.a, global3.x, global1.e.b)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, 1127f, var_0.b.b)))))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), (global1.b.c | global1.d.c) == ~61546u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(324f, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(13544u, 18u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1177f, 857f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1826f, global2.a, global3.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.b, 112f, global0[_wgslsmith_index_u32(u_input.d, 18u)]) - vec3<f32>(global2.a, -236f, 653f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1294f, -901f, -290f), vec3<f32>(global2.b, 253f, 1225f), false)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, 1105f, -1000f)))))));
    var var_2 = func_3(Struct_1(540f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(19923u, 18u)] + 802f)), 1359f)), global1.b.c), _wgslsmith_f_op_vec2_f32(ceil(global3.xz)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global1.c.b, 161f)), -1808f)), _wgslsmith_f_op_f32(-global3.x), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_sub_vec3_i32(vec3<i32>(12067i >> (var_0.d.c % 32u), u_input.c.x << (9793u % 32u), ~(-1i)) & -abs(vec3<i32>(u_input.c.x, u_input.c.x, 35692i)), select(abs(vec3<i32>(u_input.c.x, 7663i, u_input.c.x)), vec3<i32>(-u_input.c.x, 29107i, -27157i | u_input.c.x), vec3<bool>(true, true, true))));
}

