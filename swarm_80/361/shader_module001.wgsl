struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<i32>(-16003i, -35626i, -1i), vec2<u32>(4294967295u, 1u), vec3<i32>(-42742i, 0i, -37136i), 1u), Struct_1(vec3<i32>(12220i, -20376i, 2147483647i), vec2<u32>(25051u, 95180u), vec3<i32>(28753i, 74152i, -34521i), 1u), Struct_1(vec3<i32>(-77276i, i32(-2147483648), 0i), vec2<u32>(4294967295u, 0u), vec3<i32>(-22457i, -1i, 2147483647i), 4294967295u), Struct_1(vec3<i32>(-33288i, i32(-2147483648), 1i), vec2<u32>(2409u, 0u), vec3<i32>(43539i, 14933i, -33812i), 4294967295u), Struct_1(vec3<i32>(-26636i, -1i, 9233i), vec2<u32>(54944u, 0u), vec3<i32>(i32(-2147483648), -57452i, 2147483647i), 10266u), Struct_1(vec3<i32>(-1i, -44517i, 28325i), vec2<u32>(37536u, 97002u), vec3<i32>(-5828i, -2989i, -1i), 4294967295u), Struct_1(vec3<i32>(-21582i, -4529i, 1i), vec2<u32>(19537u, 1558u), vec3<i32>(-39933i, 16391i, -3114i), 0u), Struct_1(vec3<i32>(2147483647i, 1i, -1i), vec2<u32>(4294967295u, 68907u), vec3<i32>(-1i, -1i, 12764i), 4294967295u), Struct_1(vec3<i32>(0i, -10271i, 2147483647i), vec2<u32>(4294967295u, 4294967295u), vec3<i32>(i32(-2147483648), -33940i, 9782i), 57951u), Struct_1(vec3<i32>(-1i, i32(-2147483648), -1i), vec2<u32>(1u, 53630u), vec3<i32>(i32(-2147483648), 28453i, -193i), 4294967295u), Struct_1(vec3<i32>(2147483647i, 0i, 0i), vec2<u32>(4898u, 0u), vec3<i32>(0i, -1i, -49869i), 0u), Struct_1(vec3<i32>(2147483647i, 6676i, 2147483647i), vec2<u32>(27694u, 0u), vec3<i32>(0i, 0i, 35188i), 8532u), Struct_1(vec3<i32>(24844i, 27154i, 0i), vec2<u32>(1u, 42046u), vec3<i32>(-1i, 1i, -13645i), 1u), Struct_1(vec3<i32>(54428i, 16356i, i32(-2147483648)), vec2<u32>(79035u, 0u), vec3<i32>(19083i, -32276i, i32(-2147483648)), 72437u), Struct_1(vec3<i32>(1i, 1i, 2147483647i), vec2<u32>(55091u, 0u), vec3<i32>(-6708i, -1i, i32(-2147483648)), 54337u), Struct_1(vec3<i32>(11917i, -61043i, -14969i), vec2<u32>(4294967295u, 0u), vec3<i32>(-5800i, -12550i, 86444i), 1u), Struct_1(vec3<i32>(-14538i, -57198i, 20779i), vec2<u32>(1u, 0u), vec3<i32>(34175i, 36478i, -20008i), 1u), Struct_1(vec3<i32>(0i, 13564i, 53340i), vec2<u32>(54358u, 0u), vec3<i32>(0i, -1i, 1i), 1u));

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(2147483647i, -1i), vec2<i32>(1i, -13297i), vec2<i32>(32701i, 456i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-25800i, 2147483647i), vec2<i32>(35637i, -1i), vec2<i32>(0i, -1i), vec2<i32>(16967i, 16806i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 3662i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, 3148i), vec2<i32>(-1i, -72746i), vec2<i32>(i32(-2147483648), -3625i), vec2<i32>(-1i, -1964i), vec2<i32>(24437i, -37246i), vec2<i32>(-32096i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, -3683i), vec2<i32>(36281i, 34056i), vec2<i32>(-12471i, -55798i), vec2<i32>(28268i, -41281i), vec2<i32>(-4775i, -34824i), vec2<i32>(-1i, 1i), vec2<i32>(3179i, -1i), vec2<i32>(-6143i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(22825i, -38614i), vec2<i32>(-1i, -50686i));

var<private> global2: Struct_2;

var<private> global3: vec4<u32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32(global2.a.b.x, 18u)];
    global0 = array<Struct_1, 18>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2215f * -715f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1565f + -410f)))));
    global1 = array<vec2<i32>, 30>();
    let var_2 = global2.a;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(152f, 2161f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2373f, 788f)))) * vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(-549f, var_1.x, all(vec2<bool>(false, true)))))));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(global2.a.a, _wgslsmith_mod_vec2_u32(vec2<u32>(global2.a.b.x, firstLeadingBit(global3.x)), _wgslsmith_add_vec2_u32(global2.a.b >> (vec2<u32>(global3.x, 21183u) % vec2<u32>(32u)), global3.ww)), vec3<i32>(u_input.a | u_input.a, countOneBits(global2.a.c.x), -66442i) | ~vec3<i32>(global2.a.c.x, u_input.a, u_input.a), global3.x));
    let var_1 = _wgslsmith_dot_vec2_i32(global2.a.c.yx, ~(~max(_wgslsmith_mod_vec2_i32(var_0.a.c.xz, vec2<i32>(global2.a.a.x, u_input.a)), vec2<i32>(u_input.a, var_0.a.a.x))));
    var var_2 = !select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false), !(global3.x < 1u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)));
    var var_3 = select(!select(!var_2.zy, select(!vec2<bool>(var_2.x, var_2.x), select(var_2.yy, var_2.yw, var_2.yy), any(vec4<bool>(var_2.x, var_2.x, true, false))), !var_2.x && var_2.x), vec2<bool>(var_2.x, false), all(!select(!vec4<bool>(true, var_2.x, true, var_2.x), !vec4<bool>(var_2.x, var_2.x, true, var_2.x), true)));
    let var_4 = var_0.a.b.x;
    return var_2.xw;
}

