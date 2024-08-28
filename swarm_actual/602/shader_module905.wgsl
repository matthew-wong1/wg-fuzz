struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<f32, 29>;

var<private> global2: array<Struct_5, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec2<bool> {
    global1 = array<f32, 29>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(44178u, 29u)])))))));
    var_0 = -1300f;
    global0 = array<u32, 23>();
    var var_1 = arg_2.x;
    return !vec2<bool>(_wgslsmith_f_op_f32(-472f - 385f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 29u)] - 1000f) * 618f), true);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 23u)], 29u)], _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 29u)]))) - -1104f), arg_1.x, 514f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(u_input.e.x, 23u)]), 29u)] - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(24864u, 29u)] - global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 29u)]))))), reverseBits(u_input.b.x));
    let var_1 = Struct_5(i32(-1i) * -29641i, ~countOneBits(vec2<i32>(2147483647i, -2147483647i)) ^ (firstTrailingBit(select(vec2<i32>(-9881i, u_input.d), vec2<i32>(u_input.d, 1i), arg_0)) ^ vec2<i32>(1132i, 0i)), firstTrailingBit(~(~vec2<u32>(global0[_wgslsmith_index_u32(0u, 23u)], u_input.e.x)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(33261u, 14726u), ~vec2<u32>(36680u, 32449u))), Struct_3(vec4<f32>(-281f, 1377f, _wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(step(arg_1.x, var_0.a.x))), var_0.b & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b.xxy, vec3<u32>(96236u, 65254u, 9624u)), u_input.b.x)), u_input.a);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1141f - _wgslsmith_f_op_f32(arg_1.x * 771f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1f)), var_1.d.a.x))));
    global1 = array<f32, 29>();
    let var_3 = Struct_5(_wgslsmith_add_i32(0i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, ~(-1814i)), -2147483647i)), reverseBits(var_1.b), max(vec2<u32>(~1u, ~0u), vec2<u32>(u_input.b.x, ~(~1u))), var_1.d, -2147483647i);
    return false;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    global0 = array<u32, 23>();
    let var_0 = ~_wgslsmith_div_vec3_u32(~arg_0, _wgslsmith_mult_vec3_u32(u_input.c.wxx, vec3<u32>(~10277u, ~0u, 28068u)));
    global1 = array<f32, 29>();
    var var_1 = !select(vec2<bool>(true, true), !select(func_2(arg_3.a.x, arg_3.a, arg_0, Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, true), vec2<bool>(true, false), false), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, true), vec2<bool>(true, false), true), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, true), vec2<bool>(false, false), false))), vec2<bool>(true, true), true), vec2<bool>(!func_3(false, vec4<f32>(arg_3.a.x, 650f, global1[_wgslsmith_index_u32(var_0.x, 29u)], global1[_wgslsmith_index_u32(0u, 29u)])), all(vec4<bool>(false, false, true, true)) || true));
    var var_2 = arg_2.xz;
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-418f - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(func_1(vec3<u32>(global0[_wgslsmith_index_u32(11860u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)], 23u)], 23u)], 4294967295u), -9000i, vec3<i32>(u_input.a, 0i, u_input.d), Struct_3(vec4<f32>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(50550u, 29u)], global1[_wgslsmith_index_u32(73168u, 29u)], global1[_wgslsmith_index_u32(14058u, 29u)]), 23336u)), 29u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 29u)])))), _wgslsmith_f_op_f32(-297f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(13716u, 29u)])))), -1296f, global1[_wgslsmith_index_u32(1u, 29u)]), 0u);
    let var_1 = Struct_4(var_0.a.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1791f)), var_1.a);
    let var_3 = -27996i;
    global1 = array<f32, 29>();
    global2 = array<Struct_5, 24>();
    let var_4 = global2[_wgslsmith_index_u32(1u, 24u)];
    var_2 = 692f;
    var var_5 = Struct_2(Struct_1(vec4<bool>(false, func_3(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, global1[_wgslsmith_index_u32(109515u, 29u)], global1[_wgslsmith_index_u32(u_input.c.x, 29u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b, 23u)], 29u)]))), true, true), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(true, false, true)), true), func_2(_wgslsmith_f_op_f32(var_1.a - 1048f), var_0.a, u_input.e.yxx, Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec2<bool>(false, false), false), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec2<bool>(true, false), true), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, true), vec2<bool>(true, true), true)))), vec2<bool>(func_3(all(vec4<bool>(true, true, false, true)), vec4<f32>(1458f, 238f, var_0.a.x, var_4.d.a.x)), true), !(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 29u)] - global1[_wgslsmith_index_u32(52795u, 29u)]) >= _wgslsmith_f_op_f32(min(var_4.d.a.x, 426f)))), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec3<bool>(false, any(vec2<bool>(false, true)), true))), Struct_1(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), select(vec2<bool>(any(vec3<bool>(true, false, false)), true), func_2(245f, vec4<f32>(-471f, var_0.a.x, 583f, -1000f), vec3<u32>(14099u, var_4.d.b, 104201u), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, false), vec2<bool>(false, false), false), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec2<bool>(false, true), true), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, true), vec2<bool>(true, true), true))), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_2(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 29u)])), var_4.d.a, u_input.e.zyx, Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(false, false), vec2<bool>(false, true), false), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, true), vec2<bool>(false, false), true), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec2<bool>(true, true), false))), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), func_3(true, vec4<f32>(_wgslsmith_f_op_f32(336f + -791f), _wgslsmith_f_op_f32(exp2(var_1.a)), var_0.a.x, var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~firstLeadingBit(u_input.e.yxy), abs(~u_input.c.yxy)), var_4.d.a.x, _wgslsmith_f_op_vec2_f32(-var_0.a.zy));
}

