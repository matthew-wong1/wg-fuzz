struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<bool, 16>;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, true), vec4<i32>(47767i, -1i, 14845i, 1i), i32(-2147483648), i32(-2147483648), vec2<f32>(-1197f, 1833f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(arg_3.wwx));
    return 1u;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> f32 {
    global2 = array<bool, 16>();
    var var_0 = vec4<i32>(abs(-countOneBits(global3.d) & 2147483647i), 31275i, -64805i, -(~global3.c));
    global3 = Struct_1(!select(select(global3.a, vec2<bool>(arg_2.c, true), select(global3.a, global3.a, global3.a)), vec2<bool>(all(vec3<bool>(false, global3.a.x, false)), true), arg_2.c), -global3.b | (global3.b & firstTrailingBit(-global3.b)), 24400i, ~firstLeadingBit(arg_2.a), _wgslsmith_f_op_vec2_f32(step(global3.e, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-189f, _wgslsmith_f_op_f32(global3.e.x + global3.e.x)))))));
    return 666f;
}

fn func_2() -> vec3<f32> {
    var var_0 = vec3<i32>(u_input.e.x, -(i32(-1i) * -1i), -2147483647i);
    let var_1 = u_input.b.ywz;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_3(-484f, ~4294967295u, Struct_3(2147483647i, vec2<u32>(abs(var_1.x), min(u_input.d, u_input.b.x)), global1.x))), global3.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e.x) + global3.e.x));
    global0 = global3.c | (global3.d | ((countOneBits(2147483647i) & -u_input.a) >> (_wgslsmith_clamp_u32(~u_input.d, select(50879u, var_1.x, true), _wgslsmith_mod_u32(var_1.x, 0u)) % 32u)));
    let var_3 = -3376i;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = global3.e.x;
    let var_2 = -12311i;
    global1 = global3.a;
    var var_3 = vec2<u32>(_wgslsmith_mod_u32(~u_input.b.x | func_1(global3.c, ~u_input.b.yx, Struct_2(1i, Struct_1(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 16u)]), vec4<i32>(global3.d, u_input.e.x, u_input.e.x, u_input.c), var_2, -16522i, global3.e), vec4<f32>(global3.e.x, -932f, global3.e.x, global3.e.x), Struct_1(vec2<bool>(true, true), vec4<i32>(var_2, -1i, -1i, 1349i), -2147483647i, var_2, global3.e)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-414f, global3.e.x, -1545f, global3.e.x), vec4<f32>(1915f, global3.e.x, -631f, global3.e.x)))), abs(min(1u, _wgslsmith_add_u32(u_input.b.x, u_input.d)))), ~select(_wgslsmith_dot_vec3_u32(u_input.b.xxw, ~u_input.b.yxz), u_input.b.x, global2[_wgslsmith_index_u32(0u, 16u)]));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, reverseBits(_wgslsmith_div_vec4_u32(countOneBits(u_input.b), vec4<u32>(_wgslsmith_mult_u32(var_3.x, var_3.x), ~u_input.d, _wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(var_3.x, 1u)), 192u))), vec2<i32>(-30185i, _wgslsmith_mult_i32(u_input.c, -2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, 1602f, global3.e.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.e.x, 1000f, -1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(-global3.e.x), global3.e.x))), abs(1i));
}

