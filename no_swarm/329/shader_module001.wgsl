struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(16582i, i32(-2147483648), -6609i), vec3<f32>(-830f, 339f, -1256f), vec3<f32>(-1286f, 1066f, -860f), false);

var<private> global1: bool = false;

var<private> global2: array<vec3<i32>, 21>;

var<private> global3: array<vec2<f32>, 11>;

var<private> global4: array<vec4<i32>, 28>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = vec3<i32>(global0.a.x, _wgslsmith_div_i32(-31122i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global0.a.x, arg_1.d.x), -1i, reverseBits(arg_0.a.x)), -vec3<i32>(u_input.a, arg_1.a.x, -10320i))), _wgslsmith_add_i32(-(_wgslsmith_mod_i32(-13970i, u_input.a) | _wgslsmith_sub_i32(u_input.a, u_input.a)), -16888i));
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(4294967295u, arg_1.e, ~(~u_input.b.x)) & u_input.b.x, ~_wgslsmith_add_u32(2405u, 29307u), ~arg_0.e);
    var var_2 = all(vec3<bool>(!(arg_1.e < u_input.b.x), true, true));
    global2 = array<vec3<i32>, 21>();
    global4 = array<vec4<i32>, 28>();
    return !(!all(vec2<bool>(select(arg_1.c, arg_0.b, false), true)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>) -> bool {
    global1 = false;
    let var_0 = global0.b.x;
    global1 = arg_0.x;
    global4 = array<vec4<i32>, 28>();
    var var_1 = -1i;
    return global0.a.x >= global0.a.x;
}

fn func_1(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(global0.c.xx)), Struct_1(~global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -1315f, global0.b.x) * global0.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1319f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(sign(global0.c.x))), global0.c, func_2(Struct_2(vec2<i32>(-24348i, 1i), global0.d, global0.d, vec3<i32>(-100488i, 2147483647i, 1i), arg_0), Struct_2(vec2<i32>(global0.a.x, 16139i), global0.d, true, global0.a, 1u)))), func_3(vec2<bool>(global0.d, any(vec2<bool>(false, false))), vec4<bool>(global0.d || false, false, -1147f != global0.b.x, true))), _wgslsmith_f_op_f32(ceil(-1093f)), Struct_2(vec2<i32>(global0.a.x, _wgslsmith_div_i32(global0.a.x, -1i)) ^ (max(vec2<i32>(-2147483647i, 22744i), vec2<i32>(3157i, global0.a.x)) ^ vec2<i32>(u_input.a, u_input.a)), true, false, vec3<i32>(firstTrailingBit(max(1i, -1i)), global0.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global0.a, global0.a), 1i)), ~select(arg_0 | 1u, arg_0, all(vec4<bool>(global0.d, global0.d, global0.d, global0.d)))));
    global3 = array<vec2<f32>, 11>();
    let var_1 = ~_wgslsmith_clamp_i32(16295i, -_wgslsmith_dot_vec2_i32(global0.a.zz | global0.a.xy, vec2<i32>(-2147483647i, 3306i)), _wgslsmith_mod_i32(abs(1i) | select(0i, var_0.d.a.x, true), 8043i));
    let var_2 = var_0.b.b;
    let var_3 = ~firstLeadingBit(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(32906i, -31568i)), -var_0.d.d.xz) | global0.a.yz);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * global0.b.x) * var_2.x))), 2118f, _wgslsmith_f_op_f32(f32(-1f) * -795f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.x, -149f, -178f) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1402f, global0.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(192f)), -1591f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 1175f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    global0 = Struct_1(firstLeadingBit(-_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.x, 2150i, 20079i), vec3<i32>(1i, global0.a.x, global0.a.x)), global0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.b.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.b.x, -1000f, 325f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -908f, global0.b.x)))) - global0.b)), global0.c, global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, global4[_wgslsmith_index_u32(u_input.b.x, 28u)]);
}

