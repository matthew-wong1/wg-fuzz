struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: array<Struct_2, 16>;

var<private> global2: array<bool, 12> = array<bool, 12>(true, false, true, false, false, false, true, false, false, false, true, false);

var<private> global3: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(true, Struct_1(false, 68392i, -1i, vec4<u32>(36965u, 3372u, 4294967295u, 86698u)), false, Struct_1(false, -1i, 7901i, vec4<u32>(55180u, 4294967295u, 12648u, 44438u)), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(false, Struct_1(false, 3310i, 2727i, vec4<u32>(1u, 35327u, 1u, 25142u)), false, Struct_1(false, -1i, -22626i, vec4<u32>(8467u, 31419u, 0u, 31796u)), vec2<i32>(91706i, 12521i)));

var<private> global4: array<vec4<i32>, 22>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(arg_0.x, 2965u | (36696u >> (arg_0.x % 32u)), countOneBits(~u_input.a)), 12u)], _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(countOneBits(vec3<i32>(-34372i, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(14237u, 22u)]))), vec3<i32>(-1i, -27199i, 6336i) & ~vec3<i32>(13255i, 1i, u_input.b.x)), -43931i), _wgslsmith_div_i32(~u_input.b.x << (~u_input.a % 32u), _wgslsmith_mult_i32(min(~u_input.b.x, 13257i), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_0.x, 22u)] << (73062u % 32u), _wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 22u)])))), abs(~max(vec4<u32>(arg_0.x, 1u, u_input.a, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, arg_0.x, u_input.a), vec4<u32>(arg_0.x, 1u, 1u, u_input.a)))));
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(12550u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(60055u, 50290u), 74118u ^ var_0.d.x, ~var_0.d.x, ~u_input.a), vec4<u32>(1u, reverseBits(u_input.a), 1u, countOneBits(0u)))), 12u)], -reverseBits(0i), -2147483647i, var_0.d);
    let var_2 = true;
    var_0 = Struct_1(true, u_input.b.x, var_1.c, var_1.d);
    global4 = array<vec4<i32>, 22>();
    return _wgslsmith_f_op_f32(abs(-924f));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(vec3<u32>(1u, u_input.a, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(57719u, 0u, 7976u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 50272u, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), min(vec4<u32>(u_input.a, u_input.a, u_input.a, 12396u), vec4<u32>(30727u, u_input.a, u_input.a, 34719u))))), !(!select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], false), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 12u)], false, false), select(true, global2[_wgslsmith_index_u32(u_input.a, 12u)], false)))));
    global4 = array<vec4<i32>, 22>();
    global2 = array<bool, 12>();
    global3 = array<Struct_2, 2>();
    global3 = array<Struct_2, 2>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1576f)))))))) * 172f);
}

fn func_1() -> StorageBuffer {
    let var_0 = -1601i;
    global4 = array<vec4<i32>, 22>();
    global3 = array<Struct_2, 2>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1125f, -1147f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(731f, 2258f) - vec2<f32>(-1208f, -1004f))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-663f, 1020f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-648f, 380f) + vec2<f32>(619f, 120f)), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)])))))));
    global4 = array<vec4<i32>, 22>();
    return StorageBuffer(u_input.a, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -global4[_wgslsmith_index_u32(u_input.a, 22u)];
    let var_1 = true;
    global2 = array<bool, 12>();
    global1 = array<Struct_2, 16>();
    global2 = array<bool, 12>();
    global1 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = func_1();
}

