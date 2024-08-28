struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec2<i32>(0i, 28010i), Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec4<i32>(-42434i, 2147483647i, 15641i, -1i)), -372f), vec4<i32>(0i, 615i, -1i, i32(-2147483648)), vec4<bool>(false, false, true, true), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec4<i32>(7146i, i32(-2147483648), 26536i, -4801i)), 1055f)), Struct_3(vec2<i32>(i32(-2147483648), -324i), Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec4<i32>(-23604i, -10003i, 2147483647i, i32(-2147483648))), -301f), vec4<i32>(65501i, i32(-2147483648), -8978i, -1i), vec4<bool>(true, true, true, true), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec4<i32>(76052i, 0i, i32(-2147483648), i32(-2147483648))), -1429f)), Struct_3(vec2<i32>(-7469i, 1i), Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec4<i32>(29150i, 1i, 1i, -52912i)), 878f), vec4<i32>(2147483647i, -12373i, -4172i, -22894i), vec4<bool>(false, true, true, true), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec4<i32>(-19464i, 10262i, -1i, 0i)), -1398f)), Struct_3(vec2<i32>(1i, -26790i), Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec4<i32>(-6520i, -3489i, 0i, i32(-2147483648))), -432f), vec4<i32>(i32(-2147483648), 21462i, 13549i, -27967i), vec4<bool>(false, true, true, false), Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec4<i32>(52716i, -2036i, -10653i, 30450i)), -374f)), Struct_3(vec2<i32>(0i, 45107i), Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec4<i32>(-1i, -15604i, -8815i, -4791i)), -202f), vec4<i32>(-16031i, 2147483647i, -61886i, 2147483647i), vec4<bool>(false, true, false, true), Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec4<i32>(24019i, -1i, 17339i, -1i)), -1000f)), Struct_3(vec2<i32>(i32(-2147483648), -1i), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec4<i32>(2147483647i, 30237i, i32(-2147483648), 21097i)), -929f), vec4<i32>(0i, 65280i, 25300i, -7532i), vec4<bool>(false, false, true, false), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec4<i32>(-20007i, 33762i, 47748i, 0i)), -1674f)), Struct_3(vec2<i32>(0i, 1i), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec4<i32>(3906i, -25040i, 15047i, -11589i)), 1883f), vec4<i32>(-15985i, 1i, 0i, 2147483647i), vec4<bool>(true, false, true, true), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -21113i)), 233f)));

var<private> global1: array<vec4<i32>, 9>;

var<private> global2: array<vec2<bool>, 16>;

var<private> global3: Struct_2 = Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec4<i32>(-25925i, 16311i, -22877i, 25397i)), 1883f);

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = 1u;
    global0 = array<Struct_3, 7>();
    let var_1 = Struct_4(~_wgslsmith_clamp_i32(1i, global3.b.a.x, max(global3.b.a.x, ~15061i)), arg_1.a.b, 1i);
    var_0 = 1u;
    global3 = Struct_2(!select(global3.a, arg_1.a.b.a, false), global3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(arg_1.a.e.c * 1029f)));
    return arg_1.a.b;
}

fn func_3(arg_0: Struct_5) -> i32 {
    global0 = array<Struct_3, 7>();
    let var_0 = ~u_input.a.x;
    let var_1 = Struct_4(1i << (var_0 % 32u), Struct_2(vec4<bool>(global3.a.x, true, !global3.a.x, (global3.c < global3.c) & false), func_2(vec4<f32>(_wgslsmith_f_op_f32(global3.c - -283f), 694f, -313f, -623f), arg_0, Struct_1(_wgslsmith_div_vec4_i32(global3.b.a, vec4<i32>(global3.b.a.x, arg_0.a.e.b.a.x, 32221i, arg_0.a.b.b.a.x))), -34177i ^ ~arg_0.a.b.b.a.x).b, 1269f), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-15660i, -5930i), countOneBits(vec2<i32>(-1i, 11624i))), -1i));
    var var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 7u)];
    let var_3 = 908f;
    return i32(-1i) * -(i32(-1i) * -55697i);
}

