struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec4<u32>(58048u, 1u, 0u, 49592u), vec2<i32>(-46159i, 0i), true), Struct_3(vec4<u32>(4294967295u, 38374u, 35605u, 58030u), vec2<i32>(-1i, 0i), true), Struct_3(vec4<u32>(1u, 68861u, 54703u, 38822u), vec2<i32>(2147483647i, -1074i), true), Struct_3(vec4<u32>(7734u, 20261u, 1u, 1u), vec2<i32>(1711i, -34979i), true), Struct_3(vec4<u32>(4294967295u, 90618u, 0u, 1u), vec2<i32>(-1i, -77107i), false), Struct_3(vec4<u32>(0u, 1u, 30249u, 0u), vec2<i32>(0i, 1i), false), Struct_3(vec4<u32>(50647u, 1u, 0u, 0u), vec2<i32>(-10272i, 14246i), true), Struct_3(vec4<u32>(1u, 30544u, 36248u, 17405u), vec2<i32>(42879i, 48138i), true), Struct_3(vec4<u32>(47779u, 0u, 4294967295u, 36824u), vec2<i32>(14123i, 2147483647i), false), Struct_3(vec4<u32>(1u, 0u, 1u, 40795u), vec2<i32>(27612i, 28218i), true), Struct_3(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec2<i32>(2147483647i, 2147483647i), false), Struct_3(vec4<u32>(0u, 66351u, 1u, 14323u), vec2<i32>(-26251i, 24143i), false), Struct_3(vec4<u32>(0u, 39168u, 4294967295u, 1u), vec2<i32>(16310i, 0i), false), Struct_3(vec4<u32>(0u, 51861u, 1u, 0u), vec2<i32>(-1i, -19746i), true), Struct_3(vec4<u32>(0u, 42030u, 87212u, 57268u), vec2<i32>(1i, -51829i), false), Struct_3(vec4<u32>(7356u, 15141u, 45240u, 6716u), vec2<i32>(i32(-2147483648), 30358i), true), Struct_3(vec4<u32>(59559u, 6670u, 13984u, 4294967295u), vec2<i32>(2147483647i, i32(-2147483648)), false), Struct_3(vec4<u32>(13692u, 4294967295u, 1u, 4012u), vec2<i32>(i32(-2147483648), -1i), true), Struct_3(vec4<u32>(54772u, 0u, 0u, 41632u), vec2<i32>(0i, 12843i), false), Struct_3(vec4<u32>(1u, 4294967295u, 1u, 9927u), vec2<i32>(-1i, -574i), true), Struct_3(vec4<u32>(0u, 91027u, 59110u, 0u), vec2<i32>(-43119i, 10134i), true), Struct_3(vec4<u32>(4294967295u, 4294967295u, 1u, 4560u), vec2<i32>(-75184i, -1i), true), Struct_3(vec4<u32>(0u, 22368u, 4294967295u, 1u), vec2<i32>(1i, 1i), false));

var<private> global2: bool;

var<private> global3: vec4<i32> = vec4<i32>(1i, -1i, i32(-2147483648), 0i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec4<i32> {
    global3 = -(~vec4<i32>(~u_input.a.x, (global3.x | 2147483647i) & ~arg_0.x, -u_input.a.x, firstLeadingBit(arg_0.x) >> (30214u % 32u)));
    let var_0 = (abs(_wgslsmith_mult_i32(countOneBits(global3.x), 0i)) < global3.x) != all(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), 0i >= global3.x), vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, false)), u_input.b > 50411u)));
    global2 = !any(select(vec2<bool>(true, var_0), select(vec2<bool>(false, var_0), !vec2<bool>(var_0, false), all(vec3<bool>(true, true, true))), true));
    let var_1 = _wgslsmith_f_op_f32(round(1135f));
    let var_2 = -vec3<i32>(abs(~(-68121i)), _wgslsmith_dot_vec2_i32(arg_0, _wgslsmith_mod_vec2_i32(max(u_input.a, arg_0), select(vec2<i32>(global3.x, -1i), vec2<i32>(2147483647i, 12749i), vec2<bool>(var_0, var_0)))), arg_0.x);
    return -abs(select(-(~vec4<i32>(var_2.x, global3.x, 2147483647i, -2147483647i)), vec4<i32>(u_input.a.x, -2147483647i, _wgslsmith_mult_i32(0i, global3.x), _wgslsmith_div_i32(-46765i, var_2.x)), false));
}

