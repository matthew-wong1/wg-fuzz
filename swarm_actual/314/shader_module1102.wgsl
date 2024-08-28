struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true));

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec2<i32>(-1i, 20882i), vec4<u32>(37414u, 13975u, 4966u, 4294967295u)), Struct_2(vec2<i32>(-18326i, -2929i), vec4<u32>(2308u, 22561u, 1u, 1u)), Struct_2(vec2<i32>(0i, 2147483647i), vec4<u32>(56206u, 23189u, 0u, 4294967295u)), Struct_2(vec2<i32>(-79906i, 8653i), vec4<u32>(108250u, 0u, 50918u, 8320u)), Struct_2(vec2<i32>(1i, 74175i), vec4<u32>(0u, 0u, 1u, 48407u)), Struct_2(vec2<i32>(-4524i, -1i), vec4<u32>(65296u, 4294967295u, 0u, 93074u)), Struct_2(vec2<i32>(i32(-2147483648), 16082i), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(1u, 4294967295u, 0u, 0u)), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), vec4<u32>(25871u, 4294967295u, 0u, 1u)), Struct_2(vec2<i32>(1i, 1i), vec4<u32>(1u, 64374u, 4294967295u, 32656u)), Struct_2(vec2<i32>(-11723i, 2147483647i), vec4<u32>(76571u, 0u, 59337u, 4294967295u)), Struct_2(vec2<i32>(28054i, -15997i), vec4<u32>(115638u, 0u, 4294967295u, 81011u)), Struct_2(vec2<i32>(-34737i, 56840i), vec4<u32>(4294967295u, 27257u, 55473u, 15499u)), Struct_2(vec2<i32>(0i, 1i), vec4<u32>(21643u, 0u, 4294967295u, 26400u)), Struct_2(vec2<i32>(1i, 27301i), vec4<u32>(4294967295u, 90275u, 1u, 16588u)), Struct_2(vec2<i32>(i32(-2147483648), 9415i), vec4<u32>(16863u, 13139u, 78102u, 1u)), Struct_2(vec2<i32>(24731i, 2147483647i), vec4<u32>(22103u, 4294967295u, 0u, 88214u)), Struct_2(vec2<i32>(2147483647i, -1i), vec4<u32>(4069u, 23834u, 17597u, 4294967295u)), Struct_2(vec2<i32>(-698i, -11288i), vec4<u32>(1u, 59815u, 415u, 4294967295u)), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), vec4<u32>(24015u, 4294967295u, 0u, 24209u)), Struct_2(vec2<i32>(-10676i, 0i), vec4<u32>(0u, 4294967295u, 1u, 1589u)), Struct_2(vec2<i32>(0i, 1i), vec4<u32>(0u, 0u, 1u, 0u)), Struct_2(vec2<i32>(-1i, -19304i), vec4<u32>(10668u, 0u, 31030u, 52070u)), Struct_2(vec2<i32>(76178i, 2147483647i), vec4<u32>(73037u, 0u, 4294967295u, 0u)), Struct_2(vec2<i32>(2147483647i, -1i), vec4<u32>(11771u, 4294967295u, 4294967295u, 38233u)), Struct_2(vec2<i32>(-54793i, -7928i), vec4<u32>(1u, 14199u, 4294967295u, 29515u)), Struct_2(vec2<i32>(-26616i, 1i), vec4<u32>(47419u, 37800u, 50098u, 67667u)), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(11062u, 0u, 0u, 4294967295u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    global0 = global1.x;
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -602f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), vec2<f32>(1356f, global1.x), all(vec2<bool>(false, true))))))));
    global2 = array<vec4<bool>, 4>();
    global2 = array<vec4<bool>, 4>();
    global2 = array<vec4<bool>, 4>();
    return global3[_wgslsmith_index_u32(u_input.a, 28u)];
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global2 = array<vec4<bool>, 4>();
    var var_0 = true;
    let var_1 = 1i;
    let var_2 = Struct_1(!vec2<bool>(true, any(vec3<bool>(true, false, false))), true);
    var var_3 = ~59254u;
    return arg_1.b.x;
}

