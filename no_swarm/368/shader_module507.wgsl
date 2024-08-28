struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(9092i, i32(-2147483648));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec2<u32>;

var<private> global3: array<u32, 32> = array<u32, 32>(0u, 32976u, 82268u, 1u, 77399u, 64972u, 33364u, 4294967295u, 33822u, 4294967295u, 1u, 9206u, 4294967295u, 4294967295u, 4294967295u, 25628u, 1u, 533u, 0u, 39468u, 4294967295u, 1u, 23497u, 6545u, 34197u, 1u, 4294967295u, 0u, 38741u, 0u, 4294967295u, 0u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> u32 {
    global0 = u_input.a;
    var var_0 = arg_1;
    var_0 = -977f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-937f, -279f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(552f, -240f)), _wgslsmith_f_op_f32(-arg_1)));
    var_0 = arg_1;
    return ~4294967295u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> bool {
    global2 = vec2<u32>(~min(~0u, _wgslsmith_mult_u32(arg_1.x, u_input.e.x)) ^ ~global2.x, func_3(Struct_1(global1.x, true), -1204f, global0.x));
    var var_0 = countOneBits(vec2<u32>(10581u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 10513u, 25909u), _wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(u_input.e.www, vec3<u32>(45261u, 1u, 4294967295u))))));
    var_0 = arg_1;
    global1 = vec2<bool>(arg_3 != all(select(!vec2<bool>(arg_3, false), vec2<bool>(false, true), !vec2<bool>(global1.x, arg_3))), select(all(vec3<bool>(true, all(vec2<bool>(arg_3, false)), false)), any(!vec4<bool>(true, global1.x, global1.x, false)), select(any(vec3<bool>(arg_3, arg_3, arg_3)), true, (42407u == arg_1.x) != true)));
    var var_1 = Struct_2(true, arg_0.x, vec4<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1194f, -937f)), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_div_f32(arg_2, -816f))), arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -743f)))), Struct_1(global1.x && global1.x, true));
    return arg_3;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: i32) -> vec2<u32> {
    global1 = select(vec2<bool>(global1.x & func_2(u_input.a, ~u_input.e.xw, -458f, arg_3 > u_input.d.x), global1.x), select(vec2<bool>(global1.x & any(vec3<bool>(true, false, global1.x)), _wgslsmith_f_op_f32(-arg_2.x) == _wgslsmith_f_op_f32(ceil(-185f))), select(select(vec2<bool>(true, global1.x), !vec2<bool>(false, global1.x), all(vec2<bool>(true, false))), vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, global1.x)), func_2(vec2<i32>(global0.x, global0.x), u_input.b.xx, -543f, select(global1.x, true, func_2(vec2<i32>(global0.x, global0.x), vec2<u32>(36155u, 51745u), -393f, true)))), !select(vec2<bool>(global2.x <= arg_1.x, global1.x), select(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x)), vec2<bool>(true, global1.x), !global1.x), arg_0 > _wgslsmith_f_op_f32(arg_2.x * 582f)));
    global0 = vec2<i32>(-2147483647i, 16763i);
    var var_0 = Struct_2(global1.x, -1i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 210f, arg_0, arg_0) * vec4<f32>(arg_0, arg_0, 1216f, arg_2.x))))))), Struct_1(true, false));
    global2 = ~vec2<u32>(abs(~u_input.b.x >> (_wgslsmith_add_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 0u) % 32u)), global3[_wgslsmith_index_u32(0u | func_3(var_0.d, _wgslsmith_f_op_f32(-arg_0), -1i), 32u)]);
    var var_1 = 1u;
    return ~vec2<u32>(~global2.x, ~(0u | global2.x) | countOneBits(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec2<bool>(u_input.d.x == global0.x, select(false, !global1.x, true));
    let var_0 = (_wgslsmith_mult_i32(u_input.a.x, global0.x) << (38354u % 32u)) << (11449u % 32u);
    let var_1 = u_input.a;
    let var_2 = global1.x;
    global2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.e.yy, abs(~vec2<u32>(70445u, 4294967295u))), _wgslsmith_mod_vec2_u32(u_input.e.wy, ~(abs(u_input.b.xx) >> (_wgslsmith_div_vec2_u32(u_input.e.zw, vec2<u32>(37051u, global2.x)) % vec2<u32>(32u)))));
    global2 = ~func_1(371f, vec2<u32>(global2.x, ~(global3[_wgslsmith_index_u32(global2.x, 32u)] & global3[_wgslsmith_index_u32(1u, 32u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(692f, 1042f, -1601f))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(732f))) + 1f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f * 1372f) * _wgslsmith_div_f32(-932f, -521f))), _wgslsmith_f_op_f32(ceil(-2275f)), _wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-666f, _wgslsmith_div_f32(1000f, -274f), true & global1.x)) + _wgslsmith_div_f32(2077f, _wgslsmith_f_op_f32(-283f + -952f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3216f, -214f, -1000f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1155f, 718f, 1100f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-729f, 1260f, 1000f), vec3<f32>(737f, -486f, 158f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(140f, -202f, -381f) * vec3<f32>(-1335f, -535f, -740f))))), ~abs(reverseBits(u_input.e)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-186f, _wgslsmith_f_op_f32(-399f - 1892f))), _wgslsmith_f_op_f32(-806f - _wgslsmith_div_f32(-1337f, -139f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1200f * -364f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1137f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(530f, 753f, -675f, 1216f), vec4<f32>(604f, -1567f, 1000f, 1381f))))), !global1.x)));
}

