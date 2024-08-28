struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-155f, -579f, -338f, 1429f, 665f, -1088f, -954f, 1150f, -1718f, -1054f, -1720f, 1522f, 921f, -1141f, 953f, 1000f, 934f, -725f, -446f, 1326f, -434f, -346f, 1546f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, u_input.c, arg_0, u_input.c), -vec4<i32>(u_input.c, -1i, u_input.c, u_input.c)), abs(abs(~select(vec4<i32>(arg_0, 1i, -42248i, arg_0), vec4<i32>(2147483647i, arg_0, -2147483647i, arg_0), true))));
    var_0 = abs(2147483647i);
    var_0 = _wgslsmith_div_i32(arg_0, -_wgslsmith_add_i32(~(arg_0 >> (0u % 32u)), 1i | arg_0));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, reverseBits(_wgslsmith_mod_u32(u_input.a, u_input.a))), _wgslsmith_clamp_vec4_u32(~max(vec4<u32>(arg_1.b, u_input.b, 4294967295u, 1u), vec4<u32>(67415u, u_input.a, 0u, 4294967295u)), abs(vec4<u32>(31202u, u_input.b, u_input.b, 18879u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.a, 22137u, u_input.a), vec4<u32>(arg_1.b, u_input.b, u_input.b, u_input.b)), vec4<u32>(50466u, min(arg_1.b, 1u), ~u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.a)))) | arg_1.b;
    var_0 = -2147483647i;
    return _wgslsmith_f_op_f32(1496f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 23u)], -1395f, arg_1.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1260f)))))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = Struct_1(true, ~28682u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c, Struct_1(false, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 19830u, 13369u), vec3<u32>(u_input.a, u_input.b, u_input.a)), -569f, true)))), !(((-18044i >> (u_input.a % 32u)) << ((19415u & u_input.a) % 32u)) < firstTrailingBit(~0i)));
    var var_1 = firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(32853u, 81492u), vec2<u32>(u_input.b, var_0.b)), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(0u, 77358u)), max(vec2<u32>(var_0.b, 2603u), vec2<u32>(u_input.b, var_0.b))))));
    var var_2 = !(var_0.d & arg_2) & !var_0.d;
    return Struct_1(all(!(!(!vec4<bool>(false, arg_2, true, true)))), ~(var_0.b & 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_0) + _wgslsmith_f_op_f32(min(126f, _wgslsmith_f_op_f32(-arg_0)))), var_0.a);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = Struct_1(false, ~arg_2.b, arg_1.c, arg_0);
    let var_1 = Struct_1(false, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(reverseBits(0u), _wgslsmith_sub_u32(arg_1.b, 68530u), 31030u), u_input.a), _wgslsmith_f_op_f32(func_3(i32(-1i) * -1i, arg_1)), true && all(!select(vec2<bool>(true, arg_0), vec2<bool>(false, var_0.d), vec2<bool>(arg_2.a, arg_1.d))));
    let var_2 = _wgslsmith_add_vec3_u32((~_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_2.b, 1526u), vec3<u32>(u_input.a, arg_1.b, 47245u)) & ~vec3<u32>(var_1.b, var_0.b, 1u)) | ~(abs(vec3<u32>(var_0.b, 25574u, var_1.b)) & ~vec3<u32>(u_input.b, 4294967295u, 3073u)), ~abs(vec3<u32>(var_1.b & var_0.b, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, var_0.b, u_input.b), vec3<u32>(17207u, 74737u, var_0.b)))));
    return -_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(32441i, u_input.c) & firstTrailingBit(u_input.c), -1i, -u_input.c | reverseBits(u_input.c));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = arg_1.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -983f);
    let var_2 = !arg_1.yz;
    global0 = array<f32, 23>();
    var var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(max(~vec3<i32>(-1i, -39965i, 1i), ~vec3<i32>(u_input.c, u_input.c, u_input.c) >> (~vec3<u32>(15723u, 69980u, u_input.b) % vec3<u32>(32u))), vec3<i32>(func_4(true, func_2(-365f, vec2<f32>(-1875f, global0[_wgslsmith_index_u32(24550u, 23u)]), var_2.x), Struct_1(arg_1.x, 28391u, global0[_wgslsmith_index_u32(u_input.b, 23u)], false)), u_input.c, 1i)), (vec3<i32>(func_4(true, Struct_1(arg_1.x, u_input.b, arg_0.x, true), Struct_1(var_2.x, u_input.b, 739f, false)), -u_input.c, ~u_input.c) >> (vec3<u32>(reverseBits(1u), select(13667u, 1u, true), abs(61119u)) % vec3<u32>(32u))) | vec3<i32>(func_4(func_2(var_1, arg_0, true).a, func_2(var_1, vec2<f32>(886f, var_1), true), Struct_1(arg_1.x, u_input.b, 349f, arg_1.x)), u_input.c ^ _wgslsmith_add_i32(13867i, 1i), _wgslsmith_add_i32(~3833i, -1i)));
    return vec2<bool>(false, any(arg_1));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = 0i;
    let var_1 = func_2(189f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.ww, arg_1.yy, arg_0)) * _wgslsmith_div_vec2_f32(arg_1.zx, arg_1.yx))), _wgslsmith_div_vec2_f32(vec2<f32>(-1193f, arg_1.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.x, arg_1.x)))), !select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), arg_0.x))), all(arg_0));
    var var_2 = Struct_1(var_1.a, ~u_input.b, global0[_wgslsmith_index_u32(firstTrailingBit(~7836u), 23u)], true);
    let var_3 = select(vec3<bool>(true, false, !(!func_2(500f, vec2<f32>(1428f, 1369f), false).d)), select(vec3<bool>(func_1(_wgslsmith_f_op_vec2_f32(floor(arg_1.wx)), vec3<bool>(true, true, true)).x, true, any(!vec3<bool>(arg_0.x, true, false))), select(select(!vec3<bool>(var_2.a, var_1.d, var_2.a), !vec3<bool>(true, var_2.a, arg_0.x), vec3<bool>(false, false, var_1.d)), select(select(vec3<bool>(false, var_1.a, false), vec3<bool>(arg_0.x, var_2.a, true), false), vec3<bool>(var_1.a, var_2.a, var_2.d), !vec3<bool>(true, false, var_1.d)), false), !select(!vec3<bool>(arg_0.x, var_2.d, arg_0.x), vec3<bool>(arg_0.x, true, true), !vec3<bool>(arg_0.x, false, arg_0.x))), true);
    let var_4 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), 1u == u_input.b)), true);
    let var_1 = -569f;
    let var_2 = ~abs(~vec4<i32>(78679i, u_input.c, u_input.c, -2147483647i) & _wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(35901i, -32950i, u_input.c, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c), vec4<i32>(u_input.c, u_input.c, -1i, 0i))));
    var var_3 = func_5(!select(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(2315f, global0[_wgslsmith_index_u32(54810u, 23u)]), vec2<f32>(var_1, var_1)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(561f + _wgslsmith_f_op_f32(func_3(1i, Struct_1(false, 21642u, -1388f, false)))), -368f, global0[_wgslsmith_index_u32(u_input.a, 23u)], _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_i32(var_2.xy, -var_2.yz), func_2(global0[_wgslsmith_index_u32(u_input.b, 23u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-484f, var_1), vec2<f32>(-936f, 1736f), vec2<bool>(true, true))), false)))), 0u);
    let var_4 = ~var_2.yww;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

