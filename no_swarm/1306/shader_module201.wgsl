struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-8885i, vec3<f32>(2201f, 1722f, -932f), 34853i, 1u, 23712u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    var var_0 = countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(0u, 26171u, 44846u, arg_0.b.b), vec4<u32>(1u, 1u, 4294967295u, arg_0.a), arg_0.b.a.x), vec4<u32>(~8684u, arg_1.d << (995u % 32u), ~arg_1.d, arg_0.b.b | 4294967295u)), reverseBits(min(_wgslsmith_div_vec4_u32(vec4<u32>(global0.d, 47874u, arg_0.a, arg_1.e), vec4<u32>(4294967295u, u_input.a.x, 0u, arg_0.b.b)), ~vec4<u32>(arg_1.d, u_input.a.x, 4294967295u, arg_0.a)))));
    var var_1 = ~(~abs(~arg_0.b.b));
    let var_2 = -412f;
    var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, var_0.x, 4294967295u, arg_0.a)), ~(~vec4<u32>(0u, 41674u, 0u, var_0.x))) | _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(20828u, arg_0.b.b, 81375u, 1u), vec4<u32>(global0.d, 91809u, var_0.x, var_0.x)), select(vec4<u32>(arg_1.e, arg_1.d, u_input.a.x, arg_0.b.b) | vec4<u32>(12514u, arg_0.b.b, global0.e, u_input.b), ~vec4<u32>(global0.e, u_input.a.x, global0.e, 10472u), true)), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(global0.d, 1u, abs(u_input.b), firstLeadingBit(1u))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(19691u, 86749u, 1u, 27726u)), vec4<u32>(58704u, 14267u, global0.e, arg_0.a)), min(vec4<u32>(u_input.a.x, arg_1.d, 2774u, 45469u), vec4<u32>(1u, arg_0.a, 0u, 1u)) << (vec4<u32>(arg_0.b.b, 69768u, 64821u, global0.e) % vec4<u32>(32u)))));
    let var_3 = Struct_3(_wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(arg_1.a, global0.c)), vec2<i32>(global0.c, global0.c)), abs(1i), ~arg_1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -1502f, arg_1.b.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, global0.b.x, _wgslsmith_f_op_f32(exp2(global0.b.x))))), _wgslsmith_sub_i32(0i, _wgslsmith_sub_i32((arg_1.c << (30433u % 32u)) ^ 2147483647i, global0.c)), (global0.d >> ((_wgslsmith_add_u32(0u, 4294967295u) >> (firstLeadingBit(var_0.x) % 32u)) % 32u)) ^ firstLeadingBit(global0.e), _wgslsmith_add_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.d, 1u, 2975u), vec4<u32>(global0.d, u_input.b, arg_0.b.b, 1u)), 1u), ~8174u));
    return ~(~1u) <= u_input.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_3(global0.a, global0.b, -20956i, u_input.a.x, ~reverseBits(u_input.b) << (arg_0.x % 32u));
    var var_1 = !select(vec4<bool>(!any(vec3<bool>(true, false, false)), ~0u == (48073u & u_input.a.x), false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(true, false)), any(vec3<bool>(false, false, false)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    var var_2 = vec2<bool>(select(!(!var_1.x), !func_3(Struct_2(4294967295u, Struct_1(vec4<bool>(false, var_1.x, false, true), 0u)), Struct_3(3452i, vec3<f32>(arg_1, -479f, arg_1), var_0.c, u_input.b, arg_0.x)), true || all(!vec3<bool>(false, true, var_1.x))), global0.c > global0.c);
    let var_3 = var_0.a;
    return Struct_3(-var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.b)) * vec3<f32>(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(min(1194f, global0.b.x))), _wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(-global0.b.x))), 1i, ~_wgslsmith_clamp_u32(abs(global0.d), ~select(26301u, 23647u, var_2.x), _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(var_0.d, 0u, var_0.e, global0.d))), arg_0.x);
}

