struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<f32>(587f, 774f, -418f, -149f)), Struct_1(vec4<f32>(-596f, -2147f, -1620f, 1085f)), Struct_1(vec4<f32>(1008f, -1000f, -954f, 309f)), Struct_1(vec4<f32>(-1716f, 262f, -1595f, 576f)), Struct_1(vec4<f32>(1103f, 855f, -644f, -1711f)), Struct_1(vec4<f32>(-792f, 1635f, 1000f, 398f)), Struct_1(vec4<f32>(625f, -1059f, 450f, -286f)), Struct_1(vec4<f32>(752f, 449f, 208f, -324f)), Struct_1(vec4<f32>(994f, 276f, -743f, 1239f)), Struct_1(vec4<f32>(-744f, -670f, -178f, -158f)), Struct_1(vec4<f32>(862f, 424f, 2258f, 1373f)));

var<private> global1: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-243f, 1000f, -320f), vec3<f32>(-1546f, 649f, 235f), vec3<f32>(1152f, -1365f, -456f), vec3<f32>(258f, 3667f, -602f), vec3<f32>(-304f, 1011f, 737f), vec3<f32>(-1000f, 1000f, 1069f), vec3<f32>(207f, 121f, 1133f), vec3<f32>(1017f, -402f, 1101f), vec3<f32>(-492f, 978f, -887f), vec3<f32>(1105f, -352f, -393f), vec3<f32>(-1000f, 1067f, -589f), vec3<f32>(135f, -1479f, 160f));

var<private> global2: array<i32, 32> = array<i32, 32>(i32(-2147483648), 13204i, -7328i, 1i, -26712i, 1i, -57038i, 2147483647i, 2147483647i, 53809i, i32(-2147483648), -31335i, -8361i, -49344i, 21184i, 8724i, 2147483647i, i32(-2147483648), -14604i, -1i, 2147483647i, 2147483647i, 38446i, 64860i, i32(-2147483648), 11490i, 0i, 30279i, 5307i, i32(-2147483648), -3041i, 0i);

var<private> global3: array<vec3<i32>, 8>;

