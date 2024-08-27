struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    var var_0 = ~(-13808i);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1718f, -984f, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(189f, -981f, -950f, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-541f, global1.x, 1217f, -1330f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-365f, global1.x, global1.x, global1.x) + vec4<f32>(global1.x, -2280f, -912f, global1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(367f, -582f, global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1118f, global1.x, 139f, -723f), vec4<f32>(-1353f, global1.x, global1.x, global1.x))))), any(vec3<bool>(global0.a.b.x, global0.a.c.x, 25573u >= u_input.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, 966f, global1.x), vec4<f32>(1832f, -768f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -772f, global1.x, -775f) * vec4<f32>(global1.x, global1.x, global1.x, 1359f)))) * vec4<f32>(_wgslsmith_f_op_f32(global1.x - 2009f), global1.x, -904f, -1235f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, 802f)), 1373f, global1.x, global1.x))));
    let var_2 = !global0.a.c;
    global0 = Struct_2(Struct_1(global0.a.c.x, !var_2.yzy, !vec4<bool>(var_2.x, var_2.x, false, false)));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1366f, -141f, 262f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(global1.x)), global1.x, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, 300f, global1.x, var_1.x), vec4<f32>(global1.x, global1.x, 1597f, var_1.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(259f, var_1.x, global1.x, global1.x), vec4<f32>(-2348f, global1.x, global1.x, 1733f))))))));
    return vec4<bool>(true, var_2.x, !(select(max(0i, u_input.b.x), u_input.b.x, true) != -17485i), any(global0.a.c.wwy));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(true && !arg_0.a.b.x, global0.a.b, arg_0.a.c);
    var var_1 = 1u;
    var_1 = abs(countOneBits(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, u_input.c, u_input.c)), vec3<u32>(11375u, u_input.a | 0u, _wgslsmith_clamp_u32(0u, u_input.c, u_input.c)))));
    global0 = arg_0;
    global0 = Struct_2(Struct_1(var_0.a, vec3<bool>(!(!arg_0.a.b.x), true, any(!vec3<bool>(var_0.c.x, arg_0.a.b.x, global0.a.c.x))), func_3()));
    return Struct_3(var_0.b.x, Struct_1(all(func_3()), func_3().zxx, select(!vec4<bool>(false, var_0.c.x, global0.a.c.x, var_0.c.x), var_0.c, global0.a.c)), !all(arg_0.a.c.wz));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> u32 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(493f, _wgslsmith_div_f32(global1.x, 487f), -217f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1233f, -392f, global1.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -296f, global1.x), vec3<f32>(1244f, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-425f, -1727f, global1.x) - vec3<f32>(global1.x, -802f, global1.x)) * vec3<f32>(1316f, global1.x, 484f)))) - vec3<f32>(1195f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - 311f), _wgslsmith_f_op_f32(step(global1.x, global1.x))))));
    let var_0 = 48564u;
    let var_1 = func_2(Struct_2(arg_1.b)).b;
    let var_2 = Struct_1(arg_1.a, !vec3<bool>(var_1.c.x, true, min(4838i, u_input.b.x) <= max(0i, u_input.b.x)), vec4<bool>(!(arg_1.a || global0.a.a), all(vec2<bool>(true, global0.a.b.x)), any(vec3<bool>(var_1.a, u_input.c < 24266u, global0.a.b.x)), true));
    global0 = Struct_2(var_1);
    return ~(1u >> (_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.c, var_0) >> (vec2<u32>(4294967295u, 35959u) % vec2<u32>(32u))), min(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 63042u), vec2<u32>(17293u, var_0)), max(vec2<u32>(36650u, 2042u), vec2<u32>(var_0, 1u)))) % 32u));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1743f, global1.x)) * _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 518f) + global1.x), global1.x);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x);
    var var_1 = vec4<u32>(func_4(select(firstTrailingBit(u_input.b.yw | vec2<i32>(u_input.b.x, u_input.b.x)), (u_input.b.wx >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) << (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), vec2<bool>(true, true)), func_2(Struct_2(Struct_1(arg_1.a, arg_1.b, global0.a.c)))), ~(~(u_input.c >> (1u % 32u))), abs(~_wgslsmith_mult_u32(~u_input.c, _wgslsmith_mod_u32(4294967295u, u_input.a))), ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.a, 6807u)), ~u_input.c));
    let var_2 = arg_1.b.x;
    return func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.x + -1097f) >= -295f, vec3<bool>(any(vec4<bool>(var_2, global0.a.b.x, var_2, arg_0)), true, true), func_3()))).b.c.zxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(all(!vec3<bool>(all(vec4<bool>(true, true, global0.a.c.x, global0.a.b.x)), any(global0.a.c.yz), global0.a.a)), global0.a);
    var var_1 = Struct_3(var_0.x, Struct_1(all(vec2<bool>(global0.a.b.x != true, global0.a.c.x | global0.a.b.x)), global0.a.c.xyw, global0.a.c), true);
    var_0 = vec3<bool>(any(var_0.xz), var_0.x, !(_wgslsmith_add_i32(0i, u_input.b.x << (u_input.a % 32u)) > ~u_input.b.x));
    var_1 = Struct_3(global0.a.a, var_1.b, !(!(!select(var_1.b.b.x, false, var_1.c))));
    var_0 = select(func_2(Struct_2(func_2(Struct_2(Struct_1(var_0.x, var_1.b.b, vec4<bool>(global0.a.a, var_1.c, false, false)))).b)).b.c.yxz, !global0.a.b, select(!select(vec3<bool>(true, false, false), var_1.b.b, select(vec3<bool>(global0.a.c.x, false, true), vec3<bool>(false, var_1.a, false), var_1.b.a)), !vec3<bool>(false && global0.a.b.x, any(global0.a.b), !var_1.b.b.x), vec3<bool>(var_0.x, !var_0.x, u_input.b.x <= u_input.b.x)));
    let var_2 = -vec2<i32>(~3012i, _wgslsmith_div_i32(-2147483647i, -_wgslsmith_sub_i32(42371i, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), vec4<u32>(u_input.c, 24943u, u_input.a, u_input.c))), ~(~(~u_input.a)), 1i, u_input.b.zyx, _wgslsmith_f_op_f32(round(global1.x)));
}

