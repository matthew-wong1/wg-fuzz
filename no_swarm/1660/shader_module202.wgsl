struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<f32>(-780f, -1098f, 1000f), vec2<u32>(4294967295u, 41318u), -36175i), Struct_1(vec3<f32>(-1292f, 960f, 2320f), vec2<u32>(30633u, 0u), i32(-2147483648)), Struct_1(vec3<f32>(725f, -547f, 469f), vec2<u32>(4294967295u, 12031u), 1i), Struct_1(vec3<f32>(-1000f, -677f, -1427f), vec2<u32>(22466u, 4294967295u), 32873i), Struct_1(vec3<f32>(-545f, -1000f, 254f), vec2<u32>(30693u, 1u), 0i), Struct_1(vec3<f32>(476f, 790f, -410f), vec2<u32>(0u, 64216u), 1i), Struct_1(vec3<f32>(745f, 226f, 1725f), vec2<u32>(7614u, 10709u), 1i), Struct_1(vec3<f32>(-688f, 606f, 569f), vec2<u32>(6163u, 0u), 8521i));

var<private> global3: vec3<bool>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(71527u, 367u), 49079u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18761u), vec2<u32>(4294967295u, 0u))) & 4294967295u, 8u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1463f), -347f, _wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x))), !select(vec3<bool>(false, global3.x, false), vec3<bool>(false, global3.x, false), false)))), vec2<u32>(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, var_0.b.x), vec4<u32>(0u, 1u, 39451u, var_0.b.x), true), max(vec4<u32>(1u, 19279u, 78689u, var_0.b.x), vec4<u32>(36105u, 4294967295u, var_0.b.x, var_0.b.x))), 23096u), -31555i);
    global1 = -(firstTrailingBit(~select(vec4<i32>(var_0.c, -1i, 0i, 15641i), u_input.a, false)) & ~_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(0i, -2147483647i, -17290i, 27452i)));
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(~(~15097u), 8u)]);
    var var_3 = reverseBits(1i);
    return 23938u;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<f32>) -> bool {
    global1 = u_input.a;
    var var_0 = vec2<bool>(false & arg_1, !(~min(0u, 62411u) > func_3()));
    global3 = !vec3<bool>(-min(u_input.a.x, 4282i) >= reverseBits(_wgslsmith_div_i32(u_input.a.x, 0i)), false, true);
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(15458u, 8u)]);
    var var_2 = vec2<i32>(6115i, -((u_input.a.x << (var_1.a.b.x % 32u)) ^ firstLeadingBit(-2147483647i)));
    return !(!(1368f > _wgslsmith_f_op_f32(sign(-1000f))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global3 = vec3<bool>(false, func_2(u_input.a.yz, !global3.x, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1341f + -967f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.a.x - arg_0.a.a.x))), arg_0.a.a.x)), false);
    global3 = !(!vec3<bool>(true, all(vec3<bool>(global3.x, true, true)), false));
    global2 = array<Struct_1, 8>();
    let var_0 = -1794f;
    var var_1 = global3.x;
    return global2[_wgslsmith_index_u32(~(~(~11035u | _wgslsmith_mult_u32(51100u, _wgslsmith_add_u32(arg_0.a.b.x, 72558u)))), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 8>();
    let var_0 = Struct_2(func_1(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1182f, -247f, -285f) * vec3<f32>(-1000f, 632f, 980f)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 36389u), vec2<u32>(4294967295u, 10293u)), -7373i))));
    var var_1 = global3.yy;
    global3 = vec3<bool>(true, !(~1u >= _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.b.x, 50000u, 4294967295u, var_0.a.b.x), vec4<u32>(45171u, 24524u, 50724u, 69786u)), vec4<u32>(12589u, 6479u, var_0.a.b.x, 30272u))), false);
    var var_2 = 517f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_0.a.a.xx);
    var var_4 = var_0;
    let var_5 = -(~reverseBits(global1.x));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x - var_0.a.a.x))) - -890f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_6)), -1271f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x + var_4.a.a.x)) + -1000f), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(697f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-866f, var_3.x))))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a.b.x, ~func_3(), 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.b.x, var_0.a.b.x >> (1u % 32u), 4344u), vec3<u32>(~var_0.a.b.x, 15157u, var_0.a.b.x | var_0.a.b.x))));
}

