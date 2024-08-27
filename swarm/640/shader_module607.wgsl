struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11>;

var<private> global1: array<i32, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> vec2<u32> {
    return u_input.b.yx & ~(~(~(u_input.b.yz >> (vec2<u32>(38404u, u_input.b.x) % vec2<u32>(32u)))));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_sub_u32(~3182u, u_input.b.x);
    return false;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(~countOneBits(_wgslsmith_mult_u32(arg_1.a, 28972u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 1u), vec2<u32>(u_input.d, _wgslsmith_mult_u32(u_input.b.x, 15469u))));
    return Struct_1(arg_2.x, ~(~(~_wgslsmith_mult_vec2_u32(u_input.b.yy, vec2<u32>(56089u, arg_1.a)))), !arg_2.x);
}

fn func_1(arg_0: vec3<f32>) -> bool {
    global0 = array<vec2<f32>, 11>();
    let var_0 = func_4(_wgslsmith_mod_vec2_i32(max(~vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 5u)], 1i) >> (func_2() % vec2<u32>(32u)), ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], u_input.c)), select(firstLeadingBit(-vec2<i32>(u_input.a, -1i)), countOneBits(vec2<i32>(u_input.e, -46866i)), !func_3(vec4<f32>(arg_0.x, 1598f, arg_0.x, -500f)))), Struct_3(~26365u), select(vec4<bool>(!all(vec2<bool>(false, true)), true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(true, true, select(false, true, false))), select(vec4<bool>(func_3(vec4<f32>(-613f, 1392f, -592f, arg_0.x)), select(true, false, true), any(vec3<bool>(false, true, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true));
    global1 = array<i32, 5>();
    let var_1 = _wgslsmith_div_f32(988f, 1836f);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1704f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1719f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), true))) - vec2<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1117f))));
    return any(select(vec2<bool>(var_0.c, !func_4(vec2<i32>(-4721i, -1i), Struct_3(u_input.d), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)).c), select(vec2<bool>(!var_0.c, false), select(!vec2<bool>(var_0.c, var_0.a), vec2<bool>(false, false), func_3(vec4<f32>(var_1, var_1, var_1, 788f))), select(select(vec2<bool>(var_0.a, true), vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, false)), select(vec2<bool>(true, false), vec2<bool>(true, var_0.c), false), !vec2<bool>(var_0.c, var_0.a))), vec2<bool>(any(vec2<bool>(false, var_0.a)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 11>();
    global0 = array<vec2<f32>, 11>();
    let var_0 = Struct_1(!func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1336f, -1358f, 1000f), vec3<f32>(-560f, 216f, -319f), vec3<bool>(true, true, true))))), vec2<u32>(u_input.d >> (0u % 32u), 80249u), true);
    let var_1 = var_0.c;
    global0 = array<vec2<f32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1237f + -405f), _wgslsmith_f_op_f32(f32(-1f) * -484f))), -1154f, _wgslsmith_f_op_f32(max(-2196f, _wgslsmith_f_op_f32(719f * -119f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-577f, -1444f, 665f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, 701f, -663f))))), vec4<f32>(-285f, -791f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1120f) - _wgslsmith_f_op_f32(abs(-1103f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-455f, -1000f)))), 1000f, vec3<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 5u)], max(global1[_wgslsmith_index_u32(78140u, 5u)], ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(23374u, 5u)], -2925i)), _wgslsmith_sub_i32(33397i, max(~(-2147483647i), 32831i))), 1291f);
}

