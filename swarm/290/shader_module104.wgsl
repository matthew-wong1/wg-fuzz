struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_2,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
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

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(1i, -35736i), vec2<i32>(1i, 36600i), vec2<i32>(1i, -1i), vec2<i32>(14352i, 18519i), vec2<i32>(7585i, -15695i), vec2<i32>(14245i, 0i), vec2<i32>(0i, 1i), vec2<i32>(28225i, -40745i), vec2<i32>(-23699i, 1i), vec2<i32>(-9420i, -21867i), vec2<i32>(2147483647i, 18375i), vec2<i32>(-2911i, -24328i), vec2<i32>(8801i, 33081i), vec2<i32>(271i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, 2147483647i), vec2<i32>(1464i, -15341i), vec2<i32>(1i, 2147483647i), vec2<i32>(-16250i, 65365i), vec2<i32>(0i, 2147483647i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    let var_0 = u_input.b;
    var var_1 = Struct_4(Struct_2(u_input.a | _wgslsmith_div_vec3_u32(u_input.a, u_input.a), Struct_1(firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(70985u, u_input.a.x, 10611u), 21u)]), var_0, all(vec4<bool>(true, false, false, false)), firstTrailingBit(-2147483647i), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, 0i), abs(0i)))), vec2<bool>(true, all(vec2<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, false))))), ~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.a.x, 27369u, u_input.a.x, u_input.a.x) ^ vec4<u32>(1u, u_input.a.x, u_input.a.x, 14636u)), ~(~vec4<u32>(85986u, 0u, 1083u, 38290u)), vec4<u32>(34796u, countOneBits(1u), 19235u, _wgslsmith_sub_u32(u_input.a.x, 33917u))), !vec2<bool>(all(vec3<bool>(true, true, true)), true));
    return var_1.c.x;
}

fn func_4(arg_0: vec2<u32>) -> u32 {
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    var var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f * -1219f))) + 136f), Struct_4(Struct_2(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 0u, u_input.a.x), vec3<u32>(45507u, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x)), u_input.a), Struct_1(~global0[_wgslsmith_index_u32(arg_0.x, 21u)], ~6094i, true, 10189i, 13743i)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec4<bool>(false, false, false, true))), vec2<bool>(false, all(vec4<bool>(true, false, true, false))), vec2<bool>(true, true)), ~reverseBits(~vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, u_input.a.x)), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), true || (-5002i > u_input.c))), Struct_2(~reverseBits(~u_input.a), Struct_1(_wgslsmith_mult_vec2_i32(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec2<i32>(u_input.c, u_input.c)), -17455i << (_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, arg_0.x)) % 32u), any(vec4<bool>(true, true, false, true)), u_input.c, 2147483647i << (abs(u_input.a.x) % 32u))), Struct_3(select(vec2<bool>(true, u_input.a.x > u_input.a.x), vec2<bool>(true, true), true), Struct_1(abs(_wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], vec2<i32>(-9233i, u_input.b))), u_input.c, true, max(u_input.b | -1i, -u_input.c), 67515i)), Struct_1(~global0[_wgslsmith_index_u32(~(~arg_0.x), 21u)], firstTrailingBit(1i), false, u_input.c, ~_wgslsmith_div_i32(1i, u_input.b >> (arg_0.x % 32u))));
    return _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.c.a.x, arg_0.x, 4294967295u)), _wgslsmith_div_vec3_u32(var_0.b.c.yyw, _wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.a.x, 1u, 31893u), var_0.c.a), ~var_0.c.a >> (vec3<u32>(4294967295u, var_0.b.a.a.x, 4294967295u) % vec3<u32>(32u)))));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> bool {
    global0 = array<vec2<i32>, 21>();
    var var_0 = !vec2<bool>(arg_1.a.x, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1297f, arg_0, -583f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -329f) + vec3<f32>(arg_0, arg_0, arg_0))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(arg_0)), 1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, 1783f, arg_0))))));
    let var_2 = ~(func_4(vec2<u32>(func_3(0i, vec4<i32>(-44840i, -672i, 0i, 19264i)), _wgslsmith_add_u32(u_input.a.x, 1u))) & (u_input.a.x ^ ~u_input.a.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(var_1.yy * vec2<f32>(652f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, 1477f)), _wgslsmith_f_op_f32(var_1.x + arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 912f)))));
    return (!(_wgslsmith_f_op_f32(-975f - -858f) > _wgslsmith_div_f32(-557f, var_3.x)) | all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, var_0.x, var_0.x)))) | (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0, arg_0)), 147f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -646f));
}

fn func_5(arg_0: vec4<bool>) -> u32 {
    var var_0 = select(u_input.a.yy, vec2<u32>(_wgslsmith_mult_u32(func_3(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(55806i, 28167i, 2147483647i, 1i), vec4<i32>(-3792i, -3798i, u_input.b, -1i))), 18663u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a))), select(arg_0.xy, vec2<bool>(true, arg_0.x | select(false, arg_0.x, false)), arg_0.yx));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-203f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1004f))))))));
    global0 = array<vec2<i32>, 21>();
    return ~_wgslsmith_mod_u32(~var_0.x, u_input.a.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec3<u32> {
    var var_0 = vec2<u32>(~(~71732u), firstLeadingBit(func_5(vec4<bool>(true, func_2(466f, Struct_3(arg_1, Struct_1(global0[_wgslsmith_index_u32(34731u, 21u)], u_input.c, arg_1.x, -974i, arg_0.x))), true, func_2(305f, Struct_3(vec2<bool>(arg_1.x, arg_1.x), Struct_1(arg_0.wy, 1i, arg_1.x, arg_0.x, 2147483647i)))))));
    var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(max(1u, _wgslsmith_clamp_u32(1u, 13516u, var_0.x)), firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, 14741u))), vec2<u32>(u_input.a.x | countOneBits(4294967295u), 4294967295u)) >> (vec2<u32>(var_0.x, firstLeadingBit(_wgslsmith_mult_u32(~var_0.x, max(var_0.x, u_input.a.x)))) % vec2<u32>(32u));
    global0 = array<vec2<i32>, 21>();
    var_0 = vec2<u32>(_wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) ^ min(vec2<u32>(1u, var_0.x), u_input.a.yy), firstLeadingBit(~vec2<u32>(u_input.a.x, 1u)))), ~0u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(258f, 1612f))))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -553f), -1291f)));
    return u_input.a;
}

