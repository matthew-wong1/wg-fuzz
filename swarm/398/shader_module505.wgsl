struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(false), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), -107f, 948f), Struct_3(Struct_1(false), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), -869f, -566f), Struct_3(Struct_1(true), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), 507f, 670f), Struct_3(Struct_1(true), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), -1464f, 665f), Struct_3(Struct_1(true), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), 1567f, -439f), Struct_3(Struct_1(false), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), 252f, -2328f), Struct_3(Struct_1(true), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), 741f, -404f), Struct_3(Struct_1(true), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), 1306f, 176f), Struct_3(Struct_1(true), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), -1934f, 2103f), Struct_3(Struct_1(true), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), 705f, 221f), Struct_3(Struct_1(true), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), -867f, -1000f), Struct_3(Struct_1(false), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), 217f, -1096f), Struct_3(Struct_1(false), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), 298f, -1204f), Struct_3(Struct_1(true), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), -728f, -845f), Struct_3(Struct_1(false), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), 121f, -354f), Struct_3(Struct_1(true), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), -995f, -891f), Struct_3(Struct_1(false), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), -220f, 485f), Struct_3(Struct_1(true), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), -2346f, -596f), Struct_3(Struct_1(true), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), 502f, 1150f), Struct_3(Struct_1(true), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), 1178f, -965f), Struct_3(Struct_1(true), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), 190f, 890f), Struct_3(Struct_1(true), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), -1806f, 780f));

