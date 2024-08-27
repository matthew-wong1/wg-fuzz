struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(1000f, 443f, -1736f, 1000f), vec4<f32>(-572f, 526f, -1055f, -636f), vec4<f32>(-1873f, -1478f, -192f, -583f), vec4<f32>(-295f, 812f, 1744f, -1762f), vec4<f32>(936f, -1823f, 1074f, -203f), vec4<f32>(-106f, 693f, 369f, -1175f), vec4<f32>(-1269f, 1000f, -398f, -1000f), vec4<f32>(694f, -228f, -2210f, -909f), vec4<f32>(1307f, 471f, -1000f, -950f));

var<private> global3: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(4294967295u, u_input.a, 0u, u_input.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global3.c, global3.c, global3.c), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), reverseBits(global3.c), 63838u, _wgslsmith_div_u32(u_input.a, u_input.a))), 0u, global1.x), 4u)];
    global2 = array<vec4<f32>, 9>();
    global1 = arg_0.b;
    var var_1 = global3.e.x;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_4 {
    let var_0 = arg_0;
    let var_1 = Struct_1(((_wgslsmith_mod_u32(u_input.a, u_input.a) < 70872u) & global3.b) || true);
    let var_2 = Struct_4(Struct_1(func_3(global3.d, _wgslsmith_f_op_vec2_f32(min(global3.d.a.yx, global3.d.a.zy))) || false), true, ~50937u, global3.d, abs(global3.e));
    global2 = array<vec4<f32>, 9>();
    var var_3 = Struct_1(all(vec3<bool>(true, false, !var_1.a != false)));
    return Struct_4(Struct_1(arg_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.d, 1867f)), _wgslsmith_f_op_f32(exp2(arg_0.d)))) >= _wgslsmith_f_op_f32(-var_0.d), max(0u, ~reverseBits(54962u)), Struct_3(global3.d.a, global3.d.b, -_wgslsmith_add_i32(var_0.a, _wgslsmith_add_i32(1i, -1i))), -abs(abs(_wgslsmith_mod_vec4_i32(global3.e, global3.e))));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> u32 {
    global0 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_f32(-arg_1.d.a.x);
    var var_1 = max(global3.e.xy, arg_1.e.xy);
    let var_2 = global3.d.a.zy;
    let var_3 = func_2(Struct_2(-2147483647i, func_2(Struct_2(max(arg_0, 18256i), global0[_wgslsmith_index_u32(arg_1.c, 4u)], -6472i, 1057f), ~global3.e.x != 0i).a, 2147483647i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1882f - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.d.a.x)) * _wgslsmith_f_op_f32(ceil(var_0)))))), arg_1.d.b.x != all(arg_1.d.b)).d;
    return 35453u;
}

