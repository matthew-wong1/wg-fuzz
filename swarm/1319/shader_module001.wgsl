struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(false, vec2<i32>(0i, i32(-2147483648))), Struct_3(true, vec2<i32>(0i, 0i)), Struct_3(false, vec2<i32>(-1i, 2147483647i)), Struct_3(false, vec2<i32>(-1i, -1i)), Struct_3(false, vec2<i32>(i32(-2147483648), -35202i)), Struct_3(true, vec2<i32>(2147483647i, 2147483647i)), Struct_3(false, vec2<i32>(0i, 1i)), Struct_3(true, vec2<i32>(0i, 2147483647i)), Struct_3(false, vec2<i32>(2147483647i, -4016i)), Struct_3(false, vec2<i32>(1i, -1i)), Struct_3(true, vec2<i32>(2147483647i, 2147483647i)), Struct_3(false, vec2<i32>(i32(-2147483648), 54019i)), Struct_3(false, vec2<i32>(39347i, 2147483647i)), Struct_3(true, vec2<i32>(-51658i, -24433i)), Struct_3(false, vec2<i32>(-38374i, 23827i)), Struct_3(true, vec2<i32>(29337i, 2147483647i)), Struct_3(false, vec2<i32>(i32(-2147483648), 1i)), Struct_3(false, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_3(false, vec2<i32>(-37888i, -51852i)), Struct_3(true, vec2<i32>(2147483647i, -1i)), Struct_3(false, vec2<i32>(-13291i, 45565i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> vec3<bool> {
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    var var_0 = !(!select(select(select(vec2<bool>(arg_1.b, arg_0.a), vec2<bool>(true, true), arg_0.a), vec2<bool>(arg_1.b, true), select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_0.a, false), vec2<bool>(arg_1.b, false))), select(select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.b, arg_0.a), arg_1.b), select(vec2<bool>(arg_0.a, arg_1.b), vec2<bool>(arg_0.a, arg_1.b), vec2<bool>(arg_0.a, false)), !vec2<bool>(true, arg_0.a)), any(vec3<bool>(arg_1.b, arg_1.b, true))));
    return select(vec3<bool>(any(vec4<bool>(arg_0.a | arg_0.a, false, true, select(false, arg_1.b, arg_1.b))), select(any(select(vec2<bool>(arg_0.a, true), vec2<bool>(true, true), true)), all(!vec3<bool>(var_0.x, var_0.x, var_0.x)), all(vec2<bool>(arg_1.b, arg_0.a))), var_0.x), vec3<bool>(!((arg_0.b.x >> (21638u % 32u)) <= 1i), all(vec4<bool>(arg_0.a, arg_1.b, true, arg_0.a)) & var_0.x, true), !select(select(!vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(var_0.x, arg_1.b, arg_0.a), !vec3<bool>(var_0.x, true, arg_0.a)), vec3<bool>(select(arg_1.b, false, arg_0.a), true, var_0.x), vec3<bool>(var_0.x, true, any(vec3<bool>(false, false, true)))));
}

fn func_2(arg_0: bool, arg_1: bool) -> bool {
    global0 = array<Struct_3, 21>();
    let var_0 = func_3(global0[_wgslsmith_index_u32(20359u, 21u)], Struct_2(_wgslsmith_sub_vec3_i32(abs(select(vec3<i32>(-2147483647i, 2147483647i, u_input.a), vec3<i32>(700i, u_input.a, u_input.b), vec3<bool>(false, true, false))), vec3<i32>(~56730i, 2147483647i, 1i)), arg_1, max(u_input.a, firstTrailingBit(1i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f + 521f)), vec2<f32>(_wgslsmith_f_op_f32(max(-247f, 128f)), 318f), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(23619u, 71580u), vec2<u32>(68912u, 1u)))), _wgslsmith_f_op_f32(trunc(295f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(741f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1753f), _wgslsmith_f_op_f32(sign(1446f)))))));
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(1309f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-497f))) * -1030f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(522f * -2864f)) + _wgslsmith_f_op_f32(abs(1445f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-139f))));
    return arg_0 | any(select(!var_0, func_3(global0[_wgslsmith_index_u32(4294967295u, 21u)], Struct_2(vec3<i32>(-67012i, -47686i, -57148i), arg_1, u_input.a, Struct_1(917f, vec2<f32>(var_1.x, 568f), vec2<u32>(64957u, 43711u)), var_1.x), var_1.x), all(select(vec2<bool>(true, arg_0), var_0.zy, var_0.x))));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<bool> {
    return vec3<bool>((false || !func_2(true, false)) & any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), func_3(global0[_wgslsmith_index_u32(arg_0, 21u)], Struct_2(vec3<i32>(u_input.a, u_input.a, 2147483647i), true, 8051i, Struct_1(1000f, vec2<f32>(2361f, 275f), vec2<u32>(4294967295u, 4294967295u)), arg_1), 407f), all(vec2<bool>(false, false)))), func_2(true, any(vec3<bool>(true, true, true))), !(~(~0u) > (~arg_0 ^ arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(_wgslsmith_mult_u32(0u, ~select(1305u, 20400u, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1742f - 1070f), 1766f)))), func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(61451u, 7779u, 76660u))), countOneBits(select(vec3<u32>(26025u, 31851u, 51920u), vec3<u32>(1u, 4294967295u, 3329u), vec3<bool>(false, false, false)))), 21u)], Struct_2(min(vec3<i32>(u_input.a, -1i, u_input.b), abs(vec3<i32>(u_input.b, -24332i, u_input.b))), _wgslsmith_mod_i32(-5964i, u_input.a) <= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, 0i), vec3<i32>(-10172i, 39093i, u_input.b)), firstTrailingBit(-2147483647i), Struct_1(-1000f, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-831f, -535f), vec2<f32>(998f, 1474f))), max(vec2<u32>(1u, 698u), vec2<u32>(0u, 1u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-198f)), _wgslsmith_f_op_f32(step(1710f, 602f)), 0i >= u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -1684f)), false);
    let var_1 = _wgslsmith_f_op_f32(select(1543f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1001f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1518f, -1619f)))))), var_0.x));
    global0 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(19008u) ^ (~4294967295u << (_wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8780u, 4294967295u)), vec2<u32>(1u, 1u)) % 32u)), select(vec4<u32>(~0u, _wgslsmith_div_u32(1u, 4294967295u), ~1u, ~26560u), ~vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(any(vec4<bool>(false, var_0.x, true, var_0.x)), var_0.x, true, var_1 <= -392f)) & firstTrailingBit(vec4<u32>(0u, _wgslsmith_clamp_u32(121571u, 0u, 0u), 1u, 3138u)), u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 1265f) + vec2<f32>(-244f, var_1))))), (max(~0i, _wgslsmith_mult_i32(u_input.b, u_input.b)) & -2147483647i) >> (27416u % 32u));
}

