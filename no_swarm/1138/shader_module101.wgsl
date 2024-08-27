struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = arg_1;
    let var_1 = var_0;
    var var_2 = select(vec3<bool>(!(!var_1.d) & (~var_0.b >= ~6013u), false & any(vec2<bool>(true, true)), any(select(!vec4<bool>(arg_1.d, false, true, arg_1.d), select(vec4<bool>(true, false, true, arg_1.d), vec4<bool>(false, var_0.d, var_1.d, true), var_1.d), any(vec2<bool>(false, var_0.d))))), select(!vec3<bool>(arg_1.d, !arg_1.d, any(vec2<bool>(arg_1.d, true))), vec3<bool>(var_0.d, false || var_0.d, var_1.d), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.d, -1i > var_0.c), false)), !all(!vec3<bool>(false, arg_1.d, arg_1.d)));
    var_2 = vec3<bool>(true, any(vec4<bool>(true, (var_0.b <= 4294967295u) | all(vec4<bool>(false, var_1.d, false, true)), !all(vec4<bool>(false, false, var_1.d, true)), false)), var_1.d);
    global0 = array<f32, 6>();
    return vec3<u32>(32029u ^ _wgslsmith_div_u32(var_0.b, ~(~u_input.a)), u_input.a, ~arg_1.b | u_input.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(7067u, _wgslsmith_mod_u32(u_input.a, arg_1.b), u_input.a) ^ func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(375f, -448f, -389f, global0[_wgslsmith_index_u32(1u, 6u)]), vec4<f32>(1098f, 2122f, 1000f, 317f))), arg_1), abs(select(min(vec3<u32>(4294967295u, arg_1.b, arg_1.b), vec3<u32>(1u, 85726u, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(2526u, arg_1.b, u_input.a), vec3<u32>(49819u, 31331u, 4294967295u)), true)), vec3<u32>(~4294967295u, ~16745u, u_input.a)), (vec3<u32>(arg_1.b >> (arg_1.b % 32u), _wgslsmith_add_u32(arg_1.b, 4294967295u), 2977u ^ u_input.a) | ~firstTrailingBit(vec3<u32>(arg_1.b, 4294967295u, u_input.a))) >> (((vec3<u32>(arg_1.b, arg_1.b, 46287u) >> (vec3<u32>(44541u, 0u, arg_1.b) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 44443u, 34389u), ~vec3<u32>(46821u, arg_1.b, u_input.a), select(vec3<u32>(50662u, arg_1.b, 49453u), vec3<u32>(1u, u_input.a, u_input.a), vec3<bool>(false, arg_1.d, true))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = Struct_1(min(firstLeadingBit(abs(arg_1.c)), _wgslsmith_mult_i32(-arg_1.a, abs(abs(arg_1.c)))), ~0u, _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, -522i), _wgslsmith_mod_i32(2417i, -arg_1.a)), arg_0.x);
    var var_2 = !vec3<bool>(any(vec3<bool>(arg_1.d, any(vec3<bool>(var_1.d, arg_0.x, true)), 23888i <= var_1.a)), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -573f))) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_2)))));
    var var_3 = arg_1;
    var var_4 = ~_wgslsmith_dot_vec4_i32(firstTrailingBit(~max(vec4<i32>(var_3.a, 42965i, -28709i, -1i), vec4<i32>(var_1.a, 1i, var_3.c, var_1.c))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a, 1i, 2147483647i, var_1.c), select(vec4<i32>(var_3.c, arg_1.a, 58055i, var_3.a), vec4<i32>(var_1.a, -45186i, var_1.c, -12212i), vec4<bool>(false, true, var_1.d, arg_1.d))), reverseBits(vec4<i32>(var_1.a, var_3.c, -20174i, 46388i) & vec4<i32>(7578i, -2147483647i, 50101i, -2147483647i))));
    return ~1u;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = max(27744i, i32(-1i) * -(~max(47149i, -26453i)));
    global0 = array<f32, 6>();
    let var_1 = 0i;
    global0 = array<f32, 6>();
    let var_2 = Struct_1(_wgslsmith_div_i32(var_0, _wgslsmith_sub_i32(-1i, -1i)) ^ var_1, reverseBits(0u), _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-19545i, -2147483647i, var_0, var_0), vec4<i32>(0i, -68511i, var_1, var_1)), 2147483647i, _wgslsmith_mod_i32(47284i, var_0), -31369i), firstTrailingBit(vec4<i32>(1i, var_1, var_1, var_1) << (vec4<u32>(42677u, arg_0, 1u, 0u) % vec4<u32>(32u)))), arg_3);
    return var_2;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = firstLeadingBit(firstTrailingBit(vec2<u32>(~5107u, max(0u, arg_2.b)) | (~vec2<u32>(0u, arg_3.b) << (abs(vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)))));
    let var_1 = arg_2;
    return arg_3.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(func_5(arg_2.d, arg_0.a, func_4(4294967295u, vec4<u32>(61364u ^ u_input.a, func_2(vec2<bool>(arg_0.d, arg_2.d), Struct_1(arg_1.x, 4294967295u, 0i, true), global0[_wgslsmith_index_u32(45988u, 6u)]), ~arg_2.b, 62712u << (0u % 32u)), vec3<u32>(u_input.a, 4294967295u, 19063u), any(!vec4<bool>(arg_0.d, arg_0.d, true, arg_0.d))), Struct_1(countOneBits(-1i), ~1u, 2147483647i, any(!vec4<bool>(true, arg_0.d, arg_0.d, arg_2.d)))), ~arg_2.b, -1i, all(vec3<bool>(arg_2.d && !arg_2.d, arg_0.d, true)));
    let var_1 = arg_1;
    global0 = array<f32, 6>();
    var var_2 = _wgslsmith_mod_vec3_u32(firstTrailingBit(select(min(vec3<u32>(var_0.b, 4948u, 1u), vec3<u32>(0u, 4294967295u, arg_2.b)), vec3<u32>(0u, arg_2.b, var_0.b) >> (vec3<u32>(13584u, 1u, arg_0.b) % vec3<u32>(32u)), var_0.d) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(78554u, arg_0.b, arg_2.b), vec3<u32>(var_0.b, 44655u, arg_2.b)) % vec3<u32>(32u))), max(reverseBits(~select(vec3<u32>(4294967295u, var_0.b, 1u), vec3<u32>(u_input.a, 79254u, arg_0.b), vec3<bool>(arg_2.d, arg_0.d, var_0.d))), vec3<u32>(0u, 69856u, ~40415u)));
    global0 = array<f32, 6>();
    return false;
}

