struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<Struct_1, 26>;

var<private> global2: f32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2.c.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_2.d * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1654f + 615f)))), arg_1));
    global0 = array<Struct_2, 27>();
    var var_2 = Struct_2(arg_2.a.xy);
    var var_3 = false;
    return -22048i;
}

fn func_1() -> vec3<u32> {
    let var_0 = -2147483647i | -_wgslsmith_mod_i32(9892i, func_2(-vec3<i32>(-37807i, -1i, 43895i), 193f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 40702u, 8375u), 26u)]));
    let var_1 = -715f;
    let var_2 = vec2<bool>(0u != ~u_input.a.x, (1u << (u_input.a.x % 32u)) >= _wgslsmith_mod_u32(~(~u_input.a.x), ~(6575u | u_input.a.x)));
    var var_3 = ~u_input.a.x < u_input.a.x;
    var_3 = false;
    return _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a.x, 1u, min(u_input.a.x, u_input.a.x)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 110850u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 36218u), vec3<u32>(u_input.a.x, 0u, u_input.a.x))) % vec3<u32>(32u)), ~(~firstLeadingBit(vec3<u32>(5787u, 20945u, 24147u)))), vec3<u32>(u_input.a.x, 0u, 4294967295u) & ((vec3<u32>(u_input.a.x, u_input.a.x, 95970u) & ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(14158u, 41645u, 4294967295u), vec3<u32>(1u, 4294967295u, 34995u) >> (vec3<u32>(u_input.a.x, u_input.a.x, 26571u) % vec3<u32>(32u)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-261f, -1824f), arg_2))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(-1176f, -1259f)))))));
    var var_1 = false;
    let var_2 = u_input.a.x;
    global0 = array<Struct_2, 27>();
    let var_3 = global0[_wgslsmith_index_u32(max(1u, 45314u), 27u)];
    return abs(24627u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 26>();
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 27u)];
    global1 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_mult_vec3_u32(func_1(), vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 19428u, 4294967295u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), 14888u) >> (~(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 13655u), vec3<u32>(54181u, u_input.a.x, u_input.a.x))) % vec3<u32>(32u)));
    var var_2 = global0[_wgslsmith_index_u32(var_1.x ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(~func_3(vec2<i32>(54136i, 15990i), global1[_wgslsmith_index_u32(65532u, 26u)], var_0.a.x), ~0u), u_input.a.x), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(step(-284f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))))), 50445u, ~_wgslsmith_mod_i32(select(_wgslsmith_mult_i32(2147483647i, 0i), ~2147483647i, true), 1i));
}

