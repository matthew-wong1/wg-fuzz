struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: f32 = 202f;

var<private> global2: Struct_3;

var<private> global3: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global2 = Struct_3(vec4<u32>(global2.a.x >> ((1u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(global2.a.x, u_input.b.x, u_input.b.x, 4294967295u))) % 32u), 42039u, global2.b.c, countOneBits(~1u)), global2.b, true && (_wgslsmith_div_f32(_wgslsmith_f_op_f32(396f + 936f), _wgslsmith_f_op_f32(sign(-561f))) <= 485f));
    let var_0 = Struct_3(global2.a, global2.b, all(global2.b.d.yy));
    let var_1 = -1i >= var_0.b.a;
    let var_2 = Struct_2(var_0.a.zxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-2116f, -1292f, -592f), vec3<f32>(984f, 2564f, -1064f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(419f, 582f, -1000f), vec3<f32>(-170f, -917f, 998f))))), vec3<f32>(1f, 1f, 1f), var_1 || all(var_0.b.d)))), var_0.b, global2.b);
    global0 = array<vec3<bool>, 23>();
    return vec4<bool>(!(!(!var_0.c) | (all(vec4<bool>(true, global2.b.d.x, true, var_1)) && true)), true, all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_2.c.d.x, var_0.b.b.x, false), vec4<bool>(global2.b.b.x, var_2.d.d.x, false, false), vec4<bool>(false, true, var_2.d.b.x, global2.b.b.x)), true), !(!vec4<bool>(true, var_1, false, var_2.d.b.x)), all(vec4<bool>(var_1, var_1, true, false)))), false);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> bool {
    global2 = arg_0;
    global0 = array<vec3<bool>, 23>();
    global0 = array<vec3<bool>, 23>();
    global2 = Struct_3(~global2.a, Struct_1(-firstLeadingBit(global2.b.a), !global2.b.d.yx, 1u, arg_0.b.d), all(vec2<bool>(any(func_3()), global2.c)));
    let var_0 = arg_0;
    return any(!select(arg_0.b.b, vec2<bool>(true, false), func_3().wx));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(~global2.b.a, vec2<bool>(!(func_2(Struct_3(global2.a, Struct_1(u_input.a.x, global2.b.b, global2.a.x, global0[_wgslsmith_index_u32(global2.b.c, 23u)]), true), vec3<i32>(3673i, global2.b.a, u_input.a.x)) && global2.b.d.x), ((true || global2.b.b.x) | func_3().x) | global2.b.b.x), ~firstTrailingBit(arg_0), global0[_wgslsmith_index_u32(22473u, 23u)]);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) + 224f), any(!vec3<bool>(false, global2.c, global2.c)))), 979f)), -1252f);
    var_1 = 1000f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-911f))), -503f));
    let var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 23u)];
    return Struct_1(-22367i, !global2.b.d.xy, ~global2.b.c, select(select(vec3<bool>(!var_0.d.x, all(vec3<bool>(var_3.x, global2.c, var_3.x)), all(vec4<bool>(false, var_0.b.x, var_0.d.x, true))), var_0.d, !(var_0.d.x || var_0.b.x)), var_0.d, global0[_wgslsmith_index_u32(arg_0 << ((_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 72677u, 84585u), global2.a.xzx) | select(1u, 87892u, var_3.x)) % 32u), 23u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.a.x, -1i, 0i, -_wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.a.x, 1i, 0i) & vec3<i32>(-10775i, -37016i, u_input.a.x)), vec3<i32>(20448i, u_input.a.x, u_input.a.x)));
    var var_1 = all(!global2.b.d);
    let var_2 = func_1(39078u);
    global0 = array<vec3<bool>, 23>();
    global0 = array<vec3<bool>, 23>();
    let var_3 = _wgslsmith_f_op_f32(select(-241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1190f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1033f)))))), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_3 + -2000f), 1608f) - vec3<f32>(_wgslsmith_f_op_f32(-var_3), 953f, _wgslsmith_f_op_f32(select(var_3, var_3, var_2.d.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(109f, var_3, true)), _wgslsmith_f_op_f32(var_3 - -950f), var_3)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2281f)) - _wgslsmith_f_op_f32(sign(var_3))) - _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(-var_3), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f - var_3)))), reverseBits(vec2<i32>(countOneBits(var_2.a), global2.b.a)));
}