fn func_1(arg_0: i32) -> f32 {
    global1 = vec3<bool>(~(-select(-27894i, 0i, global3.b)) < (-2147483647i >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(53736u, global3.c, 35838u), vec3<u32>(25401u, global3.c, global3.c)), global3.c ^ 1u, ~49445u) % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-838f, 789f))))) <= -646f, !global3.d.b.x);
    let var_0 = ~func_4(~_wgslsmith_dot_vec4_i32(global3.e | vec4<i32>(global3.d.c, arg_0, arg_0, u_input.b), abs(vec4<i32>(u_input.b, -4367i, 2147483647i, 0i))), func_2(Struct_2(-33886i, Struct_1(global1.x), ~25237i, _wgslsmith_f_op_f32(-global3.d.a.x)), global1.x));
    var var_1 = ~vec2<u32>(4294967295u, ~u_input.a);
    var var_2 = func_2(Struct_2(arg_0, global3.a, -u_input.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.d.a.x, global3.d.a.x)))), true).d.b.zz;
    var var_3 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d.a.x, global3.d.a.x, global3.d.a.x), global3.d.a, false)), global3.d.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.d.a.x, -1124f, 1000f))) * vec3<f32>(-1000f, global3.d.a.x, -1649f))), vec3<f32>(global3.d.a.x, -1000f, func_2(Struct_2(16905i, global0[_wgslsmith_index_u32(u_input.a, 4u)], 0i, global3.d.a.x), true).d.a.x)), !global3.d.b, -1i);
    return _wgslsmith_f_op_f32(-func_2(Struct_2(firstLeadingBit(select(global3.e.x, global3.d.c, var_2.x)), global0[_wgslsmith_index_u32(u_input.a, 4u)], _wgslsmith_mod_i32(_wgslsmith_sub_i32(-10791i, arg_0), global3.d.c), 1596f), var_2.x | false).d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(_wgslsmith_div_i32(42291i, ~global3.e.x), global3.d.c);
    var var_1 = global3.d.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-926f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(30454i)), _wgslsmith_f_op_f32(min(-162f, global3.d.a.x)))), global3.d.a.x)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global3.d.a))));
    var var_3 = vec3<bool>(any(vec2<bool>(!func_3(global3.d, global3.d.a.xz), global3.d.b.x)), u_input.b == _wgslsmith_sub_i32(global3.e.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(global3.e, vec4<i32>(global3.d.c, global3.d.c, u_input.b, global3.d.c)))), true);
    var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(-2550f, var_2.x, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-594f, _wgslsmith_f_op_f32(var_2.x - 1000f), global3.d.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global3.d.a, global3.d.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.d.a * global3.d.a))));
    var_3 = select(!func_2(Struct_2(-var_0.x, func_2(Struct_2(global3.e.x, global3.a, -1i, global3.d.a.x), global3.a.a).a, 1i, _wgslsmith_f_op_f32(-global3.d.a.x)), global1.x).d.b, select(func_2(Struct_2(abs(var_0.x), Struct_1(global3.d.b.x), _wgslsmith_div_i32(1i, 2147483647i), _wgslsmith_f_op_f32(-global3.d.a.x)), true).d.b, vec3<bool>(true, global3.d.b.x, true), func_2(Struct_2(u_input.b, func_2(Struct_2(global3.d.c, global0[_wgslsmith_index_u32(u_input.a, 4u)], global3.d.c, -1757f), global3.d.b.x).a, min(2147483647i, 28900i), global3.d.a.x), !global1.x).d.b), global3.d.b);
    global3 = Struct_4(func_2(Struct_2(-32183i, global0[_wgslsmith_index_u32(u_input.a, 4u)], var_0.x, _wgslsmith_f_op_f32(-var_2.x)), true).a, all(vec4<bool>(true, select(global3.b || global3.a.a, true, func_3(global3.d, vec2<f32>(global3.d.a.x, 417f))), global1.x, all(func_2(Struct_2(u_input.b, global0[_wgslsmith_index_u32(1u, 4u)], global3.e.x, -2065f), false).d.b))), abs(u_input.a), func_2(Struct_2(i32(-1i) * -2147483647i, Struct_1(true), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, 1i), 2147483647i), _wgslsmith_f_op_f32(round(func_2(Struct_2(-3115i, global0[_wgslsmith_index_u32(115836u, 4u)], 0i, global3.d.a.x), global3.d.b.x).d.a.x))), true).d, global3.e);
    var var_4 = _wgslsmith_f_op_f32(abs(func_2(Struct_2(_wgslsmith_div_i32(u_input.b, var_0.x), func_2(Struct_2(1i, global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.b, var_2.x), var_3.x).a, _wgslsmith_add_i32(43419i, -1i) ^ u_input.b, var_2.x), any(!global1.zx)).d.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 14274u, global3.c), ~vec3<u32>(1300u, 47099u, 0u)), 1u, firstLeadingBit(global3.c >> (47340u % 32u))), u_input.a), _wgslsmith_add_u32(global3.c, ~(~select(3757u, u_input.a, var_3.x))), func_2(Struct_2(_wgslsmith_mod_i32(~2147483647i, u_input.b), global0[_wgslsmith_index_u32(~select(global3.c, 14870u, true), 4u)], i32(-1i) * -1i, _wgslsmith_f_op_f32(-418f + _wgslsmith_f_op_f32(global3.d.a.x * -417f))), global3.b).c, var_0.x);
}