fn func_1() -> u32 {
    global0 = func_2(_wgslsmith_add_vec4_u32(vec4<u32>(abs(10410u), 14149u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.e, u_input.b, global0.e), vec3<u32>(global0.d, 30998u, 4294967295u))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.e, 0u, u_input.a.x, 35258u), vec4<u32>(4294967295u, u_input.b, global0.d, 0u)), ~vec4<u32>(94974u, u_input.a.x, global0.e, u_input.b)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~select(vec4<u32>(global0.e, u_input.b, 66326u, u_input.a.x), vec4<u32>(global0.d, 4294967295u, u_input.b, u_input.b), vec4<bool>(false, true, false, true)), vec4<u32>(u_input.b, global0.e, u_input.a.x, global0.e) << ((vec4<u32>(u_input.b, 1u, 30219u, global0.e) & vec4<u32>(u_input.a.x, 4294967295u, global0.e, u_input.b)) % vec4<u32>(32u)))), -256f);
    let var_0 = Struct_1(!vec4<bool>(true, !all(vec2<bool>(false, false)), true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true))), global0.e);
    let var_1 = Struct_3(24655i, vec3<f32>(374f, 309f, _wgslsmith_div_f32(403f, -353f)), firstLeadingBit(_wgslsmith_sub_i32(-(~(-4037i)), _wgslsmith_mod_i32(global0.a, global0.a) & global0.c)), ~15445u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.b, u_input.a.x, global0.d), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, 0u, 14671u), vec3<u32>(u_input.a.x, 4064u, u_input.a.x))), countOneBits(max(max(vec3<u32>(var_0.b, 25858u, 1u), vec3<u32>(0u, var_0.b, global0.e)), select(vec3<u32>(96809u, global0.d, 16554u), vec3<u32>(var_0.b, 4294967295u, 1u), vec3<bool>(var_0.a.x, true, var_0.a.x))))));
    global0 = Struct_3(1i, var_1.b, ~(-2147483647i), 1u, _wgslsmith_dot_vec4_u32(~(countOneBits(vec4<u32>(1u, var_1.d, 90231u, 1644u)) >> (select(vec4<u32>(1u, u_input.a.x, 0u, u_input.b), vec4<u32>(0u, global0.d, 0u, 1u), var_0.a.x) % vec4<u32>(32u))), vec4<u32>(var_0.b, var_1.d, u_input.a.x, _wgslsmith_sub_u32(func_2(vec4<u32>(var_0.b, 74578u, global0.d, var_0.b), global0.b.x).e, var_1.d))));
    let var_2 = var_1;
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_1.e, 1u, 20116u), ~max(vec3<u32>(1u, 0u, 44021u), vec3<u32>(0u, var_0.b, 0u))), reverseBits(firstLeadingBit(abs(vec3<u32>(var_2.e, 61190u, var_0.b))) << (vec3<u32>(1u, _wgslsmith_div_u32(var_0.b, var_2.e), max(var_2.e, 4294967295u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_2 {
    return Struct_2(0u, Struct_1(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true)), ~_wgslsmith_mult_u32(~1u, ~arg_0.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0.b.a.wwy;
    let var_1 = vec4<i32>(global0.c, _wgslsmith_sub_i32(6654i, -global0.c), firstTrailingBit(firstTrailingBit(reverseBits(-global0.c))), 1i);
    let var_2 = u_input.a.x;
    let var_3 = Struct_4(Struct_2(var_2, func_4(abs(~vec3<u32>(0u, 50750u, 1u)), func_2(vec4<u32>(0u, 38421u, 4294967295u, 4294967295u), _wgslsmith_div_f32(818f, global0.b.x))).b), -_wgslsmith_div_vec2_i32(select(vec2<i32>(-2147483647i, 0i), var_1.yw, arg_0.b.a.yx) >> ((u_input.a ^ u_input.a) % vec2<u32>(32u)), max(min(vec2<i32>(35858i, 42985i), var_1.yy), vec2<i32>(global0.a, global0.a))), arg_0, func_4(_wgslsmith_sub_vec3_u32(~(vec3<u32>(0u, var_2, arg_0.a) ^ vec3<u32>(arg_0.a, arg_0.b.b, 27676u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.d, u_input.a.x, 37615u), vec3<u32>(0u, 18201u, 0u))), Struct_3(global0.c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global0.b + global0.b), global0.b)), 0i, _wgslsmith_div_u32(global0.e, ~42238u), 40124u)));
    var var_4 = 36157u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec3<u32>(~(~u_input.b), min(global0.d, global0.e) & func_1(), global0.e), Struct_3(global0.c, func_2(vec4<u32>(u_input.b, 4066u, global0.d, u_input.b), global0.b.x).b, -68170i, ~(~41000u), min(u_input.a.x, u_input.b))), vec3<bool>(true, !(!func_3(Struct_2(34443u, Struct_1(vec4<bool>(false, true, false, false), 1u)), Struct_3(global0.a, global0.b, global0.a, 66746u, 29203u))), all(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, func_3(Struct_2(global0.d, Struct_1(vec4<bool>(false, false, true, true), global0.e)), Struct_3(0i, vec3<f32>(global0.b.x, 348f, global0.b.x), global0.c, 0u, 4294967295u))))));
    global0 = Struct_3(_wgslsmith_clamp_i32(1850i, select(global0.c, -global0.c, select(false, true, var_0.b.a.x)) ^ -1i, global0.a), global0.b, global0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(min(global0.e, 0u), firstLeadingBit(0u), 0u, ~var_0.a) ^ ((vec4<u32>(var_0.a, 1u, 0u, 0u) | vec4<u32>(var_0.b.b, 105485u, 32459u, var_0.a)) ^ select(vec4<u32>(u_input.b, 41680u, global0.d, u_input.b), vec4<u32>(u_input.b, global0.d, u_input.a.x, var_0.a), var_0.b.a)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.b, global0.d, 28888u, var_0.a) | vec4<u32>(u_input.a.x, 18328u, 0u, 4294967295u), abs(vec4<u32>(u_input.a.x, var_0.b.b, 1u, 86167u))) << (~(vec4<u32>(var_0.a, global0.e, var_0.b.b, 1u) | vec4<u32>(4294967295u, 0u, 19318u, var_0.a)) % vec4<u32>(32u))), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(69451u, 41577u, u_input.b), vec3<u32>(0u, u_input.b, global0.e) ^ vec3<u32>(global0.e, 34679u, 32883u)), 23600u));
    var var_1 = var_0.b.a.x;
    var var_2 = select(max(vec4<i32>(_wgslsmith_add_i32(global0.a, _wgslsmith_mod_i32(59143i, global0.a)), 2147483647i, global0.a, ~max(global0.a, 34482i)), ~vec4<i32>(global0.c, _wgslsmith_mod_i32(-1i, -54338i), 0i, global0.c | 12938i)), ~(vec4<i32>(global0.a << (1u % 32u), -2147483647i, global0.a & global0.a, -global0.a) ^ _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(16194i, global0.c, global0.c, 1i)), select(vec4<i32>(-34308i, global0.c, 1i, global0.c), vec4<i32>(-2147483647i, global0.c, global0.a, -4068i), var_0.b.a))), var_0.b.a.x);
    let var_3 = global0.b.x;
    var var_4 = -global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~vec3<u32>(~0u, min(~1u, u_input.a.x), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(69308u, u_input.b, global0.e, global0.e)), vec4<u32>(var_0.a, u_input.a.x, u_input.b, var_0.b.b))), _wgslsmith_div_i32(0i, 29321i >> (u_input.b % 32u)), vec4<u32>(28292u, var_0.a, ~countOneBits(_wgslsmith_clamp_u32(4294967295u, 1u, var_0.a)), var_0.b.b), ~(-firstLeadingBit(firstTrailingBit(vec4<i32>(global0.c, global0.c, 0i, var_2.x)))));
}

