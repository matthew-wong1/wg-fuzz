struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_1(-15235i, vec3<f32>(430f, -1296f, 1773f), 88863u)), Struct_4(Struct_1(29872i, vec3<f32>(-496f, -1329f, -1274f), 74013u)), Struct_4(Struct_1(i32(-2147483648), vec3<f32>(-1123f, 1608f, -757f), 1357u)), Struct_4(Struct_1(21917i, vec3<f32>(831f, -1922f, 799f), 15784u)));

var<private> global2: array<u32, 18> = array<u32, 18>(8026u, 90u, 66367u, 51531u, 1u, 0u, 4294967295u, 1u, 73519u, 1u, 4294967295u, 4294967295u, 54427u, 29867u, 0u, 53938u, 32620u, 70108u);

var<private> global3: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>) -> vec2<bool> {
    return arg_2.wz;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    return Struct_3(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), _wgslsmith_f_op_f32(select(1662f, global0.b.x, true)) < 633f), vec3<bool>(_wgslsmith_clamp_u32(48535u, 1u, u_input.b) < _wgslsmith_dot_vec3_u32(vec3<u32>(47563u, 1u, 1u), vec3<u32>(1u, 1u, global0.c)), all(vec3<bool>(true, false, false)) & false, true), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(false, false, false)), true), true)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.b.x, -805f), global0.b.xz))))), firstLeadingBit(_wgslsmith_sub_i32(-global0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(29196i, global0.a, -9419i, global0.a), vec4<i32>(-1196i, u_input.c, 39027i, 34267i), vec4<i32>(global0.a, global0.a, u_input.a.x, 8429i)), vec4<i32>(-44434i, u_input.a.x, 0i, 2147483647i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1476f)))));
    var var_1 = _wgslsmith_f_op_f32(floor(-908f));
    global0 = Struct_1(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.x * var_0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-864f + 2017f), _wgslsmith_f_op_f32(var_0.a.x - 614f)), global0.b.x)), abs(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)] ^ 1u, 107324u)) | min(~_wgslsmith_dot_vec2_u32(vec2<u32>(43307u, global2[_wgslsmith_index_u32(global0.c, 18u)]), vec2<u32>(global0.c, 4341u)), 57263u));
    let var_2 = 1i;
    global1 = array<Struct_4, 4>();
    return _wgslsmith_div_f32(_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)))), global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = array<u32, 18>();
    var var_1 = !var_0;
    var var_2 = _wgslsmith_div_vec3_f32(global0.b, vec3<f32>(702f, global0.b.x, global0.b.x));
    let var_3 = select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), var_0), select(vec2<bool>(var_0, true), vec2<bool>(false, false), vec2<bool>(false, false)), all(vec2<bool>(var_0, true))), vec2<bool>(var_0, all(vec2<bool>(var_0, var_0))), !select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(var_0, !(var_0 || var_0)), func_1(Struct_3(!vec3<bool>(var_0, var_0, var_0)), true, !(!vec4<bool>(var_0, false, var_0, true)))), vec2<bool>(true, !all(vec4<bool>(false, true, false, var_0))), !(!(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)))));
    let var_4 = !any(vec4<bool>(var_0, true, _wgslsmith_f_op_f32(select(var_2.x, -497f, false)) <= _wgslsmith_f_op_f32(floor(-1384f)), !(u_input.a.x <= 0i)));
    let var_5 = func_2(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a.yzz, vec3<i32>(global0.a, u_input.c, u_input.a.x)), -global0.a), -2271i & global0.a, -21684i), u_input.a.x, ~(~select(u_input.a.x, 1i, var_0)), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), global0.b.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1012f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-519f, global0.b.x, var_2.x, _wgslsmith_f_op_f32(trunc(-911f))))), global0.a);
}

