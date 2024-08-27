struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: f32 = -729f;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(1u, 1u, 1u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(32424u, 3878u, 1u, 24831u), _wgslsmith_mod_vec4_u32(vec4<u32>(58377u, 0u, 53063u, 9590u), vec4<u32>(28547u, 10213u, 4294967295u, 37441u))), ~1u, _wgslsmith_sub_u32(select(0u, 5475u, true), 28643u))), 11u)], true, any(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)));
    let var_1 = Struct_2(var_0, select(!vec2<bool>(-1i < u_input.a.x, all(vec4<bool>(true, false, var_0.c, var_0.b))), select(!(!vec2<bool>(var_0.c, var_0.b)), vec2<bool>(true, true), !select(vec2<bool>(true, var_0.b), vec2<bool>(true, false), vec2<bool>(true, var_0.c))), vec2<bool>(var_0.c, !select(true, var_0.c, true))));
    global1 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(581f))), var_0.a), global0[_wgslsmith_index_u32(countOneBits(1u), 11u)])));
    global0 = array<f32, 11>();
    var var_2 = _wgslsmith_f_op_f32(exp2(var_0.a));
    return 0u;
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> bool {
    return 15838u > func_3();
}

fn func_1() -> Struct_3 {
    let var_0 = !(!(!(global0[_wgslsmith_index_u32(100426u, 11u)] >= -624f) || !func_2(Struct_3(vec3<f32>(global0[_wgslsmith_index_u32(53531u, 11u)], global0[_wgslsmith_index_u32(46975u, 11u)], 502f), global0[_wgslsmith_index_u32(26005u, 11u)]), true)));
    let var_1 = global0[_wgslsmith_index_u32(1u, 11u)];
    global0 = array<f32, 11>();
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, ~72979u, ~(~1u), ~1u), vec4<u32>(1u, ~1u, 19586u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 88689u, 48917u, 4294967295u), vec4<u32>(66863u, 0u, 4294967295u, 1u)) % 32u), ~1u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_add_u32(31936u, 1u), 4294967295u, ~1u, abs(5258u))));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 11u)])) * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 38857u, 7260u), vec3<u32>(20450u, 45862u, 121268u)), 11u)]))), global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(17676u, 1u), vec2<u32>(71479u, 35030u))), 11u)], _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 52703u))), 11u)]))), _wgslsmith_f_op_f32(round(-1685f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 11>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(49132u, 55889u), 11u)] * -1649f));
    var var_0 = func_1();
    let var_1 = !vec3<bool>(false, (-12351i & ~u_input.a.x) > -(~u_input.a.x), select(true, true, !all(vec2<bool>(true, false))));
    let var_2 = vec2<bool>(var_1.x, all(var_1));
    var_0 = func_1();
    let var_3 = select(false, !(!all(var_2)), any(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, 1u, 1u, 1u), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 0u))), 3451i, -5621i, abs(u_input.a.wzx));
}