fn func_2() -> i32 {
    global3 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(func_3(abs(vec2<i32>(global3.x, 2147483647i)), vec4<f32>(1f, 1f, 1f, 1f)), vec4<i32>(global3.x, min(u_input.a.x, 1i), min(-31633i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global3.x), global3.yw), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(259f, 843f, -942f, 1000f)))).x)), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, 0i, max(u_input.a.x, -21833i), _wgslsmith_mod_i32(u_input.a.x, 14125i))), countOneBits(vec4<i32>(_wgslsmith_clamp_i32(-12669i, 8470i, -1i), global3.x | -1i, 9349i ^ global3.x, global3.x))));
    let var_0 = vec3<u32>(63710u, ~_wgslsmith_mult_u32(abs(u_input.b), 0u), 90447u);
    global1 = array<Struct_3, 23>();
    global0 = global3.x;
    let var_1 = Struct_3(vec4<u32>(1u, select(_wgslsmith_add_u32(1u, var_0.x >> (4294967295u % 32u)), ~u_input.b, false), ~min(~51720u, var_0.x), 0u), _wgslsmith_mult_vec2_i32(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 1i), global3.wx)), vec2<i32>(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, -50243i, u_input.a.x), vec4<i32>(46148i, -2147483647i, global3.x, global3.x))) & _wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, global3.zw)), !(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)))));
    return -14053i | (((_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(36122i, -2147483647i)) >> (~var_0.x % 32u)) >> (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, var_1.a.x, 19660u, 40609u)), ~var_1.a) % 32u)) << (abs(_wgslsmith_dot_vec3_u32(~var_1.a.ywx, var_0)) % 32u));
}

fn func_1(arg_0: i32) -> i32 {
    global0 = -(min(_wgslsmith_sub_i32(max(arg_0, -22064i), arg_0), _wgslsmith_clamp_i32(u_input.a.x, -u_input.a.x, 52952i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(func_2(), -34775i, 34911i, 0i), abs(vec4<i32>(arg_0, -18891i, global3.x, arg_0)) >> ((vec4<u32>(u_input.b, 36518u, 36487u, u_input.b) << (vec4<u32>(46001u, 4294967295u, 35935u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_0 = global3.ywy;
    var var_1 = Struct_4(Struct_2(Struct_1(u_input.b >> (u_input.b % 32u), _wgslsmith_f_op_f32(max(1905f, 128f)), _wgslsmith_sub_i32(0i, 12585i) ^ global3.x), Struct_1(~(~48305u), _wgslsmith_f_op_f32(trunc(534f)), 1i)), 8582u);
    var_1 = Struct_4(Struct_2(Struct_1(min(_wgslsmith_clamp_u32(1u, u_input.b, 0u), ~u_input.b), 1086f, global3.x), var_1.a.b), ~var_1.a.a.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.b.b)) + _wgslsmith_f_op_f32(-1779f * -548f)) * _wgslsmith_f_op_f32(max(var_1.a.a.b, -421f))), var_1.a.a.b, true)));
    return 24132i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1639f)));
    let var_1 = global3.wyx;
    let var_2 = ~(~u_input.b);
    var var_3 = ~_wgslsmith_add_vec2_i32(u_input.a, var_1.xy);
    var var_4 = u_input.a.x;
    var_3 = -_wgslsmith_add_vec2_i32(global3.yx, max(u_input.a, vec2<i32>(75112i, func_1(u_input.a.x))));
    var var_5 = Struct_5(Struct_2(Struct_1(u_input.b, var_0, func_1(var_1.x)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(92581u, var_2, var_2) << (vec3<u32>(u_input.b, 35016u, u_input.b) % vec3<u32>(32u)), select(vec3<u32>(u_input.b, 67033u, u_input.b), vec3<u32>(var_2, 1u, u_input.b), vec3<bool>(true, true, true))), -1026f, i32(-1i) * -15125i)), global3.x, abs(-(~51701i)), Struct_1(max(~_wgslsmith_mod_u32(var_2, var_2), var_2), _wgslsmith_f_op_f32(f32(-1f) * -2513f), var_1.x));
    let var_6 = Struct_3(vec4<u32>(_wgslsmith_mult_u32(4294967295u, firstLeadingBit(~0u)), 1u, countOneBits(~var_5.d.a), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 32458u), vec2<u32>(var_5.a.b.a, u_input.b))) ^ (var_2 & ~90230u)), u_input.a, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(min(47245u, var_6.a.x ^ var_2), _wgslsmith_dot_vec3_u32(var_6.a.xww, vec3<u32>(65174u, var_5.d.a, 0u))), var_5.d.a, _wgslsmith_div_u32(max(var_2, 1u), 60773u) << (0u % 32u), 8662u));
}