fn func_1(arg_0: u32) -> Struct_2 {
    global2 = array<vec4<bool>, 4>();
    var var_0 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~max(1u, u_input.a), 4294967295u, func_3(func_2(), Struct_2(vec2<i32>(2147483647i, u_input.c), vec4<u32>(u_input.a, 4294967295u, 1u, 0u)))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_0, arg_0), abs(vec3<u32>(arg_0, u_input.a, u_input.a))))), 28u)];
    global1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1376f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -953f) - _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1150f, global1.x), -1012f), vec2<f32>(-320f, 513f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(887f, 487f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1436f, -2175f, -829f, 967f), vec4<f32>(global1.x, -281f, global1.x, 974f), vec4<bool>(false, true, true, false)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, -1000f, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-704f, global1.x, global1.x, 773f))))), vec4<f32>(_wgslsmith_f_op_f32(select(-470f, 247f, any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(min(-901f, _wgslsmith_f_op_f32(global1.x + global1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.x, -275f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1726f - 110f))), true)));
    var var_2 = abs(vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(1u, arg_0)), _wgslsmith_sub_u32(~1u, ~u_input.a & _wgslsmith_sub_u32(16793u, arg_0)), firstLeadingBit(firstTrailingBit(_wgslsmith_mod_u32(0u, 43122u)))));
    return func_2();
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = !arg_0;
    let var_1 = min(arg_1.b.yy, arg_1.b.yw);
    var var_2 = arg_0.x;
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(667f * 1690f) * 1f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-855f, global1.x), vec2<f32>(387f, global1.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2310f, global1.x) - vec2<f32>(global1.x, global1.x))), vec2<f32>(_wgslsmith_f_op_f32(select(global1.x, -1076f, arg_0.x)), 234f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(726f, global1.x) + vec2<f32>(-987f, global1.x)))))));
    var var_3 = _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1896f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 505f)))))));
    return countOneBits(vec2<i32>(-61105i, -firstTrailingBit(_wgslsmith_clamp_i32(u_input.b, 26134i, u_input.e.x))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(-reverseBits(arg_1.a) << (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(func_1(arg_1.b.x).b.xx, ~arg_3.b.zw), abs(vec2<u32>(28106u, 4294967295u) & arg_1.b.yy)) % vec2<u32>(32u)), _wgslsmith_sub_vec4_u32(~(arg_3.b & _wgslsmith_div_vec4_u32(arg_1.b, vec4<u32>(4294967295u, 30699u, arg_1.b.x, 0u))), vec4<u32>(1u, func_3(arg_1, Struct_2(vec2<i32>(-17371i, -28954i), vec4<u32>(arg_1.b.x, 13784u, u_input.a, 3661u))), arg_3.b.x, 23882u)));
    var var_1 = Struct_1(arg_0.yx, false);
    var var_2 = Struct_1(select(!(!select(arg_0.yx, vec2<bool>(arg_0.x, var_1.a.x), arg_0.zy)), select(vec2<bool>(false, arg_0.x), var_1.a, select(arg_0.xy, select(vec2<bool>(var_1.b, true), vec2<bool>(arg_0.x, var_1.b), true), true)), false), true);
    global3 = array<Struct_2, 28>();
    var var_3 = false;
    return Struct_1(arg_0.yx, arg_0.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = func_5(vec3<bool>(!(reverseBits(arg_2.x) <= (arg_2.x & 22343u)), arg_1.b, !arg_0.b), global3[_wgslsmith_index_u32(arg_2.x, 28u)], ~_wgslsmith_add_i32(-1i, ~12954i), func_1(~select(1u, ~u_input.a, any(vec3<bool>(false, arg_0.b, arg_0.a.x)))));
    var var_1 = true;
    var var_2 = arg_0;
    var_1 = all(select(!(!vec3<bool>(arg_0.a.x, var_2.b, true)), select(vec3<bool>(true, true, all(vec3<bool>(true, arg_0.a.x, false))), !(!vec3<bool>(arg_1.b, false, arg_0.b)), select(select(vec3<bool>(var_2.b, false, false), vec3<bool>(false, var_2.a.x, var_0.b), false), select(vec3<bool>(false, true, arg_1.b), vec3<bool>(var_0.a.x, var_0.b, var_0.b), false), select(vec3<bool>(true, var_2.b, true), vec3<bool>(var_2.b, var_0.a.x, false), vec3<bool>(arg_0.b, arg_1.b, true)))), vec3<bool>(true | select(var_2.b, true, true), var_0.a.x, arg_1.a.x)));
    var_1 = arg_0.b;
    return Struct_1(var_2.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 1f), _wgslsmith_f_op_f32(-global1.x));
    global0 = global1.x;
    var var_0 = func_6(Struct_1(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), false), func_5(vec3<bool>(true, true, true), Struct_2(func_4(global2[_wgslsmith_index_u32(11027u, 4u)], func_1(4474u)), func_2().b), firstTrailingBit(-1i), func_2()), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(80051u, 0u, u_input.a, 33983u)), func_2().b ^ min(vec4<u32>(7135u, 4294967295u, 1u, 9633u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a) | u_input.a, ~(~u_input.a), _wgslsmith_mod_u32(~u_input.a, _wgslsmith_mult_u32(u_input.a, 0u)), u_input.a)));
    var var_1 = -(~func_2().a.x);
    var var_2 = u_input.a;
    var var_3 = func_1(firstLeadingBit(u_input.a));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * 1000f), 194f)));
    var_4 = _wgslsmith_f_op_f32(ceil(global1.x));
    var var_5 = reverseBits(reverseBits(u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(1i, select(~(~1u), 1u, (global1.x > _wgslsmith_f_op_f32(max(388f, global1.x))) || all(!global2[_wgslsmith_index_u32(var_3.b.x, 4u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-627f, 658f))), _wgslsmith_mult_u32(28662u, var_3.b.x));
}

