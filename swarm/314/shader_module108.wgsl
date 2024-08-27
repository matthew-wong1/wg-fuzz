struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(838f, vec2<bool>(true, true), false, vec3<u32>(12840u, 16546u, 35009u), vec2<f32>(1189f, -1512f));

var<private> global1: vec3<i32> = vec3<i32>(547i, 0i, -17578i);

var<private> global2: array<bool, 14>;

var<private> global3: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    return -(~countOneBits(_wgslsmith_div_i32(1i, 1i)));
}

fn func_2() -> vec3<u32> {
    global1 = abs(vec3<i32>(min(i32(-1i) * -10524i, global1.x) << (_wgslsmith_add_u32(global0.d.x, select(u_input.a.x, 0u, false)) % 32u), select(~u_input.d, -21337i, global2[_wgslsmith_index_u32(44647u & u_input.a.x, 14u)]) | reverseBits(firstLeadingBit(0i)), _wgslsmith_sub_i32(0i, func_3(global1.x, Struct_1(1709f, global0.b, global2[_wgslsmith_index_u32(global0.d.x, 14u)], u_input.a.xxx, global0.e)))));
    let var_0 = !select(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(global0.d.x, 14u)], false, false, global0.c))), vec4<bool>(true, true, false, ~global1.x != 1i), select(!vec4<bool>(true, true, global0.c, true), !select(vec4<bool>(false, global2[_wgslsmith_index_u32(6335u, 14u)], global0.c, true), vec4<bool>(true, true, true, false), true), all(!vec2<bool>(global2[_wgslsmith_index_u32(60461u, 14u)], global2[_wgslsmith_index_u32(26525u, 14u)]))));
    global3 = vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -(~global3.x), max(global3.x | global3.x, global3.x) << (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global0.d.x, global0.d.x)), select(global0.d.yz, vec2<u32>(u_input.b, 28216u), global2[_wgslsmith_index_u32(u_input.a.x, 14u)])) % 32u)), _wgslsmith_sub_i32(0i, countOneBits(0i)));
    var var_1 = false;
    let var_2 = global0.c;
    return max(~_wgslsmith_add_vec3_u32(~u_input.a.xyw, vec3<u32>(_wgslsmith_sub_u32(0u, u_input.a.x), 56922u, ~1u)), global0.d);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_1 {
    global2 = array<bool, 14>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * global0.a) * -804f), !vec2<bool>(false, _wgslsmith_clamp_u32(u_input.a.x, 24689u, global0.d.x) > max(u_input.b, u_input.b)), true, func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_f_op_f32(arg_2.x + -711f)))));
    global0 = var_0;
    var var_1 = 4294967295u;
    global3 = vec2<i32>(global3.x, u_input.c.x);
    return Struct_1(-811f, global0.b, false, func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-455f, 1589f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, -1953f), var_0.e), all(var_0.b))), global0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global3.x, global1.x, u_input.d), vec4<i32>(17756i, 42063i, 0i, 2147483647i)))), global3.x), -32086i);
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), 1f) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), -186f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.e.x * 2245f))), false)), _wgslsmith_f_op_f32(sign(global0.e.x))));
    let var_1 = func_1(countOneBits(u_input.a), global3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.e * _wgslsmith_f_op_vec2_f32(vec2<f32>(-617f, var_0.x) + vec2<f32>(648f, global0.e.x)))))), var_0);
    let var_2 = !vec4<bool>(!(_wgslsmith_f_op_f32(floor(var_1.a)) < -1669f), var_1.c, global2[_wgslsmith_index_u32(global0.d.x, 14u)], global0.b.x);
    var var_3 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(-2513f);
}

