struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(vec2<i32>(-42360i, i32(-2147483648)), 1369f, vec2<bool>(false, false), 16444u), Struct_4(vec2<i32>(1i, 9989i), 1860f, vec2<bool>(false, false), 12427u), Struct_4(vec2<i32>(-20395i, i32(-2147483648)), 331f, vec2<bool>(true, false), 117114u));

var<private> global1: bool;

var<private> global2: array<f32, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec2<bool> {
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: u32) -> Struct_4 {
    global2 = array<f32, 11>();
    let var_0 = vec2<bool>(all(vec2<bool>(any(vec2<bool>(false, false)), true)), all(select(select(func_1(), arg_0, true), arg_0, !vec2<bool>(arg_0.x, false))));
    global2 = array<f32, 11>();
    var var_1 = arg_0.x;
    var var_2 = true;
    return global0[_wgslsmith_index_u32(~arg_2 ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, ~1u, (15420u & arg_2) & ~arg_2), vec3<u32>(~4294967295u, ~countOneBits(22765u), arg_2)), 3u)];
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> Struct_3 {
    global1 = !(!(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_1.d, arg_1.d), 11u)] != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b, global2[_wgslsmith_index_u32(arg_1.d, 11u)]))));
    global1 = (func_1().x && any(vec3<bool>(any(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, false)), true && arg_1.c.x, !arg_1.c.x))) && (false || arg_1.c.x);
    var var_0 = _wgslsmith_f_op_f32(abs(245f));
    return Struct_3(vec2<f32>(global2[_wgslsmith_index_u32(arg_1.d, 11u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3126u, 11u)]), _wgslsmith_f_op_f32(340f * arg_1.b)))))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 1058f, -1674f)), _wgslsmith_div_vec3_f32(vec3<f32>(-405f, arg_1.b, -566f), vec3<f32>(arg_1.b, arg_1.b, -1000f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.b, 1247f, -417f), vec3<f32>(arg_1.b, -2000f, global2[_wgslsmith_index_u32(arg_1.d, 11u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, global2[_wgslsmith_index_u32(arg_1.d, 11u)], 454f))))), ~(~(~vec4<u32>(7100u, 4294967295u, arg_1.d, arg_1.d))), vec3<bool>(!(2147483647i < arg_1.a.x), func_1().x, false), select(select(select(vec4<bool>(true, false, arg_1.c.x, arg_1.c.x), vec4<bool>(arg_1.c.x, arg_1.c.x, true, arg_1.c.x), arg_1.c.x), vec4<bool>(arg_1.c.x, true, arg_1.c.x, false), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x)), vec4<bool>(false, arg_1.c.x, arg_1.c.x, false), false || (arg_1.a.x > arg_0))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(arg_1.d, ~15786u)), vec2<u32>(4294967295u >> (firstLeadingBit(arg_1.d) % 32u), 14289u)), Struct_2(10662i, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(747f, global2[_wgslsmith_index_u32(arg_1.d, 11u)], global2[_wgslsmith_index_u32(arg_1.d, 11u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_1.d, 11u)], global2[_wgslsmith_index_u32(arg_1.d, 11u)], global2[_wgslsmith_index_u32(0u, 11u)]))), ~(~vec4<u32>(arg_1.d, arg_1.d, 4294967295u, 3102u)), select(select(vec3<bool>(arg_1.c.x, arg_1.c.x, true), vec3<bool>(false, arg_1.c.x, arg_1.c.x), vec3<bool>(false, arg_1.c.x, arg_1.c.x)), select(vec3<bool>(arg_1.c.x, true, arg_1.c.x), vec3<bool>(arg_1.c.x, false, false), vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x)), vec3<bool>(arg_1.c.x, arg_1.c.x, false)), !vec4<bool>(true, false, false, arg_1.c.x)), select(vec3<bool>(arg_1.c.x, -5723i <= u_input.a.x, true), vec3<bool>(all(vec4<bool>(true, true, arg_1.c.x, true)), -2147483647i == arg_1.a.x, !arg_1.c.x), vec3<bool>(!arg_1.c.x, all(vec4<bool>(true, arg_1.c.x, false, arg_1.c.x)), arg_1.c.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-598f, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(0u, 11u)]))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-514f, _wgslsmith_f_op_f32(-arg_1.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(abs(u_input.a.x), func_2(!select(vec2<bool>(false, false), func_1(), false), -1i, _wgslsmith_div_u32(1u, 1u)));
    var var_1 = var_0.d;
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~32865u, _wgslsmith_div_u32(firstTrailingBit(abs(var_1.b.b.x)), _wgslsmith_mult_u32(var_0.d.b.b.x, var_0.c.x)), select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.b.b.x, 4294967295u), var_1.b.b.xxx), 12299u, any(var_0.b.d))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.b.a.xx), _wgslsmith_f_op_vec2_f32(-var_0.a))) - vec2<f32>(_wgslsmith_f_op_f32(step(var_1.b.a.x, global2[_wgslsmith_index_u32(var_0.b.b.x, 11u)])), -596f)))));
}

