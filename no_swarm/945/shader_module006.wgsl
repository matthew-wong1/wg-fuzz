struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global2: bool = false;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = u_input.a;
    global0 = 14246i;
    var var_0 = 13004u;
    let var_1 = Struct_3(firstLeadingBit(vec4<u32>(~arg_0.b, 61355u, _wgslsmith_add_u32(arg_0.b, arg_0.b), 0u & arg_0.b) | firstTrailingBit(~vec4<u32>(arg_0.b, arg_0.b, arg_0.b, 1u))), reverseBits(vec3<u32>(71373u, arg_0.b, 4294967295u)), ~(~4294967295u));
    let var_2 = ~(vec4<i32>(_wgslsmith_add_i32(2147483647i, arg_0.a), arg_0.a, -u_input.a, firstLeadingBit(_wgslsmith_mod_i32(-39958i, arg_0.a))) | abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b.x, -34693i, 77i), vec4<i32>(43950i, arg_0.a, -20210i, 2147483647i))));
    return abs(-arg_0.a);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_5) -> u32 {
    var var_0 = arg_2;
    let var_1 = vec2<u32>(17503u, 44515u);
    return var_1.x;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    global0 = -52975i;
    global2 = true;
    let var_0 = 1i;
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~reverseBits(0u), ~1u), abs(0u), func_3(-max(~vec2<i32>(-6279i, u_input.a), vec2<i32>(-1i, 44454i)), -abs(~var_0), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-137f, -719f, false))))));
    var var_2 = Struct_5(-322f);
    return Struct_1(u_input.b.x, _wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(1u, 1u, 1u)), max(~vec3<u32>(90778u, 0u, 4294967295u), vec3<u32>(1u, 1u, 1u)), true), reverseBits(firstLeadingBit(abs(vec3<u32>(22946u, 36868u, 0u))))), select(vec2<bool>(true, true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, false), vec2<bool>(true, false)), select(all(vec4<bool>(false, true, false, false)), true, true)), vec2<bool>(true, false)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1696f, -1000f, -1257f), vec4<f32>(994f, -590f, 383f, -430f), arg_2.d)), vec4<f32>(1249f, 795f, 1000f, -117f), arg_2.c.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-307f, -414f, -712f, 853f) - vec4<f32>(-2446f, 353f, 903f, -378f)) + vec4<f32>(2139f, -782f, 318f, -2007f)))))));
    let var_1 = !select(select(!vec4<bool>(false, arg_3.c.x, true, false), vec4<bool>(true, true, var_0.x <= 1512f, true), !(!vec4<bool>(false, true, arg_3.c.x, arg_3.c.x))), !vec4<bool>(true, arg_3.c.x, true, 1u < arg_3.b), arg_2.c.x);
    global1 = array<vec3<bool>, 12>();
    let var_2 = vec2<f32>(517f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.x)), 1000f, false)));
    global1 = array<vec3<bool>, 12>();
    return Struct_3(firstTrailingBit(~vec4<u32>(~555u, countOneBits(0u), arg_2.b, ~13272u)), select(abs(vec3<u32>(arg_1.x, ~50200u, 110225u)), arg_1, vec3<bool>(any(select(global1[_wgslsmith_index_u32(44469u, 12u)], vec3<bool>(true, arg_0.c.x, true), arg_0.d)), arg_0.c.x, var_1.x & false)), func_3(u_input.b, select(reverseBits(2147483647i), arg_3.a, !(var_2.x > -700f)), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = ~func_3(_wgslsmith_mod_vec2_i32(firstLeadingBit(-vec2<i32>(u_input.c.x, 38342i)), vec2<i32>(~arg_2.x, arg_2.x)), select(~(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(i32(-1i) * -20687i, max(arg_2.x, u_input.b.x)), true), Struct_5(-1370f));
    var var_1 = arg_0.a.wx;
    let var_2 = vec2<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true)), true);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-310f, 1000f, arg_1, 792f) + vec4<f32>(-406f, -1049f, arg_1, -1509f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, arg_1, arg_1, -294f))))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(332f, arg_1, 1361f, arg_1))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, arg_1, 1671f))))))));
    global0 = u_input.b.x;
    return func_2(reverseBits(u_input.b.x), max(abs(u_input.c), min(vec3<i32>(~1i, u_input.b.x << (57865u % 32u), -1i), countOneBits(_wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(0i, -59736i, 0i))))));
}

