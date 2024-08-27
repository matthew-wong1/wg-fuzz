struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(-1862f, 1u), Struct_4(-1250f, 1u), Struct_4(-906f, 43547u), Struct_4(961f, 31570u), Struct_4(899f, 5979u), Struct_4(-766f, 0u), Struct_4(-131f, 0u), Struct_4(1140f, 18479u), Struct_4(-1000f, 13852u), Struct_4(157f, 42054u), Struct_4(206f, 4294967295u), Struct_4(875f, 0u), Struct_4(-1161f, 0u), Struct_4(849f, 1u), Struct_4(1000f, 32111u), Struct_4(1000f, 4294967295u), Struct_4(193f, 0u), Struct_4(1093f, 4294967295u), Struct_4(513f, 47348u), Struct_4(-1000f, 0u), Struct_4(602f, 16771u), Struct_4(-175f, 0u), Struct_4(1276f, 20699u), Struct_4(-447f, 1u), Struct_4(1000f, 35838u), Struct_4(977f, 9344u), Struct_4(-1988f, 19025u), Struct_4(1638f, 1u), Struct_4(-716f, 39716u), Struct_4(434f, 1723u), Struct_4(-999f, 0u));

var<private> global1: vec4<f32> = vec4<f32>(173f, 1085f, 552f, -183f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(all(vec3<bool>(true, true, true)), !(!all(vec2<bool>(false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, global1.x < global1.x, true), true), !vec4<bool>(all(vec3<bool>(true, false, false)), false, any(vec4<bool>(false, true, true, true)), false), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), false))));
    global1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1405f, global1.x, _wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_div_f32(global1.x, -330f))));
    return var_0.a;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = !any(vec4<bool>(true, true, true, true));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -383f), 1430f, global1.x, _wgslsmith_f_op_f32(-1955f + 1000f)), vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(round(543f)), _wgslsmith_f_op_f32(-1136f + -161f), _wgslsmith_f_op_f32(abs(-1429f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-304f, -1307f, 1000f, 131f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 139f, -262f))) - vec4<f32>(_wgslsmith_div_f32(1000f, 594f), -380f, _wgslsmith_f_op_f32(f32(-1f) * -2049f), _wgslsmith_f_op_f32(abs(-452f)))))));
    let var_1 = arg_0.x ^ -u_input.a;
    var var_2 = Struct_2(!(!func_3()), ~max(36756u, ~25424u) < (_wgslsmith_mod_u32(select(4294967295u, 0u, false), 4294967295u) & 115202u), vec4<bool>(!(!(global1.x > global1.x)), var_0, true, !all(!vec4<bool>(false, var_0, true, var_0))));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, -462f)) + _wgslsmith_f_op_f32(global1.x - global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -766f))), global1.x)));
    return Struct_1(reverseBits(_wgslsmith_div_vec3_i32(arg_0 | arg_0, arg_0)), ~select(~vec2<u32>(0u, 102575u), select(~vec2<u32>(4294967295u, 26228u), vec2<u32>(77u, 0u), select(vec2<bool>(true, var_0), var_2.c.xx, true)), true), -1i, vec3<bool>(true, true, true));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> Struct_4 {
    let var_0 = max(arg_0.b, max(arg_0.b & arg_0.b, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.x, 4294967295u), arg_0.b)) ^ ~arg_0.b);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -974f) * 229f), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(max(164f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(sign(446f)))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-262f, 1847f, -528f, global1.x))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, 654f, global1.x, 642f), vec4<f32>(global1.x, -355f, global1.x, 176f)))))))));
    var var_1 = 1677f;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-global1.x), ~16279u);
    var var_3 = Struct_2(true, !(!(var_2.a <= _wgslsmith_f_op_f32(1154f - var_2.a))), vec4<bool>(!arg_0.d.x, false, any(!select(vec4<bool>(false, arg_0.d.x, false, arg_2), vec4<bool>(true, false, arg_0.d.x, true), true)), true));
    return global0[_wgslsmith_index_u32(17970u, 31u)];
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    var var_0 = func_4(Struct_1((vec3<i32>(56667i, 2147483647i, u_input.a) << (vec3<u32>(30345u, 1u, arg_0) % vec3<u32>(32u))) | ((vec3<i32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(arg_1.b, arg_1.b, 27745u) % vec3<u32>(32u))) & ~vec3<i32>(u_input.a, u_input.a, u_input.a)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b, arg_1.b) >> (vec2<u32>(arg_0, arg_1.b) % vec2<u32>(32u)), select(vec2<u32>(36967u, 1u), vec2<u32>(8632u, 44878u), true))), u_input.a, vec3<bool>(select(-34170i, 1i, false) >= (u_input.a ^ u_input.a), all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))))), select(func_2(~(~vec3<i32>(-32660i, -2147483647i, 0i))).d.x, false, !select(true, false, true) && all(vec2<bool>(true, true))), any(!vec4<bool>(true, true, func_2(vec3<i32>(-6175i, -2147483647i, u_input.a)).d.x, any(vec4<bool>(false, false, false, false)))));
    var var_1 = -2147483647i;
    return Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(7523u, _wgslsmith_mult_u32(64602u, arg_0), 28141u), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(arg_0, arg_1.b, 1u)), vec3<u32>(1u, arg_1.b, arg_1.b))) != 4294967295u, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec4<bool>(false, 2172f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) * -1000f), true, true));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> i32 {
    let var_0 = func_5(_wgslsmith_sub_u32(~countOneBits(~34211u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 0u, 1u)), vec3<u32>(1u, firstTrailingBit(190u), ~0u))), func_4(func_2(vec3<i32>(_wgslsmith_mod_i32(0i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-52751i, 0i), vec2<i32>(u_input.a, -34991i)), 1i)), true, any(vec3<bool>(true, true, true))));
    global0 = array<Struct_4, 31>();
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_1)))), arg_1)) - _wgslsmith_f_op_vec4_f32(abs(arg_1)));
    let var_1 = min(-arg_0, select(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~arg_0, ~arg_0, _wgslsmith_mult_i32(-2147483647i, arg_0)), 1i, ~(~0i)), arg_0, true));
    var var_2 = func_2(vec3<i32>(abs(-34378i), ~reverseBits(min(var_1, -1i)), _wgslsmith_div_i32(-9433i, u_input.a))).b.x;
    return -(-1i | var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(53148u, max(firstTrailingBit(min(abs(0u), ~0u)), 1u)), 31u)];
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(971f, global1.x, -1586f, 1761f)))))));
    let var_1 = _wgslsmith_mult_vec3_u32(~abs(~vec3<u32>(4294967295u, var_0.b, var_0.b)), ~select(_wgslsmith_sub_vec3_u32(vec3<u32>(16978u, var_0.b, var_0.b), ~vec3<u32>(0u, var_0.b, 1u)), vec3<u32>(0u, var_0.b, ~var_0.b), true));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(func_1(10263i, vec4<f32>(-985f, global1.x, 165f, var_0.a)), u_input.a), u_input.a ^ -1i, func_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -489f, 1131f))), -(~0i)), vec4<i32>(reverseBits(u_input.a), abs(-9914i), _wgslsmith_sub_i32(-u_input.a, -1i ^ u_input.a), ~u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a, _wgslsmith_mod_i32(u_input.a, 42162i), func_2(vec3<i32>(u_input.a, u_input.a, 13988i)).a.x), -vec4<i32>(12242i, u_input.a, 0i, u_input.a), ~(~vec4<i32>(u_input.a, u_input.a, -49480i, u_input.a)))), -(~vec4<i32>(abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -27822i), vec4<i32>(u_input.a, -16672i, u_input.a, -1i)), ~2147483647i, select(-2147483647i, u_input.a, false))));
    global0 = array<Struct_4, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(min(max(vec4<u32>(var_1.x, ~var_1.x, _wgslsmith_mult_u32(var_0.b, var_1.x), func_4(Struct_1(vec3<i32>(-31657i, var_2, 1i), vec2<u32>(var_0.b, var_0.b), u_input.a, vec3<bool>(true, true, true)), false, true).b), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 55361u, 1u, var_1.x), vec4<u32>(9044u, var_1.x, 1u, var_0.b), vec4<u32>(0u, 4294967295u, var_0.b, 11062u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 7332u, 1u, var_1.x), ~vec4<u32>(7268u, 54554u, var_0.b, var_1.x)), 4294967295u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.b, 6043u), var_1.x & var_0.b), 2882u)), max(var_0.b, ~_wgslsmith_mult_u32(var_1.x, var_1.x) << (var_1.x % 32u)), _wgslsmith_sub_u32(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -465f)))));
}

