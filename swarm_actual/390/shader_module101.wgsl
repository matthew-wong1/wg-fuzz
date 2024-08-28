struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 20>;

var<private> global2: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(1000f, 427f, -347f, -1008f), vec4<f32>(-1000f, -1286f, 564f, -120f), vec4<f32>(-274f, -742f, -252f, -1707f), vec4<f32>(-1080f, 502f, -1431f, 2166f), vec4<f32>(-1510f, 332f, 892f, 891f), vec4<f32>(895f, 583f, -2255f, -1000f), vec4<f32>(-1615f, 684f, -386f, -269f), vec4<f32>(-439f, -139f, 1994f, -1382f), vec4<f32>(-360f, -1049f, 1073f, -528f), vec4<f32>(489f, -1100f, -1000f, -1606f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec2<i32> {
    global2 = array<vec4<f32>, 10>();
    var var_0 = -arg_0;
    global2 = array<vec4<f32>, 10>();
    let var_1 = false;
    global1 = array<u32, 20>();
    return ~(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, ~u_input.a), -firstTrailingBit(vec2<i32>(arg_0.x, -1i))));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<i32>) -> bool {
    global1 = array<u32, 20>();
    var var_0 = arg_0.e;
    var var_1 = arg_0.a;
    global2 = array<vec4<f32>, 10>();
    let var_2 = var_1.b.x;
    return all(select(vec3<bool>(all(var_1.b), true, var_0.a.a), !vec3<bool>(true, true, var_1.c >= global1[_wgslsmith_index_u32(105423u, 20u)]), vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_0.e.a.a), vec3<bool>(arg_1.x, arg_1.x, var_1.b.x))), select(true, var_1.b.x, true), any(select(arg_0.a.b.xx, vec2<bool>(false, var_1.b.x), false)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1725f, arg_1.x, 970f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -1730f, arg_1.x), vec3<f32>(global0.x, 525f, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2072f, 1000f, arg_1.x) * vec3<f32>(-200f, -419f, arg_1.x)))))), vec3<f32>(-1230f, 1474f, 860f)));
    let var_0 = Struct_3(Struct_1(!arg_3), select(vec4<bool>(arg_3, arg_3, u_input.a != ~arg_2.x, any(!vec4<bool>(arg_3, arg_3, arg_3, arg_3))), !vec4<bool>(all(vec2<bool>(arg_3, arg_3)), func_3(Struct_5(Struct_4(vec3<u32>(0u, 43032u, global1[_wgslsmith_index_u32(15806u, 20u)]), vec3<bool>(arg_3, true, true), 1u, vec3<u32>(1u, global1[_wgslsmith_index_u32(25752u, 20u)], global1[_wgslsmith_index_u32(20172u, 20u)])), vec4<f32>(arg_1.x, 800f, arg_1.x, global0.x), -39040i, vec4<u32>(83682u, global1[_wgslsmith_index_u32(17595u, 20u)], global1[_wgslsmith_index_u32(20347u, 20u)], 0u), Struct_3(Struct_1(true), vec4<bool>(arg_3, arg_3, false, arg_3), vec2<u32>(4294967295u, 4294967295u))), vec3<bool>(false, arg_3, true), 0u, vec2<i32>(29563i, u_input.a)), all(vec2<bool>(arg_3, arg_3)), !arg_3), !vec4<bool>(4294967295u <= global1[_wgslsmith_index_u32(4294967295u, 20u)], true, true, all(vec2<bool>(arg_3, arg_3)))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], ~14324u), 4294967295u | global1[_wgslsmith_index_u32(select(48886u, 0u, false), 20u)]), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56297u, 20u)], 20u)], 0u, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)])), vec4<u32>(reverseBits(67333u), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(25870u, 20u)], 20u)], 1u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22034u, 20u)], 20u)]))));
    var var_1 = select(var_0.b, vec4<bool>(var_0.a.a, false, any(vec3<bool>(true, true, arg_3)), arg_3), global1[_wgslsmith_index_u32(1u, 20u)] > ~(~(~16274u)));
    global1 = array<u32, 20>();
    let var_2 = reverseBits(-arg_0.x);
    return _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(trunc(-1284f)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = arg_0;
    global2 = array<vec4<f32>, 10>();
    var var_1 = select(vec3<bool>(!((arg_0.b.x | false) || true), true, true), var_0.b, !select(select(!vec3<bool>(false, true, var_0.b.x), vec3<bool>(arg_0.b.x, true, false), var_0.b), arg_0.b, !(!vec3<bool>(false, false, var_0.b.x))));
    var_0 = arg_0;
    var_0 = arg_0;
    return Struct_3(Struct_1(true), !(!(!select(vec4<bool>(false, var_0.b.x, var_1.x, var_0.b.x), vec4<bool>(var_1.x, false, arg_0.b.x, var_1.x), vec4<bool>(arg_0.b.x, var_0.b.x, var_1.x, false)))), abs(arg_0.d.xx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(abs(~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], 4294967295u, 1u)), select(vec3<bool>(all(vec3<bool>(false, false, true)), true, global0.x == global0.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, false)), all(vec4<bool>(false, false, false, true))), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], _wgslsmith_mult_vec3_u32(~vec3<u32>(17351u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], abs(27492u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32606u, 20u)], 20u)], 20u)]))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, _wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.a, -2147483647i, u_input.a) | vec3<i32>(u_input.a, 14248i, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, global0.x)), func_1(vec3<i32>(u_input.a, 55816i, u_input.a), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5785u, 20u)], 20u)], 1u, global1[_wgslsmith_index_u32(1u, 20u)], 983u), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53334u, 20u)], 20u)], 10u)]), false)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(583f, global0.x) + _wgslsmith_f_op_f32(-global0.x))))));
    global2 = array<vec4<f32>, 10>();
    let var_1 = 0i;
    let var_2 = var_0.a;
    var var_3 = vec3<i32>(-min(-var_1, -8491i), u_input.a | (-u_input.a & select(2147483647i, -3112i, var_0.a.a)), 0i) >> (~abs(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(select(var_0.c.x, 1u, var_0.a.a), 20u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(123848u, 20u)], 20u)], 20u)])) % vec3<u32>(32u));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(-4320i, abs(49297i), 0i), _wgslsmith_div_vec2_f32(global0.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 273f))), vec2<i32>(u_input.a, var_1 << (4294967295u % 32u)), var_2.a))), _wgslsmith_f_op_f32(sign(global0.x)));
    let var_4 = firstLeadingBit(abs(vec4<u32>(43212u, ~global1[_wgslsmith_index_u32(var_0.c.x, 20u)], ~6068u, ~(~global1[_wgslsmith_index_u32(1u, 20u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(-706f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f - -236f))) * global0.x));
}

