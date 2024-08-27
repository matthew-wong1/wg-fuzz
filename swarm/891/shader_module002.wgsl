struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(39740u, vec4<i32>(-25652i, -1i, 20683i, 76842i), vec3<u32>(1u, 44798u, 56390u), -975f, false), Struct_1(0u, vec4<i32>(1i, -16866i, 27408i, 0i), vec3<u32>(20012u, 70398u, 67151u), -1958f, true), Struct_1(0u, vec4<i32>(i32(-2147483648), -5091i, 1i, -28992i), vec3<u32>(1u, 8686u, 5067u), 1000f, true), Struct_1(4294967295u, vec4<i32>(-4785i, -20564i, 13187i, -41709i), vec3<u32>(17339u, 15294u, 1u), -1950f, true), Struct_1(4294967295u, vec4<i32>(1i, 1i, -1i, 2147483647i), vec3<u32>(48937u, 2320u, 24294u), -754f, true), Struct_1(82305u, vec4<i32>(-62726i, -49086i, -51787i, -1i), vec3<u32>(0u, 88096u, 56587u), -1142f, true), Struct_1(0u, vec4<i32>(0i, 1i, -17879i, -2346i), vec3<u32>(1u, 1u, 1u), 384f, false), Struct_1(60775u, vec4<i32>(-41275i, -17919i, 7247i, -86540i), vec3<u32>(40111u, 55745u, 0u), -1163f, false), Struct_1(4294967295u, vec4<i32>(-54955i, 63288i, 12995i, -47522i), vec3<u32>(1u, 1u, 26416u), 832f, false), Struct_1(23062u, vec4<i32>(-11481i, 0i, i32(-2147483648), 21406i), vec3<u32>(1u, 7554u, 2787u), -472f, false), Struct_1(4294967295u, vec4<i32>(20492i, i32(-2147483648), 4602i, 77866i), vec3<u32>(103751u, 15100u, 17080u), -424f, false), Struct_1(6058u, vec4<i32>(1i, 0i, -14479i, 1i), vec3<u32>(45396u, 1u, 4294967295u), -626f, false), Struct_1(1u, vec4<i32>(2147483647i, i32(-2147483648), -28434i, 2147483647i), vec3<u32>(5589u, 4294967295u, 47297u), -1196f, false), Struct_1(4294967295u, vec4<i32>(1i, 1i, 2147483647i, 12868i), vec3<u32>(0u, 23259u, 37314u), 612f, true), Struct_1(4294967295u, vec4<i32>(6412i, 20069i, 1769i, 1i), vec3<u32>(6342u, 1u, 0u), -1000f, true), Struct_1(4294967295u, vec4<i32>(1i, -1i, 26427i, -1i), vec3<u32>(0u, 1u, 1u), -195f, true), Struct_1(1u, vec4<i32>(-9691i, 0i, -42078i, -59685i), vec3<u32>(23344u, 1u, 22579u), 886f, false));

var<private> global1: array<vec4<bool>, 6>;

