struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(936f, false, vec2<u32>(44431u, 4294967295u), Struct_2(vec2<i32>(-1i, i32(-2147483648)), true, vec4<bool>(false, false, true, false), 10030u), Struct_2(vec2<i32>(11580i, 2147483647i), false, vec4<bool>(false, false, true, true), 0u)), Struct_4(-1382f, true, vec2<u32>(4294967295u, 0u), Struct_2(vec2<i32>(-1974i, -59282i), true, vec4<bool>(false, true, true, false), 100400u), Struct_2(vec2<i32>(i32(-2147483648), 0i), false, vec4<bool>(false, false, true, false), 1u)), Struct_4(442f, false, vec2<u32>(1u, 1u), Struct_2(vec2<i32>(-1i, -27785i), true, vec4<bool>(false, true, true, true), 1u), Struct_2(vec2<i32>(1i, -2330i), false, vec4<bool>(false, false, true, false), 1u)), Struct_4(1730f, true, vec2<u32>(18337u, 46272u), Struct_2(vec2<i32>(-1i, -18489i), true, vec4<bool>(true, true, false, true), 4294967295u), Struct_2(vec2<i32>(17138i, 63293i), false, vec4<bool>(false, true, true, false), 2039u)), Struct_4(-260f, false, vec2<u32>(0u, 0u), Struct_2(vec2<i32>(1i, i32(-2147483648)), true, vec4<bool>(true, false, false, true), 22314u), Struct_2(vec2<i32>(24406i, 1i), false, vec4<bool>(false, false, true, false), 9159u)), Struct_4(-1460f, false, vec2<u32>(6952u, 1u), Struct_2(vec2<i32>(2147483647i, 2147483647i), false, vec4<bool>(true, true, false, false), 16273u), Struct_2(vec2<i32>(i32(-2147483648), -3522i), true, vec4<bool>(false, false, false, false), 63809u)), Struct_4(1002f, false, vec2<u32>(19070u, 66855u), Struct_2(vec2<i32>(-21261i, 29452i), true, vec4<bool>(false, false, false, true), 69283u), Struct_2(vec2<i32>(28818i, i32(-2147483648)), false, vec4<bool>(false, false, true, false), 97262u)), Struct_4(674f, true, vec2<u32>(397u, 1u), Struct_2(vec2<i32>(-36597i, -1i), true, vec4<bool>(true, true, true, true), 39616u), Struct_2(vec2<i32>(29839i, 0i), false, vec4<bool>(false, true, false, false), 1u)), Struct_4(-737f, true, vec2<u32>(64917u, 1u), Struct_2(vec2<i32>(-7428i, 23528i), false, vec4<bool>(false, false, true, true), 4294967295u), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), false, vec4<bool>(true, true, true, false), 47208u)), Struct_4(-1341f, true, vec2<u32>(1u, 0u), Struct_2(vec2<i32>(18229i, 0i), false, vec4<bool>(true, false, false, true), 28123u), Struct_2(vec2<i32>(2147483647i, 1i), false, vec4<bool>(false, true, false, false), 4294967295u)), Struct_4(-897f, true, vec2<u32>(124082u, 1u), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), true, vec4<bool>(false, true, false, true), 4294967295u), Struct_2(vec2<i32>(-7187i, 2147483647i), true, vec4<bool>(false, false, false, true), 10277u)), Struct_4(-633f, true, vec2<u32>(49633u, 34816u), Struct_2(vec2<i32>(0i, 8034i), false, vec4<bool>(true, true, false, false), 6870u), Struct_2(vec2<i32>(i32(-2147483648), -1i), true, vec4<bool>(false, true, true, false), 64831u)), Struct_4(829f, true, vec2<u32>(2592u, 2001u), Struct_2(vec2<i32>(2147483647i, 1i), false, vec4<bool>(true, true, true, false), 5408u), Struct_2(vec2<i32>(-1i, 28154i), true, vec4<bool>(true, true, true, false), 1u)), Struct_4(-2210f, false, vec2<u32>(98699u, 130478u), Struct_2(vec2<i32>(-3631i, 14805i), true, vec4<bool>(true, false, false, true), 8406u), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), true, vec4<bool>(true, false, false, false), 39456u)), Struct_4(1000f, true, vec2<u32>(12936u, 83665u), Struct_2(vec2<i32>(0i, -21265i), true, vec4<bool>(false, true, false, true), 1u), Struct_2(vec2<i32>(-44178i, 15950i), false, vec4<bool>(false, false, true, true), 22261u)), Struct_4(-722f, true, vec2<u32>(1u, 0u), Struct_2(vec2<i32>(-16074i, 1i), true, vec4<bool>(false, true, true, true), 0u), Struct_2(vec2<i32>(-1i, -9501i), true, vec4<bool>(true, true, false, true), 4294967295u)), Struct_4(-1026f, true, vec2<u32>(44995u, 31134u), Struct_2(vec2<i32>(i32(-2147483648), 1i), true, vec4<bool>(false, true, false, true), 24711u), Struct_2(vec2<i32>(-23779i, 1i), false, vec4<bool>(false, true, false, true), 19270u)), Struct_4(-212f, false, vec2<u32>(18431u, 1u), Struct_2(vec2<i32>(i32(-2147483648), 1i), false, vec4<bool>(false, false, false, true), 48615u), Struct_2(vec2<i32>(-27485i, 0i), true, vec4<bool>(false, false, true, false), 4294967295u)));

