struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec3<bool>, 28>;

var<private> global2: Struct_1;

var<private> global3: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = all(select(vec2<bool>(!arg_0.a, all(global1[_wgslsmith_index_u32(~0u, 28u)])), select(!(!vec2<bool>(arg_1.a, true)), !select(vec2<bool>(arg_0.a, true), vec2<bool>(true, false), false), select(!vec2<bool>(arg_0.a, true), vec2<bool>(global2.a, arg_1.a), select(vec2<bool>(false, true), vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_0.a)))), !(!arg_1.a || arg_0.a)));
    global0 = array<Struct_1, 15>();
    var var_1 = Struct_1(select(arg_1.a, u_input.c.x > _wgslsmith_sub_i32(-2147483647i, 1i), 914f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1372f + 850f) - _wgslsmith_f_op_f32(select(-127f, 388f, false)))), ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.b.x, 116419u, 107096u), _wgslsmith_clamp_u32(20607u, arg_0.b.x, global2.b.x)), ~88259u));
    global0 = array<Struct_1, 15>();
    var_1 = arg_1;
    return vec3<bool>(true, !(!(!any(vec4<bool>(arg_1.a, global2.a, var_0, false)))), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = global0[_wgslsmith_index_u32(var_0.b.x, 15u)];
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, select(var_0.b.x, ~var_1.b.x ^ var_1.b.x, 1u != _wgslsmith_add_u32(4294967295u, u_input.a))), 15u)];
    let var_3 = 423f;
    let var_4 = vec4<bool>(var_1.a, !(all(select(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, false, true, arg_0.a), vec4<bool>(arg_0.a, true, true, false))) & arg_0.a), all(select(global1[_wgslsmith_index_u32(var_1.b.x, 28u)], func_3(arg_0, Struct_1(arg_0.a, var_2.b)), true || var_2.a)) && all(select(vec2<bool>(var_1.a, var_0.a), !vec2<bool>(var_1.a, true), var_1.a)), !var_1.a);
    return Struct_1(var_4.x, abs(var_0.b));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 8870i;
    let var_1 = arg_0.b.x ^ _wgslsmith_div_u32(_wgslsmith_add_u32(global2.b.x, global2.b.x), ~u_input.d);
    return func_2(arg_0, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(589f, 1193f))), _wgslsmith_div_f32(-672f, -114f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1637f, -2259f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-269f, 902f) - vec2<f32>(-229f, 692f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    let var_0 = func_2(arg_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -206f), vec2<f32>(915f, 274f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(461f, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -467f))), 1f), vec2<bool>(!(u_input.c.x < u_input.c.x), arg_0.a))));
    let var_1 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(u_input.d, arg_0.b.x), 1u, arg_0.b.x, 0u), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.e, ~u_input.e), ~(~vec4<u32>(83527u, 4294967295u, arg_1, arg_0.b.x))));
    var var_2 = func_1(func_2(func_1(func_2(func_2(var_0, vec2<f32>(345f, 260f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(353f, 925f) + vec2<f32>(-1579f, -216f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-1373f, -805f), 240f)))));
    var var_3 = vec2<bool>((_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(207f, 976f, arg_0.a)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(815f, 272f, arg_0.a)))) | var_2.a, all(!func_3(Struct_1(false, vec2<u32>(1u, var_0.b.x)), Struct_1(var_0.a, var_2.b))));
    let var_4 = (0u >> (1u % 32u)) <= _wgslsmith_clamp_u32(8981u, arg_0.b.x, 37376u);
    return vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(func_1(func_1(global0[_wgslsmith_index_u32(global2.b.x, 15u)])).b.x, _wgslsmith_sub_u32(var_2.b.x, ~29156u), 4294967295u), _wgslsmith_mod_u32(func_1(Struct_1(true, vec2<u32>(44982u, u_input.d))).b.x, ~(~arg_1))), (((var_1.x ^ arg_1) & abs(var_2.b.x)) | 14681u) << (max(44750u, u_input.d) % 32u), reverseBits(abs(select(~u_input.a, reverseBits(arg_0.b.x), all(vec3<bool>(var_2.a, true, var_0.a))))), func_1(Struct_1(var_0.a, ~arg_0.b << (~vec2<u32>(arg_0.b.x, 12263u) % vec2<u32>(32u)))).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~func_4(func_1(Struct_1(true, vec2<u32>(1u, 14007u))), ~1u), u_input.e, select(vec4<bool>(func_2(Struct_1(false, global2.b), vec2<f32>(-401f, -891f)).a & (global2.a | global2.a), all(select(vec4<bool>(global2.a, false, true, global2.a), vec4<bool>(true, false, global2.a, global2.a), global2.a)), any(!vec4<bool>(false, false, global2.a, global2.a)), !global2.a), select(select(select(vec4<bool>(true, false, global2.a, global2.a), vec4<bool>(global2.a, false, false, global2.a), vec4<bool>(global2.a, true, true, global2.a)), select(vec4<bool>(global2.a, global2.a, global2.a, false), vec4<bool>(global2.a, false, global2.a, global2.a), global2.a), u_input.c.x <= u_input.c.x), !(!vec4<bool>(false, global2.a, global2.a, true)), all(!global1[_wgslsmith_index_u32(global2.b.x, 28u)])), !(!(!vec4<bool>(global2.a, global2.a, false, false)))));
    let var_1 = func_3(func_2(func_2(global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(893f, -939f) * vec2<f32>(451f, 487f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(819f, 407f) + vec2<f32>(1125f, -662f))))), func_2(global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_add_u32(52255u, 53386u)), 15u)], vec2<f32>(_wgslsmith_f_op_f32(ceil(2361f)), -761f)));
    global3 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(231f, 268f, -129f, 906f) * vec4<f32>(672f, -360f, 1147f, -1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-934f, -351f, 1412f, 622f), vec4<f32>(1944f, -880f, -839f, 1728f), false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 203f, 287f, 799f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1110f, 438f, -1012f, -1018f), vec4<f32>(-334f, -1312f, 1293f, 857f), vec4<bool>(var_1.x, false, true, global2.a)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-345f, -1137f, 1346f, 1000f), vec4<f32>(-547f, 1023f, -1369f, 1279f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-364f, 436f, -834f, -694f), vec4<f32>(1804f, 910f, -1000f, -509f), global2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(813f, 1665f, 1000f, 261f) + vec4<f32>(3152f, -570f, -964f, -1000f)))))));
    var_0 = u_input.e;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x));
    let var_4 = 29482i;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(u_input.c.xy, max(u_input.c.xw, u_input.c.yz) & select(u_input.c.ww, vec2<i32>(0i, u_input.c.x), var_1.zy)) ^ (-17886i ^ var_4), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(u_input.c.x), var_4), _wgslsmith_sub_vec2_i32(u_input.c.zy, u_input.c.wz))));
}

