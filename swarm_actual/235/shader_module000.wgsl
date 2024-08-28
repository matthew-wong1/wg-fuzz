struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(-761f, -1018f, Struct_1(-1154f, vec3<i32>(1i, 26315i, -40650i), vec4<i32>(-10705i, 1i, 85592i, -36209i), true), 0i), Struct_2(-337f, -128f, Struct_1(-1412f, vec3<i32>(i32(-2147483648), -21778i, 69088i), vec4<i32>(4712i, -8960i, -6425i, -20332i), false), 16847i), Struct_2(-707f, -703f, Struct_1(-1332f, vec3<i32>(12273i, -30216i, 11824i), vec4<i32>(i32(-2147483648), -49370i, -27483i, 34187i), true), i32(-2147483648)));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(430f, vec3<i32>(1i, 15627i, -13406i), vec4<i32>(-56888i, -47223i, 15628i, -31630i), true), Struct_1(-787f, vec3<i32>(2147483647i, i32(-2147483648), 33119i), vec4<i32>(-38652i, 1i, -21765i, -7333i), false), Struct_1(1000f, vec3<i32>(2147483647i, 2147483647i, -1i), vec4<i32>(-1i, 1i, 7173i, 1i), false), Struct_1(1670f, vec3<i32>(17783i, -45357i, -55481i), vec4<i32>(-1i, 37032i, -36079i, -31406i), true), Struct_1(-774f, vec3<i32>(-35861i, 0i, -1i), vec4<i32>(-8027i, 2147483647i, 1i, 1i), true), Struct_1(-1000f, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 7004i, -1i), true), Struct_1(-1284f, vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(64253i, 1i, 1i, i32(-2147483648)), true), Struct_1(-599f, vec3<i32>(-2880i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), -69766i, i32(-2147483648), 33565i), false), Struct_1(-913f, vec3<i32>(12669i, 32452i, -6896i), vec4<i32>(-53579i, 1i, -375i, 0i), true), Struct_1(1367f, vec3<i32>(-1i, 0i, 2147483647i), vec4<i32>(-1i, -9764i, 2147483647i, i32(-2147483648)), false), Struct_1(-981f, vec3<i32>(1i, -1i, 56985i), vec4<i32>(24512i, i32(-2147483648), 96i, 28370i), false), Struct_1(413f, vec3<i32>(17295i, 8183i, 13152i), vec4<i32>(-82929i, -8714i, 1i, 2147483647i), true), Struct_1(1000f, vec3<i32>(-67037i, 1i, -7962i), vec4<i32>(2147483647i, -1i, 96254i, -1i), false), Struct_1(222f, vec3<i32>(0i, i32(-2147483648), 1i), vec4<i32>(-1i, -40057i, 0i, i32(-2147483648)), false), Struct_1(-825f, vec3<i32>(-1i, 0i, i32(-2147483648)), vec4<i32>(-6423i, -23494i, -59255i, 38968i), true), Struct_1(769f, vec3<i32>(0i, -1i, 2147483647i), vec4<i32>(10970i, i32(-2147483648), i32(-2147483648), -11396i), true), Struct_1(669f, vec3<i32>(-17165i, 24394i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, -1i, i32(-2147483648)), false), Struct_1(600f, vec3<i32>(i32(-2147483648), 5717i, -60786i), vec4<i32>(5166i, -29655i, i32(-2147483648), 2147483647i), false), Struct_1(-445f, vec3<i32>(22269i, 0i, 2147483647i), vec4<i32>(48148i, 2147483647i, -33787i, 0i), true), Struct_1(3034f, vec3<i32>(36454i, 2147483647i, -21463i), vec4<i32>(42082i, -1i, i32(-2147483648), 2147483647i), false), Struct_1(730f, vec3<i32>(0i, i32(-2147483648), -1i), vec4<i32>(-25839i, 61414i, 8399i, 2147483647i), true), Struct_1(272f, vec3<i32>(3491i, -40633i, 0i), vec4<i32>(2147483647i, 28514i, 0i, -14469i), true), Struct_1(949f, vec3<i32>(60778i, -1i, 1i), vec4<i32>(22290i, 6035i, -20505i, 2147483647i), false), Struct_1(-1911f, vec3<i32>(2147483647i, 0i, 26068i), vec4<i32>(-2312i, 6266i, -2969i, i32(-2147483648)), true), Struct_1(-1148f, vec3<i32>(1444i, 0i, 21031i), vec4<i32>(-43400i, -1i, -4060i, -1i), false), Struct_1(-875f, vec3<i32>(0i, 23250i, -15390i), vec4<i32>(-39853i, i32(-2147483648), 0i, -1i), false), Struct_1(-678f, vec3<i32>(0i, 1i, -482i), vec4<i32>(45166i, 2147483647i, 10598i, 2147483647i), true), Struct_1(405f, vec3<i32>(27373i, -1i, 0i), vec4<i32>(24746i, 904i, 0i, 1810i), true), Struct_1(131f, vec3<i32>(-45635i, -6217i, 18752i), vec4<i32>(-1i, i32(-2147483648), 3998i, -1i), false));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2139i, 1i, -55219i), vec3<i32>(-2147483647i, -1i, 14739i)), select(global0.c.x, global0.c.x, global0.d), 1i, 42077i) & _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global0.c.x, -9458i, 1i), vec4<i32>(global0.c.x, global0.b.x, 2147483647i, 2147483647i)), vec4<i32>(u_input.a, 1i, -global0.c.x, _wgslsmith_sub_i32(u_input.a, -1i)) ^ _wgslsmith_mult_vec4_i32(global0.c, -vec4<i32>(u_input.a, global0.b.x, global0.b.x, u_input.a))));
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2125f), -(vec3<i32>(-1i) * -var_0.wxw), abs(var_0), global0.d);
    var var_1 = select(vec3<bool>(false, any(select(vec4<bool>(true, global0.d, false, global0.d), !vec4<bool>(true, global0.d, true, true), global0.d)), !all(!vec3<bool>(true, global0.d, true))), vec3<bool>(global0.d, u_input.b == 60384u, any(vec2<bool>(!global0.d, global0.d))), !(_wgslsmith_f_op_f32(max(-849f, _wgslsmith_f_op_f32(f32(-1f) * -777f))) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.a))))));
    let var_2 = -60679i;
    let var_3 = global2[_wgslsmith_index_u32(~50835u, 29u)];
    return _wgslsmith_clamp_vec3_i32(select(-(~firstTrailingBit(var_3.b)), abs(var_3.b), global0.d), ~(~(~select(vec3<i32>(var_2, 15257i, 38592i), vec3<i32>(var_0.x, -1i, -42267i), vec3<bool>(var_3.d, var_1.x, var_1.x)))), _wgslsmith_sub_vec3_i32(abs(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 2147483647i, u_input.a), global0.c.yyx, var_0.wyy))), _wgslsmith_add_vec3_i32(vec3<i32>(-6040i, var_2, var_3.c.x), ~var_0.wyx) << (vec3<u32>(select(83360u, u_input.b, false), u_input.b, ~14250u) % vec3<u32>(32u))));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    global1 = array<Struct_2, 3>();
    var var_0 = Struct_1(arg_2.a, _wgslsmith_div_vec3_i32(firstLeadingBit(-func_3(arg_2.a)), _wgslsmith_div_vec3_i32(firstTrailingBit(arg_2.b) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(6568u, u_input.b, 1u), vec3<u32>(arg_0, u_input.b, 4294967295u)) % vec3<u32>(32u)), arg_2.b)), global0.c, all(select(select(vec3<bool>(arg_2.d, arg_2.d, global0.d), !vec3<bool>(true, true, arg_3.d), any(vec4<bool>(arg_3.d, arg_2.d, arg_3.d, arg_3.d))), vec3<bool>(false, true, !arg_2.d), arg_3.d)));
    global2 = array<Struct_1, 29>();
    global2 = array<Struct_1, 29>();
    global1 = array<Struct_2, 3>();
    return select(vec4<bool>(any(vec2<bool>(arg_2.d, !global0.d)), select(!all(vec2<bool>(true, arg_3.d)), true, global0.d | arg_3.d), false, true), !vec4<bool>(global0.d == !arg_2.d, arg_2.d, false, arg_3.d), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(275f - arg_2.a) + -346f)), global0.a, arg_1, reverseBits(global0.c.x));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-13638i, -2147483647i), ~(-select(vec2<i32>(global0.c.x, 19953i) | vec2<i32>(arg_1.c.x, -1i), vec2<i32>(global0.c.x, -1i), arg_0.yz)));
    let var_2 = global1[_wgslsmith_index_u32(7450u, 3u)];
    var var_3 = 22782u;
    global2 = array<Struct_1, 29>();
    return var_0.c;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(select(!select(vec4<bool>(global0.d, false, true, false), !vec4<bool>(global0.d, false, false, global0.d), select(vec4<bool>(false, global0.d, global0.d, global0.d), vec4<bool>(global0.d, global0.d, true, false), vec4<bool>(false, true, true, global0.d))), vec4<bool>(global0.d, global0.d, global0.d, global0.d == global0.d), select(vec4<bool>(any(vec4<bool>(true, global0.d, false, true)), true, global0.d | false, true), select(!vec4<bool>(true, global0.d, false, false), !vec4<bool>(global0.d, true, false, false), func_2(u_input.b, vec2<f32>(725f, global0.a), Struct_1(137f, global0.c.zwz, vec4<i32>(1i, 26625i, u_input.a, global0.b.x), global0.d), Struct_1(-660f, vec3<i32>(12063i, 0i, global0.b.x), global0.c, global0.d))), vec4<bool>(global0.d, true, all(vec2<bool>(true, true)), global0.d))), Struct_1(-807f, ~(-global0.c.xxz), vec4<i32>(_wgslsmith_div_i32(u_input.a, -global0.b.x), -2147483647i, u_input.a, func_3(_wgslsmith_f_op_f32(-489f * 1320f)).x), true), Struct_1(_wgslsmith_f_op_f32(round(global0.a)), reverseBits(global0.c.wwy), ~global0.c, true));
    let var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(37092u, u_input.b)), vec2<u32>(_wgslsmith_mult_u32(1u, 18323u), firstLeadingBit(4294967295u))), 3675u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1572u, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(19264u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, 40013u, u_input.b, 1u))), ~(~vec4<u32>(u_input.b, u_input.b, 0u, u_input.b))), 0u));
    var var_2 = global0.d;
    var var_3 = func_4(func_2(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~2766u, 4294967295u), countOneBits(select(u_input.b, var_1.x, true))), vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), func_4(func_2(16899u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, var_0.a))), func_4(vec4<bool>(false, var_0.d, true, false), var_0, global2[_wgslsmith_index_u32(u_input.b, 29u)]), var_0), global2[_wgslsmith_index_u32(34007u, 29u)], Struct_1(_wgslsmith_f_op_f32(min(-528f, var_0.a)), var_0.b, ~vec4<i32>(-15769i, var_0.c.x, global0.b.x, var_0.c.x), select(false, true, global0.d))), func_4(func_2(_wgslsmith_dot_vec2_u32(var_1.wz, vec2<u32>(0u, var_1.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a, global0.a))), global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(var_1.x, 29u)]), func_4(vec4<bool>(true, global0.d, var_0.d, true), func_4(vec4<bool>(false, true, true, false), Struct_1(780f, var_0.b, global0.c, global0.d), var_0), global2[_wgslsmith_index_u32(var_1.x, 29u)]), func_4(func_2(var_1.x, vec2<f32>(-896f, global0.a), Struct_1(570f, global0.b, vec4<i32>(31671i, global0.b.x, -29885i, -1i), true), var_0), Struct_1(-1886f, vec3<i32>(-1i, 17033i, u_input.a), vec4<i32>(-5045i, u_input.a, 0i, -29346i), global0.d), func_4(vec4<bool>(true, true, global0.d, global0.d), Struct_1(global0.a, var_0.b, var_0.c, true), Struct_1(global0.a, vec3<i32>(-5608i, 2297i, u_input.a), global0.c, var_0.d))))), var_0, Struct_1(global0.a, vec3<i32>(var_0.c.x, _wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(-15360i, 38264i)), 2147483647i), var_0.c, !(global0.a != global0.a)));
    let var_4 = 1i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f + 1254f)), global0.b, _wgslsmith_div_vec4_i32(global0.c, min(_wgslsmith_mod_vec4_i32(global0.c, firstTrailingBit(var_0.c)), abs(global0.c))), !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))) > var_0.a));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = -vec3<i32>(select(29837i, func_3(1323f).x, global0.d) ^ -(arg_2.d >> (u_input.b % 32u)), firstLeadingBit(firstTrailingBit(func_3(arg_0.a).x)), -1822i);
    var var_1 = _wgslsmith_div_vec2_i32(global0.b.yy, _wgslsmith_sub_vec2_i32(select(vec2<i32>(14853i, var_0.x), min(vec2<i32>(global0.c.x, var_0.x), var_0.zy), vec2<bool>(true, true)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 6033i), vec2<i32>(-42789i, var_0.x)), -u_input.a))) ^ _wgslsmith_add_vec2_i32(vec2<i32>(func_1().b.x, 47800i), arg_0.b.zx);
    var_1 = vec2<i32>(-(~_wgslsmith_dot_vec3_i32(arg_0.c.wwz, vec3<i32>(-39306i, -1i, 1132i))) << (u_input.b % 32u), global0.c.x);
    let var_2 = vec2<bool>(u_input.b <= 1u, false);
    let var_3 = Struct_2(arg_2.c.a, 724f, arg_2.c, 69313i);
    return func_1();
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -580f, _wgslsmith_f_op_f32(ceil(arg_2.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-807f, -775f, -1000f)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1950f, 373f, _wgslsmith_f_op_f32(-global0.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-829f, 504f, arg_1.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1351f, -1353f, -442f), vec3<f32>(857f, global0.a, arg_1.a))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.x, arg_1.a, 1515f))))))));
    global0 = func_4(func_2(6417u, vec2<f32>(_wgslsmith_f_op_f32(-1577f + -413f), _wgslsmith_f_op_f32(global0.a - func_4(vec4<bool>(true, arg_3, false, false), arg_1, Struct_1(1345f, arg_1.b, vec4<i32>(global0.b.x, -2147483647i, arg_1.c.x, 0i), arg_1.d)).a)), func_5(global2[_wgslsmith_index_u32(~(~u_input.b), 29u)], global0.d, Struct_2(1f, _wgslsmith_div_f32(175f, arg_2.x), Struct_1(-1464f, global0.c.yxz, global0.c, false), select(arg_1.c.x, -2147483647i, arg_1.d))), Struct_1(arg_1.a, min(max(vec3<i32>(global0.b.x, u_input.a, global0.b.x), global0.c.xxz), min(vec3<i32>(arg_1.c.x, -2147483647i, global0.c.x), arg_1.c.zxz)), vec4<i32>(~u_input.a, arg_1.b.x, -9974i, ~u_input.a), false)), Struct_1(-1373f, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(arg_1.c.yxz, ~vec3<i32>(u_input.a, -1i, 4858i)), -func_3(-939f)), vec4<i32>(countOneBits(abs(global0.b.x)), global0.c.x | (-1i | arg_1.c.x), -(~arg_1.c.x), _wgslsmith_dot_vec2_i32(select(global0.c.xx, vec2<i32>(arg_1.c.x, u_input.a), vec2<bool>(false, true)), func_4(vec4<bool>(arg_3, false, true, true), arg_1, arg_1).b.yz)), false), func_1());
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(var_0.x, global0.a)), 304f, arg_1, 3790i);
    return vec3<u32>(0u, ~1u, u_input.b) | ~firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 21480u, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u) ^ vec3<u32>(u_input.b, u_input.b, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    let var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a))))), -784f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a + -2817f))));
    var var_3 = _wgslsmith_div_vec3_u32(func_6(any(vec2<bool>(true, true)) & global0.d, func_5(func_1(), global0.b.x != var_1, global1[_wgslsmith_index_u32(0u, 3u)]), vec2<f32>(global0.a, _wgslsmith_f_op_f32(global0.a - global0.a)), global0.d), ~(~min(vec3<u32>(var_0, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b)) & _wgslsmith_add_vec3_u32(vec3<u32>(57991u, u_input.b, u_input.b), ~vec3<u32>(94735u, 1u, 4294967295u))));
    global1 = array<Struct_2, 3>();
    let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(441f, -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-746f)) - _wgslsmith_f_op_f32(sign(global0.a))) - -232f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(abs(-208f)), _wgslsmith_f_op_f32(f32(-1f) * -241f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a, global0.a, 1092f), vec3<f32>(809f, 1000f, 271f))))) + vec3<f32>(_wgslsmith_div_f32(-2003f, global0.a), _wgslsmith_f_op_f32(exp2(global0.a)), _wgslsmith_f_op_f32(step(1814f, -1054f)))), select(vec3<bool>(!global0.d, global0.d, func_2(0u, vec2<f32>(global0.a, -1000f), global2[_wgslsmith_index_u32(var_0, 29u)], Struct_1(global0.a, global0.c.xzy, global0.c, global0.d)).x), vec3<bool>(true, !global0.d, true), !(global0.d & global0.d)))));
    let var_5 = var_3.x;
    let var_6 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0, firstLeadingBit(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(var_0, 4294967295u)))), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -var_1, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(518f, 558f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -810f) * func_5(Struct_1(177f, var_6.c.xzw, vec4<i32>(var_6.b.x, 1i, 12149i, u_input.a), global0.d), false, global1[_wgslsmith_index_u32(var_3.x, 3u)]).a), _wgslsmith_f_op_f32(ceil(global0.a))))), ~var_3.x, _wgslsmith_f_op_f32(-global0.a), ~reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_3.x, var_3.x), vec3<u32>(0u, var_0, 40793u), vec3<u32>(var_3.x, 1u, 565u))));
}

