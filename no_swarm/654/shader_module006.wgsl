struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: vec2<f32> = vec2<f32>(279f, -1852f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = !(!select(select(vec4<bool>(true, arg_1.a.c.x, arg_0.b, false), vec4<bool>(true, true, true, true), arg_1.a.c.x || arg_0.b), !(!vec4<bool>(arg_1.a.c.x, true, true, arg_0.b)), !(!vec4<bool>(false, true, arg_0.a, arg_0.a))));
    global1 = vec2<f32>(388f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + global1.x)));
    let var_1 = any(vec2<bool>(select(arg_0.b, true == var_0.x, !(!arg_1.a.c.x)), true));
    var_0 = select(vec4<bool>(true, !select(arg_1.a.c.x, all(var_0.yxz), true), !arg_0.a, any(vec2<bool>(false, true))), !vec4<bool>(!(global1.x > 120f), var_1, all(select(var_0.yxw, var_0.xzw, true)), all(arg_1.a.c)), !arg_1.a.c.x);
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1407f, 1455f)), _wgslsmith_f_op_f32(min(-2265f, 270f))) - _wgslsmith_div_vec2_f32(vec2<f32>(673f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 1908f)), vec2<f32>(_wgslsmith_f_op_f32(min(-939f, _wgslsmith_f_op_f32(global1.x + -869f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1091f, global1.x)), _wgslsmith_f_op_f32(-global1.x)))));
    return vec2<bool>(arg_0.b || !((arg_1.a.c.x & var_1) != true), arg_0.a);
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = select(vec2<bool>(true, select(any(select(vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, false, true, arg_0))), arg_0, !all(global0[_wgslsmith_index_u32(34842u, 20u)]))), global0[_wgslsmith_index_u32(1u, 20u)], !select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(14666u, reverseBits(3609u)), 20u)], !func_3(Struct_3(arg_0, arg_0), Struct_2(Struct_1(vec4<u32>(0u, 0u, 25307u, 4058u), u_input.b, global0[_wgslsmith_index_u32(950u, 20u)]), vec2<i32>(16292i, u_input.a.x)), u_input.a, vec4<u32>(4294967295u, 35335u, 19193u, 4294967295u)), true));
    let var_1 = ~firstLeadingBit(u_input.a);
    global0 = array<vec2<bool>, 20>();
    let var_2 = Struct_1(abs(vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(1u, 10347u, 4294967295u, 15959u)), 1u, ~8258u) % vec4<u32>(32u))), u_input.a.x, vec2<bool>(var_0.x, !(false | any(vec4<bool>(true, true, true, false)))));
    let var_3 = _wgslsmith_add_u32(16885u, 1u >> (~firstTrailingBit(var_2.a.x) % 32u));
    return ~1u;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<f32>) -> u32 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global1.x - arg_2.x));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(max(1000f, 233f)), _wgslsmith_f_op_f32(f32(-1f) * -275f), -354f);
    var var_1 = ~vec3<u32>(countOneBits(reverseBits(1u)), _wgslsmith_div_u32(func_2(!arg_1), ~(~1600u)), min(1u, _wgslsmith_div_u32(~1605u, 39563u)));
    global0 = array<vec2<bool>, 20>();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f)) + arg_3.x), 221f, (_wgslsmith_f_op_f32(trunc(123f)) <= _wgslsmith_f_op_f32(max(-597f, 302f))) & !any(vec3<bool>(arg_0, arg_0, true)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(arg_2.x - arg_3.x));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-459f, global1.x) + vec2<f32>(global1.x, -639f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 725f) * vec2<f32>(global1.x, global1.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-150f, global1.x), vec2<f32>(global1.x, -1602f), true)), vec2<f32>(global1.x, -548f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_div_f32(827f, global1.x)) - vec2<f32>(1780f, global1.x))), !global0[_wgslsmith_index_u32(~(~abs(48196u)), 20u)]));
    var var_0 = any(!(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(49517u, 85545u, 10499u), vec3<u32>(18470u, 55617u, 0u)), 1u >> (1u % 32u)), 20u)]));
    global0 = array<vec2<bool>, 20>();
    let var_1 = _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(floor(199f)));
    let var_2 = vec2<u32>(func_1(select(true, !all(vec2<bool>(true, false)), all(!global0[_wgslsmith_index_u32(1u, 20u)])), !(!all(vec4<bool>(false, true, false, false))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-var_1))), 754f), vec4<f32>(var_1, -1061f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), var_1)), 89700u);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-515f, global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.yy, min(u_input.a.yx, u_input.a.yz)), -(~u_input.b)), firstLeadingBit(-2147483647i) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, -5446i, u_input.a.x), vec4<i32>(-1i, u_input.b, u_input.b, u_input.a.x)), -1i)));
}

