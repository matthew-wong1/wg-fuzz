struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<u32>, 32>;

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global4: array<Struct_4, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: bool) -> vec3<i32> {
    global1 = array<vec4<u32>, 32>();
    let var_0 = Struct_3(arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1226f, global2.b.x, 451f, 624f))))), ~(~max(49918i, arg_0.b.a)) ^ 1i, Struct_1(_wgslsmith_f_op_f32(abs(-323f)), vec4<f32>(350f, global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x * global2.b.x) * -1037f), global2.a)), !select(vec4<bool>(all(arg_0.a), u_input.a.x > 1u, !arg_1, true), !select(vec4<bool>(arg_2, true, arg_2, arg_1), vec4<bool>(true, arg_2, true, arg_1), arg_2), !(737f != global2.a)));
    let var_1 = ~arg_0.b.b.zy;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.d.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1047f, var_0.b.x)))))));
    var var_3 = arg_0;
    return -(-(~(~vec3<i32>(-40783i, 0i, -6070i))) >> (_wgslsmith_mod_vec3_u32(reverseBits(~u_input.a), vec3<u32>(~var_3.b.b.x, var_1.x, 1u)) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_4) -> i32 {
    var var_0 = abs(0i);
    let var_1 = func_3(Struct_5(!vec3<bool>(false, true, any(vec3<bool>(true, false, true))), Struct_2(2147483647i, vec3<u32>(1u, u_input.a.x & u_input.a.x, ~u_input.a.x))), true, any(select(vec2<bool>(false, 8578u < u_input.c.x), vec2<bool>(true, 568f != global2.b.x), !global3[_wgslsmith_index_u32(13328u, 17u)])));
    var var_2 = Struct_2((_wgslsmith_dot_vec4_i32(-vec4<i32>(-71423i, -2147483647i, var_1.x, 2147483647i), vec4<i32>(-37758i, -1i, 2147483647i, u_input.b) ^ vec4<i32>(-1i, u_input.b, var_1.x, -1i)) >> ((u_input.a.x >> (abs(54409u) % 32u)) % 32u)) ^ ~u_input.b, vec3<u32>(~(~9374u), 4294967295u, _wgslsmith_div_u32(60187u, min(128531u, 46006u))) & ~(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) << (min(u_input.a, vec3<u32>(104691u, u_input.c.x, u_input.c.x)) % vec3<u32>(32u))));
    let var_3 = u_input.b;
    var_0 = var_2.a | reverseBits(_wgslsmith_mult_i32(var_3, u_input.b));
    return var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-429f, _wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - -648f))))));
    global0 = u_input.b;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.xyx * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-684f, -1417f, -2631f) * vec3<f32>(1194f, 2107f, arg_0.a)))) - vec3<f32>(_wgslsmith_f_op_f32(global2.a + global2.b.x), global2.b.x, _wgslsmith_f_op_f32(-428f - global2.a)))));
    var var_1 = abs(u_input.c);
    global0 = -func_2(Struct_4(arg_0));
    return 1847f < global2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(select(vec3<bool>(true, func_1(Struct_1(-729f, global2.b), 0u), true || (20229u == u_input.c.x)), vec3<bool>(true, true, true), false), Struct_2(u_input.b, ~(vec3<u32>(47955u, 1u, 28723u) & min(u_input.a, vec3<u32>(68074u, 4294967295u, u_input.c.x)))));
    global1 = array<vec4<u32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(var_0.b.b.x | 4294967295u, var_0.b.b.x) ^ _wgslsmith_mult_u32(~var_0.b.b.x, _wgslsmith_mod_u32(1u, var_0.b.b.x))));
}

