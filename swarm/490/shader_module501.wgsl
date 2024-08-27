struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, -7071i, 2099i);

var<private> global1: array<f32, 14> = array<f32, 14>(-630f, -473f, 1582f, 1000f, -2659f, -2228f, -905f, 1011f, -1100f, -134f, 716f, 566f, 188f, 709f);

var<private> global2: array<u32, 9> = array<u32, 9>(4294967295u, 4308u, 1u, 1u, 0u, 2043u, 50034u, 195u, 0u);

var<private> global3: vec4<u32> = vec4<u32>(0u, 65925u, 43471u, 79692u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = all(vec2<bool>(true, any(!vec2<bool>(arg_0, arg_0)) || arg_0));
    global3 = vec4<u32>(~(~firstTrailingBit(_wgslsmith_sub_u32(global3.x, global2[_wgslsmith_index_u32(1u, 9u)]))), arg_3.x, _wgslsmith_dot_vec3_u32(global3.wwx, vec3<u32>(max(arg_3.x, global2[_wgslsmith_index_u32(0u, 9u)]), 1u, arg_3.x)) & _wgslsmith_sub_u32(4294967295u & arg_3.x, select(~arg_3.x, global3.x, arg_0)), global3.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(arg_2.yy, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(f32(-1f) * -1052f))), 4294967295u, -915f, !(!select(vec4<bool>(true, arg_1, arg_0, var_0), vec4<bool>(false, true, true, arg_0), true)), _wgslsmith_clamp_i32(-3888i, reverseBits(-1i), u_input.d)));
    global1 = array<f32, 14>();
    let var_2 = var_1.a.d.x;
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(global3.x, 7493u), global2[_wgslsmith_index_u32(4294967295u, 9u)]) << (firstTrailingBit(0u) % 32u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: f32) -> Struct_3 {
    global1 = array<f32, 14>();
    var var_0 = arg_0.zxw;
    let var_1 = Struct_3(-_wgslsmith_div_i32(global0.x, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), global0.zx))), ~(~0u) & ~arg_1.x, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1084f, arg_2), vec2<f32>(arg_2, global1[_wgslsmith_index_u32(arg_1.x, 14u)])))), ~_wgslsmith_add_u32(17428u, global3.x), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.x, 14u)] - -1314f)), vec4<bool>(true, arg_0.x || arg_0.x, any(vec3<bool>(var_0.x, false, arg_0.x)), any(vec2<bool>(arg_0.x, false))), _wgslsmith_clamp_i32(~global0.x, global0.x, global0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global3.x, 14u)], -260f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-345f, -1000f), vec2<f32>(-740f, arg_2))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(268f, 1000f) * vec2<f32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(27328u, 14u)])))), global2[_wgslsmith_index_u32(arg_1.x, 9u)], arg_2, arg_0, 2147483647i));
    let var_2 = select(var_1.d.d.xzx, vec3<bool>(all(arg_0), true, false), !var_1.c.a.d.wwx);
    return Struct_3(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.d.e, firstTrailingBit(-35265i)), select(global0.yx, vec2<i32>(1i, global0.x), true)), u_input.c.x, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_1.c.a.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2959f, var_1.c.a.c))), func_3(true, true, vec3<f32>(global1[_wgslsmith_index_u32(global3.x, 14u)], 981f, 414f), ~global3.wzw), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.x, global3.x) >> (~global3.x % 32u), 14u)], select(var_1.c.a.d, vec4<bool>(false, true, var_0.x, false), var_1.c.a.d.x & true), firstLeadingBit(abs(u_input.b.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(512f, global1[_wgslsmith_index_u32(64797u, 14u)]))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.x, 14u)]), _wgslsmith_f_op_f32(f32(-1f) * -709f))), select(select(select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, false, arg_0.x, true), var_1.d.d.x), vec4<bool>(var_1.c.a.d.x, var_0.x, var_0.x, false), var_0.x), arg_0, select(vec4<bool>(true, var_1.c.a.d.x, arg_0.x, arg_0.x), !arg_0, select(arg_0, vec4<bool>(arg_0.x, var_1.c.a.d.x, false, false), true))), 83533i));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec4<bool>(true, true, true, true), ~(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, global2[_wgslsmith_index_u32(19747u, 9u)]), u_input.c.zy))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], u_input.c.x), 14u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -675f));
    global0 = -(u_input.b.yzw & abs(vec3<i32>(0i, global0.x, global0.x) ^ (vec3<i32>(36396i, global0.x, u_input.a) & vec3<i32>(-75651i, 22609i, 43915i))));
    let var_2 = _wgslsmith_dot_vec2_i32(-global0.zy, vec2<i32>(min(-(~2147483647i), 2109i), u_input.a));
    var var_3 = var_0.c.a.a;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) * vec2<f32>(var_1, 806f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(var_0.d.a)), var_0.d.a)))) + _wgslsmith_f_op_vec2_f32(-var_0.c.a.a)), _wgslsmith_div_u32(20104u, var_0.c.a.b) << (~4294967295u % 32u), var_1, select(vec4<bool>(false, var_0.c.a.d.x, any(var_0.d.d), func_2(!var_0.d.d, vec2<u32>(global3.x, 67613u), var_0.d.a.x).c.a.d.x), var_0.c.a.d, var_0.c.a.d.x), 11875i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 14u)] + -1175f))) < _wgslsmith_f_op_f32(min(-1112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 14u)]) - -708f))));
    global2 = array<u32, 9>();
    var var_1 = Struct_3(~(-_wgslsmith_mod_i32(~global0.x, countOneBits(508i))), firstTrailingBit(global3.x), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), global2[_wgslsmith_index_u32(global3.x, 9u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-274f - global1[_wgslsmith_index_u32(100642u, 14u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(10634u, 14u)] - global1[_wgslsmith_index_u32(0u, 14u)])), vec4<bool>(true, true, true, true), abs(_wgslsmith_sub_i32(u_input.d, 2147483647i)))), func_1());
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-210f)), 966f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_2(vec4<bool>(false, true, var_0.x, var_1.d.d.x), global3.xy, var_1.c.a.a.x).c.a.c)))) * _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(15276u, 14u)] + 535f))));
    global0 = u_input.b.yxx;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-197f, -890f, -1345f, global1[_wgslsmith_index_u32(u_input.c.x, 14u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a.c, var_2, -1000f, -754f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(global3.x, 14u)], -469f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2, var_1.d.a.x, var_1.d.a.x, 1262f), vec4<f32>(1000f, 1000f, -755f, -1473f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(405f, -241f, global1[_wgslsmith_index_u32(43196u, 14u)], -181f))))) + vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(47868u, 14u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a.a.x - var_2) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], 650f))), -1659f, -164f, 481f));
    let var_4 = var_1.d.a.x;
    var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, -667f, global1[_wgslsmith_index_u32(global3.x, 14u)], -444f), vec4<f32>(-780f, -1000f, global1[_wgslsmith_index_u32(0u, 14u)], var_3.x))) - vec4<f32>(1059f, var_1.d.c, var_2, -775f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-950f, var_3.x, var_3.x, var_2) - vec4<f32>(var_2, 1000f, var_2, 1194f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -1342f, -1299f, -354f), vec4<f32>(var_2, global1[_wgslsmith_index_u32(64273u, 14u)], -1000f, 306f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-522f, var_2, -988f, global1[_wgslsmith_index_u32(4294967295u, 14u)])))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, global1[_wgslsmith_index_u32(global3.x, 14u)], global1[_wgslsmith_index_u32(18107u, 14u)], 1321f), vec4<f32>(1000f, var_3.x, 1000f, var_1.c.a.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(800f, 186f, global1[_wgslsmith_index_u32(0u, 14u)], 837f) - vec4<f32>(var_1.c.a.c, var_3.x, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], -1314f)) - vec4<f32>(-306f, 973f, global1[_wgslsmith_index_u32(28450u, 14u)], 1398f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(min(14763u, ~var_1.b)), var_1.b ^ firstTrailingBit(~15303u), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, u_input.c.x), u_input.c.x), global3.x), reverseBits(1u)));
}

