struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.e.x + _wgslsmith_f_op_f32(-arg_2.c.x))))) + -1330f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(round(arg_2.c.x))))))) + 434f);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_dot_vec4_u32(reverseBits(max(vec4<u32>(arg_3, 14957u, 0u, arg_3), vec4<u32>(u_input.a, arg_3, arg_3, 13579u)) | vec4<u32>(u_input.a, arg_3, 1u, 1u)), select(reverseBits(vec4<u32>(u_input.a, arg_3, 12587u, arg_3)) | vec4<u32>(u_input.a, 0u, 404u, arg_3), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.b.x, 33238u, 71171u), vec4<u32>(arg_0.x, u_input.a, u_input.b.x, 12312u) << (vec4<u32>(u_input.a, 19156u, u_input.a, 77156u) % vec4<u32>(32u))), false)));
    let var_2 = arg_2;
    var var_3 = select(_wgslsmith_clamp_vec2_i32(vec2<i32>(9288i, firstLeadingBit(-global0.d)), -(~vec2<i32>(arg_2.d, 23107i)), select(vec2<i32>(1748i, arg_2.d >> (50966u % 32u)), select(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-2147483647i, global0.d)), max(vec2<i32>(arg_2.d, 1i), vec2<i32>(-48461i, var_2.d)), !arg_1), !select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), arg_1))), select(_wgslsmith_mult_vec2_i32(vec2<i32>(-54994i, -88214i), select(vec2<i32>(arg_2.d, var_2.d), vec2<i32>(-2147483647i, global0.d), true) | _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.d, global0.d), vec2<i32>(global0.d, global0.d), vec2<i32>(var_2.d, 87922i))), vec2<i32>(global0.d, global0.d), vec2<bool>(arg_1, arg_1)), !arg_1);
    return -56242i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(func_3(u_input.b, true, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-593f, global0.a.x)) * _wgslsmith_div_vec2_f32(global0.c.zx, vec2<f32>(1774f, -1000f))), -930f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1203f, -231f, 410f))), _wgslsmith_mod_i32(global0.d & 1i, 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.c)))), u_input.a), (-9686i ^ reverseBits(global0.d ^ global0.d)) > ~global0.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-178f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1125f - global0.e.x), _wgslsmith_f_op_f32(-global0.e.x))))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.e.yx), var_1, select(vec2<bool>(var_0.b, var_0.a >= var_0.a), select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, true), !vec2<bool>(false, var_0.b)), var_0.b))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.c.zx))), 145f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1198f, -274f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.e.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.e))) + vec3<f32>(_wgslsmith_f_op_f32(select(global0.a.x, -796f, var_0.b)), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -874f))))), ~(-(var_0.a & -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c * _wgslsmith_div_vec3_f32(vec3<f32>(-943f, -1000f, var_1.x), global0.c)) + global0.c)));
    let var_3 = Struct_3(-145f, ~(54287u << (firstLeadingBit(_wgslsmith_div_u32(u_input.a, 5509u)) % 32u)));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-384f, var_2.a.x), 366f, all(vec2<bool>(var_0.b, var_0.b)))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x * var_3.a), var_2.a.x), 259f))), _wgslsmith_f_op_f32(157f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2214f * var_1.x)))), vec3<f32>(var_3.a, var_3.a, var_3.a), -_wgslsmith_mult_i32(var_0.a, 23661i << (var_3.b % 32u)), _wgslsmith_f_op_vec3_f32(abs(global0.c)));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    global0 = func_2();
    var var_0 = vec3<u32>(u_input.b.x, 1u, 19626u);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(610f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.c.x, 215f)), -1000f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(299f + 1f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, 1052f, -548f)))))), ~func_2().d, _wgslsmith_f_op_vec3_f32(global0.e - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-229f, global0.e.x, global0.c.x), vec3<f32>(global0.c.x, global0.a.x, global0.c.x))), vec3<f32>(global0.b, -513f, 632f))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, 455f))), ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_0.x, 0u, 1u)));
    var var_2 = ~abs(0u);
    return ~vec3<u32>(~select(25378u, ~4294967295u, arg_0), ~var_1.b, _wgslsmith_dot_vec3_u32(~u_input.b, ~vec3<u32>(0u, 1u, var_0.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<u32>) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.zy - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global0.b) * vec2<f32>(-1129f, 113f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2187f, arg_1))) + _wgslsmith_f_op_vec2_f32(step(global0.c.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-719f, -216f)))))), 402f, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(f32(-1f) * -1729f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -672f, arg_1) + global0.e)), _wgslsmith_f_op_vec3_f32(-global0.c)), global0.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c)) - _wgslsmith_f_op_vec3_f32(-global0.e)), global0.e, all(vec3<bool>(true, true, any(vec4<bool>(true, true, true, false)))))));
    var var_0 = ~firstLeadingBit(min(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 66460u, arg_0.x, 2103u), _wgslsmith_sub_vec4_u32(vec4<u32>(55427u, 31153u, arg_0.x, u_input.b.x), vec4<u32>(61410u, arg_2.x, arg_0.x, 4294967295u))), max(~vec4<u32>(36496u, 0u, 0u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(842u, 38743u, 4294967295u, arg_0.x), vec4<u32>(u_input.a, 1u, 0u, 4294967295u)))));
    let var_1 = ~0i;
    var var_2 = !(!vec4<bool>(true, all(vec3<bool>(true, false, false)), false, select(false, any(vec4<bool>(false, false, false, true)), true)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1681f, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-483f + -930f)))), 232f, vec3<f32>(612f, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f))), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(global0.e)))), vec3<f32>(-716f, global0.a.x, _wgslsmith_f_op_f32(max(-1052f, -749f)))))));
    return _wgslsmith_f_op_vec2_f32(min(global0.a, vec2<f32>(arg_1, arg_1)));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = func_2();
    let var_0 = global0.d;
    let var_1 = Struct_3(1442f, _wgslsmith_div_u32(arg_1.x & 33155u, 0u));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_1(true), -1131f, max(u_input.b, u_input.b)))) * global0.c.xy), vec3<u32>(~u_input.a, ~u_input.a, firstTrailingBit(firstTrailingBit(~u_input.a))));
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(min(global0.c.zz, global0.a)), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.a, 1u, ~0u)), ~u_input.b));
    global0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, 561f))))), ~firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a, 4294967295u, 4294967295u)), u_input.b.x | u_input.a, u_input.a)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.e.yz + global0.e.zy) - vec2<f32>(var_0.b, _wgslsmith_f_op_f32(max(global0.e.x, global0.b)))), _wgslsmith_f_op_f32(global0.a.x - 137f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, var_0.e.x, var_0.b) + _wgslsmith_f_op_vec3_f32(global0.e + var_0.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.e * var_0.e) - _wgslsmith_f_op_vec3_f32(-global0.e)), all(vec4<bool>(false, true, true, false)))))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(abs(var_0.d), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, global0.d), vec2<i32>(1i, var_0.d))), -_wgslsmith_sub_vec2_i32(vec2<i32>(global0.d, global0.d), vec2<i32>(var_0.d, 25398i)), any(vec4<bool>(false, true, true, true))), -_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global0.d), ~vec2<i32>(global0.d, var_0.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), var_0.a.x)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(-777f)), max(abs(~(~0u)), u_input.a));
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(127f - 1290f)) - _wgslsmith_f_op_f32(-global0.b)), -1000f), _wgslsmith_f_op_vec2_f32(func_4(~(~(~vec3<u32>(u_input.a, var_1.b, var_1.b))), _wgslsmith_f_op_f32(-var_0.e.x), func_1(true))).x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-884f)), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(max(-159f, _wgslsmith_f_op_f32(f32(-1f) * -1217f))))), -35647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.c * vec3<f32>(global0.e.x, 1179f, var_0.b)), _wgslsmith_f_op_vec3_f32(-var_0.c), vec3<bool>(false, true, false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(966f, global0.c.x, var_0.e.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_0.b, var_1.a)) - vec3<f32>(2806f, var_1.a, 1025f)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(687f, 1000f, var_1.a) * vec3<f32>(global0.b, -1264f, 1133f)))))));
    var var_2 = Struct_4(var_0.d);
    let var_3 = Struct_4(min(-37495i, var_2.a));
    let var_4 = select(vec4<u32>(55576u, u_input.a, max(~var_1.b, ~3790u), _wgslsmith_sub_u32(_wgslsmith_add_u32(18709u, u_input.a), ~4294967295u)), max(firstLeadingBit(~vec4<u32>(0u, 1u, 45738u, var_1.b)), min(~vec4<u32>(0u, 1u, 88774u, 56065u), vec4<u32>(16593u, 1u, 65604u, var_1.b) << (vec4<u32>(u_input.b.x, var_1.b, u_input.a, 0u) % vec4<u32>(32u)))), true) & abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(2033u, u_input.b.x, var_1.b, var_1.b), vec4<u32>(4294967295u, 0u, u_input.a, u_input.b.x)) & (~vec4<u32>(u_input.b.x, 44988u, 15751u, u_input.b.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(40811u, u_input.b.x, var_1.b, 0u), vec4<u32>(0u, 25302u, 23757u, var_1.b)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(-353f)), _wgslsmith_f_op_f32(trunc(global0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a + var_0.e.xy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) - _wgslsmith_f_op_vec2_f32(global0.c.yy + var_0.c.xz))), !vec2<bool>(true, var_2.a >= -1i))));
}

