struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 7> = array<f32, 7>(-731f, 327f, -717f, -653f, 1170f, -287f, -1316f);

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(-16256i, true), Struct_2(36952i, false), Struct_2(25599i, false), Struct_2(0i, true), Struct_2(1i, false), Struct_2(i32(-2147483648), false), Struct_2(i32(-2147483648), false), Struct_2(-46307i, false), Struct_2(35747i, false), Struct_2(60301i, true), Struct_2(17413i, false), Struct_2(-66572i, true), Struct_2(1i, false), Struct_2(6854i, false), Struct_2(0i, false), Struct_2(i32(-2147483648), true), Struct_2(47015i, true));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    return Struct_2(u_input.a.x, false);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> vec2<i32> {
    global2 = array<Struct_2, 17>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(69597u, 7u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(370f, global1[_wgslsmith_index_u32(u_input.c.x, 7u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(688f, 1592f) * vec2<f32>(-140f, global1[_wgslsmith_index_u32(125251u, 7u)])), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], -629f))))))), select(vec4<bool>(all(arg_1), true, arg_0.b, true), !(!vec4<bool>(arg_0.b, arg_1.x, true, false)), all(!(!vec4<bool>(false, arg_1.x, arg_1.x, arg_0.b)))), vec2<i32>(_wgslsmith_div_i32(-1i, -global0.x), select(~1i, global0.x, all(select(vec3<bool>(arg_1.x, true, true), vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(true, arg_0.b, arg_1.x))))), -617f, vec4<bool>(all(select(vec2<bool>(arg_0.b, true), select(vec2<bool>(false, true), vec2<bool>(true, arg_0.b), arg_1), 4294967295u > u_input.c.x)), !(func_1(global2[_wgslsmith_index_u32(15817u, 17u)], global0.x).b | arg_0.b), any(!vec4<bool>(arg_1.x, arg_1.x, arg_0.b, true)), false));
    let var_1 = var_0;
    var var_2 = !(!var_0.e.yzw);
    global2 = array<Struct_2, 17>();
    return u_input.b.zx;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(173f)) * -914f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))))));
    var_0 = -601f;
    var var_1 = u_input.c.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, global1[_wgslsmith_index_u32(u_input.c.x, 7u)])), _wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(-arg_1.a)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 7u)])), _wgslsmith_f_op_f32(f32(-1f) * -1549f))), select(vec4<bool>(!arg_0.b, arg_1.e.x, true, any(select(arg_1.b, arg_1.e, arg_1.b))), !vec4<bool>(!arg_0.b, !arg_0.b, !arg_0.b, true), arg_1.d == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-432f * 430f)))), func_3(Struct_2(-global0.x, 4294967295u >= _wgslsmith_div_u32(u_input.c.x, 1u)), vec2<bool>(any(arg_1.b.wxy), false && arg_1.e.x)), arg_1.a.x, select(select(arg_1.e, vec4<bool>(!arg_1.e.x, true, arg_0.b, true), false), select(vec4<bool>(arg_1.a.x < 1173f, true, arg_1.c.x <= arg_0.a, !arg_1.e.x), vec4<bool>(arg_0.b, arg_0.b, arg_1.e.x, arg_1.e.x), true), !arg_1.b));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(max(u_input.c.x, 17261u), u_input.c.x), 17u)];
    return u_input.c.wy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 7>();
    let var_0 = select(!(!vec2<bool>(true, u_input.c.x < u_input.c.x)), vec2<bool>(false, -2147483647i >= -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), global0.xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(625f, global1[_wgslsmith_index_u32(abs(u_input.c.x), 7u)], true))) == _wgslsmith_f_op_f32(657f + global1[_wgslsmith_index_u32(u_input.c.x, 7u)]));
    global0 = firstTrailingBit(abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(-44868i, u_input.b.x, global0.x, -2147483647i), vec4<i32>(_wgslsmith_dot_vec2_i32(global0.zx, vec2<i32>(41998i, u_input.a.x)), -global0.x, 0i, 2147483647i))));
    var var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~func_2(func_1(global2[_wgslsmith_index_u32(u_input.c.x, 17u)], global0.x), Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], -1813f), vec4<bool>(var_0.x, var_0.x, false, false), vec2<i32>(6934i, u_input.b.x), -406f, vec4<bool>(true, var_0.x, true, true))), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(13051u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 33011u)), u_input.c.x)), ~select(vec2<u32>(~u_input.c.x, _wgslsmith_div_u32(u_input.c.x, 42148u)), reverseBits(~u_input.c.yz), select(!var_0, !var_0, 4294967295u >= u_input.c.x)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.c.x, 7u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(39928u, 7u)])))))), global1[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~0u, 7u)])), 931f);
    var var_3 = ~(u_input.c.x ^ u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-6221i, select(~(~u_input.c.zzw), firstLeadingBit(~u_input.c.wyx), !(!select(true, var_0.x, false))));
}

