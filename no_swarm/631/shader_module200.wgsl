struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: vec4<u32>;

var<private> global2: vec2<i32> = vec2<i32>(9732i, 49556i);

var<private> global3: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_2(Struct_1(vec3<i32>(-2593i, 5935i, 2147483647i), 1u, -67570i, 2147483647i), vec2<u32>(36226u, 73254u), 41744u, vec3<bool>(true, true, false))), Struct_3(Struct_2(Struct_1(vec3<i32>(1i, 31498i, 1i), 27307u, -8631i, 7599i), vec2<u32>(0u, 23454u), 0u, vec3<bool>(false, true, false))), Struct_3(Struct_2(Struct_1(vec3<i32>(-1i, -38704i, 1i), 76327u, -16612i, -45289i), vec2<u32>(75535u, 1u), 53628u, vec3<bool>(true, false, true))), Struct_3(Struct_2(Struct_1(vec3<i32>(2034i, 13870i, -23969i), 4294967295u, 52884i, 37528i), vec2<u32>(1230u, 7244u), 0u, vec3<bool>(false, false, false))), Struct_3(Struct_2(Struct_1(vec3<i32>(2147483647i, -6219i, i32(-2147483648)), 1u, 6569i, 2147483647i), vec2<u32>(76294u, 59696u), 4294967295u, vec3<bool>(false, false, true))), Struct_3(Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, 1i), 0u, -10859i, -108i), vec2<u32>(44348u, 52619u), 12752u, vec3<bool>(false, false, true))), Struct_3(Struct_2(Struct_1(vec3<i32>(-57207i, 15177i, i32(-2147483648)), 0u, 74025i, 65473i), vec2<u32>(0u, 4294967295u), 1u, vec3<bool>(true, true, false))), Struct_3(Struct_2(Struct_1(vec3<i32>(-1i, -9019i, 8889i), 74252u, 0i, 2147483647i), vec2<u32>(52003u, 46588u), 4294967295u, vec3<bool>(true, false, false))), Struct_3(Struct_2(Struct_1(vec3<i32>(-36081i, 0i, 0i), 32352u, 7697i, 2147483647i), vec2<u32>(55738u, 33200u), 4294967295u, vec3<bool>(false, true, true))), Struct_3(Struct_2(Struct_1(vec3<i32>(49361i, -1i, 2147483647i), 4511u, 1i, 4971i), vec2<u32>(19106u, 89324u), 1u, vec3<bool>(true, false, true))), Struct_3(Struct_2(Struct_1(vec3<i32>(33213i, -10237i, -1i), 44940u, 1i, -38320i), vec2<u32>(10143u, 32694u), 0u, vec3<bool>(false, true, true))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: u32) -> bool {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(899f + -297f), -472f, all(vec2<bool>(arg_1.a.d.x, arg_1.a.d.x))))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1436f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1775f + -396f))), all(select(select(!vec3<bool>(false, arg_1.a.d.x, true), !arg_1.a.d, true), arg_1.a.d, arg_1.a.d)), !any(select(!vec4<bool>(true, true, arg_1.a.d.x, false), select(vec4<bool>(arg_1.a.d.x, false, arg_1.a.d.x, arg_1.a.d.x), vec4<bool>(arg_1.a.d.x, false, arg_1.a.d.x, true), true), select(vec4<bool>(false, arg_1.a.d.x, arg_1.a.d.x, arg_1.a.d.x), vec4<bool>(true, true, arg_1.a.d.x, arg_1.a.d.x), true))), select(false, any(!(!arg_1.a.d)), true));
    var var_1 = vec2<i32>(arg_1.a.a.a.x, -8337i);
    var var_2 = -980f;
    global0 = array<vec2<bool>, 4>();
    let var_3 = arg_1.a.a;
    return true | (~select(1u, countOneBits(var_3.b), arg_1.a.d.x && var_0.x) < abs(4294967295u));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, arg_0.b.x, arg_0.c.x));
    var var_1 = abs(arg_2);
    global0 = array<vec2<bool>, 4>();
    var var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), arg_0.c.x));
    var var_3 = vec2<bool>(true & func_3(arg_1.a, Struct_3(Struct_2(Struct_1(arg_1.a, u_input.b.x, -2147483647i, 0i), vec2<u32>(44132u, 4294967295u), u_input.b.x, vec3<bool>(false, true, true))), ~1u), any(vec2<bool>(true, true)));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = false;
    let var_1 = ~1u;
    var var_2 = arg_3.a.a;
    global2 = arg_3.a.a.a.yx;
    global1 = abs(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1, var_2.b, 4294967295u, var_1) | countOneBits(vec4<u32>(7364u, 4294967295u, arg_0, global1.x)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, u_input.b.x, 19377u, var_2.b), vec4<u32>(96482u, arg_3.a.a.b, var_2.b, 4294967295u))))));
    return arg_3.a;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(arg_3.a.a, ~firstTrailingBit(vec2<u32>(18155u, 21085u)) | _wgslsmith_mod_vec2_u32(global1.zx << (arg_3.a.b % vec2<u32>(32u)), vec2<u32>(1u, global1.x) | arg_3.a.b), _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_2, abs(44118u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3.a.a.b, 23791u), vec3<u32>(u_input.b.x, 13867u, arg_2))), global1.zyw), func_4(20095u, func_2(Struct_5(arg_3.a.a.c, vec4<f32>(-1518f, 391f, -558f, -1415f), vec2<f32>(-580f, 437f)), Struct_1(vec3<i32>(43609i, global2.x, 14382i), u_input.b.x, u_input.a, arg_1.x), arg_3.a.a.a), 0i, global3[_wgslsmith_index_u32(global1.x, 11u)]).d));
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    let var_1 = arg_1.xzx;
    let var_2 = 5804i;
    return func_4(~(abs(4294967295u | arg_3.a.a.b) ^ 4294967295u), Struct_5(var_1.x, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1884f)))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-152f - -366f), _wgslsmith_f_op_f32(644f - 211f)), _wgslsmith_f_op_f32(select(-895f, 1441f, !arg_3.a.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(634f, -1489f), vec2<f32>(509f, 1085f), global0[_wgslsmith_index_u32(global1.x, 4u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1357f, -221f))))), global2.x, Struct_3(Struct_2(var_0.a.a, ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 16670u), var_0.a.b), ~(~u_input.b.x), var_0.a.d))).a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_5(-16557i, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-658f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(352f, -1878f) - _wgslsmith_f_op_f32(695f - -647f)), -309f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-357f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f - 597f)))));
    let var_1 = reverseBits(vec4<i32>(-u_input.c, u_input.a ^ firstLeadingBit(19542i), var_0.a, ~2147483647i));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -402f));
    var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -113f));
    return func_5(vec4<u32>(countOneBits(34754u), arg_0.b, 4294967295u, 4294967295u), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(10538i, var_1.x, -3541i, -2147483647i), var_1), _wgslsmith_mult_i32(9602i, -var_0.a), _wgslsmith_dot_vec3_i32(var_1.yxy, vec3<i32>(arg_1.x, -2147483647i, -3085i)) & _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.a.zx, arg_1.zz), vec2<i32>(-2147483647i, -2147483647i)), -(-3758i >> (u_input.b.x % 32u))), ~(arg_0.b | ~arg_0.b) << (arg_0.b % 32u), Struct_3(func_4(global1.x, func_2(Struct_5(-2147483647i, vec4<f32>(var_0.c.x, var_2.a, var_2.a, 190f), var_0.b.xy), arg_0, vec3<i32>(-28634i, -13310i, 1i)), 27301i, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, arg_0.b >> (4294967295u % 32u)), 11u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(Struct_1(vec3<i32>(0i, ~(-42620i), ~global2.x), 40674u ^ (global1.x << (u_input.b.x % 32u)), abs(u_input.c), 2147483647i), vec3<i32>(-u_input.c, u_input.c, 11352i)), vec2<u32>(global1.x, 4294967295u), 1u, select(vec3<bool>(true, true, true), select(vec3<bool>(func_3(vec3<i32>(global2.x, u_input.c, 25112i), global3[_wgslsmith_index_u32(global1.x, 11u)], u_input.b.x), false, global1.x >= global1.x), vec3<bool>(true, false, true), true), all(select(vec2<bool>(false, false), global0[_wgslsmith_index_u32(global1.x, 4u)], true))));
    var var_1 = Struct_3(func_4(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 4294967295u) >> (firstTrailingBit(2377u) % 32u), 23763u), func_2(Struct_5(-global2.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1920f, 257f, -655f, -565f) + vec4<f32>(664f, -701f, -543f, -1025f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(734f, 1000f)))), Struct_1(var_0.a.a ^ var_0.a.a, abs(u_input.b.x), global2.x, var_0.a.c), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_0.a.c, global2.x), var_0.a.a), var_0.a.a)), -func_4(min(0u, global1.x), func_2(Struct_5(var_0.a.c, vec4<f32>(260f, 493f, 1535f, -121f), vec2<f32>(247f, -581f)), Struct_1(vec3<i32>(global2.x, u_input.a, -21555i), global1.x, 1i, global2.x), var_0.a.a), 8592i, global3[_wgslsmith_index_u32(u_input.b.x, 11u)]).a.a.x, Struct_3(Struct_2(func_5(vec4<u32>(15756u, global1.x, 28865u, 1u), vec4<i32>(var_0.a.d, -1i, -1i, u_input.c), 0u, Struct_3(Struct_2(var_0.a, var_0.b, 35496u, vec3<bool>(var_0.d.x, false, false)))), global1.wx, ~4294967295u, vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)))));
    var_1 = global3[_wgslsmith_index_u32(0u, 11u)];
    var_1 = global3[_wgslsmith_index_u32(0u, 11u)];
    let var_2 = var_1.a;
    let var_3 = global3[_wgslsmith_index_u32(1u, 11u)];
    let var_4 = -(_wgslsmith_mult_i32(1i, -func_5(vec4<u32>(31410u, 14045u, 0u, var_0.a.b), vec4<i32>(global2.x, -30131i, var_2.a.c, 24136i), var_2.b.x, global3[_wgslsmith_index_u32(34665u, 11u)]).a.x) & 10485i);
    let var_5 = vec4<bool>(func_4(var_3.a.b.x & var_2.a.b, Struct_5(~(-var_4), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(601f, 868f, -223f, -1146f))), func_2(func_2(Struct_5(u_input.a, vec4<f32>(-236f, 739f, -1323f, 467f), vec2<f32>(122f, -130f)), Struct_1(vec3<i32>(7386i, var_2.a.d, 27679i), var_2.c, var_3.a.a.a.x, var_1.a.a.d), var_2.a.a), Struct_1(var_0.a.a, 1u, u_input.c, -3551i), -var_0.a.a).c), func_1(func_1(var_0.a, abs(vec3<i32>(-2147483647i, -1i, var_2.a.a.x))), min(vec3<i32>(var_1.a.a.a.x, 1i, var_1.a.a.c), _wgslsmith_mult_vec3_i32(var_3.a.a.a, var_1.a.a.a))).d, global3[_wgslsmith_index_u32(44412u, 11u)]).d.x, true, select(global1.x < _wgslsmith_dot_vec2_u32(var_1.a.b, ~var_2.b), true, false), var_2.d.x);
    let var_6 = 1f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(743f))), _wgslsmith_f_op_f32(step(-709f, _wgslsmith_f_op_f32(max(-127f, 155f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1794f) + _wgslsmith_div_f32(-289f, 336f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(351f + -528f))), _wgslsmith_f_op_f32(543f * 1190f), _wgslsmith_f_op_f32(trunc(444f))), u_input.b);
}

