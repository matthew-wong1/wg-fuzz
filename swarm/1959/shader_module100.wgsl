struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, true, false, true, false, false, false, false, true, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_mult_u32(41066u, ~reverseBits(121801u) ^ u_input.b.x);
    return select(-(min(vec3<i32>(1i, arg_1.a, u_input.c), vec3<i32>(1i, arg_1.a, u_input.a)) & max(vec3<i32>(u_input.a, -1i, -1i), vec3<i32>(54583i, arg_1.a, arg_1.a))), _wgslsmith_div_vec3_i32(-vec3<i32>(arg_1.a, 42567i, -30759i), -(vec3<i32>(-2147483647i, 0i, arg_1.a) >> (arg_1.c.wxw % vec3<u32>(32u)))), !(!select(vec3<bool>(arg_1.b, arg_0, false), vec3<bool>(true, global0[_wgslsmith_index_u32(40283u, 10u)], false), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], arg_0)))) ^ ~vec3<i32>(_wgslsmith_mod_i32(-arg_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, -2147483647i, -17301i, arg_1.a), vec4<i32>(u_input.a, -13538i, -30501i, -32380i))), arg_1.a, _wgslsmith_div_i32(u_input.a >> (23659u % 32u), 1i));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = Struct_1(-firstLeadingBit(1073i), true, vec4<u32>((arg_2.c.x & ~0u) << ((~arg_2.c.x << (arg_2.c.x % 32u)) % 32u), ~(abs(arg_2.c.x) >> (634u % 32u)), ~arg_2.c.x, firstTrailingBit(var_0.c.x)));
    var var_2 = ~firstLeadingBit(func_3(all(!vec4<bool>(true, true, arg_2.b, true)), arg_2));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(380f, 1000f)), 404f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(570f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(900f)) * _wgslsmith_f_op_f32(f32(-1f) * -477f))))));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> i32 {
    global0 = array<bool, 10>();
    var var_0 = vec2<f32>(435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(179f)) * _wgslsmith_f_op_f32(floor(261f)))))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-3070f, -323f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-389f, var_0.x)))))))));
    return arg_2.a;
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c, u_input.a, ~(-2147483647i), func_4(func_2(vec4<i32>(34299i, 3942i, arg_0, arg_0) ^ vec4<i32>(u_input.c, arg_0, arg_0, arg_0), arg_0, Struct_1(-78812i, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], vec4<u32>(6066u, 69167u, u_input.b.x, 0u))), ~_wgslsmith_clamp_i32(-46813i, u_input.a, u_input.c), Struct_1(-41215i, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 10u)], vec4<u32>(63415u, u_input.b.x, 1u, u_input.b.x) & vec4<u32>(u_input.b.x, 55650u, 4294967295u, 87548u)))), min(reverseBits(vec4<i32>(arg_0 ^ -57322i, _wgslsmith_mod_i32(arg_0, arg_0), u_input.c, arg_0)), select(-vec4<i32>(0i, 0i, -1i, u_input.a) | _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_0, u_input.c, 14661i), vec4<i32>(-10947i, -12613i, u_input.c, 1i)), -firstLeadingBit(vec4<i32>(-33971i, arg_0, -12306i, u_input.a)), !any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)])))));
    var var_2 = func_2(-(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -22237i, 67507i, 2147483647i), vec4<i32>(arg_0, -48981i, 2147483647i, arg_0)))), u_input.c >> (19401u % 32u), func_2(select(vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a), _wgslsmith_clamp_i32(-30984i, arg_0, 2147483647i), 1i, max(arg_0, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(22991i, 1i, arg_0, 45053i) & vec4<i32>(u_input.a, -11617i, 2147483647i, -34103i), countOneBits(vec4<i32>(u_input.c, -37561i, arg_0, 1i))), any(vec3<bool>(true, true, true))), firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, func_3(global0[_wgslsmith_index_u32(73415u, 10u)], Struct_1(1i, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], vec4<u32>(u_input.b.x, 0u, 4294967295u, 11306u))).x)), Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, -5613i, 1i), _wgslsmith_add_i32(arg_0, u_input.c)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, 70534u, 106303u), 10u)], vec4<u32>(51572u | u_input.b.x, u_input.b.x << (u_input.b.x % 32u), abs(u_input.b.x), 1u))));
    var_1 = u_input.a;
    let var_3 = min(32477i, -2147483647i);
    return -243f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2061f * -284f));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f + 222f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-991f)) * 1f), _wgslsmith_f_op_f32(func_1(~0i)));
    global0 = array<bool, 10>();
    let var_2 = func_2(-(vec4<i32>(-1i) * -(vec4<i32>(-1i, u_input.c, 2147483647i, -74167i) & vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c))), 0i, Struct_1(u_input.a, true, ~vec4<u32>(~u_input.b.x, select(u_input.b.x, u_input.b.x, true), u_input.b.x, countOneBits(21477u))));
    var var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(abs(~28699i), _wgslsmith_div_i32(var_2.a, -var_2.a), 1i), -14175i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + var_1.x))));
}

