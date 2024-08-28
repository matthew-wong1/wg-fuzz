struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global1: Struct_2 = Struct_2(273f, 64697u);

var<private> global2: array<vec3<u32>, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec3<bool> {
    let var_0 = global1.a;
    let var_1 = u_input.b;
    var var_2 = Struct_1(vec3<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-186f)) * 1698f)), u_input.a ^ 1i, u_input.a, true);
    return !select(vec3<bool>(var_2.d, true, any(select(vec4<bool>(var_2.d, var_2.d, var_2.d, var_2.d), vec4<bool>(var_2.d, true, var_2.d, var_2.d), vec4<bool>(false, false, false, false)))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, var_2.d, true), vec3<bool>(var_2.d, false, var_2.d))), vec3<bool>(var_2.d, !(1u >= global0.x), true));
}

fn func_3(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = !select(func_2().xx, vec2<bool>(arg_0.x, _wgslsmith_f_op_f32(min(global1.a, -1818f)) > _wgslsmith_f_op_f32(ceil(global1.a))), true);
    var var_1 = global0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1822f)), global1.a, -1027f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(556f)), global1.a))))));
    let var_3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.wyz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1153f, 677f, global1.a) + vec3<f32>(var_2.x, -187f, -408f)))), reverseBits(u_input.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -1i, u_input.a, 2147483647i), vec4<i32>(1i, u_input.a, u_input.a, 30798i)), 45762i) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a >> (13306u % 32u), 1i), vec2<i32>(47787i, 2147483647i) & (vec2<i32>(3799i, 1i) >> (vec2<u32>(u_input.b, 43595u) % vec2<u32>(32u)))), arg_0.x);
    var var_4 = var_3;
    return Struct_2(_wgslsmith_f_op_f32(var_4.a.x * _wgslsmith_f_op_f32(abs(-759f))), u_input.c.x | u_input.e);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> i32 {
    global1 = func_3(select(!vec3<bool>(any(vec4<bool>(arg_0.d, arg_0.d, arg_2, arg_0.d)), true, any(vec4<bool>(arg_2, false, arg_2, false))), func_2(), func_2()));
    var var_0 = global0.x;
    global2 = array<vec3<u32>, 6>();
    global1 = func_3(vec3<bool>(!(!(arg_0.c > arg_0.c)), true & arg_2, arg_0.d));
    let var_1 = func_3(func_2());
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1517f, arg_0.a.x, global1.a))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, 1139f, 166f, arg_0.a.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(746f, -2686f, -106f, 201f), vec4<f32>(arg_3, -506f, global1.a, 1023f)))));
    global2 = array<vec3<u32>, 6>();
    let var_1 = _wgslsmith_div_vec2_u32(abs(u_input.c), arg_2.xx | vec2<u32>(~global1.b, ~16273u));
    global1 = func_3(vec3<bool>(all(select(!vec3<bool>(false, arg_0.d, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), arg_0.d, 795f == var_0.x));
    return func_3(select(select(func_2(), select(!vec3<bool>(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(arg_0.d, false, true), arg_0.d), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 29918u, global1.b), vec3<u32>(arg_2.x, arg_2.x, 3731u)) != 1u), !vec3<bool>(false == arg_0.d, any(vec4<bool>(false, arg_0.d, true, true)), any(vec2<bool>(false, arg_0.d))), true));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = ((-1028f == arg_0.a) & false) | true;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(1619f, global1.a)), func_3(vec3<bool>((861f > arg_2.a) || any(vec2<bool>(false, true)), u_input.a != (i32(-1i) * -482i), true)).a);
    var var_2 = 1u | ~countOneBits(arg_2.b);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(-func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-127f, arg_0.a, arg_0.a) * vec3<f32>(arg_2.a, -132f, 340f)), ~(-43825i), -36431i << (u_input.d % 32u), true), ~max(1i, -25909i), vec4<u32>(abs(arg_0.b), 1u, 4294967295u, 49341u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1.a))))).a), false));
    var_2 = select(~global1.b, 46261u, firstTrailingBit(_wgslsmith_clamp_u32(1u >> (global1.b % 32u), ~global0.x, _wgslsmith_add_u32(arg_0.b, 7614u))) > 11545u);
    return StorageBuffer(vec2<u32>(arg_2.b, 4294967295u), firstTrailingBit(arg_0.b), vec3<u32>(global0.x, 0u, arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c ^ vec2<u32>(57863u, firstTrailingBit(~global0.x));
    let x = u_input.a;
    s_output = func_5(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-302f, global1.a, -1000f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a, global1.a, -2641f)))), func_1(Struct_1(vec3<f32>(-1375f, -908f, -1294f), -7664i, 55669i, false), Struct_2(-1013f, 3694u), false, global1.a) << (global0.x % 32u), _wgslsmith_sub_i32(2147483647i, u_input.a) << (_wgslsmith_dot_vec2_u32(vec2<u32>(26239u, 0u), vec2<u32>(15479u, 4294967295u)) % 32u), false), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(-53240i, 18238i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(66916i, -49069i), vec2<i32>(u_input.a, -9830i)))), vec4<u32>(~(~global1.b), ~global1.b & u_input.b, global1.b, 4294967295u), global1.a), -1i, Struct_2(global1.a, _wgslsmith_mult_u32(0u & min(u_input.e, 2434u), reverseBits(46387u))));
}