var<private> global4: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(-392i, 1i), vec2<i32>(-30445i, i32(-2147483648)), vec2<i32>(1i, 27817i), vec2<i32>(-22095i, 27666i), vec2<i32>(34530i, -38001i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -27822i), vec2<i32>(-55324i, -53584i), vec2<i32>(-1i, 14070i), vec2<i32>(0i, 20572i), vec2<i32>(1i, -22178i), vec2<i32>(2147483647i, -1i), vec2<i32>(41410i, 1i), vec2<i32>(6855i, 12422i), vec2<i32>(1i, 2147483647i), vec2<i32>(-9160i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, -28948i), vec2<i32>(-1i, 6198i), vec2<i32>(-789i, -1i), vec2<i32>(-1i, 17090i), vec2<i32>(-1i, 34093i), vec2<i32>(1i, -6916i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, 3889i), vec2<i32>(2147483647i, 0i), vec2<i32>(-23839i, 28920i), vec2<i32>(-27307i, 45330i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> i32 {
    var var_0 = vec4<bool>(false, any(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), arg_1 >= 0i)), select(any(vec3<bool>(true, any(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, true, true, true)))), -min(global2[_wgslsmith_index_u32(u_input.e, 32u)], 0i) <= ~_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(arg_0.c.b.a.a, 32u)], u_input.c, 6115i), vec3<i32>(-56482i, 280i, u_input.d.x)), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), _wgslsmith_mult_i32(arg_1, _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.zw) << (61903u % 32u)) != 2147483647i);
    return -u_input.a.x & global2[_wgslsmith_index_u32(4159u, 32u)];
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: vec4<i32>) -> u32 {
    global3 = array<vec3<i32>, 8>();
    let var_0 = countOneBits(_wgslsmith_mult_i32(_wgslsmith_div_i32(~(-global2[_wgslsmith_index_u32(27330u, 32u)]), _wgslsmith_dot_vec3_i32(arg_2.zwz, global3[_wgslsmith_index_u32(15277u, 8u)]) & _wgslsmith_div_i32(-1i, global2[_wgslsmith_index_u32(55758u, 32u)])), ~select(func_3(Struct_5(vec2<u32>(40825u, arg_1.e.x), u_input.e, Struct_4(arg_1.c.c, arg_1.d, arg_1.d.a, Struct_3(Struct_2(u_input.b, Struct_1(arg_1.b.a.b.a), 680f, Struct_1(arg_1.d.a.d.a), Struct_1(vec4<f32>(274f, -749f, arg_1.d.a.c, 1000f)))), arg_1.e)), arg_2.x), _wgslsmith_div_i32(0i, global2[_wgslsmith_index_u32(u_input.e, 32u)]), any(vec3<bool>(false, false, false)))));
    var var_1 = select(!(!(!(!vec4<bool>(arg_0, arg_0, false, false)))), select(select(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, true, false, arg_0)), vec4<bool>(true, false, !arg_0, !arg_0), vec4<bool>(true, true, all(vec2<bool>(true, arg_0)), select(false, arg_0, true))), select(vec4<bool>(true, false, true, arg_0), !select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(false, false, true, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0)), all(!vec4<bool>(arg_0, false, true, false))), vec4<bool>(_wgslsmith_f_op_f32(139f * arg_1.d.a.b.a.x) >= _wgslsmith_f_op_f32(max(arg_1.b.a.b.a.x, 2071f)), all(!vec3<bool>(arg_0, true, false)), true, arg_0)), !(!(!select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, true, arg_0, arg_0)))));
    let var_2 = ~firstLeadingBit(arg_1.e.x) | _wgslsmith_mod_u32(arg_1.b.a.a, ~13402u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 56858u, 1u), vec3<u32>(arg_1.b.a.a, u_input.e, arg_1.d.a.a)) % 32u));
    var var_3 = Struct_5(vec2<u32>(abs(abs(_wgslsmith_mod_u32(var_2, u_input.e))), ~arg_1.e.x), _wgslsmith_sub_u32(max(var_2, select(0u, 1u, true)), ~(~4294967295u)), Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a.d.a.x + arg_1.d.a.c) - _wgslsmith_f_op_f32(step(-2342f, -642f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1287f, 1000f) * _wgslsmith_f_op_f32(arg_1.b.a.c - arg_1.d.a.e.a.x)))), arg_1.d, arg_1.d.a, Struct_3(Struct_2(1u, Struct_1(vec4<f32>(-894f, arg_1.a, -553f, arg_1.a)), -1560f, arg_1.b.a.d, Struct_1(vec4<f32>(arg_1.c.d.a.x, -1636f, -620f, 2160f)))), vec2<u32>(8931u, _wgslsmith_div_u32(~0u, 19464u))));
    return ~1u;
}

