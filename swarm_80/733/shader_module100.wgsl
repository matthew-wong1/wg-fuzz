struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_2(true), -1000f), Struct_4(Struct_2(true), 618f), Struct_4(Struct_2(true), 995f), Struct_4(Struct_2(false), 1405f), Struct_4(Struct_2(false), -2299f), Struct_4(Struct_2(true), -301f), Struct_4(Struct_2(true), -1000f), Struct_4(Struct_2(false), -798f), Struct_4(Struct_2(true), -716f), Struct_4(Struct_2(true), 613f));

var<private> global1: array<vec2<i32>, 29>;

var<private> global2: array<vec3<bool>, 1>;

var<private> global3: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: bool, arg_3: vec4<bool>) -> vec2<bool> {
    global0 = array<Struct_4, 10>();
    global2 = array<vec3<bool>, 1>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global3.b, arg_1, arg_1), vec3<f32>(498f, arg_1, global3.b)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(203f, arg_1, arg_1), vec3<f32>(825f, -1423f, global3.b))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, -555f, arg_1) - vec3<f32>(-883f, -316f, global3.b))))) - vec3<f32>(968f, 663f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - 1364f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global3.b)) * _wgslsmith_f_op_f32(ceil(arg_1))))));
    global0 = array<Struct_4, 10>();
    var var_1 = max(min(u_input.b, u_input.b), u_input.b);
    return vec2<bool>(all(vec3<bool>(true, -5306i <= u_input.a, !(1026f != var_0.x))), true);
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_4 {
    var var_0 = all(select(select(!(!vec2<bool>(arg_1, true)), vec2<bool>(true, true), !(!vec2<bool>(global3.a.a, true))), !vec2<bool>(true, false && arg_1), select(vec2<bool>(!global3.a.a, !arg_1), !func_2(vec4<bool>(global3.a.a, false, arg_1, false), 1588f, true, vec4<bool>(global3.a.a, global3.a.a, true, global3.a.a)), global3.a.a)));
    global3 = global0[_wgslsmith_index_u32(0u, 10u)];
    var var_1 = global3.a;
    global1 = array<vec2<i32>, 29>();
    var var_2 = _wgslsmith_f_op_f32(-arg_0);
    return global0[_wgslsmith_index_u32(u_input.d.x, 10u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(~u_input.d.wxz, u_input.c.wzw), ~u_input.d.xzx), vec3<u32>(select(min(u_input.c.x, abs(u_input.c.x)), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x << (1u % 32u)), !(!global3.a.a)), arg_1.x, countOneBits(u_input.d.x))), 10u)];
    let var_1 = vec4<bool>(true, !any(vec4<bool>(var_0.a.a & global3.a.a, all(vec3<bool>(global3.a.a, global3.a.a, false)), all(vec2<bool>(true, true)), true)), global3.a.a, false);
    global2 = array<vec3<bool>, 1>();
    var_0 = Struct_4(global3.a, _wgslsmith_f_op_f32(-global3.b));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-699f * var_0.b), arg_0.x))));
    return abs(u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global3.b)), global3.b, firstTrailingBit(u_input.d.x) == 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-560f))));
    global3 = func_1(-1000f, global3.a.a);
    global1 = array<vec2<i32>, 29>();
    var var_1 = ~vec3<u32>(_wgslsmith_add_u32(u_input.c.x, func_3(vec2<f32>(663f, global3.b), select(u_input.c, u_input.c, global3.a.a))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4340u, 32575u)), vec2<u32>(_wgslsmith_mod_u32(57191u, 50446u), u_input.d.x)), 63200u);
    let var_2 = Struct_5(select(!vec4<bool>(any(vec2<bool>(global3.a.a, false)), u_input.a < -2147483647i, global3.a.a, all(vec2<bool>(false, global3.a.a))), vec4<bool>(global3.a.a, u_input.c.x > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 31044u, 1u), u_input.d.zxx), !global3.a.a, false), select(vec4<bool>(true, global3.a.a, any(vec4<bool>(false, false, true, global3.a.a)), select(false, true, global3.a.a)), select(vec4<bool>(false, true, global3.a.a, true), select(vec4<bool>(false, true, global3.a.a, global3.a.a), vec4<bool>(true, true, global3.a.a, true), vec4<bool>(global3.a.a, true, false, true)), true), global3.a.a)));
    let var_3 = var_0;
    var_1 = abs(u_input.d.zzw | vec3<u32>(1u, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_add_u32(11861u, var_1.x)), u_input.d.x));
    let var_4 = func_2(!vec4<bool>(var_0 == var_3, any(var_2.a.xzz), global3.a.a, global3.a.a || (u_input.d.x >= 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(-var_0)) + var_0), var_1.x != firstLeadingBit(var_1.x), select(vec4<bool>(true, _wgslsmith_f_op_f32(select(1153f, var_0, global3.a.a)) < _wgslsmith_f_op_f32(round(-1000f)), true, !var_2.a.x), select(!var_2.a, select(var_2.a, var_2.a, vec4<bool>(true, var_2.a.x, false, false)), true), false));
    var var_5 = (-(37631i << (_wgslsmith_clamp_u32(var_1.x, u_input.c.x, 64353u) % 32u)) << (43551u % 32u)) < -12890i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(vec4<u32>(46080u, u_input.c.x, u_input.c.x, firstTrailingBit(1u)), vec4<u32>(4294967295u, 0u, 0u, _wgslsmith_div_u32(u_input.c.x, 60684u))), _wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(1000f * global3.b), true).b));
}

