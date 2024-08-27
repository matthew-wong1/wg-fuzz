struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec3<f32>, 15>;

var<private> global2: array<bool, 11>;

var<private> global3: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> u32 {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -813f);
    global0 = max(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-1i, 1i << (u_input.a.x % 32u)));
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-305f)) + 753f))))), 1200f, false));
    var var_0 = countOneBits(vec2<u32>(_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(31445u, u_input.a.x, u_input.a.x), ~vec3<u32>(28650u, 50861u, 0u))), 18584u));
    let var_1 = 24074i;
    return _wgslsmith_add_u32(~var_0.x, max(1591u, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(13783u, 1u) & firstTrailingBit(1u))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    global1 = array<vec3<f32>, 15>();
    global0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.a.xy, firstLeadingBit(arg_0.a.xx)), firstTrailingBit(arg_0.a.yz)), -(~_wgslsmith_div_i32(arg_0.a.x, -27345i))) >> (_wgslsmith_div_u32((arg_0.c >> (_wgslsmith_mod_u32(4294967295u, 1u) % 32u)) & ~4294967295u, arg_0.c) % 32u);
    let var_0 = vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(2237f))))));
    global3 = arg_1.a.x;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-550f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -613f), var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.x, var_0.x, arg_0.e.x)))))), arg_1.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(383f, -700f)) * -472f), -2369f) + arg_1.a.x);
}

fn func_2() -> u32 {
    var var_0 = ~(u_input.a.x << (u_input.a.x % 32u));
    var_0 = (u_input.a.x & min(~(u_input.a.x ^ 4294967295u), ~func_1())) << (u_input.a.x % 32u);
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1270f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(597f)) + _wgslsmith_f_op_f32(-361f + 854f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1689f * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(33511i, -2147483647i, 1i), 1i, u_input.a.x, -1i, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], false, true)), Struct_2(vec4<f32>(791f, 180f, -242f, -499f)))))), 1000f, -676f));
    let var_2 = select(vec3<bool>(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(59394i, 1i, 5747i), 0i, 51516u, -1i, vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], true)), Struct_2(vec4<f32>(241f, var_1.a.x, var_1.a.x, var_1.a.x)))) > _wgslsmith_f_op_f32(abs(var_1.a.x)), !any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], true)) && true, true), select(select(vec3<bool>(!global2[_wgslsmith_index_u32(13980u, 11u)], global2[_wgslsmith_index_u32(select(u_input.a.x, 0u, false), 11u)], global2[_wgslsmith_index_u32(~u_input.a.x, 11u)]), select(vec3<bool>(true, true, true), select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], true, global2[_wgslsmith_index_u32(4294967295u, 11u)]), global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), true), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), any(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(11666u, 11u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(63684u, 11u)], true, true, false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(63591u, 11u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(54830u, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)])), global2[_wgslsmith_index_u32(~u_input.a.x, 11u)]))), global2[_wgslsmith_index_u32(0u, 11u)]);
    global2 = array<bool, 11>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 15>();
    global0 = 0i;
    global1 = array<vec3<f32>, 15>();
    global1 = array<vec3<f32>, 15>();
    let var_0 = !(!vec4<bool>(true, global2[_wgslsmith_index_u32(14949u << (~u_input.a.x % 32u), 11u)], any(!vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(21446u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)])), global2[_wgslsmith_index_u32(9936u, 11u)]));
    let x = u_input.a;
    s_output = StorageBuffer(1i, func_1(), select(abs(vec2<i32>(50043i, -1i) >> ((u_input.a.xw ^ u_input.a.xx) % vec2<u32>(32u))), vec2<i32>(1i, _wgslsmith_div_i32(-1i, -12243i)) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 35887u, 4294967295u, 14001u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 53554u)), func_2()) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(min(u_input.a.x, 28490u), u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 57852u), select(any(var_0.zz), var_0.x, var_0.x)), 11u)]), ~_wgslsmith_mod_vec3_u32(~u_input.a.wwx, vec3<u32>(_wgslsmith_div_u32(1u, u_input.a.x), u_input.a.x, reverseBits(9397u))), reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(16613u, u_input.a.x, 1u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 65101u, 31967u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 26586u))), u_input.a.x, u_input.a.x, 1u)));
}