fn func_1() -> Struct_4 {
    global4 = array<vec2<i32>, 28>();
    let var_0 = abs(firstLeadingBit(global3[_wgslsmith_index_u32(countOneBits(select(firstLeadingBit(4294967295u), ~4294967295u, true)), 8u)]));
    var var_1 = Struct_3(Struct_2(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~0u, func_2(false, Struct_4(-685f, Struct_3(Struct_2(u_input.e, Struct_1(vec4<f32>(944f, -1804f, 574f, -1588f)), -3307f, global0[_wgslsmith_index_u32(u_input.e, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)])), Struct_2(u_input.e, Struct_1(vec4<f32>(-256f, 1000f, 1000f, 1299f)), 703f, global0[_wgslsmith_index_u32(59259u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), Struct_3(Struct_2(u_input.b, Struct_1(vec4<f32>(233f, 516f, -1000f, 686f)), 295f, Struct_1(vec4<f32>(600f, -514f, 908f, 959f)), global0[_wgslsmith_index_u32(u_input.b, 11u)])), vec2<u32>(70955u, u_input.b)), u_input.d)), 1u), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-150f, -228f, -432f, 986f), vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_f32(abs(1f)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, u_input.e), 11u)], Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-442f, 2691f, 1000f, 1000f), vec4<f32>(-1000f, -1775f, -933f, 780f), false)) + _wgslsmith_div_vec4_f32(vec4<f32>(-577f, 661f, 419f, 357f), vec4<f32>(-1000f, -623f, -118f, -1808f))))));
    global0 = array<Struct_1, 11>();
    global2 = array<i32, 32>();
    return Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(175f, -356f), 2041f)))), Struct_3(Struct_2(_wgslsmith_mod_u32(var_1.a.a ^ 4294967295u, reverseBits(1u)), Struct_1(var_1.a.e.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2098f), _wgslsmith_f_op_f32(var_1.a.d.a.x * -284f)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.a.e.a.x, -199f, var_1.a.e.a.x))), global0[_wgslsmith_index_u32(var_1.a.a, 11u)])), Struct_2(abs(u_input.e), var_1.a.e, var_1.a.d.a.x, global0[_wgslsmith_index_u32(~var_1.a.a, 11u)], var_1.a.b), Struct_3(var_1.a), ~(select(vec2<u32>(u_input.b, 13581u), abs(vec2<u32>(var_1.a.a, 41915u)), vec2<bool>(false, true)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = func_1().b.a.e;
    let var_1 = vec4<bool>(all(select(select(!vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, arg_1.x, false), false), vec3<bool>(!arg_1.x, arg_1.x, all(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))), select(vec3<bool>(true, false, arg_1.x), select(vec3<bool>(true, arg_1.x, false), vec3<bool>(true, arg_1.x, false), vec3<bool>(arg_1.x, true, true)), !arg_1.x))), true, arg_1.x, any(vec4<bool>(false, (u_input.c ^ 2147483647i) > abs(global2[_wgslsmith_index_u32(86253u, 32u)]), true, true)));
    var var_2 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(reverseBits(u_input.d.x), func_3(Struct_5(vec2<u32>(u_input.e, u_input.e), arg_0.b, Struct_4(arg_0.c.d.a.b.a.x, arg_0.c.d, Struct_2(arg_0.a.x, global0[_wgslsmith_index_u32(810u, 11u)], var_0.a.x, global0[_wgslsmith_index_u32(arg_0.c.b.a.a, 11u)], var_0), arg_0.c.d, arg_0.a)), abs(-6046i)) ^ _wgslsmith_mult_i32(1i, -68265i)));
    let var_3 = arg_0.c.d.a;
    global2 = array<i32, 32>();
    return func_1().d.a.d;
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_add_i32(-2147483647i, -(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global2[_wgslsmith_index_u32(88004u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)]) << (vec3<u32>(u_input.e, u_input.e, 0u) % vec3<u32>(32u)), u_input.d.wwy & u_input.d.wzy) & _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, 32967i)), ~u_input.d.wy)));
    global4 = array<vec2<i32>, 28>();
    var var_1 = global2[_wgslsmith_index_u32(9726u, 32u)];
    var var_2 = arg_0;
    var_0 = ~abs(firstTrailingBit(u_input.a.x));
    return StorageBuffer(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(any(vec4<bool>(false, true, true, true)), false, true), !vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec2<bool>(true, true))), vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true, (_wgslsmith_sub_i32(600i, u_input.c) > ~(-1i)) & false));
    global2 = array<i32, 32>();
    global0 = array<Struct_1, 11>();
    global1 = array<vec3<f32>, 12>();
    global3 = array<vec3<i32>, 8>();
    let x = u_input.a;
    s_output = func_5(func_4(Struct_5(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, u_input.b), ~vec2<u32>(u_input.e, 16677u), ~vec2<u32>(36708u, 4294967295u)), _wgslsmith_sub_u32(42088u, u_input.b), func_1()), select(!vec2<bool>(var_0.x, var_0.x), var_0.zz, vec2<bool>(!var_0.x, true))));
}