fn func_1() -> vec4<bool> {
    let var_0 = -func_3(Struct_5(Struct_3(vec2<i32>(global3.b.a.x, global3.b.a.x), func_2(vec4<f32>(-561f, -707f, 1000f, global3.c), Struct_5(global0[_wgslsmith_index_u32(1u, 7u)]), global3.b, global3.b.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(45635i, global3.b.a.x, global3.b.a.x, global3.b.a.x), vec4<i32>(global3.b.a.x, global3.b.a.x, 2147483647i, 63702i)), select(vec4<bool>(false, global3.a.x, global3.a.x, global3.a.x), global3.a, global3.a), func_2(vec4<f32>(357f, -437f, global3.c, global3.c), Struct_5(Struct_3(global3.b.a.ww, Struct_2(global3.a, global3.b, global3.c), global1[_wgslsmith_index_u32(4294967295u, 9u)], global3.a, Struct_2(vec4<bool>(global3.a.x, global3.a.x, false, global3.a.x), global3.b, -142f))), Struct_1(vec4<i32>(-43742i, -2147483647i, 0i, global3.b.a.x)), 2147483647i))));
    let var_1 = Struct_3(global3.b.a.zw, func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.c, global3.c, global3.c, global3.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, -615f, global3.c, global3.c)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -489f, global3.c, global3.c), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-181f, global3.c, -1644f, 1411f), vec4<f32>(global3.c, global3.c, -817f, global3.c))), vec4<bool>(false, global3.a.x, global3.a.x, global3.a.x)))), Struct_5(Struct_3(countOneBits(vec2<i32>(global3.b.a.x, -27440i)), func_2(vec4<f32>(1000f, global3.c, global3.c, global3.c), Struct_5(global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), global3.b, -2147483647i), vec4<i32>(-1i, var_0, var_0, -72662i), !global3.a, Struct_2(vec4<bool>(global3.a.x, false, global3.a.x, global3.a.x), global3.b, global3.c))), func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.c, 154f, -540f, global3.c), vec4<f32>(1190f, global3.c, global3.c, -335f), global3.a)))), Struct_5(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 7u)]), Struct_1(_wgslsmith_add_vec4_i32(global3.b.a, vec4<i32>(33497i, global3.b.a.x, 0i, var_0))), var_0).b, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 81769i, global3.b.a.x, global3.b.a.x) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(global3.b.a.x, var_0, 15191i, var_0) | global3.b.a), _wgslsmith_clamp_vec4_i32(global3.b.a << (vec4<u32>(u_input.c.x, 1u, 87128u, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(var_0, global3.b.a.x, 26067i, global3.b.a.x), vec4<i32>(var_0, global3.b.a.x, 22448i, -20410i)))), vec4<i32>(_wgslsmith_mult_i32(23321i, -18201i), -13881i, global3.b.a.x, _wgslsmith_mod_i32(firstTrailingBit(~var_0), 1i)), select(select(!(!global3.a), select(!vec4<bool>(global3.a.x, global3.a.x, true, global3.a.x), global3.a, select(global3.a, vec4<bool>(global3.a.x, global3.a.x, false, global3.a.x), global3.a)), global3.a.x), global3.a, true), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.c, 552f, 269f, 1000f), vec4<f32>(-1498f, global3.c, global3.c, global3.c), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3.c, global3.c, global3.c))), Struct_5(Struct_3(vec2<i32>(global3.b.a.x, global3.b.a.x), Struct_2(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, false), Struct_1(global3.b.a), global3.c), vec4<i32>(var_0, 2651i, -1i, var_0), vec4<bool>(global3.a.x, true, global3.a.x, global3.a.x), func_2(vec4<f32>(-298f, -653f, -396f, global3.c), Struct_5(global0[_wgslsmith_index_u32(0u, 7u)]), global3.b, var_0))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.c, 293f, -1273f, global3.c))) + _wgslsmith_div_vec4_f32(vec4<f32>(-771f, -309f, global3.c, global3.c), vec4<f32>(-1594f, global3.c, -1094f, global3.c))), Struct_5(global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), global3.b, _wgslsmith_dot_vec3_i32(-global3.b.a.xyx, countOneBits(vec3<i32>(-32031i, -1i, 0i)))).b, _wgslsmith_clamp_i32(func_3(Struct_5(Struct_3(global3.b.a.xy, Struct_2(global3.a, Struct_1(vec4<i32>(-39011i, -2584i, 25160i, 1i)), global3.c), vec4<i32>(global3.b.a.x, var_0, var_0, global3.b.a.x), global3.a, Struct_2(global3.a, Struct_1(vec4<i32>(-11776i, var_0, global3.b.a.x, var_0)), global3.c)))), -_wgslsmith_dot_vec4_i32(global3.b.a, global1[_wgslsmith_index_u32(58591u, 9u)]), _wgslsmith_div_i32(-37222i, -26751i & global3.b.a.x))));
    var var_2 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.a.x, ~var_0, 0i), _wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(1u, 9u)], vec4<i32>(29324i, 1i, _wgslsmith_mod_i32(global3.b.a.x, -30873i), 2147483647i))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.e.c), global3.c, global3.c, _wgslsmith_f_op_f32(round(-857f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(681f, -1679f, global3.c, global3.c)))))), Struct_5(global0[_wgslsmith_index_u32(24156u, 7u)]), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.x, var_0, var_0, global3.b.a.x), abs(global1[_wgslsmith_index_u32(u_input.c.x, 9u)]))), var_0), global3.b.a.x);
    global1 = array<vec4<i32>, 9>();
    let var_3 = _wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(~u_input.b >> (vec4<u32>(4294967295u, 37793u, u_input.c.x, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, 1u, 11141u, u_input.a.x)))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 34919u, 0u, u_input.c.x), ~select(abs(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 20417u)), u_input.b, !var_1.b.a)));
    return !select(global3.a, select(global3.a, vec4<bool>(!var_1.e.a.x, all(var_2.b.a.xx), true, !var_1.b.a.x), vec4<bool>(true, true, false, global3.c < var_1.b.c)), select(select(!var_1.b.a, global3.a, global3.a.x), var_1.d, all(vec3<bool>(var_2.b.a.x, false, false)) & all(vec4<bool>(var_2.b.a.x, false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global3.c);
    var var_1 = Struct_2(select(func_1(), !select(func_2(vec4<f32>(global3.c, -1360f, -1936f, global3.c), Struct_5(global0[_wgslsmith_index_u32(1u, 7u)]), global3.b, 35852i).a, !global3.a, !global3.a), global3.a), Struct_1(global3.b.a | _wgslsmith_mod_vec4_i32(~global3.b.a, global1[_wgslsmith_index_u32(u_input.c.x, 9u)] << (u_input.b % vec4<u32>(32u)))), -1740f);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1534f, -339f, var_1.c, var_1.c) * vec4<f32>(global3.c, global3.c, -900f, 2398f))) - vec4<f32>(_wgslsmith_f_op_f32(-global3.c), 1787f, var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1258f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1632f, global3.c, _wgslsmith_f_op_f32(sign(768f)), _wgslsmith_f_op_f32(-global3.c))))))));
    let var_3 = global0[_wgslsmith_index_u32(~(reverseBits(countOneBits(1u)) ^ (~_wgslsmith_div_u32(103815u, u_input.c.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 106547u), select(u_input.c, vec3<u32>(1u, u_input.a.x, u_input.b.x), false)))), 7u)];
    var var_4 = ~(-var_1.b.a.x);
    let var_5 = vec2<i32>(-2147483647i, 0i);
    var var_6 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(22860u, 9u)]);
}

