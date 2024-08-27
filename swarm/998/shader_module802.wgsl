struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(2147483647i, 1i, 45496i, 2147483647i), false, 49957u);

var<private> global2: Struct_1;

var<private> global3: array<u32, 9>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: f32) -> vec3<u32> {
    var var_0 = -vec4<i32>(select(0i, global2.a.x, true), global2.a.x, -(~_wgslsmith_div_i32(u_input.a, 0i)), min(global2.a.x, _wgslsmith_mod_i32(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a))));
    var var_1 = -903f;
    let var_2 = true;
    var_1 = 1075f;
    var_0 = global1.a;
    return arg_1.yzw;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(countOneBits((abs(41080u) << (global2.c % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), func_3(vec3<f32>(-970f, -837f, -1572f), vec4<u32>(3719u, global2.c, 13413u, global1.c), -1478f))), global1.c);
    var var_1 = 2147483647i;
    let var_2 = Struct_1(min(abs(_wgslsmith_div_vec4_i32(~vec4<i32>(46878i, -1i, u_input.a, 16862i), select(global1.a, vec4<i32>(u_input.a, global2.a.x, global1.a.x, -1i), vec4<bool>(global2.b, true, true, global2.b)))), min(vec4<i32>(1i, global2.a.x, -57511i, global1.a.x) & select(vec4<i32>(0i, -1i, global2.a.x, global2.a.x), vec4<i32>(u_input.a, global2.a.x, 43723i, global2.a.x), global2.b), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.a.x, 0i, global2.a.x, -1i), global1.a))), global2.b, abs(max(global2.c, global2.c)));
    global1 = var_2;
    global0 = array<vec3<i32>, 11>();
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> Struct_1 {
    global0 = array<vec3<i32>, 11>();
    global2 = func_2();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1401f, -870f, -122f)))), vec3<f32>(610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-898f))), 1f)));
    global2 = Struct_1(_wgslsmith_div_vec4_i32(firstLeadingBit(firstTrailingBit(global1.a)), global1.a), true && (401f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-363f * var_0.x) + var_0.x)), ~(~(1u >> ((48136u >> (global2.c % 32u)) % 32u))));
    let var_1 = arg_0;
    return Struct_1(global2.a, true, ~(~var_1.c));
}

fn func_1() -> bool {
    let var_0 = func_4(func_2(), firstTrailingBit((~global3[_wgslsmith_index_u32(0u, 9u)] & 1u) ^ reverseBits(~global3[_wgslsmith_index_u32(0u, 9u)])), -_wgslsmith_dot_vec2_i32(global1.a.yw, ~vec2<i32>(global1.a.x, global2.a.x) >> (vec2<u32>(0u, 63318u) % vec2<u32>(32u))));
    global1 = func_2();
    let var_1 = func_4(Struct_1(func_2().a, all(vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, global3[_wgslsmith_index_u32(44434u, 9u)], 36462u, var_0.c), vec4<u32>(1u, global3[_wgslsmith_index_u32(global1.c, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], global1.c) << (vec4<u32>(var_0.c, global2.c, global1.c, global3[_wgslsmith_index_u32(global2.c, 9u)]) % vec4<u32>(32u))) >> (firstLeadingBit(6890u) % 32u)), abs(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.c, 9u)], 9u)])), 15762i);
    global0 = array<vec3<i32>, 11>();
    return var_0.c > _wgslsmith_mult_u32(max(~global3[_wgslsmith_index_u32(85027u, 9u)], firstTrailingBit(global2.c)) << (var_1.c % 32u), ~global3[_wgslsmith_index_u32(global2.c, 9u)] ^ 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec4<bool>(any(!vec3<bool>(false, global1.b, global2.b)), !global1.b, true, global1.b), !vec4<bool>(true, true, func_1(), any(vec3<bool>(true, true, false))), select(select(vec4<bool>(global1.b, global1.b, global2.b, true), !vec4<bool>(global1.b, global1.b, true, true), global1.b), select(vec4<bool>(false, global1.b, global1.b, true), vec4<bool>(global2.b, true, global1.b, global1.b), vec4<bool>(true, false, true, true)), !vec4<bool>(global2.b, true, global1.b, true))));
    global3 = array<u32, 9>();
    let var_1 = Struct_1(-vec4<i32>(global1.a.x, 0i, reverseBits(-18832i), -66817i), any(!vec3<bool>(global1.b, all(vec2<bool>(false, false)), true)), 17510u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-560f, _wgslsmith_f_op_f32(-333f + 454f)))), ~_wgslsmith_mod_u32(~global2.c, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 8008u), 9u)]), var_1.a.x, vec3<u32>(max(~func_4(Struct_1(vec4<i32>(global2.a.x, global2.a.x, -23767i, global2.a.x), global1.b, var_1.c), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.c, 9u)], 9u)], 9u)], u_input.a).c, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.c, global2.c), ~vec3<u32>(45109u, 93391u, 103938u))), func_4(func_2(), global3[_wgslsmith_index_u32(~(~9587u), 9u)], -1i).c, global2.c));
}

