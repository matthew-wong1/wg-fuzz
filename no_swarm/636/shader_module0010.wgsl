struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 23> = array<f32, 23>(-2065f, 335f, 239f, 854f, 1227f, 606f, 561f, 110f, -1039f, -1393f, -1326f, -1155f, -1344f, 681f, -109f, -1094f, -347f, -330f, -216f, 920f, -1064f, 1045f, -1000f);

var<private> global2: bool = false;

var<private> global3: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(abs(18569u), u_input.b), 24716u, 0u, reverseBits(~1u ^ abs(arg_3.a.a))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, 53462u, 31235u, 31358u) | vec4<u32>(35230u, 55693u, 759u, arg_3.a.a)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0.c.a, 0u, u_input.b), vec4<u32>(21722u, u_input.b, 32106u, 4294967295u))), abs(firstLeadingBit(vec4<u32>(u_input.a.x, 32690u, u_input.b, 20869u)))));
    var var_1 = _wgslsmith_sub_i32(min(countOneBits(_wgslsmith_sub_i32(arg_2, 1i)) << (~43135u % 32u), arg_2), arg_2);
    var var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(55677u, 23u)]);
    global2 = ~firstTrailingBit(arg_3.c.a) != reverseBits(~_wgslsmith_mult_u32(110268u & arg_0.a.a, 0u));
    global1 = array<f32, 23>();
    return ~(vec4<i32>(-1i) * -vec4<i32>(-14819i, 0i << (0u % 32u), 0i, ~arg_2));
}

fn func_2() -> bool {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(~(~u_input.b));
    var var_2 = Struct_2(var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-51669i), -59372i, ~42931i, ~(-22959i)), min(reverseBits(vec4<i32>(76268i, -2147483647i, -2620i, -52i)), func_3(Struct_2(Struct_1(var_1.a), true, var_1), false, -2147483647i, Struct_2(Struct_1(var_1.a), true, Struct_1(26581u))))) >= _wgslsmith_mult_i32(select(-2147483647i << (var_1.a % 32u), -15120i >> (var_1.a % 32u), true), i32(-1i) * -14469i), Struct_1(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 622u, 1u), _wgslsmith_mult_u32(u_input.b, var_1.a))));
    var_0 = 4294967295u;
    global0 = !((~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.a, var_2.a.a), vec3<u32>(11939u, 4178u, 19166u)) == _wgslsmith_div_u32(28582u, 1u ^ u_input.a.x)) && all(!select(vec2<bool>(false, true), vec2<bool>(true, var_2.b), var_2.b)));
    return any(select(global3[_wgslsmith_index_u32(var_1.a, 13u)], !select(!global3[_wgslsmith_index_u32(u_input.b, 13u)], global3[_wgslsmith_index_u32(~u_input.a.x, 13u)], false), true));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = true;
    let var_1 = Struct_2(arg_0, false, Struct_1(arg_0.a));
    var var_2 = var_1.a;
    global2 = var_2.a >= min(~14609u, 42654u);
    let var_3 = !select(var_0, var_1.b, var_0) | true;
    return select(!vec3<bool>(false, false, var_1.b), vec3<bool>(true | (any(vec2<bool>(var_0, true)) || any(vec3<bool>(false, var_0, true))), select(var_0, (var_0 != true) || true, func_2()), var_1.b), select(!vec3<bool>(var_1.b, var_3 | true, var_3 && true), select(select(!vec3<bool>(true, true, var_3), !vec3<bool>(var_0, true, var_3), any(vec2<bool>(true, var_1.b))), !(!vec3<bool>(var_3, var_3, var_1.b)), !select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(false, false, var_3), vec3<bool>(var_0, var_3, true))), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x ^ 14786u;
    global0 = any(select(func_1(Struct_1(u_input.b >> (u_input.a.x % 32u))), vec3<bool>(false, true, false || all(vec2<bool>(false, true))), true));
    var_0 = u_input.b;
    let var_1 = Struct_1(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 1110u), vec3<u32>(u_input.b, u_input.b, 22754u) << (vec3<u32>(u_input.a.x, 0u, 8109u) % vec3<u32>(32u))), ~15906u, true));
    var_0 = u_input.a.x;
    var var_2 = true;
    let var_3 = -10105i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1599f, global1[_wgslsmith_index_u32(min(var_1.a, 33867u), 23u)], _wgslsmith_f_op_f32(f32(-1f) * -1498f), global1[_wgslsmith_index_u32(u_input.b, 23u)])))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_1.a, 23u)], 797f, global1[_wgslsmith_index_u32(1u, 23u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], -1590f, -2067f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1126f, -1000f, 322f) - vec3<f32>(global1[_wgslsmith_index_u32(var_1.a, 23u)], 821f, 531f))))), global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(0u, u_input.b | 79673u)) >> (max(2004u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, var_1.a), 16835u)) % 32u), 23u)]);
}