var<private> global3: array<f32, 26>;

var<private> global4: array<Struct_4, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: u32) -> i32 {
    global0 = select(vec3<u32>(_wgslsmith_sub_u32(global0.x, ~1u), firstTrailingBit(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, arg_1, u_input.b)), _wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(u_input.b, arg_1, arg_1)))), arg_1), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~u_input.b, ~_wgslsmith_div_u32(~0u, u_input.d.x | 0u)), !(-1i == (arg_0 >> (_wgslsmith_sub_u32(35485u, global0.x) % 32u))));
    global2 = array<Struct_4, 18>();
    global3 = array<f32, 26>();
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = Struct_1(-(~arg_0), -(~vec4<i32>(~1i, max(2147483647i, arg_0), -1i, 2741i)), vec4<i32>(reverseBits(firstLeadingBit(-18657i)), abs(u_input.a.x & -24136i) << (u_input.b % 32u), -u_input.c, arg_0 & ~u_input.c), global3[_wgslsmith_index_u32(arg_1, 26u)]);
    return 0i;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_div_f32(arg_0.c.x, -2219f);
    var var_1 = countOneBits(max(_wgslsmith_sub_vec4_i32(arg_0.a.b, arg_0.a.b), max(~vec4<i32>(u_input.a.x, 77141i, arg_0.a.c.x, 0i), select(arg_0.a.c, arg_0.a.b, arg_0.b.c.x)))) ^ -vec4<i32>(u_input.c, max(49768i, arg_2.d.a.x), arg_0.a.c.x, arg_0.a.c.x);
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    global1 = array<Struct_3, 20>();
    let var_3 = -570f;
    return select(~(~(-select(1i, var_1.x, arg_2.d.c.x))), abs(func_3(abs(var_1.x), _wgslsmith_mult_u32(firstTrailingBit(4294967295u), arg_1))), false);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -263f), 363f)) + _wgslsmith_f_op_f32(round(1165f))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 26u)]));
    global2 = array<Struct_4, 18>();
    var var_1 = select(~max(~vec4<u32>(0u, 36460u, 8703u, 21641u), select(~vec4<u32>(4294967295u, 1u, 4294967295u, u_input.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0.x, u_input.d.x, global0.x), vec4<u32>(1u, 62501u, 1u, 4294967295u)), !vec4<bool>(false, arg_1.x, arg_1.x, true))), (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(39808u, global0.x, 54218u, global0.x), vec4<u32>(0u, 68691u, global0.x, global0.x))) & vec4<u32>(~0u, u_input.b, ~0u, ~global0.x)) & firstLeadingBit(vec4<u32>(0u, global0.x, ~78966u, global0.x)), !(!arg_1.x));
    var var_2 = _wgslsmith_dot_vec4_i32(select(~(-arg_0), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.c, arg_0.x, arg_0.x), _wgslsmith_mod_i32(u_input.c, 2147483647i)), -29016i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.x, -10903i, -1i), _wgslsmith_clamp_i32(u_input.c, -16240i, 53191i)), arg_0.x), true), (_wgslsmith_add_vec4_i32(vec4<i32>(-41405i, u_input.a.x, arg_0.x, 2147483647i) << (vec4<u32>(global0.x, 1u, global0.x, global0.x) % vec4<u32>(32u)), arg_0) & vec4<i32>(-14889i, u_input.a.x >> (u_input.d.x % 32u), -7499i, func_2(global1[_wgslsmith_index_u32(var_1.x, 20u)], global0.x, Struct_4(global3[_wgslsmith_index_u32(18387u, 26u)], arg_1.x, vec2<u32>(4294967295u, 41942u), Struct_2(u_input.a, arg_1.x, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), global0.x), Struct_2(vec2<i32>(u_input.a.x, -1i), arg_1.x, vec4<bool>(arg_1.x, true, arg_1.x, false), 75747u)), u_input.b))) | vec4<i32>(abs(_wgslsmith_add_i32(-1i, u_input.c)), _wgslsmith_mult_i32(-27732i, 51602i) | func_2(global1[_wgslsmith_index_u32(var_1.x, 20u)], var_1.x, global2[_wgslsmith_index_u32(22900u, 18u)], u_input.b), u_input.a.x, -_wgslsmith_sub_i32(-1i, 99798i)));
    var var_3 = false;
    return Struct_2(u_input.a, !arg_1.x, vec4<bool>(!(~arg_0.x != -13959i), any(select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), !vec4<bool>(true, arg_1.x, false, true), !arg_1.x)), true, any(select(vec2<bool>(arg_1.x, arg_1.x), arg_1.zz, false))), _wgslsmith_add_u32(global0.x, ~(~u_input.b)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> f32 {
    let var_0 = 0u;
    global2 = array<Struct_4, 18>();
    var var_1 = arg_2.b;
    global2 = array<Struct_4, 18>();
    var var_2 = func_4(vec4<i32>(~(2147483647i ^ _wgslsmith_mult_i32(u_input.a.x, 1i)), _wgslsmith_sub_i32(u_input.a.x, ~(-2147483647i)), ~_wgslsmith_mult_i32(-1i, func_2(global1[_wgslsmith_index_u32(global0.x, 20u)], global0.x, global2[_wgslsmith_index_u32(23212u, 18u)], 37583u)), -4788i << (u_input.b % 32u)), vec3<bool>(((arg_2.a.x > -12135i) || (var_0 > 4294967295u)) || all(vec2<bool>(false, arg_2.c.x)), !all(!vec3<bool>(arg_2.b, arg_2.b, false)), true));
    return 710f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(-361f, 130f, Struct_2(vec2<i32>(u_input.c, 2147483647i), false, vec4<bool>(false, true, false, true), 0u))), _wgslsmith_f_op_f32(770f + -229f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(181f, global3[_wgslsmith_index_u32(u_input.b, 26u)]), vec2<f32>(1049f, global3[_wgslsmith_index_u32(110441u, 26u)]))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(0u, 26u)], -389f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(44187u, 26u)], 428f)))), _wgslsmith_mod_vec2_i32(-u_input.a & u_input.a, -u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2147483647i << (global0.x % 32u), i32(-1i) * -37669i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.c, 0i, -24863i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.a.x, -1i), vec4<i32>(u_input.a.x, 2147483647i, 24109i, u_input.a.x), vec4<i32>(u_input.c, -11995i, u_input.a.x, 5929i)))) | abs(vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, -40102i) | vec4<i32>(u_input.c, u_input.a.x, -61173i, -2147483647i)));
}