fn func_6(arg_0: Struct_1) -> StorageBuffer {
    global0 = ~(-_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(-40226i, 2147483647i, arg_0.a, 2147483647i)), countOneBits(-vec4<i32>(2147483647i, arg_0.a, -1i, -36988i))));
    let var_0 = ~vec2<i32>(arg_0.a, -37526i);
    let var_1 = func_4(arg_0, firstLeadingBit(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, 25530u, arg_0.b), vec3<u32>(arg_0.b, arg_0.b, arg_0.b), vec3<u32>(50021u, arg_0.b, arg_0.b)))) | vec3<u32>(_wgslsmith_mult_u32(4294967295u, ~arg_0.b), arg_0.b, func_4(func_5(Struct_3(vec4<u32>(33657u, 10562u, arg_0.b, arg_0.b), vec3<u32>(41044u, arg_0.b, arg_0.b), arg_0.b), -263f, u_input.b), max(vec3<u32>(4294967295u, arg_0.b, 4294967295u), vec3<u32>(arg_0.b, arg_0.b, arg_0.b)), func_2(0i, u_input.c), Struct_1(29429i, 1u, vec2<bool>(false, true), true)).a.x), Struct_1(u_input.c.x, countOneBits(arg_0.b), select(!arg_0.c, vec2<bool>(func_5(Struct_3(vec4<u32>(arg_0.b, arg_0.b, 69908u, arg_0.b), vec3<u32>(arg_0.b, 1u, 4192u), arg_0.b), -308f, u_input.c.yz).d, true), select(func_5(Struct_3(vec4<u32>(arg_0.b, 4294967295u, arg_0.b, arg_0.b), vec3<u32>(arg_0.b, arg_0.b, arg_0.b), 9798u), 460f, u_input.c.yy).c, vec2<bool>(arg_0.c.x, arg_0.d), !arg_0.c)), arg_0.d | any(arg_0.c)), func_2(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, var_0.x, 2147483647i, var_0.x), vec4<i32>(1i, var_0.x, 1i, u_input.a)) << (arg_0.b % 32u), _wgslsmith_mult_i32(16480i, -24325i)), vec3<i32>(1i, min(u_input.a, arg_0.a), ~firstTrailingBit(u_input.b.x))));
    var var_2 = func_1(func_5(Struct_3(vec4<u32>(~var_1.c, _wgslsmith_add_u32(arg_0.b, arg_0.b), 0u, ~31534u), var_1.b, select(firstTrailingBit(0u), arg_0.b, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-242f + -1129f), -410f))), u_input.b));
    var var_3 = var_1;
    return StorageBuffer(-1000f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(687f, 137f, -691f)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - -1065f), _wgslsmith_f_op_f32(f32(-1f) * -715f), 1i < arg_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-101f + _wgslsmith_f_op_f32(ceil(389f)))))), ~vec3<i32>(-abs(arg_0.a), firstLeadingBit(2147483647i), _wgslsmith_add_i32(firstLeadingBit(u_input.c.x), _wgslsmith_div_i32(u_input.c.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    let x = u_input.a;
    s_output = func_6(func_5(func_4(Struct_1(func_1(Struct_1(-21753i, 0u, vec2<bool>(false, true), false)), 1u, vec2<bool>(true, true), false), min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 24488u, 4294967295u)), func_2(u_input.b.x, vec3<i32>(2147483647i, 39337i, 2147483647i)), func_2(i32(-1i) * -29972i, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(446f)))), vec2<i32>(min(u_input.a >> (39335u % 32u), u_input.c.x), 23782i)));
}

