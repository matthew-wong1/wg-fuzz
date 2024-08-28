struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, true, true, false, false, false, false, false, true, true, false, true, false, false, false, true, true, true);

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-9460i, 2147483647i, 2289i, -21663i), vec4<i32>(2291i, -1i, 6830i, 0i), vec4<i32>(0i, -21259i, i32(-2147483648), -21986i), vec4<i32>(9217i, -664i, 13786i, -72586i), vec4<i32>(2147483647i, 38091i, 0i, -1i));

var<private> global3: f32;

var<private> global4: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-global1.x)), global1.x)));
    var var_1 = true;
    var_1 = true;
    global0 = array<bool, 18>();
    global3 = var_0.x;
    return vec2<f32>(168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + 1137f));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global4 = true;
    var var_0 = 647f;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-424f, -233f)) - _wgslsmith_f_op_vec2_f32(func_3(reverseBits(arg_0.yy) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(128312u, 11574u, 30303u, 1u), vec4<u32>(59663u, 6963u, 32291u, 4294967295u), global0[_wgslsmith_index_u32(0u, 18u)]), ~vec4<u32>(1u, 14206u, 10284u, 0u)), 18u)])));
    global2 = array<vec4<i32>, 5>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(605f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(792f, -1545f)), _wgslsmith_f_op_f32(var_1.x + -1626f)))) * 309f);
    return _wgslsmith_add_u32(1u, firstLeadingBit(~_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 1u)));
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_2(~abs(_wgslsmith_mod_i32(u_input.b.x, -2147483647i)));
    let var_1 = u_input.b;
    global2 = array<vec4<i32>, 5>();
    global2 = array<vec4<i32>, 5>();
    var var_2 = Struct_1(_wgslsmith_mult_i32(23921i, var_0.a), vec3<u32>(func_2(abs(vec4<i32>(u_input.a, var_1.x, 2147483647i, var_1.x))) >> (12422u % 32u), 1u, 36682u));
    return vec2<u32>(~77342u, _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(69243u, var_2.b.x), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2.b.x, var_2.b.x), 4294967295u)), var_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-2360f, _wgslsmith_f_op_f32(round(1070f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1228f), 1f) - 1f), _wgslsmith_f_op_f32(sign(164f)));
    var var_1 = _wgslsmith_mult_i32(-57950i, u_input.b.x) >> (_wgslsmith_dot_vec2_u32(func_1(), _wgslsmith_add_vec2_u32(func_1(), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 72890u), vec2<u32>(10212u, 67940u)))) % 32u);
    global2 = array<vec4<i32>, 5>();
    global3 = 446f;
    global2 = array<vec4<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, global1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zx + vec2<f32>(global1.x, -154f)))))), var_0.zww, _wgslsmith_sub_u32(34830u << (1u % 32u), firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(7657u, 14040u, 32542u, 4294967295u), vec4<u32>(29710u, 20376u, 61783u, 22775u)), ~vec4<u32>(0u, 20444u, 15560u, 4294967295u)))));
}

