struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(0u);

var<private> global2: bool;

var<private> global3: array<Struct_1, 17>;

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = any(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))));
    let var_0 = 1u;
    global4 = array<Struct_1, 12>();
    var var_1 = Struct_1(arg_0.a);
    global2 = !(!any(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), true)));
    return Struct_1(68864u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    global4 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_mod_i32(min(13854i, ~(~firstTrailingBit(u_input.d))), u_input.c.x);
    let var_1 = true;
    var_0 = _wgslsmith_dot_vec2_i32(min(~(-u_input.b.yy), vec2<i32>(firstLeadingBit(-1i), _wgslsmith_add_i32(8192i, u_input.c.x))), u_input.b.xy) | ~abs(u_input.d);
    var var_2 = u_input.d;
    return -1690f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    var var_0 = vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, arg_2.a, 68440u))), ~(~u_input.a.x) ^ _wgslsmith_sub_u32(arg_0.a, countOneBits(arg_0.a)), u_input.a.x, ~arg_2.a) | max(~abs(vec4<u32>(arg_2.a, 0u, 4294967295u, global1.a)), vec4<u32>(~firstTrailingBit(27227u), min(0u, countOneBits(1u)), u_input.a.x, abs(1u)));
    global3 = array<Struct_1, 17>();
    global1 = func_2(func_2(Struct_1(abs(arg_0.a) << (firstTrailingBit(arg_0.a) % 32u)), func_2(Struct_1(_wgslsmith_mult_u32(30960u, global1.a)), global4[_wgslsmith_index_u32(global1.a, 12u)])), global4[_wgslsmith_index_u32(var_0.x, 12u)]);
    let var_1 = func_2(global4[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_mod_u32(u_input.a.x, 1u)), 12u)], arg_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.ywx + arg_1.xxx));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, arg_1.x, _wgslsmith_f_op_f32(func_3(Struct_1(45443u), Struct_1(var_1.a), Struct_1(u_input.a.x), var_2.x)), var_2.x) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(arg_1))))) + arg_1));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(u_input.a.x, 87140u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-549f, 180f, 429f, 513f) * vec4<f32>(-319f, 2518f, -341f, -1145f)) - vec4<f32>(-1334f, -1673f, -140f, -852f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-891f, 283f, 1511f, 1288f), vec4<f32>(-573f, 366f, -1176f, -514f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-193f, 404f, 1190f, 1163f))))) - _wgslsmith_f_op_vec4_f32(func_4(Struct_1(u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_f_op_f32(f32(-1f) * -599f), -1000f, _wgslsmith_f_op_f32(func_3(func_2(arg_1, Struct_1(1u)), Struct_1(0u), func_2(Struct_1(16227u), global3[_wgslsmith_index_u32(62099u, 17u)]), _wgslsmith_div_f32(-362f, 1922f)))), global4[_wgslsmith_index_u32(6275u, 12u)], 2147483647i)));
    global4 = array<Struct_1, 12>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * -2367f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1497f, var_1.x), 1043f)), _wgslsmith_f_op_f32(sign(-166f))) * var_1.xww) + var_1.yzy);
    var var_3 = global4[_wgslsmith_index_u32(((~arg_1.a ^ ~_wgslsmith_mod_u32(arg_1.a, global1.a)) >> (reverseBits(arg_1.a) % 32u)) << (u_input.a.x % 32u), 12u)];
    return func_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~u_input.a), _wgslsmith_mult_vec3_u32(min(min(vec3<u32>(var_3.a, 44605u, arg_1.a), vec3<u32>(var_3.a, 59349u, global1.a)), u_input.a), u_input.a | _wgslsmith_div_vec3_u32(u_input.a, u_input.a))), 12u)], Struct_1(~global1.a));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = func_1(41161i, Struct_1(global1.a));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-248f)), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(439f)))), _wgslsmith_f_op_f32(floor(-767f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(578f, 1435f)) * _wgslsmith_f_op_f32(step(-357f, 192f))), 713f))));
    global0 = arg_2;
    let var_2 = Struct_1(~(~(abs(u_input.a.x) & _wgslsmith_add_u32(global1.a, global1.a))));
    let var_3 = arg_2;
    return select(select(select(vec4<bool>(all(vec3<bool>(true, var_3, var_3)), true, true, arg_2), select(vec4<bool>(true, true, false, var_3), select(vec4<bool>(false, true, true, arg_2), vec4<bool>(arg_2, var_3, false, var_3), vec4<bool>(false, false, false, false)), false), true), !select(vec4<bool>(var_3, false, true, false), !vec4<bool>(arg_2, true, arg_2, arg_2), arg_2), vec4<bool>(var_3, false, any(!vec3<bool>(arg_2, var_3, false)), true)), !(!(!(!vec4<bool>(true, false, var_3, false)))), true);
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    return func_2(Struct_1(~(~(~arg_3.a))), global4[_wgslsmith_index_u32(select(~1u, _wgslsmith_dot_vec3_u32(~u_input.a, u_input.a), true), 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = Struct_1(u_input.a.x);
    global3 = array<Struct_1, 17>();
    var var_1 = func_6(vec3<f32>(_wgslsmith_f_op_f32(-1728f + _wgslsmith_f_op_f32(1276f + -257f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(178f, 1310f))), _wgslsmith_f_op_f32(abs(-757f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1620f * _wgslsmith_div_f32(-540f, -1546f)))), Struct_1(0u), func_5(-40751i, func_1(u_input.d, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a >> (global1.a % 32u), ~u_input.a.x), 12u)]), true, Struct_1(_wgslsmith_add_u32(0u, u_input.a.x))), global4[_wgslsmith_index_u32(abs(~global1.a), 12u)]);
    var var_2 = ~var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a, 1u, u_input.a.x, var_1.a), vec4<u32>(global1.a, 0u, 4294967295u, u_input.a.x) & vec4<u32>(var_1.a, 1u, u_input.a.x, 0u)) & abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, u_input.a.x, var_1.a, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, u_input.a.x, global1.a, 22843u), vec4<u32>(4294967295u, var_0.a, u_input.a.x, var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1015f, _wgslsmith_f_op_f32(f32(-1f) * -1656f))))), var_1.a, global1.a);
}

