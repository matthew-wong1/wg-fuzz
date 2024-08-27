struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(2147483647i, -1337i, 0i, -26434i), vec4<i32>(15018i, 0i, 2147483647i, 36947i), vec4<i32>(i32(-2147483648), 663i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, 22343i, 14094i, 2147483647i), vec4<i32>(15942i, 30136i, 1i, i32(-2147483648)), vec4<i32>(-14455i, -1i, 2147483647i, 42666i), vec4<i32>(-26398i, -4212i, 1i, 30865i), vec4<i32>(i32(-2147483648), 0i, 1i, 2147483647i), vec4<i32>(-5201i, -15659i, 3392i, 0i), vec4<i32>(0i, -1i, 20042i, -1i), vec4<i32>(0i, -44926i, -42511i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -1i), vec4<i32>(8066i, 2147483647i, 1i, 10124i), vec4<i32>(24870i, 14608i, i32(-2147483648), -29085i), vec4<i32>(0i, 0i, -20925i, -31906i), vec4<i32>(7728i, 2147483647i, -19756i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -15935i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), -1i, 18196i, -1i), vec4<i32>(19727i, 1i, 2147483647i, 52958i), vec4<i32>(-4998i, -65504i, -54518i, i32(-2147483648)), vec4<i32>(1i, 0i, 24464i, 3946i), vec4<i32>(-11167i, -19523i, -45836i, -1i), vec4<i32>(10876i, 32308i, -8818i, -1i), vec4<i32>(-1i, 1i, 0i, 1i), vec4<i32>(18615i, 2147483647i, -1i, 42061i), vec4<i32>(-28665i, -1i, -1i, 34223i), vec4<i32>(0i, 2147483647i, -1i, -11636i), vec4<i32>(-29938i, 2147483647i, 35793i, -1i), vec4<i32>(i32(-2147483648), 55081i, -34037i, i32(-2147483648)), vec4<i32>(25691i, 44201i, i32(-2147483648), -23452i), vec4<i32>(-15722i, 2147483647i, -12429i, -37251i), vec4<i32>(63155i, 20832i, 1i, -1i));

