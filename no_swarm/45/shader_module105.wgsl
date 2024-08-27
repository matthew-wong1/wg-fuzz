struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(89651u);

var<private> global2: array<vec2<f32>, 14>;

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = !any(!vec3<bool>(true, all(vec2<bool>(false, false)), true));
    var var_1 = Struct_1(countOneBits(~22441u));
    var_0 = true;
    global3 = array<Struct_1, 7>();
    var var_2 = -45823i;
    return !vec3<bool>(true, arg_0.x < 474f, true);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(global1.a);
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.a, ~reverseBits(4294967295u)), 7u)];
    let var_1 = Struct_1(3606u);
    global3 = array<Struct_1, 7>();
    var var_2 = 1i;
    return select(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1023f, -597f, 427f, -2438f), vec4<f32>(-618f, -676f, -1465f, -1155f), vec4<bool>(false, false, false, true))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(533f, -974f, 704f, 931f), vec4<f32>(115f, -757f, -804f, -550f), false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(481f, 1484f, 420f, -583f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -1214f, 715f, -1000f))))), Struct_1(20698u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(462f, -580f, 801f)) * vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(max(-1000f, 375f)))), _wgslsmith_sub_vec4_u32(vec4<u32>(~78693u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, u_input.b), vec2<u32>(1u, 1u)), firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 51091u), vec3<u32>(0u, var_0.a, u_input.b))), ~(vec4<u32>(u_input.b, 1u, 4294967295u, var_1.a) << (vec4<u32>(0u, 44836u, 77545u, u_input.b) % vec4<u32>(32u))))).xy, vec2<bool>(true, true), !func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(351f, -1582f, 1000f, -385f), vec4<f32>(-182f, 1076f, 182f, 793f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1365f, 263f, 108f, 1161f), vec4<f32>(-999f, -496f, 556f, 271f))), vec4<bool>(true, true, true, false))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(48046u, var_0.a), vec2<u32>(29260u, global1.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(235f, -116f, 344f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2539f, -1000f, -985f) - vec3<f32>(310f, -814f, -498f))), vec4<u32>(26495u, var_1.a, var_1.a, 1u) ^ ~vec4<u32>(global1.a, var_0.a, u_input.b, 1u)).zx);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = func_3();
    var var_1 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(select(5392u, global1.a, false), ~global1.a), arg_2));
    let var_2 = firstLeadingBit(vec4<u32>(~(arg_2.x << (39109u % 32u)), max(min(var_1.a, 0u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(55739u, 18480u)), abs(56180u))), abs(_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(6838u, global1.a))), 7821u));
    let var_3 = ~vec3<i32>(u_input.a.x, countOneBits(_wgslsmith_div_i32(~(-28233i), u_input.a.x)), u_input.a.x);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -537f);
    return Struct_1(var_2.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_2, arg_2, arg_2), arg_2)));
    global2 = array<vec2<f32>, 14>();
    global3 = array<Struct_1, 7>();
    var var_1 = u_input.a.x;
    global2 = array<vec2<f32>, 14>();
    return Struct_1(firstLeadingBit(firstLeadingBit(arg_1.a)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1180f)), _wgslsmith_f_op_f32(977f + 1865f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1548f + -749f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1165f, -1193f, true))))), false || (select(0i != u_input.a.x, func_1(vec4<f32>(1000f, -1457f, -811f, -611f), arg_2, vec3<f32>(1693f, -1069f, 174f), vec4<u32>(arg_0.a, 1u, 20404u, 3459u)).x, true) || true), vec2<u32>((abs(u_input.b) | ~0u) << (78574u % 32u), 4294967295u));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-832f, 213f, -433f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1160f, -1000f, -1245f) * vec3<f32>(-551f, -902f, 1133f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(790f, _wgslsmith_f_op_f32(1404f - 126f), 2208f))), !all(vec3<bool>(false, true, global1.a <= 4294967295u)), countOneBits(countOneBits(vec2<u32>(u_input.b, arg_1.a))));
    var var_2 = any(select(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-833f, 200f, 1000f, -623f)), func_4(vec3<i32>(9087i, u_input.a.x, u_input.a.x), Struct_1(77612u), true), vec3<f32>(446f, 866f, 463f), min(vec4<u32>(18893u, var_0.a, arg_1.a, 4294967295u), vec4<u32>(49338u, var_1.a, global1.a, 0u))).xz, vec2<bool>(false, arg_2.a > arg_0.a), select(func_1(vec4<f32>(-438f, 461f, 1182f, -1000f), Struct_1(4294967295u), vec3<f32>(-468f, 169f, 180f), vec4<u32>(4294967295u, 63218u, arg_1.a, u_input.b)).zx, vec2<bool>(true, true), func_3().x))) != all(vec3<bool>(any(func_1(vec4<f32>(-1880f, -1000f, -1000f, -1362f), Struct_1(1u), vec3<f32>(-1703f, 1030f, -3653f), vec4<u32>(u_input.b, arg_0.a, u_input.b, 14116u))), true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))));
    global0 = u_input.a.x;
    var var_3 = vec3<bool>(all(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, any(vec2<bool>(false, false))), !any(vec3<bool>(false, false, true)))), func_3().x || true, true);
    return StorageBuffer(~(~(~vec2<u32>(arg_0.a, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -39202i;
    global2 = array<vec2<f32>, 14>();
    var var_0 = !(!vec2<bool>(all(vec4<bool>(false, false, false, false)) || false, any(vec3<bool>(true, true, true))));
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(600f - 1450f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(trunc(-1084f)))))), global3[_wgslsmith_index_u32(global1.a, 7u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-689f, -291f, 815f), vec3<f32>(-1360f, -2140f, -728f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1301f, -948f, 2160f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(849f, _wgslsmith_f_op_f32(-1815f * 598f), _wgslsmith_f_op_f32(round(496f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-472f, -340f, -1044f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-314f, 968f, -132f))), !var_0.x))), vec4<u32>(~(~u_input.b) << (~(u_input.b ^ 17041u) % 32u), global1.a, 1519u, 1u));
    let var_2 = Struct_1(countOneBits(u_input.b) << (38768u % 32u));
    global0 = u_input.a.x;
    let x = u_input.a;
    s_output = func_5(func_4(u_input.a.yyw, func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), true, ~(~vec2<u32>(global1.a, global1.a))), var_1.x), global3[_wgslsmith_index_u32(35871u, 7u)], var_2);
}

