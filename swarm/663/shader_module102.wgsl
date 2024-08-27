struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-211f, 1728f, -420f, -284f));

var<private> global1: array<i32, 18> = array<i32, 18>(1i, 38351i, -24189i, 0i, -1i, 43954i, -16965i, 1280i, 53483i, 51211i, i32(-2147483648), -71709i, 26974i, 391i, 1i, -1i, 20145i, -13603i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2321f, global0.a.x, -802f, -838f) * global0.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1138f, global0.a.x, -1440f, -1391f), vec4<f32>(global0.a.x, -2027f, global0.a.x, global0.a.x))), global0.a.x > global0.a.x)))));
    var var_1 = u_input.c;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)));
    global1 = array<i32, 18>();
    global1 = array<i32, 18>();
    return !select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), all(vec4<bool>(false, true, false, true))), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(_wgslsmith_sub_u32(34336u, 15412u) <= u_input.d, any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(false, false, false, true))));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = Struct_1(global0.a);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, 1u & arg_0), 18u)] << (38220u % 32u);
    var var_2 = !func_3();
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(var_0.a.x, 1393f, -1212f, var_0.a.x))))));
    var var_4 = vec3<i32>(firstLeadingBit(u_input.b.x), -_wgslsmith_sub_i32(-1970i, -_wgslsmith_dot_vec4_i32(vec4<i32>(9417i, u_input.c, -52305i, -45699i), vec4<i32>(-1i, global1[_wgslsmith_index_u32(1u, 18u)], -1474i, global1[_wgslsmith_index_u32(19070u, 18u)]))), firstTrailingBit(~(~global1[_wgslsmith_index_u32(arg_0, 18u)] ^ global1[_wgslsmith_index_u32(1u, 18u)])));
    return !vec4<bool>(all(!vec3<bool>(var_2.x, var_2.x, var_2.x)) | true, true, var_2.x, arg_0 >= arg_0);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(10879u);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(-1000f - global0.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1567f) + _wgslsmith_f_op_f32(floor(global0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1189f) + global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-231f * global0.a.x)))));
    var var_2 = _wgslsmith_mod_vec2_u32(~u_input.a.xz, ~(~u_input.a.yy)) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.a.x)), ~firstLeadingBit(vec4<u32>(12021u, 6876u, 0u, 16728u))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(reverseBits(u_input.d), select(u_input.d, u_input.a.x, true)), _wgslsmith_div_u32(~32258u, select(6364u, 1u, var_0.x))));
    global1 = array<i32, 18>();
    var var_3 = true;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = array<i32, 18>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1921f, 642f, 2066f, -334f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-501f, 607f, 1902f, 1370f) - global0.a))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, 765f, global0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1067f, global0.a.x, 811f, 666f) + global0.a))))));
    global1 = array<i32, 18>();
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(801f, global0.a.x, 2344f, _wgslsmith_f_op_f32(step(func_1().a.x, var_0.a.x)))));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1181f, global0.a.x))))), global0.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(global0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(1134f - _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, false)))), _wgslsmith_f_op_f32(-var_0.a.x)));
    global1 = array<i32, 18>();
    var var_2 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(1308f);
}