fn func_6(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = false;
    global0 = array<f32, 6>();
    let var_2 = 47474u;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(420f, 980f, global0[_wgslsmith_index_u32(u_input.a, 6u)]) + vec3<f32>(global0[_wgslsmith_index_u32(60426u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], 1242f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(var_2, 6u)], -1788f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(878f, -737f, global0[_wgslsmith_index_u32(var_2, 6u)]) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(30118u, 6u)], 355f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(var_2, 6u)], -737f, global0[_wgslsmith_index_u32(10065u, 6u)]), vec3<f32>(global0[_wgslsmith_index_u32(90182u, 6u)], 283f, global0[_wgslsmith_index_u32(4294967295u, 6u)]))), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, true))) * vec3<f32>(global0[_wgslsmith_index_u32(~4294967295u, 6u)], _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(9497u, 6u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(23511u, 6u)]))))));
    return Struct_1(18868i, ~u_input.a, -7550i, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))), true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false)), vec4<bool>(true, func_1(Struct_1(-2147483647i, u_input.a, 2147483647i, true), vec3<i32>(0i, 25441i, 1i), Struct_1(-1i, 4294967295u, -1i, false)), true, u_input.a <= 56028u)), u_input.a <= u_input.a));
    var var_1 = ~u_input.a;
    let var_2 = Struct_1(var_0.c, ~_wgslsmith_add_u32(max(var_0.b, ~34277u), var_0.b), ~func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.b), vec2<u32>(u_input.a, var_0.b)) ^ ~var_0.b, ~vec4<u32>(var_0.b, 4294967295u, 0u, var_0.b), reverseBits(min(vec3<u32>(70773u, 4294967295u, u_input.a), vec3<u32>(0u, 1u, 22938u))), !(!var_0.d)).c, any(!vec3<bool>(false, any(vec2<bool>(var_0.d, false)), 3128u < u_input.a)));
    var var_3 = func_6(!select(!(!vec4<bool>(var_2.d, true, true, var_0.d)), select(vec4<bool>(true, var_2.d, false, false), !vec4<bool>(var_2.d, true, false, var_2.d), !vec4<bool>(var_0.d, true, var_0.d, false)), !select(vec4<bool>(true, var_0.d, var_0.d, true), vec4<bool>(false, true, var_0.d, var_0.d), vec4<bool>(var_2.d, var_0.d, false, var_2.d))));
    var var_4 = func_6(vec4<bool>(!var_2.d, true, var_0.d, true)).a;
    var_4 = var_0.c;
    let var_5 = func_4(countOneBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(53556u, 42697u, func_6(vec4<bool>(false, var_3.d, var_2.d, var_2.d)).b), func_4(0u, vec4<u32>(57798u, u_input.a, var_3.b, var_0.b), ~vec3<u32>(4294967295u, 40102u, 46317u), !var_3.d).b)), firstLeadingBit(~firstTrailingBit(vec4<u32>(4294967295u, var_2.b, var_3.b, 0u) | vec4<u32>(3207u, var_3.b, 4294967295u, var_3.b))), vec3<u32>(func_4(u_input.a, vec4<u32>(countOneBits(var_3.b), min(4294967295u, var_3.b), max(var_3.b, var_3.b), _wgslsmith_sub_u32(var_2.b, var_3.b)), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, var_2.b, var_0.b), vec4<u32>(10241u, var_2.b, var_3.b, 4294967295u)), u_input.a), 1i < _wgslsmith_sub_i32(3229i, var_2.a)).b, min(max(47963u, ~4294967295u), ~1u), ~_wgslsmith_mod_u32(var_0.b, 2533u)), var_3.d);
    var var_6 = !any(vec3<bool>(!(!var_0.d), var_2.d, var_2.d));
    var_6 = !(45506i > -(var_0.a | reverseBits(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, func_4(22395u, select(vec4<u32>(var_2.b, var_3.b, 70867u, 53766u), vec4<u32>(17203u, var_2.b, 22425u, var_2.b), var_5.d), vec3<u32>(~1u, ~0u, var_0.b), true).b, var_0.b));
}