var<private> global2: array<bool, 3> = array<bool, 3>(false, false, true);

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    global3 = arg_1.c.xx;
    global0 = array<Struct_1, 17>();
    let var_0 = -1093f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f + _wgslsmith_f_op_f32(-arg_1.d))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(arg_0.a, arg_0.a, global1[_wgslsmith_index_u32(global3.x, 6u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(arg_0.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.x, 1200f, -237f, arg_1.d))))), arg_1.e)))));
    global2 = array<bool, 3>();
    return _wgslsmith_clamp_i32(~(-_wgslsmith_mod_i32(u_input.e.x, abs(arg_1.b.x))), 26275i, u_input.b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = abs(~_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(41826u, u_input.a, 89668u), arg_1.c), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, arg_1.c.x), vec3<u32>(1u, 0u, 0u))));
    let var_1 = -2147483647i;
    let var_2 = arg_2.d;
    let var_3 = 49653u;
    global2 = array<bool, 3>();
    return Struct_1(1u, vec4<i32>(((54635i << (arg_2.c.x % 32u)) & arg_2.b.x) & arg_2.b.x, arg_1.b.x, (arg_2.b.x & func_3(Struct_2(vec4<f32>(var_2, var_2, var_2, 271f)), Struct_1(80652u, vec4<i32>(-19211i, -1i, 12630i, var_1), vec3<u32>(arg_2.a, arg_0.c.x, arg_1.c.x), 494f, false))) >> (0u % 32u), func_3(Struct_2(vec4<f32>(var_2, 315f, 658f, -1119f)), arg_2)), _wgslsmith_add_vec3_u32(~arg_2.c, arg_1.c), arg_0.d, all(!select(select(vec3<bool>(false, true, true), vec3<bool>(arg_2.e, true, true), arg_2.e), select(vec3<bool>(true, true, false), vec3<bool>(arg_1.e, false, false), global2[_wgslsmith_index_u32(arg_2.a, 3u)]), select(vec3<bool>(arg_0.e, false, true), vec3<bool>(true, true, arg_0.e), true))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> vec4<i32> {
    let var_0 = -403f;
    let var_1 = func_2(global0[_wgslsmith_index_u32(arg_2, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(~0u, 17u)]);
    global1 = array<vec4<bool>, 6>();
    var var_2 = func_2(global0[_wgslsmith_index_u32(~u_input.d, 17u)], func_2(Struct_1(~_wgslsmith_mod_u32(0u, u_input.c), abs(~var_1.b), func_2(func_2(Struct_1(u_input.c, vec4<i32>(-1i, u_input.e.x, u_input.b, -8849i), vec3<u32>(4294967295u, 461u, u_input.d), 648f, false), global0[_wgslsmith_index_u32(arg_2, 17u)], var_1), var_1, Struct_1(global3.x, vec4<i32>(-2147483647i, 97652i, u_input.b, -1i), vec3<u32>(arg_2, 0u, var_1.a), var_0, global2[_wgslsmith_index_u32(63773u, 3u)])).c, _wgslsmith_f_op_f32(-arg_1.a.x), func_2(Struct_1(71223u, vec4<i32>(2147483647i, -1i, u_input.b, var_1.b.x), var_1.c, -1000f, var_1.e), var_1, func_2(var_1, global0[_wgslsmith_index_u32(0u, 17u)], Struct_1(u_input.c, var_1.b, vec3<u32>(arg_2, u_input.c, 0u), var_0, false))).e), var_1, Struct_1(_wgslsmith_mod_u32(39482u, ~arg_2), u_input.e, firstLeadingBit(~var_1.c), 103f, !arg_0 && false)), func_2(Struct_1(4294967295u, ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, -1i), var_1.b), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-450f, -1062f, false)) + arg_1.a.x), false), func_2(Struct_1(4294967295u, vec4<i32>(-1i, var_1.b.x, var_1.b.x, -2147483647i), vec3<u32>(arg_2, var_1.a, var_1.a), var_0, select(global2[_wgslsmith_index_u32(0u, 3u)], var_1.e, true)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(25226u, 29500u), vec2<u32>(957u, global3.x)), _wgslsmith_add_vec4_i32(var_1.b, u_input.e), vec3<u32>(44326u, 16051u, 1u) >> (vec3<u32>(u_input.d, u_input.c, 15438u) % vec3<u32>(32u)), arg_1.a.x, var_1.e), Struct_1(~62112u, ~vec4<i32>(u_input.e.x, var_1.b.x, u_input.b, -1i), reverseBits(vec3<u32>(36730u, 22294u, global3.x)), -407f, global2[_wgslsmith_index_u32(arg_2 ^ u_input.c, 3u)])), Struct_1(_wgslsmith_dot_vec2_u32(~var_1.c.xz, ~vec2<u32>(4294967295u, global3.x)), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x, u_input.e.x, 1i, var_1.b.x), vec4<i32>(-2147483647i, 1i, 26852i, 0i))), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, global3.x, 25095u), vec3<u32>(101804u, 4294967295u, 4294967295u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-338f - arg_1.a.x))), all(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(24741u, 3u)])))));
    let var_3 = arg_1;
    return ~vec4<i32>(9166i, firstLeadingBit(19118i), ~(~(-1i)) << (global3.x % 32u), firstTrailingBit(var_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = min(max(-abs(func_1(true, Struct_2(vec4<f32>(-1000f, -352f, 1577f, -404f)), u_input.c)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(15826i, u_input.b, 6502i, u_input.b), u_input.e), func_2(func_2(Struct_1(u_input.a, vec4<i32>(u_input.e.x, -20931i, 1i, -38257i), vec3<u32>(global3.x, global3.x, 0u), -1060f, global2[_wgslsmith_index_u32(u_input.a, 3u)]), Struct_1(u_input.d, vec4<i32>(u_input.e.x, 7786i, 5003i, 0i), vec3<u32>(4294967295u, 51181u, global3.x), -1000f, true), global0[_wgslsmith_index_u32(4294967295u, 17u)]), global0[_wgslsmith_index_u32(1u, 17u)], Struct_1(37545u, u_input.e, vec3<u32>(global3.x, global3.x, global3.x), 1364f, false)).b, select(~u_input.e, vec4<i32>(u_input.e.x, -2147483647i, -2887i, 1i), true))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.e, -vec4<i32>(0i, 14955i, 2147483647i, u_input.b)) & select(~vec4<i32>(u_input.b, u_input.e.x, -2147483647i, u_input.e.x), select(u_input.e, u_input.e, global2[_wgslsmith_index_u32(4294967295u, 3u)]), all(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 3u)]))), firstTrailingBit(-u_input.e) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, global3.x, u_input.d, global3.x), vec4<u32>(13307u, u_input.d, 1u, 54521u), vec4<u32>(u_input.d, u_input.c, 1u, 10732u)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(164f, _wgslsmith_f_op_f32(abs(1f))), 1934f, func_2(global0[_wgslsmith_index_u32(max(global3.x << (87692u % 32u), 4294967295u), 17u)], Struct_1(u_input.a << (4294967295u % 32u), vec4<i32>(-45418i, u_input.b, 1i, 15638i), vec3<u32>(u_input.c, 59745u, global3.x), 1000f, !global2[_wgslsmith_index_u32(49310u, 3u)]), func_2(global0[_wgslsmith_index_u32(u_input.a, 17u)], Struct_1(global3.x, vec4<i32>(var_1.x, u_input.e.x, 10687i, u_input.b), vec3<u32>(51243u, 1u, 0u), -2251f, global2[_wgslsmith_index_u32(52009u, 3u)]), global0[_wgslsmith_index_u32(~global3.x, 17u)])).e))));
    global0 = array<Struct_1, 17>();
    let var_3 = 580u;
    global3 = abs(~abs(~_wgslsmith_add_vec2_u32(vec2<u32>(4779u, 1u), vec2<u32>(var_3, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(933f, -1303f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-330f, -2046f) - vec2<f32>(-1000f, -2495f))))));
}