var<private> global3: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec4<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1543f - arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(631f - -1124f)), _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(step(global3.e.d, -1508f)), true)), arg_1.x)), vec4<i32>(_wgslsmith_div_i32(-countOneBits(arg_0), -4605i), -2147483647i, max(24259i, 1i), 18549i), !select(select(global3.c, vec2<bool>(true, global3.e.c.a.a), true), vec2<bool>(any(vec4<bool>(true, true, global3.e.c.a.a, global3.c.x)), global3.c.x), false), max(~arg_0, ~select(~1i, -24873i, global3.e.a.a)), global2[_wgslsmith_index_u32(4294967295u, 22u)]);
    let var_1 = global3.e;
    global1 = abs(0i);
    let var_2 = !all(select(select(select(vec3<bool>(true, var_1.b.a.a, true), vec3<bool>(var_1.b.a.a, true, var_0.e.a.a), vec3<bool>(global3.e.a.a, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(global3.c.x, true, var_1.a.a), vec3<bool>(global3.e.a.a, false, var_1.c.a.a)), vec3<bool>(global3.c.x, false, true)), vec3<bool>(true, true, !var_1.a.a), !all(global3.c)));
    var var_3 = vec4<u32>(54927u, 1u, 1u << ((_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(1u, 7938u, 283u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 47032u, 4294967295u, 13160u), vec4<u32>(4294967295u, 28832u, 55059u, 0u))) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(28820u, 36061u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(19008u, 72459u, 31505u), vec3<u32>(0u, 20483u, 17214u))) % 32u)) % 32u), ~(1u >> (min(~1u, firstLeadingBit(1u)) % 32u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(global3.e.e - -274f), var_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.e, arg_1.x), _wgslsmith_f_op_f32(round(arg_1.x)))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec3<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.a, global3.a)))), vec4<f32>(-591f, global3.a.x, 562f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.e.d), global3.e.d)))));
    let var_1 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, -877f, 213f, global3.a.x) + _wgslsmith_f_op_vec4_f32(func_3(-19385i, vec4<f32>(-343f, -1575f, var_0.x, global3.a.x))))), global3.a), global3.b, select(vec2<bool>(any(!arg_0), -369f <= _wgslsmith_f_op_f32(-var_0.x)), vec2<bool>(false, (arg_0.x & arg_2) & global3.c.x), arg_2), -1i, Struct_3(Struct_1(arg_2), global3.e.b, Struct_2(global3.e.a), var_0.x, _wgslsmith_f_op_f32(trunc(-884f))));
    var var_2 = vec4<bool>(false, any(vec4<bool>(_wgslsmith_f_op_f32(global3.a.x * 862f) >= -1616f, !(!arg_0.x), false, _wgslsmith_f_op_f32(round(1602f)) != _wgslsmith_f_op_f32(global3.e.d + 437f))), !(!any(!vec3<bool>(global3.c.x, false, arg_0.x))), any(!select(var_1.c, arg_0, vec2<bool>(true, false))) && (true | (true | global3.e.a.a)));
    var var_3 = Struct_2(global3.e.b.a);
    var var_4 = global3.e.c;
    return Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a)))), vec4<i32>(var_1.b.x, global3.d << (arg_3.x % 32u), -1i, -8078i), var_2.yx, ~reverseBits(u_input.a), global3.e);
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_5(global3.e, _wgslsmith_f_op_vec4_f32(-global3.a), -1i, func_2(!(!global3.c), global3.b.zy, global3.e.c.a.a, firstLeadingBit(vec3<u32>(1u, 1u, 1u))));
    let var_1 = 4294967295u;
    let var_2 = u_input.a;
    let var_3 = Struct_5(global3.e, var_0.b, ~(-max(global3.b.x, u_input.a)) ^ var_2, func_2(!func_2(!vec2<bool>(var_0.d.c.x, false), -vec2<i32>(2147483647i, -1i), true, ~vec3<u32>(1u, 47678u, var_1)).c, select(vec2<i32>(var_2, 1i), global3.b.xw, var_0.a.c.a.a & global3.c.x), !any(global3.c), (~vec3<u32>(1u, var_1, var_1) ^ (vec3<u32>(1u, var_1, var_1) & vec3<u32>(8013u, 39628u, 0u))) ^ firstTrailingBit(min(vec3<u32>(17375u, var_1, 0u), vec3<u32>(13404u, 23033u, 19861u)))));
    var_0 = Struct_5(global2[_wgslsmith_index_u32(~var_1, 22u)], global3.a, _wgslsmith_clamp_i32(~(-13251i), select(~11647i, func_2(var_0.d.c, vec2<i32>(var_2, u_input.a) | var_0.d.b.yy, !var_3.d.e.a.a, vec3<u32>(var_1, 1u, 17817u)).d, all(vec2<bool>(var_3.d.e.b.a.a, global3.e.a.a))), -16175i), func_2(select(select(!global3.c, func_2(global3.c, vec2<i32>(-1i, global3.d), true, vec3<u32>(1u, 4294967295u, 20972u)).c, true), select(!global3.c, !var_3.d.c, true), select(vec2<bool>(var_3.a.a.a, global3.e.a.a), var_3.d.c, global3.e.a.a)), global3.b.zy, 22484u == (_wgslsmith_dot_vec2_u32(vec2<u32>(55904u, 1u), vec2<u32>(var_1, 26743u)) ^ var_1), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, 1u, var_1), countOneBits(vec3<u32>(var_1, 0u, var_1))) | firstLeadingBit(vec3<u32>(0u, 2671u, var_1) << (vec3<u32>(var_1, 1u, 24439u) % vec3<u32>(32u)))));
    return func_2(!(!var_3.d.c), -vec2<i32>(max(1i, -var_0.d.b.x), 0i & var_0.c), var_0.a.b.a.a, firstTrailingBit(~(_wgslsmith_add_vec3_u32(vec3<u32>(var_1, 1u, var_1), vec3<u32>(var_1, var_1, var_1)) << (vec3<u32>(var_1, var_1, 0u) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = !select(!(!select(vec3<bool>(var_0.c.x, true, true), vec3<bool>(true, false, false), var_0.c.x)), !vec3<bool>(var_0.e.a.a, false, !global3.e.a.a), !((false == var_0.e.a.a) | true));
    var var_2 = Struct_1(true);
    var_1 = vec3<bool>(true, true, global3.c.x);
    let var_3 = func_1().e.c.a;
    var_1 = select(!vec3<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), -155f == _wgslsmith_f_op_f32(-1681f * global3.e.e)), !vec3<bool>(func_1().c.x, select(true & var_0.e.a.a, true, true), var_2.a), global3.e.c.a.a);
    global1 = -(~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(1415f, ~(~(~firstTrailingBit(vec3<u32>(0u, 45679u, 0u)))), 977u);
}

