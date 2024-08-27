struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<f32> {
    var var_0 = Struct_2(false);
    var var_1 = select(select(!select(vec2<bool>(false, var_0.a), select(vec2<bool>(true, false), vec2<bool>(false, true), var_0.a), vec2<bool>(true, true)), vec2<bool>(true, abs(u_input.b) <= u_input.b), -2474f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0))))), select(select(select(select(vec2<bool>(var_0.a, true), vec2<bool>(false, false), var_0.a), !vec2<bool>(var_0.a, false), true), vec2<bool>(true, var_0.a), vec2<bool>(true | var_0.a, var_0.a)), !select(select(vec2<bool>(false, true), vec2<bool>(var_0.a, false), var_0.a), vec2<bool>(true, true), !vec2<bool>(false, var_0.a)), !(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), vec2<bool>(true, true)))), var_0.a || var_0.a);
    global0 = array<i32, 11>();
    var_1 = select(!(!select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_1.x), var_0.a)), !select(select(vec2<bool>(true, true), vec2<bool>(var_0.a, false), select(vec2<bool>(false, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(true, false))), vec2<bool>(!var_0.a, true), !vec2<bool>(var_0.a, false)), vec2<bool>(true, true));
    global0 = array<i32, 11>();
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1000f, -1242f) + vec3<f32>(arg_0, -778f, 1165f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, -707f, arg_0))))) - vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(ceil(-381f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-899f, 184f, -257f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-805f, -552f, -941f), vec3<f32>(371f, 318f, -550f))))), select(select(select(vec3<bool>(true, var_1.x, var_0.a), vec3<bool>(var_1.x, false, var_0.a), vec3<bool>(var_0.a, var_1.x, var_1.x)), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_0.a, var_1.x), vec3<bool>(var_0.a, false, true)), false), select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, var_0.a, var_0.a)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, var_1.x), vec3<bool>(false, true, var_1.x)), var_1.x), global0[_wgslsmith_index_u32(3321u, 11u)] <= global0[_wgslsmith_index_u32(u_input.b, 11u)])))));
}

fn func_2() -> vec3<i32> {
    let var_0 = ~vec2<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(-4609i, -1i, global0[_wgslsmith_index_u32(40983u, 11u)], u_input.a.x) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) % vec4<u32>(32u))) | u_input.a, vec4<i32>(-19727i, global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], u_input.c.x) | _wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]), u_input.c)), -abs(u_input.a.x));
    global0 = array<i32, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(-665f)));
    let var_2 = Struct_3(47283u, false, select(select(vec2<bool>(true, any(vec4<bool>(false, true, false, true))), vec2<bool>(all(vec4<bool>(true, false, true, true)), true), true), vec2<bool>(true, all(vec2<bool>(true, true))), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(true, any(vec2<bool>(false, true)), true))));
    var var_3 = vec2<u32>(1u, reverseBits(4294967295u));
    return ~u_input.a.wyy;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> vec2<bool> {
    global0 = array<i32, 11>();
    var var_0 = Struct_2(true || (all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))) | all(vec4<bool>(true, true, true, true))));
    var_0 = Struct_2(select(false, false, all(!vec4<bool>(true, var_0.a, false, var_0.a)) && ((u_input.c.x >= global0[_wgslsmith_index_u32(0u, 11u)]) && all(vec4<bool>(var_0.a, true, true, var_0.a)))));
    let var_1 = vec2<bool>(true, any(vec4<bool>(true, all(vec4<bool>(var_0.a, true, var_0.a, var_0.a)), var_0.a, true)));
    var var_2 = ((_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -1i, u_input.c.x), _wgslsmith_clamp_vec3_i32(arg_0, arg_0, arg_0)) | arg_0) & -u_input.a.wzy) & vec3<i32>(_wgslsmith_dot_vec4_i32(select(select(u_input.c, u_input.a, var_1.x), u_input.a, true), vec4<i32>(u_input.c.x, -arg_0.x, u_input.c.x << (u_input.b % 32u), select(-1i, 20896i, var_0.a))), arg_0.x, -(i32(-1i) * -arg_0.x));
    return select(var_1, var_1, var_1);
}

fn func_1() -> vec3<u32> {
    var var_0 = vec2<bool>(all(vec2<bool>(false, false)), true);
    let var_1 = Struct_2(false);
    var_0 = !func_4(_wgslsmith_div_vec3_i32(func_2(), u_input.c.yww), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-170f))))));
    var var_2 = -603f;
    let var_3 = Struct_3(~(u_input.b ^ ~0u), all(vec2<bool>(any(func_4(vec3<i32>(u_input.a.x, 2147483647i, u_input.c.x), -127f)), var_1.a)), vec2<bool>(!(var_1.a && any(vec3<bool>(var_0.x, true, var_0.x))), var_0.x));
    return vec3<u32>(_wgslsmith_add_u32(u_input.b, 1u), firstLeadingBit(countOneBits(1u)), var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    let var_0 = 29681u;
    let var_1 = vec2<bool>(true, (~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.b, 11u)], 105915i, global0[_wgslsmith_index_u32(4294967295u, 11u)]) > -firstTrailingBit(u_input.c.x)) && true);
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1053f), func_1(), -635f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(443f, 2263f, 1039f, 330f), vec4<f32>(913f, -1000f, -519f, 398f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2294f, -387f, 1426f, -781f) * vec4<f32>(374f, 987f, -191f, 297f)), !var_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(296f, -889f, -1000f, 412f))), vec4<f32>(679f, 110f, 1639f, 643f), false)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, -1923f, 1000f, 925f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1416f, 464f, -469f, 174f))))), _wgslsmith_f_op_f32(-560f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(631f, -838f)))))));
}