var<private> global1: Struct_5 = Struct_5(Struct_2(Struct_1(true)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-715f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(459f)), -1567f)), _wgslsmith_f_op_f32(f32(-1f) * -680f)), vec3<f32>(_wgslsmith_f_op_f32(222f - _wgslsmith_div_f32(1000f, 928f)), 718f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1088f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), any(select(vec4<bool>(global1.a.a.a, global1.a.a.a, global1.a.a.a, global1.a.a.a), select(vec4<bool>(false, true, global1.a.a.a, true), vec4<bool>(false, true, true, false), global1.a.a.a), false)))));
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -3035f), _wgslsmith_f_op_f32(exp2(var_0.x))), vec4<bool>(global1.a.a.a, any(vec2<bool>(global1.a.a.a, true)), global1.a.a.a && !global1.a.a.a, true), true, vec3<bool>(true, !any(vec3<bool>(true, true, true)), global1.a.a.a));
    global0 = array<vec4<i32>, 32>();
    var var_2 = global1.a.a;
    global1 = Struct_5(global1.a);
    return vec3<bool>(true, !(_wgslsmith_dot_vec4_i32(-global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)] ^ global0[_wgslsmith_index_u32(u_input.b, 32u)]) < -32234i), all(select(vec2<bool>(true, false), var_1.b.yw, var_1.d.xx)) || !(!any(vec3<bool>(var_1.c, var_2.a, global1.a.a.a))));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_4 {
    global1 = Struct_5(global1.a);
    let var_0 = 31120u;
    let var_1 = Struct_3(498f, select(!(!select(vec4<bool>(false, global1.a.a.a, global1.a.a.a, global1.a.a.a), vec4<bool>(false, global1.a.a.a, false, true), global1.a.a.a)), !vec4<bool>(false, true, u_input.c <= var_0, global1.a.a.a), global1.a.a.a), true, select(!(!select(vec3<bool>(global1.a.a.a, global1.a.a.a, false), vec3<bool>(false, true, true), vec3<bool>(false, false, global1.a.a.a))), !(!select(vec3<bool>(global1.a.a.a, global1.a.a.a, false), vec3<bool>(true, global1.a.a.a, global1.a.a.a), vec3<bool>(global1.a.a.a, global1.a.a.a, false))), !(!(!vec3<bool>(global1.a.a.a, global1.a.a.a, global1.a.a.a)))));
    var var_2 = select(select(var_1.b.wyy, !var_1.b.wyy, select(!var_1.d, select(func_3(), vec3<bool>(false, true, false), select(false, true, true)), vec3<bool>(any(vec2<bool>(global1.a.a.a, false)), false, all(vec3<bool>(true, global1.a.a.a, var_1.c))))), select(var_1.d, !func_3(), var_1.b.x), true);
    global0 = array<vec4<i32>, 32>();
    return Struct_4(~arg_1, abs(_wgslsmith_mult_vec3_u32(vec3<u32>(~var_0, reverseBits(10414u), u_input.b), _wgslsmith_sub_vec3_u32(select(vec3<u32>(var_0, u_input.a, 63638u), vec3<u32>(u_input.a, u_input.a, u_input.b), var_1.d), ~vec3<u32>(u_input.c, u_input.b, 5449u)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -486f), select(vec4<bool>(func_3().x, select(global1.a.a.a, true, all(vec2<bool>(false, arg_2.a.a))), true, !(arg_0.a < arg_0.a)), select(vec4<bool>(all(vec4<bool>(true, arg_2.a.a, global1.a.a.a, true)), true, true, select(global1.a.a.a, global1.a.a.a, true)), !select(vec4<bool>(arg_2.a.a, global1.a.a.a, true, arg_2.a.a), vec4<bool>(true, global1.a.a.a, false, global1.a.a.a), false), vec4<bool>(false, any(vec2<bool>(global1.a.a.a, global1.a.a.a)), arg_2.a.a, all(vec4<bool>(true, arg_2.a.a, true, global1.a.a.a)))), arg_2.a.a), true, vec3<bool>(!(!select(arg_2.a.a, arg_2.a.a, true)), true, (_wgslsmith_div_i32(arg_0.a, arg_0.a) & abs(arg_0.a)) > ~arg_0.a));
    var var_1 = false;
    let var_2 = global0[_wgslsmith_index_u32(1u, 32u)];
    global0 = array<vec4<i32>, 32>();
    var var_3 = arg_0;
    return vec4<bool>(!all(!func_3()), all(vec2<bool>(var_0.a == _wgslsmith_f_op_f32(-var_0.a), any(select(vec4<bool>(global1.a.a.a, true, true, arg_2.a.a), var_0.b, true)))), all(!vec3<bool>(all(var_0.b), arg_2.a.a, arg_2.a.a)), var_0.c);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(409f - 143f) - 1000f)))), select(vec4<bool>(all(vec2<bool>(true, false)), false, global1.a.a.a, all(vec4<bool>(arg_0, global1.a.a.a, false, global1.a.a.a))), !select(vec4<bool>(global1.a.a.a, false, false, global1.a.a.a), vec4<bool>(true, false, global1.a.a.a, false), vec4<bool>(global1.a.a.a, true, false, false)), any(!vec4<bool>(false, arg_0, global1.a.a.a, false))), -10323i >= _wgslsmith_clamp_i32(1i & ~arg_1, 2147483647i, arg_1 ^ arg_1), vec3<bool>(true, true, true));
    let var_1 = select(select(!select(vec4<bool>(var_0.d.x, true, true, var_0.c), select(vec4<bool>(false, global1.a.a.a, true, var_0.c), vec4<bool>(true, var_0.b.x, true, false), var_0.b), var_0.b), func_4(func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, 693f, var_0.a))), arg_1 | arg_1), ~arg_2.zxx & arg_2.xyy, Struct_2(Struct_1(true))), !any(vec3<bool>(false, arg_0, arg_0))), select(vec4<bool>(true, false, !(!global1.a.a.a), global1.a.a.a), vec4<bool>(global1.a.a.a, any(var_0.b), !arg_0, arg_0), var_0.b), -max(-81050i, ~arg_1) != 1i);
    var var_2 = var_0.a;
    var var_3 = var_0;
    var var_4 = var_0;
    return Struct_1(!var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(global1.a.a.a, _wgslsmith_mod_i32(1i, -1i), vec4<u32>(87379u, 0u, 0u & ~u_input.a, u_input.c)));
    let var_1 = -1130f;
    let var_2 = func_1(true, _wgslsmith_dot_vec3_i32(vec3<i32>(~22047i, -2147483647i, 1i), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 20113i), vec3<i32>(-1i, -72717i, -33557i)))) << (u_input.a % 32u), _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 3955u, u_input.c, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 23304u, u_input.c, 2498u), vec4<u32>(u_input.b, 1u, 14951u, 36517u))), ~(~vec4<u32>(u_input.c, u_input.b, 107550u, 0u))));
    global1 = Struct_5(var_0);
    global0 = array<vec4<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(firstLeadingBit(abs(_wgslsmith_mult_i32(0i, 18367i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 27344i), select(vec3<i32>(-1i, -1326i, 14675i), abs(vec3<i32>(1i, 0i, -46631i)), all(vec3<bool>(global1.a.a.a, var_0.a.a, false))))), u_input.b);
}

