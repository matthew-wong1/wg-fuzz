struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<i32> = vec4<i32>(-1i, 0i, -1i, -1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = 33590u;
    var var_2 = Struct_1(1000f);
    var var_3 = u_input.a.wwy >> (~min(vec3<u32>(4294967295u, _wgslsmith_sub_u32(36725u, var_1), _wgslsmith_mod_u32(var_1, 1u)), ~vec3<u32>(31212u, 69205u, var_1)) % vec3<u32>(32u));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(var_2.a * 485f));
    return -2158f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = !all(vec4<bool>(false, global0.x, global0.x, global0.x));
    let var_1 = arg_1;
    let var_2 = select(!select(select(select(vec4<bool>(var_0, true, false, false), vec4<bool>(var_0, global0.x, false, true), global0.x), vec4<bool>(true, var_0, global0.x, var_0), var_1.a == arg_1.a), !vec4<bool>(false, global0.x, true, global0.x), true), vec4<bool>(true, true, all(!vec2<bool>(var_0, false)), true), true);
    global1 = abs(-min(~u_input.a, countOneBits(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(1i, u_input.a.x, -49265i, u_input.a.x)))));
    var var_3 = var_1;
    return ~(~(~abs(countOneBits(11138u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> bool {
    var var_0 = vec3<u32>(~reverseBits(41055u) ^ func_4(_wgslsmith_f_op_vec2_f32(-arg_0), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(arg_0.x))))), ~abs(4294967295u), reverseBits(55610u));
    var var_1 = vec4<u32>(21094u, ~firstLeadingBit(1u), reverseBits(51605u), var_0.x) & vec4<u32>(firstTrailingBit(var_0.x), ~(~min(4294967295u, var_0.x)), ~select(52475u, ~var_0.x, true), abs(~(~var_0.x)));
    global1 = abs(abs(u_input.a));
    global1 = abs(vec4<i32>(_wgslsmith_mod_i32(~(-arg_1), -firstTrailingBit(0i)), 0i, _wgslsmith_sub_i32(~(global1.x | -2147483647i), global1.x), 30500i));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -990f, arg_0.x, 2746f) + vec4<f32>(712f, arg_0.x, -1229f, arg_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 439f, 2799f, 2138f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, arg_0.x, arg_0.x, 1073f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(abs(492f)))));
    return 4294967295u >= _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(147147u, 61u, var_1.x), var_1.ywx), var_0.x), select(~var_0.x, var_1.x >> (21662u % 32u), arg_0.x == arg_0.x)), 124916u, 1u);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = !vec4<bool>(!(!func_2(vec2<f32>(-979f, 741f), 35760i)), global0.x, u_input.a.x == abs(-u_input.a.x), ~firstLeadingBit(arg_0.x) >= 4294967295u);
    global0 = var_0.xxw;
    var_0 = !vec4<bool>(global0.x, global0.x, false, false);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-145f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, arg_1)) - _wgslsmith_f_op_f32(sign(arg_1))), arg_1)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global0 = vec3<bool>(false, all(select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(true, true, false, true), !vec4<bool>(true, true, true, arg_0.x))) && true, global0.x);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-363f))))) - arg_2.a));
    var var_1 = func_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(~vec4<u32>(49254u, 0u, 0u, 32405u)))), _wgslsmith_f_op_f32(floor(1243f)));
    let var_2 = any(!select(!select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, global0.x, false, global0.x), vec4<bool>(arg_0.x, false, true, arg_0.x)), select(vec4<bool>(arg_0.x, global0.x, true, arg_0.x), !vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, arg_0.x, global0.x, global0.x)), false));
    let var_3 = global1.x;
    return select(_wgslsmith_sub_vec2_u32(min(vec2<u32>(_wgslsmith_add_u32(4018u, 18015u), ~1041u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 56584u), vec2<u32>(1u, 1u))), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 27074u, 716u, 17823u), vec4<u32>(1u, 1u, 1u, 1u)), abs(~0u))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(99453u, 4294967295u), vec2<u32>(1u, 11690u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~vec2<u32>(1u, 1u), ~max(vec2<u32>(30287u, 1u), vec2<u32>(1u, 57558u))), !vec2<bool>(any(select(vec3<bool>(true, true, var_2), vec3<bool>(true, arg_0.x, false), false)), select(true, true, !var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_5(select(global0.yx, select(select(vec2<bool>(global0.x, false), global0.xz, global0.x), select(global0.yy, global0.xx, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, global0.x), vec2<bool>(false, false), global0.x), vec2<bool>(global0.x, false), any(vec4<bool>(false, global0.x, false, true)))), Struct_1(-577f), func_1(reverseBits(~vec4<u32>(49152u, 61217u, 36164u, 66994u)), _wgslsmith_f_op_f32(f32(-1f) * -786f)));
    global1 = vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -46279i), ~vec2<i32>(global1.x, 49392i)) | global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, ~firstLeadingBit(global1.x), abs(-global1.x), ~(i32(-1i) * -21210i)), abs(vec4<i32>(_wgslsmith_add_i32(global1.x, 16668i), 1i, ~10142i, u_input.a.x))), max(1526i, ~firstTrailingBit(2147483647i)), ~(u_input.a.x ^ (u_input.a.x | -10890i)));
    var var_1 = Struct_1(1f);
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mult_u32(25173u, var_0.x)), ~(~countOneBits(~vec2<u32>(0u, 0u))));
    let var_3 = !vec2<bool>(func_2(vec2<f32>(1f, 509f), ~min(2147483647i, 18459i)), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

