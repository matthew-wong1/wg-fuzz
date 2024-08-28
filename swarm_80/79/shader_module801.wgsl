struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<f32, 24> = array<f32, 24>(-1217f, -655f, 1185f, -896f, -106f, -1483f, 197f, 148f, 1000f, 902f, 1830f, 1236f, 299f, 445f, -858f, 258f, 832f, 1042f, -1237f, -1033f, 203f, 410f, 237f, 889f);

var<private> global4: u32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(1u, 699u, 0u, global0.x)), vec4<u32>(7745u, 1u, 0u, 4294967295u), vec4<u32>(global0.x & 66524u, abs(u_input.a.x), _wgslsmith_clamp_u32(4294967295u, 60970u, 79180u), _wgslsmith_mod_u32(4294967295u, 1u)))), ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, 217u, global0.x, u_input.a.x), ~vec4<u32>(u_input.a.x, global0.x, u_input.a.x, 58400u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 0u, global0.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, global0.x))));
    let var_1 = Struct_1(arg_0);
    return _wgslsmith_mod_u32(min(var_0, ~u_input.a.x), ~1u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> bool {
    global4 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~1u, abs(u_input.a.x)), ~func_3(global3[_wgslsmith_index_u32(3683u, 24u)], vec4<bool>(true, true, false, false))), 1u, countOneBits(abs(func_3(-1437f, vec4<bool>(false, true, false, false)))), arg_1), vec4<u32>((52888u | u_input.a.x) ^ (~arg_1 >> (_wgslsmith_sub_u32(4294967295u, u_input.a.x) % 32u)), 10435u, _wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a), ~u_input.a.x << (_wgslsmith_mult_u32(~u_input.a.x, abs(13700u)) % 32u)));
    var var_0 = 1u;
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    let var_0 = Struct_1(-701f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(839f)), _wgslsmith_f_op_f32(trunc(var_0.a)))) * _wgslsmith_f_op_f32(sign(arg_0.a)));
    var var_2 = -479f;
    var var_3 = select(!(!vec2<bool>(var_0.a >= 153f, arg_1.x)), select(vec2<bool>(false, all(!arg_1.yy)), select(select(vec2<bool>(false, true), select(arg_1.xy, arg_1.xx, arg_1.yy), vec2<bool>(arg_1.x, false)), !arg_1.wx, any(select(arg_1.zyw, vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x))), true), all(!vec2<bool>(all(vec2<bool>(arg_1.x, arg_1.x)), func_2(Struct_1(global3[_wgslsmith_index_u32(global0.x, 24u)]), u_input.a.x, global3[_wgslsmith_index_u32(1u, 24u)]))));
    global0 = u_input.a;
    return ~global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    let var_1 = u_input.c;
    var var_2 = u_input.a << (vec3<u32>(4294967295u, u_input.a.x, ~func_1(Struct_1(1000f), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(ceil(1000f)))) % vec3<u32>(32u));
    let var_3 = -1i;
    global3 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(662f, -555f, 385f, global3[_wgslsmith_index_u32(58300u, 24u)]), vec4<f32>(1672f, global3[_wgslsmith_index_u32(u_input.a.x, 24u)], -1610f, -2442f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], -602f, global3[_wgslsmith_index_u32(global0.x, 24u)], global3[_wgslsmith_index_u32(u_input.a.x, 24u)]) * vec4<f32>(644f, -166f, global3[_wgslsmith_index_u32(var_2.x, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)]))))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(425f + 271f), global3[_wgslsmith_index_u32(~u_input.a.x, 24u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, global0.x), 24u)] * _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(23784u, 24u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(838f, 554f, global3[_wgslsmith_index_u32(var_2.x, 24u)], -1262f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1024f, -435f, 972f, global3[_wgslsmith_index_u32(var_2.x, 24u)]) - vec4<f32>(-1180f, global3[_wgslsmith_index_u32(1u, 24u)], 1520f, global3[_wgslsmith_index_u32(1950u, 24u)]))), vec4<f32>(_wgslsmith_f_op_f32(max(-966f, global3[_wgslsmith_index_u32(23562u, 24u)])), -192f, -863f, global3[_wgslsmith_index_u32(u_input.a.x << (global0.x % 32u), 24u)]), any(vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(658f * global3[_wgslsmith_index_u32(0u, 24u)]), global3[_wgslsmith_index_u32(~0u, 24u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_f_op_f32(f32(-1f) * -500f)))), u_input.a);
}

