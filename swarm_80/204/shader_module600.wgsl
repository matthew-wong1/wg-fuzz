struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: i32 = 0i;

var<private> global2: array<Struct_2, 4>;

var<private> global3: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(4294967295u, 0u), vec2<u32>(12677u, 60332u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 30369u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u));

var<private> global4: u32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec4<u32> {
    let var_0 = vec3<i32>(-2147483647i, _wgslsmith_mod_i32(-10006i, ~(-u_input.d.x)), countOneBits(u_input.d.x));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.c, 6u)], vec2<u32>(arg_1, u_input.c) | vec2<u32>(47893u, _wgslsmith_sub_u32(arg_1, 1u))), 17u)];
    global2 = array<Struct_2, 4>();
    return vec4<u32>(_wgslsmith_mod_u32(2925u, _wgslsmith_add_u32(arg_1 << (30268u % 32u), arg_1) ^ ~53914u), _wgslsmith_mult_u32(~arg_1, ~0u), 1u, _wgslsmith_sub_u32(~(~u_input.c), 360u));
}

fn func_2() -> Struct_1 {
    let var_0 = 51290u >> (0u % 32u);
    let var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)));
    global1 = firstLeadingBit(u_input.d.x);
    let var_2 = max(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, var_0, 1u, u_input.a), vec4<u32>(1u, 8285u, var_0, 41559u), func_3(vec3<f32>(-386f, 328f, -511f), u_input.c)) >> (~_wgslsmith_sub_vec4_u32(u_input.b, u_input.b) % vec4<u32>(32u)), u_input.b) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(u_input.b), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(var_0, 0u, u_input.a, 4294967295u))), countOneBits(select(1u, 0u, true)), _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b.xyw, u_input.b.wyy), _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.b.yz)), u_input.a), ~(~(~u_input.b))) % vec4<u32>(32u));
    var var_3 = var_2.zzy;
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(-377f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(203f, 1294f) - _wgslsmith_f_op_f32(ceil(464f)))), _wgslsmith_f_op_f32(f32(-1f) * -662f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(round(-2588f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, -551f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_1() -> u32 {
    let var_0 = func_2();
    var var_1 = !all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, true, false), true), false));
    var var_2 = (_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.d.x, 1i, -1i, 0i), -(~vec4<i32>(1i, -17471i, 0i, -26010i))) & _wgslsmith_sub_vec4_i32(~u_input.d, vec4<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), ~global0[_wgslsmith_index_u32(52190u, 17u)], -41439i, min(41285i, -1i)))) ^ vec4<i32>(9669i, -23372i, u_input.d.x, (i32(-1i) * -global0[_wgslsmith_index_u32(u_input.a, 17u)]) | 26518i);
    let var_3 = true;
    global3 = array<vec2<u32>, 6>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -_wgslsmith_mult_i32(u_input.d.x, u_input.d.x);
    let var_0 = global3[_wgslsmith_index_u32(u_input.a, 6u)] & vec2<u32>(~(~func_1()), _wgslsmith_mult_u32(6876u, 1u));
    let var_1 = global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1834f, -672f, -137f), vec3<f32>(428f, 1255f, 1530f), vec3<bool>(true, false, false))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(913f, 1000f, 486f) + vec3<f32>(414f, -377f, 361f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(392f, -464f, 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2264f, -758f, -1452f) * vec3<f32>(-1000f, -330f, 725f))))), ~44110u).x, 4u)];
    global3 = array<vec2<u32>, 6>();
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2358f, -1122f, var_1.c.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.a.x), var_1.a.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(235f, -742f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.d.a.x)) - _wgslsmith_f_op_f32(-var_1.c.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(774f, -1000f, _wgslsmith_f_op_f32(select(var_1.d.a.x, var_1.d.a.x, false)), var_1.c.a.x) - vec4<f32>(func_2().a.x, -604f, _wgslsmith_f_op_f32(117f - -167f), _wgslsmith_f_op_f32(max(-1461f, var_1.a.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2.zx), var_1.c.a.x);
}