fn func_6(arg_0: bool, arg_1: vec3<u32>) -> i32 {
    let var_0 = 477f;
    global0 = array<vec2<i32>, 21>();
    let var_1 = 28953i;
    global0 = array<vec2<i32>, 21>();
    var var_2 = Struct_5(var_0, Struct_4(Struct_2(u_input.a, Struct_1(firstLeadingBit(vec2<i32>(-2147483647i, 1i)), _wgslsmith_sub_i32(var_1, -2438i), !arg_0, -25335i, i32(-1i) * -1i)), vec2<bool>(all(select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, false, arg_0, arg_0))), false), max(~(~vec4<u32>(0u, 4294967295u, 4294967295u, 17228u)), vec4<u32>(20945u, _wgslsmith_add_u32(0u, 49311u), ~u_input.a.x, abs(1u))), select(vec2<bool>(false == arg_0, !arg_0), select(vec2<bool>(arg_0, true), !vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0 | arg_0, arg_0))), Struct_2(_wgslsmith_clamp_vec3_u32(select(max(u_input.a, vec3<u32>(3604u, 16006u, 1u)), arg_1, !vec3<bool>(arg_0, arg_0, arg_0)), select(~u_input.a, vec3<u32>(34892u, u_input.a.x, arg_1.x), arg_0), ~func_1(vec4<i32>(var_1, -10642i, var_1, -1i), vec2<bool>(arg_0, arg_0))), Struct_1(vec2<i32>(_wgslsmith_add_i32(u_input.c, var_1), _wgslsmith_div_i32(-38740i, 51811i)), max(u_input.c | u_input.b, min(u_input.c, u_input.b)), func_2(_wgslsmith_f_op_f32(abs(var_0)), Struct_3(vec2<bool>(false, true), Struct_1(global0[_wgslsmith_index_u32(26865u, 21u)], u_input.b, arg_0, -33021i, var_1))), _wgslsmith_add_i32(1i, 59262i >> (arg_1.x % 32u)), _wgslsmith_mult_i32(var_1, ~11358i))), Struct_3(!select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), Struct_1(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.b, u_input.c))), _wgslsmith_div_i32(i32(-1i) * -1i, -27599i), true, -u_input.c, u_input.b)), Struct_1(countOneBits(global0[_wgslsmith_index_u32(1u, 21u)]), var_1, false, firstLeadingBit(reverseBits(select(96602i, var_1, false))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~var_1, ~(-30200i)), u_input.c, -45866i)));
    return 7523i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.c, _wgslsmith_add_i32(0i, -14694i) | _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(firstTrailingBit(-2147483647i), i32(-1i) * -2147483647i)), -2147483647i, 1i);
    global0 = array<vec2<i32>, 21>();
    var_0 = vec4<i32>(-func_6(false, func_1(max(vec4<i32>(var_0.x, -2147483647i, 49438i, var_0.x), vec4<i32>(u_input.c, -17064i, u_input.c, u_input.c)), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), firstLeadingBit(~(i32(-1i) * -u_input.b)), var_0.x, u_input.c);
    var_0 = vec4<i32>(var_0.x, var_0.x, var_0.x, _wgslsmith_add_i32(i32(-1i) * -u_input.c, u_input.b ^ var_0.x));
    global0 = array<vec2<i32>, 21>();
    var var_1 = Struct_5(_wgslsmith_f_op_f32(sign(-388f)), Struct_4(Struct_2(select(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), true), Struct_1(abs(vec2<i32>(u_input.c, -2147483647i)), 34211i, true, _wgslsmith_mult_i32(2197i, u_input.c), 1i)), vec2<bool>(func_2(_wgslsmith_f_op_f32(-335f - 601f), Struct_3(vec2<bool>(true, false), Struct_1(var_0.zz, u_input.c, true, 92725i, -2147483647i))), false), ~vec4<u32>(func_5(vec4<bool>(true, false, true, true)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), select(u_input.a.x, 16140u, true), 1u), select(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(false, false, true))), vec2<bool>(true, true), 17889u <= func_3(u_input.c, vec4<i32>(1i, 23615i, 57046i, 27706i)))), Struct_2(vec3<u32>(80721u, u_input.a.x, 1u), Struct_1(~(-vec2<i32>(u_input.c, u_input.b)), -13906i, all(vec4<bool>(false, false, true, false)), 0i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, 0u), vec4<u32>(u_input.a.x, 84497u, 56196u, 1u)) % 32u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.x, var_0.x), -37289i))), Struct_3(select(select(vec2<bool>(true, true), vec2<bool>(true, true), 1u >= u_input.a.x), vec2<bool>(true, false), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) > (u_input.a.x ^ 4294967295u)), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], var_0.x, !all(vec4<bool>(false, true, true, true)), ~(-1i << (u_input.a.x % 32u)), -18254i | (u_input.c << (1u % 32u)))), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_sub_i32(47711i, var_0.x), false, reverseBits(var_0.x), max(~var_0.x, ~abs(var_0.x))));
    global0 = array<vec2<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~(~var_1.b.c.xz)));
}

