struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21>;

var<private> global1: array<f32, 28>;

var<private> global2: array<vec4<f32>, 12>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> vec3<i32> {
    var var_0 = Struct_3(u_input.e ^ arg_0.c.a.a, _wgslsmith_f_op_f32(-1580f - global1[_wgslsmith_index_u32(104906u, 28u)]), Struct_2(arg_0.c.a, -arg_1.a & u_input.d));
    let var_1 = select(!(!select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))), vec4<bool>(false, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), true, all(vec3<bool>(true, true, true))), vec4<bool>(true, select(true, true, true) | true, select(true, true, true), all(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a, 11850u), 21u)]) && true));
    var var_2 = abs(var_0.c.a.b.x ^ ~reverseBits(_wgslsmith_sub_i32(arg_0.c.a.b.x, arg_0.c.a.b.x)));
    var var_3 = arg_0;
    let var_4 = firstLeadingBit(u_input.b);
    return vec3<i32>(arg_0.c.a.b.x, -max(-u_input.d, -(~(-44108i))), _wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(abs(86858i)), _wgslsmith_sub_i32(1i, reverseBits(var_0.c.a.b.x))), arg_1.a));
}

fn func_4(arg_0: vec3<i32>) -> vec4<bool> {
    global0 = array<vec2<bool>, 21>();
    let var_0 = select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), -1057f > global1[_wgslsmith_index_u32(1u, 28u)])), vec4<bool>(true, true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false))), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), true), select(vec4<bool>(true, arg_0.x >= arg_0.x, all(vec3<bool>(true, true, false)), all(global0[_wgslsmith_index_u32(u_input.e, 21u)])), vec4<bool>(true, u_input.e <= u_input.e, true, any(vec4<bool>(true, false, true, true))), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), true))));
    var var_1 = u_input.c;
    var var_2 = u_input.b;
    let var_3 = var_1.x;
    return var_0;
}

fn func_2(arg_0: bool, arg_1: bool) -> vec4<i32> {
    global1 = array<f32, 28>();
    var var_0 = Struct_2(Struct_1(1u, u_input.c.ww), reverseBits(_wgslsmith_add_i32(_wgslsmith_div_i32(~u_input.b, -u_input.b), _wgslsmith_mod_i32(-2147483647i, -u_input.b))));
    let var_1 = Struct_3(~abs(select(15482u, ~var_0.a.a, false)), global1[_wgslsmith_index_u32(var_0.a.a, 28u)], Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.a, u_input.e, 1u, var_0.a.a), ~vec4<u32>(1u, var_0.a.a, 0u, 103345u)), var_0.a.b & var_0.a.b), var_0.a.b.x));
    global2 = array<vec4<f32>, 12>();
    var var_2 = any(select(func_4(_wgslsmith_mod_vec3_i32(~u_input.c.yzz, func_3(Struct_3(9588u, -1407f, var_1.c), Struct_5(var_0.a.b.x)))), !select(select(vec4<bool>(true, false, true, arg_1), vec4<bool>(false, arg_0, false, arg_1), true), vec4<bool>(false, false, arg_1, false), any(vec3<bool>(arg_1, arg_1, arg_1))), select(vec4<bool>(func_4(u_input.c.yzw).x, true, true, false), select(select(vec4<bool>(arg_1, arg_0, arg_0, false), vec4<bool>(true, arg_0, true, true), false), vec4<bool>(arg_1, false, true, false), !vec4<bool>(arg_1, arg_1, arg_0, arg_1)), vec4<bool>(false, true, u_input.a > var_1.c.a.b.x, any(vec3<bool>(false, arg_1, true))))));
    return vec4<i32>(abs(var_0.b), _wgslsmith_div_i32(~(~func_3(var_1, Struct_5(11429i)).x), 2147483647i), -abs(firstLeadingBit(min(var_1.c.a.b.x, 2088i))), var_1.c.a.b.x);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: i32) -> vec2<f32> {
    let var_0 = arg_0;
    let var_1 = var_0.e.xx;
    let var_2 = ~(~(vec4<i32>(-1i) * -u_input.c) & abs(-func_2(true, true)));
    let var_3 = Struct_2(arg_0.a.a, arg_3);
    var var_4 = vec4<bool>(!(!(!arg_2.x) == (true && any(var_0.b))), 0u <= _wgslsmith_sub_u32(var_3.a.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.c, u_input.e), arg_0.d.xyy)), arg_0.b.x, any(vec3<bool>(!any(var_0.b), true, true)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.e.zy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0.e.yy * vec2<f32>(var_0.e.x, -319f)), _wgslsmith_f_op_vec2_f32(abs(arg_0.e.yz))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -339f) + var_0.e.x), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_4(Struct_2(Struct_1(u_input.e, vec2<i32>(u_input.b, 2147483647i)), 9252i), vec3<bool>(false, false, true), u_input.e, vec4<u32>(1u, 34917u, 4294967295u, u_input.e), vec3<f32>(1060f, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(13862u, 28u)])), Struct_5(16570i), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), ~(-35176i)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.e, 28u)], -1857f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1709f, global1[_wgslsmith_index_u32(u_input.e, 28u)]) + vec2<f32>(global1[_wgslsmith_index_u32(u_input.e, 28u)], -2240f))))), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(u_input.e)), 28u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(u_input.e), 28u)] * global1[_wgslsmith_index_u32(98494u, 28u)]))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(27395u, 28u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1306f * global1[_wgslsmith_index_u32(1u, 28u)]), -2289f))), min(~select(u_input.c, _wgslsmith_add_vec4_i32(u_input.c, u_input.c), true), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-29552i, -1i, -2147483647i, 1i), -u_input.c), -(~(-10890i)), -22390i, u_input.c.x)), vec2<u32>(u_input.e, 1939u));
}