fn func_1() -> vec2<bool> {
    global2 = Struct_2(global0[_wgslsmith_index_u32(global3.x, 18u)]);
    var var_0 = ~(~global2.a.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-374f, 623f), vec2<f32>(604f, -2038f))) - _wgslsmith_f_op_vec2_f32(func_2(global2.a.c))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2351f, -1599f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1940f, 1084f) * vec2<f32>(2417f, -1662f))))));
    global1 = array<vec2<i32>, 30>();
    var var_2 = Struct_2(Struct_1(global2.a.c, vec2<u32>(global2.a.b.x, 1u), global2.a.a, global2.a.d));
    return select(!select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(func_3(), vec2<bool>(true, true), true), all(vec3<bool>(true, true, true))), vec2<bool>(true, true), any(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    global0 = array<Struct_1, 18>();
    global2 = Struct_2(Struct_1(select(~(-vec3<i32>(global2.a.c.x, arg_0, -2147483647i)), vec3<i32>(24439i, arg_0, 32421i) | global2.a.a, vec3<bool>(arg_2.x, true, true)), ~(vec2<u32>(global3.x, 7177u) & vec2<u32>(global3.x, 1u)), -(_wgslsmith_sub_vec3_i32(global2.a.c, global2.a.a) | _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, -1i, 5080i), vec3<i32>(-12851i, 23796i, arg_1))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 0u, global3.x, 9284u)) & max(vec4<u32>(0u, global2.a.d, global3.x, 3290u), vec4<u32>(global2.a.b.x, 1u, 4294967295u, 19857u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(42119u, global3.x, 0u), global3.wwz), 7549u, reverseBits(global2.a.b.x), ~127375u))));
    global1 = array<vec2<i32>, 30>();
    global2 = Struct_2(Struct_1(global2.a.c, vec2<u32>(global2.a.d, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.a.d, global3.x, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(15368u, 4294967295u, global2.a.d, global3.x), vec4<u32>(46893u, 4294967295u, 4294967295u, 18568u), vec4<u32>(44385u, 8682u, 4294967295u, global3.x)))), ~firstTrailingBit(global2.a.c), global3.x));
    var var_0 = Struct_1(~min(global2.a.c, vec3<i32>(u_input.a, countOneBits(arg_1), ~(-36295i))), ~vec2<u32>(~_wgslsmith_sub_u32(global3.x, global3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.a.b.x, global2.a.b.x), max(vec3<u32>(9414u, 4294967295u, global2.a.d), vec3<u32>(1u, global3.x, 18125u)))), _wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(min(vec3<i32>(arg_0, u_input.a, arg_1), vec3<i32>(-2147483647i, 2147483647i, 1i)), ~global2.a.c), min(select(_wgslsmith_clamp_vec3_i32(global2.a.c, vec3<i32>(arg_1, u_input.a, arg_0), global2.a.a), global2.a.a, !arg_2.x), abs(vec3<i32>(arg_1, u_input.a, 1i) ^ vec3<i32>(global2.a.a.x, -35320i, u_input.a)))), ~(~(global2.a.d | (750u >> (global2.a.b.x % 32u)))));
    return Struct_2(global0[_wgslsmith_index_u32(global3.x, 18u)]);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> u32 {
    var var_0 = arg_1;
    let var_1 = !select(!func_1(), vec2<bool>(arg_3, false), select(select(!vec2<bool>(false, arg_3), select(vec2<bool>(arg_3, false), vec2<bool>(true, true), false), vec2<bool>(false, false)), !vec2<bool>(arg_3, true), select(func_1(), func_1(), vec2<bool>(false, true))));
    global2 = arg_2;
    var var_2 = func_4(select(arg_2.a.c.x, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_0.c.x, 22255i, var_0.a.a.x), u_input.a)), false), countOneBits(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.a.c.x, 2147483647i, arg_1.a.a.x), vec4<i32>(-4167i, arg_2.a.a.x, u_input.a, arg_0.c.x))) >> (min(arg_1.a.b.x, ~var_0.a.b.x) % 32u)), !vec2<bool>(true, _wgslsmith_mult_i32(0i, 2147483647i) != min(var_0.a.c.x, -293i))).a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1942f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2157f + 2284f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2323f, 529f))))));
    return ~(reverseBits(var_0.a.d) & 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a.a;
    let var_1 = ~global3.wwy;
    let var_2 = _wgslsmith_div_f32(-125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1836f)))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1026f)))))));
    var var_3 = global0[_wgslsmith_index_u32(func_5(Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(global2.a.c, select(global2.a.c, global2.a.c, true)), ~(-vec3<i32>(68640i, global2.a.c.x, u_input.a))), ~vec2<u32>(0u >> (var_1.x % 32u), ~global3.x), vec3<i32>(_wgslsmith_clamp_i32(var_0.x, var_0.x, -6754i), var_0.x, _wgslsmith_div_i32(50156i, _wgslsmith_div_i32(1i, u_input.a))), abs(1u)), Struct_2(global0[_wgslsmith_index_u32(var_1.x, 18u)]), func_4(global2.a.c.x, -_wgslsmith_dot_vec2_i32(var_0.yy, ~vec2<i32>(global2.a.a.x, 29167i)), func_1()), true), 18u)];
    var var_4 = func_4(u_input.a, -32110i, select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), func_1()), vec2<bool>(true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(min(-1i, -1i));
}

