struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool = true;

var<private> global2: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> f32 {
    global2 = global0.x;
    var var_0 = all(!select(select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(false, arg_2, false, false), false | arg_1), select(vec4<bool>(arg_2, arg_1, arg_1, arg_1), !vec4<bool>(false, arg_2, false, false), true && arg_2), -2081f > arg_0.a));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a * arg_0.a))), 802f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(145f, -254f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_2))), _wgslsmith_div_f32(arg_0.a, -1408f));
    let var_2 = ~u_input.a;
    return _wgslsmith_f_op_f32(max(var_1.x, 812f));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<i32>) -> vec4<u32> {
    global2 = arg_2.x ^ _wgslsmith_sub_i32(-_wgslsmith_mult_i32(global0.x, countOneBits(global0.x)), 32624i);
    let var_0 = Struct_1(_wgslsmith_mult_u32(~1u, u_input.b) >> ((4294967295u >> (u_input.b % 32u)) % 32u), 33514u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, u_input.b, u_input.b), 111131u & u_input.a), abs(vec2<u32>(4294967295u, u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(arg_0), arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(-438f + arg_0), -224f, _wgslsmith_div_f32(arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 160f, 454f, arg_0), vec4<f32>(-1000f, 1469f, arg_0, -1327f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, -545f, arg_0, arg_0))), !vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))))));
    let var_1 = var_0;
    let var_2 = !(!select(select(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, false)), arg_1, true), vec2<bool>(any(vec2<bool>(false, arg_1.x)), false | arg_1.x), select(arg_1, !vec2<bool>(arg_1.x, arg_1.x), select(arg_1, vec2<bool>(arg_1.x, arg_1.x), arg_1))));
    var var_3 = vec3<f32>(-202f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - 1f))), 562f);
    return vec4<u32>(0u, u_input.a, 69807u, _wgslsmith_clamp_u32(var_1.c ^ (var_0.a << (~12557u % 32u)), _wgslsmith_mult_u32(4294967295u, var_1.c), var_1.a));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    global0 = ~(vec4<i32>(1i, ~35457i, 1i, global0.x << (9869u % 32u)) | ((vec4<i32>(2147483647i, -1i, global0.x, 2147483647i) >> (vec4<u32>(u_input.a, u_input.b, 4294967295u, 7479u) % vec4<u32>(32u))) ^ vec4<i32>(-23600i, global0.x, -2147483647i, 23765i))) >> ((~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 6975u, 1140u) << (vec4<u32>(0u, 4294967295u, 1u, u_input.b) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(45180u, u_input.a, 13606u, u_input.a))) | ~(vec4<u32>(u_input.a, 11827u, u_input.b, u_input.a) ^ func_3(arg_1.a, vec2<bool>(false, false), global0.zw))) % vec4<u32>(32u));
    let var_0 = u_input.b;
    let var_1 = vec3<bool>(any(select(!select(vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<bool>(arg_0, true, all(vec2<bool>(arg_0, arg_0)), false), any(vec4<bool>(arg_0, true, arg_0, arg_0)))), !(!arg_0), arg_0);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -925f), arg_1.a)) * _wgslsmith_f_op_f32(326f * -1000f))));
    let var_3 = Struct_2(Struct_1(var_0, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 25639u, 58587u), ~vec4<u32>(var_0, var_0, var_0, 28917u)), ~(~vec4<u32>(1u, u_input.a, var_0, 0u))), 34264u, min(vec2<u32>(0u, u_input.b) & countOneBits(vec2<u32>(1u, 4294967295u)), vec2<u32>(~var_0, 55071u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -838f, -412f, -603f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(trunc(-736f)), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(603f, arg_1.a, 1000f, arg_1.a))))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(true, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1033f) - _wgslsmith_f_op_f32(func_1(Struct_3(-1179f), true, true)))));
    let var_1 = !((_wgslsmith_f_op_f32(step(185f, var_0.a)) > var_0.a) & all(vec4<bool>(true, true, true, true))) & all(vec4<bool>(!(u_input.a == 4294967295u), true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), false));
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1568f)) * var_0.a));
    var var_2 = -vec4<i32>(-5058i, ~(global0.x & -1i), 27334i, global0.x);
    global0 = _wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(-2147483647i, -22979i, -1i, -27788i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(var_2.x | -2147483647i, -var_2.x, 4961i, var_2.x), firstLeadingBit(vec4<i32>(var_2.x, -1i, -52069i, var_2.x)) << (~vec4<u32>(u_input.b, 0u, 48838u, 53384u) % vec4<u32>(32u)), true), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 6713i, 29172i, -1i), ~vec4<i32>(var_2.x, 0i, 44973i, 0i)))), -firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, var_2.x, 66443i, var_2.x), -vec4<i32>(var_2.x, -15038i, global0.x, 18261i), vec4<i32>(global0.x, 11482i, -37227i, -1i))));
    var var_3 = 10255u;
    global0 = _wgslsmith_clamp_vec4_i32((~(vec4<i32>(17639i, var_2.x, -1i, 0i) << (vec4<u32>(u_input.b, u_input.b, u_input.a, 4294967295u) % vec4<u32>(32u))) << (min(~vec4<u32>(u_input.b, 37654u, 4294967295u, u_input.b), ~vec4<u32>(21232u, 27134u, 34707u, 4294967295u)) % vec4<u32>(32u))) | ~select(vec4<i32>(11876i, 0i, -1593i, 1i), vec4<i32>(global0.x, 48579i, var_2.x, 3868i) & vec4<i32>(-1i, 1226i, var_2.x, -2147483647i), !var_1), _wgslsmith_div_vec4_i32(~(~(vec4<i32>(1i, global0.x, 0i, global0.x) >> (vec4<u32>(u_input.a, 0u, u_input.b, u_input.b) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, var_2.x, -4707i, global0.x), vec4<i32>(var_2.x, global0.x, 29077i, 1i)), vec4<i32>(firstLeadingBit(var_2.x), ~var_2.x, 0i, _wgslsmith_add_i32(global0.x, var_2.x)))), -vec4<i32>(var_2.x, -global0.x << (select(u_input.b, u_input.b, var_1) % 32u), _wgslsmith_clamp_i32(~global0.x, _wgslsmith_clamp_i32(global0.x, -14127i, global0.x), ~global0.x), 14029i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(global0.x, min(abs(var_2.x), abs(~(-2147483647i)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) * 356f), _wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(-var_0.a)));
}

