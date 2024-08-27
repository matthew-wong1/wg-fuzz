struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: array<vec2<u32>, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    global0 = array<vec2<u32>, 15>();
    let var_0 = ~(_wgslsmith_div_i32(-_wgslsmith_sub_i32(arg_0, -2063i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), arg_1)) & _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.x, -2147483647i, -1i), ~(-vec3<i32>(-1i, 2147483647i, 2147483647i))));
    global1 = array<vec2<u32>, 11>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f), arg_2.x)), _wgslsmith_f_op_f32(ceil(-1102f))));
    let var_2 = vec2<bool>(-53690i <= ~u_input.a, false);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<u32>, 15>();
    let var_0 = ~vec4<u32>(32567u, 69502u, ~18606u, _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, 0u), global1[_wgslsmith_index_u32(0u, 11u)]), global0[_wgslsmith_index_u32(1u, 15u)])));
    global0 = array<vec2<u32>, 15>();
    let var_1 = Struct_1(~select(vec2<i32>(-1i) * -vec2<i32>(0i, 0i), -(vec2<i32>(u_input.a, -2147483647i) >> (var_0.yy % vec2<u32>(32u))), vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(405i, vec2<i32>(-2147483647i, 0i), vec3<f32>(2779f, 1000f, 687f), 1014f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1185f)))));
    global0 = array<vec2<u32>, 15>();
    return Struct_1(var_1.a, select(true, var_1.b, false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_1.c, 360f)), -1411f)), true)))));
}

fn func_3(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = Struct_2(~select(vec4<i32>(-2147483647i, 14319i, -25253i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -1i), vec3<i32>(0i, 15377i, -32225i))), vec4<i32>(arg_0.a.x, u_input.a | 0i, u_input.a, _wgslsmith_mult_i32(2147483647i, arg_0.a.x)), !(!vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b))), func_1(), arg_0.a);
    var var_1 = arg_0;
    let var_2 = select(!select(vec2<bool>(true, false), !(!vec2<bool>(arg_0.b, arg_0.b)), select(!vec2<bool>(var_0.b.b, var_0.b.b), !vec2<bool>(var_0.b.b, var_0.b.b), vec2<bool>(var_1.b, var_1.b))), select(!vec2<bool>(true, arg_0.b), vec2<bool>(var_0.a.x > -3072i, !var_0.b.b), ((true || var_0.b.b) == any(vec3<bool>(var_0.b.b, true, var_1.b))) != true), !var_1.b);
    var_1 = var_0.b;
    var var_3 = vec4<i32>(-var_0.a.x, arg_0.a.x | var_1.a.x, (_wgslsmith_mod_i32(-22732i, arg_0.a.x) & 1i) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(3387u, 1u, 1u), vec3<u32>(1u, 1u, 0u)) % 32u), -var_0.c.x) ^ (vec4<i32>(arg_0.a.x, 22799i, _wgslsmith_add_i32(firstTrailingBit(-1i), 30466i), u_input.a) ^ var_0.a);
    return StorageBuffer(~(~vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_i32(var_0.a.yz, -min(var_0.b.a, var_0.c)), vec2<f32>(var_0.b.c, arg_0.c), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 11>();
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1092f + 898f)), -932f, 817f, 1884f)));
    global0 = array<vec2<u32>, 15>();
    var var_2 = ~firstLeadingBit(_wgslsmith_mod_u32(1u, ~(~4294967295u)));
    global0 = array<vec2<u32>, 15>();
    var_2 = ~21872u;
    var_2 = abs(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, abs(_wgslsmith_mod_u32(78789u, 1783u))), 15u)], global1[_wgslsmith_index_u32(reverseBits(0u), 11u)] ^ _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 72656u), _wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(20211u, 15u)], vec2<u32>(4294967295u, 1u)))));
    let x = u_input.a;
    s_output = func_3(func_1());
}

