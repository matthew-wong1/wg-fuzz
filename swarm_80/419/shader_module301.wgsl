struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(34261u, 0i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_3(Struct_2(~_wgslsmith_sub_u32(max(2729u, u_input.a.x), global0.a), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(arg_0, global0.b, 0i, global0.b)), vec4<i32>(arg_0, -arg_0, 2147483647i, global0.b >> (0u % 32u)))), Struct_2(min(firstLeadingBit(firstLeadingBit(1426u)), ~abs(1u)), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1016f, -1108f)), _wgslsmith_div_vec2_f32(vec2<f32>(667f, -2339f), vec2<f32>(1000f, 891f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(507f, -946f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1132f), _wgslsmith_div_f32(-884f, 1000f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1418f, 275f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1914f, -665f)))))), vec2<u32>(~(u_input.a.x | ~20603u), 27819u), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(max(0i, global0.b), global0.b | global0.b), vec2<i32>(~arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -7466i, -1926i, global0.b), vec4<i32>(56716i, global0.b, 0i, arg_0)))), global0.a, vec2<bool>(any(vec3<bool>(true, false, true)), true), _wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(25855u, u_input.a.x, 79349u, global0.a), false), vec4<u32>(0u, 0u, 4294967295u, 4294967295u)) & u_input.a.x, global0.b));
    var var_1 = var_0.e.c.x;
    var_1 = var_0.e.c.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x));
    let var_3 = Struct_2(abs(u_input.a.x), abs(_wgslsmith_mod_i32(global0.b, i32(-1i) * -1i)) ^ 47826i);
    return arg_0;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    global0 = Struct_2(firstLeadingBit(u_input.a.x), func_3(firstLeadingBit(global0.b)));
    let var_0 = Struct_2(global0.a, arg_2);
    global0 = Struct_2(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(arg_1.b, global0.a, 93927u, 37858u)), select(abs(vec4<u32>(var_0.a, global0.a, global0.a, 69547u)), firstTrailingBit(u_input.a), vec4<bool>(false, arg_1.c.x, true, false))) ^ ~(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), -1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(arg_3.x - arg_3.x), true)), _wgslsmith_f_op_f32(f32(-1f) * -1694f), -571f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, arg_3.x) * vec3<f32>(arg_3.x, 444f, 1610f))))), vec3<f32>(-301f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1680f - 268f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-352f * 1109f), -248f))), _wgslsmith_f_op_f32(ceil(1049f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3.x, 196f), vec2<f32>(170f, 672f))), _wgslsmith_div_vec2_f32(vec2<f32>(-2409f, var_1.x), arg_3)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1796f, 634f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_3.x)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2900f, var_1.x), vec2<f32>(-660f, arg_3.x), arg_1.c.x)))))));
    return Struct_1(_wgslsmith_mod_vec2_i32(arg_0.wy, arg_0.wy), select(0u, countOneBits(4294967295u), true), arg_1.c, global0.a, 36981i);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global0 = Struct_2(0u, -firstTrailingBit(global0.b));
    global0 = Struct_2(4294967295u << ((abs(arg_2.b) & (global0.a << (firstTrailingBit(arg_2.d) % 32u))) % 32u), -arg_2.a.x);
    global0 = Struct_2(u_input.a.x, _wgslsmith_dot_vec4_i32(countOneBits(select(vec4<i32>(-2147483647i, 25434i, global0.b, 10126i), vec4<i32>(-2147483647i, global0.b, global0.b, arg_2.a.x), vec4<bool>(true, arg_1, false, arg_1)) | (vec4<i32>(-12615i, 29317i, 27397i, arg_2.a.x) ^ vec4<i32>(2147483647i, -1i, 29469i, global0.b))), firstTrailingBit(vec4<i32>(2147483647i, 16371i, 1i, 52991i)) | _wgslsmith_mult_vec4_i32(-vec4<i32>(-26574i, -51841i, -2147483647i, -43355i), firstLeadingBit(vec4<i32>(global0.b, -2147483647i, -45744i, arg_2.e)))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(-1578f + 425f)))), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-312f - _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0)))))), _wgslsmith_f_op_f32(step(arg_0, arg_0)));
    var var_1 = _wgslsmith_sub_u32(16403u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, select(4294967295u & global0.a, 47310u, arg_0 <= 1419f)), u_input.a.xz));
    return Struct_2(_wgslsmith_mult_u32(arg_2.d, ~u_input.a.x), _wgslsmith_sub_i32(~(~(~(-76034i))), arg_2.a.x << ((_wgslsmith_div_u32(35710u, 27417u) >> (_wgslsmith_mod_u32(global0.a, arg_2.d) % 32u)) % 32u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(func_4(-1115f, any(vec4<bool>(any(arg_1.e.c), !arg_1.e.c.x, -2147483647i > global0.b, true)), arg_1.e), arg_1.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_div_f32(arg_1.c.x, 684f))))), firstLeadingBit(min(vec2<u32>(arg_1.d.x, 4294967295u), firstTrailingBit(vec2<u32>(arg_1.b.a, 1u)))) >> (_wgslsmith_sub_vec2_u32(~(~vec2<u32>(global0.a, 1u)), select(reverseBits(u_input.a.zz), vec2<u32>(u_input.a.x, 4810u), !arg_1.e.c)) % vec2<u32>(32u)), func_2(_wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.b.b, arg_0.b, 2147483647i, -2147483647i), vec4<i32>(-1i, 10124i, arg_0.b, 1i)), vec4<i32>(firstTrailingBit(arg_0.b), reverseBits(arg_1.b.b), arg_0.b, firstLeadingBit(arg_0.b))), func_2(vec4<i32>(global0.b, arg_1.b.b, -2147483647i, func_2(vec4<i32>(arg_0.b, arg_1.a.b, -882i, 33999i), Struct_1(vec2<i32>(-1i, -1i), arg_1.e.b, vec2<bool>(arg_1.e.c.x, arg_1.e.c.x), 4294967295u, arg_1.b.b), arg_1.a.b, arg_1.c).a.x), func_2(reverseBits(vec4<i32>(arg_1.a.b, -71262i, 38411i, arg_0.b)), arg_1.e, reverseBits(arg_1.e.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, -929f))), -1i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, 347f)), _wgslsmith_f_op_vec2_f32(arg_1.c + vec2<f32>(348f, arg_1.c.x)))), ~abs(func_3(arg_0.b)), arg_1.c));
    global0 = var_0.a;
    let var_1 = select(vec3<bool>(all(!select(vec4<bool>(false, true, true, arg_1.e.c.x), vec4<bool>(true, arg_1.e.c.x, arg_1.e.c.x, arg_1.e.c.x), vec4<bool>(false, var_0.e.c.x, false, var_0.e.c.x))), true, all(vec4<bool>(arg_1.e.c.x, true, var_0.e.c.x, false))), !(!(!select(vec3<bool>(true, true, var_0.e.c.x), vec3<bool>(var_0.e.c.x, true, var_0.e.c.x), vec3<bool>(false, true, true)))), vec3<bool>(~(~arg_0.b) > ~_wgslsmith_mod_i32(arg_0.b, arg_0.b), true, _wgslsmith_sub_u32(37411u, _wgslsmith_add_u32(var_0.e.b, u_input.a.x)) == ~global0.a));
    var var_2 = ~(-16795i);
    global0 = arg_0;
    return func_2(vec4<i32>(abs(-1i), ~(~countOneBits(-1856i)), firstTrailingBit(-max(22762i, 1i)), -2147483647i), Struct_1(var_0.e.a, abs(0u), arg_1.e.c, arg_1.d.x, 0i), var_0.e.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 839f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(142f, 271f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1481f, -1000f) + arg_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, arg_1.c.x)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.c, vec2<f32>(880f, var_0.c.x)) * _wgslsmith_f_op_vec2_f32(arg_1.c - vec2<f32>(var_0.c.x, -447f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.c + var_0.c))), arg_1.e.c)), func_2(~vec4<i32>(arg_0.b, 6898i, 13077i, 0i), func_2(firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, 49632i, global0.b)), func_2(vec4<i32>(0i, arg_1.e.e, -36766i, arg_1.e.e), var_0.e, 51037i, vec2<f32>(-734f, arg_1.c.x)), ~global0.b, var_0.c), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c.x, 579f))) * _wgslsmith_f_op_vec2_f32(var_0.c - arg_1.c))).c.x)));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = 0u;
    let var_1 = arg_1;
    let var_2 = Struct_3(Struct_2(_wgslsmith_mod_u32(var_1.d, 64081u), 1i), Struct_2(49665u, 19439i), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_0.x))), u_input.a.zz, func_2(select(select(max(vec4<i32>(1i, 7214i, 24306i, -33150i), vec4<i32>(-2147483647i, arg_1.a.x, 0i, 57645i)), ~vec4<i32>(arg_2.b, arg_2.b, 0i, -2147483647i), false), ~(~vec4<i32>(var_1.a.x, 28281i, arg_2.b, -1i)), vec4<bool>(var_1.c.x, -7244i != var_1.e, true, all(var_1.c))), var_1, arg_2.b, arg_3));
    global0 = func_4(1639f, false, Struct_1(vec2<i32>(func_5(func_4(arg_0.x, true, Struct_1(vec2<i32>(var_2.a.b, var_1.a.x), 50156u, vec2<bool>(var_2.e.c.x, false), 4294967295u, global0.b)), Struct_3(var_2.b, arg_2, arg_3, vec2<u32>(u_input.a.x, 4294967295u), var_1)).e, 29741i), ~(~var_2.b.a >> (arg_1.d % 32u)), vec2<bool>(_wgslsmith_f_op_f32(select(-566f, 1014f, var_2.e.c.x)) < _wgslsmith_f_op_f32(arg_0.x * -1637f), !var_1.c.x), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), !(var_2.c.x != var_2.c.x), var_1).a, -1i));
    var_0 = var_2.b.a;
    return arg_2;
}

fn func_1() -> Struct_3 {
    global0 = func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(f32(-1f) * -1018f))), 2557f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-161f, 379f), vec2<f32>(2107f, -805f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(721f, -909f)))))), func_5(Struct_2(min(u_input.a.x, 16144u & u_input.a.x), _wgslsmith_mult_i32(-global0.b, -2147483647i)), Struct_3(func_4(-1749f, any(vec2<bool>(false, true)), func_2(vec4<i32>(1i, global0.b, 2147483647i, global0.b), Struct_1(vec2<i32>(-18765i, global0.b), u_input.a.x, vec2<bool>(false, false), u_input.a.x, 1i), global0.b, vec2<f32>(-951f, 159f))), Struct_2(firstTrailingBit(0u), -2147483647i), vec2<f32>(1326f, _wgslsmith_f_op_f32(trunc(-601f))), _wgslsmith_mult_vec2_u32(u_input.a.yz, vec2<u32>(1u, global0.a)), func_2(-vec4<i32>(0i, -2147483647i, global0.b, 8154i), func_2(vec4<i32>(0i, -5643i, global0.b, 42690i), Struct_1(vec2<i32>(global0.b, 71126i), global0.a, vec2<bool>(false, true), u_input.a.x, global0.b), -2147483647i, vec2<f32>(-914f, -1146f)), -global0.b, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1410f, -874f), vec2<f32>(334f, -261f)))))), func_4(-1830f, false, func_5(func_4(403f, false, func_2(vec4<i32>(1i, -35639i, 75001i, global0.b), Struct_1(vec2<i32>(global0.b, 32893i), 4294967295u, vec2<bool>(false, false), 4294967295u, global0.b), 27538i, vec2<f32>(2359f, -1686f))), Struct_3(func_4(548f, false, Struct_1(vec2<i32>(28007i, global0.b), 0u, vec2<bool>(false, false), 11445u, 6393i)), Struct_2(4294967295u, global0.b), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(559f, 1000f))), ~u_input.a.wz, func_5(Struct_2(global0.a, -2147483647i), Struct_3(Struct_2(64313u, global0.b), Struct_2(global0.a, 21504i), vec2<f32>(-766f, 791f), u_input.a.xz, Struct_1(vec2<i32>(-12592i, global0.b), 4294967295u, vec2<bool>(false, false), 9268u, -2147483647i)))))), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1691f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(323f)), -1360f)))));
    global0 = func_6(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(494f)))) * _wgslsmith_f_op_f32(max(1742f, _wgslsmith_f_op_f32(-2093f + 299f))))), func_2(vec4<i32>(-1i, ~global0.b, _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.b, -629i, global0.b), vec4<i32>(-12757i, global0.b, global0.b, global0.b))), ~(2147483647i << (u_input.a.x % 32u))), func_2(vec4<i32>(_wgslsmith_div_i32(1188i, 4092i), 84000i, global0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 8639i, 0i), vec3<i32>(global0.b, 22465i, 26302i))), Struct_1(vec2<i32>(global0.b, -2147483647i) ^ vec2<i32>(global0.b, global0.b), 4294967295u, vec2<bool>(true, true), ~39015u, _wgslsmith_clamp_i32(global0.b, global0.b, global0.b)), _wgslsmith_mod_i32(firstLeadingBit(-27258i), -2147483647i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-942f, 1555f), vec2<f32>(146f, 1464f), true))))), ~global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1879f, 2398f), vec2<f32>(184f, 269f)) - vec2<f32>(448f, 782f)))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(648f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1309f + 1997f))), func_5(Struct_2(u_input.a.x, global0.b), Struct_3(Struct_2(17181u, global0.b), Struct_2(global0.a, 10478i), vec2<f32>(-1503f, 147f), u_input.a.xy, Struct_1(vec2<i32>(2147483647i, 2147483647i), 17104u, vec2<bool>(true, false), u_input.a.x, global0.b))).c.x && all(vec2<bool>(true, true)), Struct_1(min(firstLeadingBit(vec2<i32>(global0.b, 0i)), vec2<i32>(global0.b, global0.b)), _wgslsmith_dot_vec4_u32(~u_input.a, min(u_input.a, vec4<u32>(global0.a, global0.a, 1u, 0u))), vec2<bool>(true, true), u_input.a.x, i32(-1i) * -11869i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-229f + -370f)) - _wgslsmith_f_op_f32(floor(-292f))), 1434f));
    global0 = func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(975f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1615f * 277f) + _wgslsmith_f_op_f32(select(-592f, 1000f, true))))), func_5(Struct_2(u_input.a.x, 27998i), Struct_3(Struct_2(1u, func_3(-1i)), Struct_2(u_input.a.x, global0.b), vec2<f32>(1f, 1f), u_input.a.zw, func_5(func_4(1000f, true, Struct_1(vec2<i32>(global0.b, 0i), global0.a, vec2<bool>(true, true), global0.a, global0.b)), Struct_3(Struct_2(u_input.a.x, global0.b), Struct_2(115453u, -26151i), vec2<f32>(-844f, -242f), u_input.a.xw, Struct_1(vec2<i32>(11144i, global0.b), 1u, vec2<bool>(true, true), 4294967295u, 0i))))), Struct_2(~global0.a & global0.a, ~global0.b & -1i), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-485f, _wgslsmith_f_op_f32(f32(-1f) * -874f))))));
    let var_0 = global0.b;
    let var_1 = ~(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 1i, global0.b, -41191i)), -vec4<i32>(global0.b, -1i, -6238i, global0.b), _wgslsmith_sub_vec4_i32(vec4<i32>(11700i, -5632i, -13994i, 1i), vec4<i32>(global0.b, 23362i, 2147483647i, global0.b))) ^ reverseBits(-vec4<i32>(-1i, global0.b, 2147483647i, global0.b))) | _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(16972i, global0.b, 2147483647i, 1i)) ^ vec4<i32>(22912i, -46004i, global0.b, -1i), vec4<i32>(~global0.b, 966i & global0.b, _wgslsmith_mult_i32(2147483647i, global0.b), -1i)), (vec4<i32>(-1i) * -vec4<i32>(global0.b, 9430i, -41337i, 2147483647i)) | vec4<i32>(-1i, max(-7064i, global0.b), i32(-1i) * -32220i, _wgslsmith_clamp_i32(1i, global0.b, global0.b)));
    return Struct_3(func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-762f, -1295f))))), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(11380i, var_1.x, -2147483647i, var_1.x), _wgslsmith_add_vec4_i32(var_1, var_1)), func_5(func_6(vec2<f32>(-382f, -1140f), Struct_1(var_1.wz, u_input.a.x, vec2<bool>(false, true), 68803u, global0.b), Struct_2(u_input.a.x, 0i), vec2<f32>(613f, 1274f)), Struct_3(Struct_2(14604u, var_1.x), Struct_2(29568u, -28648i), vec2<f32>(-145f, -845f), vec2<u32>(global0.a, u_input.a.x), Struct_1(var_1.xw, global0.a, vec2<bool>(false, false), 4294967295u, 2147483647i))), global0.b, vec2<f32>(_wgslsmith_div_f32(-703f, 821f), _wgslsmith_f_op_f32(ceil(994f)))), func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-870f * -464f))), false, Struct_1(var_1.xx, ~u_input.a.x, func_5(Struct_2(global0.a, var_1.x), Struct_3(Struct_2(4294967295u, global0.b), Struct_2(2240u, -18757i), vec2<f32>(-868f, 1000f), vec2<u32>(u_input.a.x, 14898u), Struct_1(vec2<i32>(52822i, global0.b), 1u, vec2<bool>(false, true), global0.a, var_1.x))).c, global0.a, func_3(-1i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-510f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) + 1f))), Struct_2(41149u, global0.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(536f, -167f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(823f)) + _wgslsmith_f_op_f32(936f - -1264f)), _wgslsmith_f_op_f32(f32(-1f) * -824f))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(9044u, u_input.a.x), ~(~u_input.a.zw)), Struct_1(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(-43739i, -1i), vec2<i32>(global0.b, 35391i)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1u), 32464u, ~u_input.a.x), !(!func_2(vec4<i32>(var_1.x, var_1.x, -36203i, 54235i), Struct_1(vec2<i32>(-26628i, -21367i), 244u, vec2<bool>(true, true), 4294967295u, global0.b), 15417i, vec2<f32>(1377f, 2779f)).c), 4294967295u, global0.b));
}

fn func_7(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_mult_vec2_i32(arg_2.e.a, vec2<i32>(1i, global0.b) | ~vec2<i32>(arg_2.a.b, -2147483647i)) ^ arg_2.e.a, _wgslsmith_mult_u32(countOneBits(1u), ~(~global0.a)) >> ((func_6(arg_2.c, arg_2.e, func_4(arg_0, arg_2.e.c.x, arg_2.e), vec2<f32>(747f, arg_0)).a & countOneBits(19578u)) % 32u), !(!vec2<bool>(any(arg_1), arg_2.e.c.x)), 30628u, _wgslsmith_mod_i32(-arg_2.a.b, firstTrailingBit(_wgslsmith_add_i32(28085i, func_5(Struct_2(u_input.a.x, -1i), Struct_3(Struct_2(global0.a, arg_2.b.b), Struct_2(0u, arg_2.b.b), vec2<f32>(arg_2.c.x, arg_2.c.x), u_input.a.yx, arg_2.e)).e))));
    var var_1 = Struct_2(1u, ~min(_wgslsmith_add_i32(global0.b, global0.b), -16322i) << (_wgslsmith_dot_vec2_u32(min(~arg_2.d, arg_2.d >> (vec2<u32>(0u, 95023u) % vec2<u32>(32u))), vec2<u32>(arg_2.a.a, _wgslsmith_sub_u32(global0.a, 14569u))) % 32u));
    let var_2 = Struct_3(arg_2.a, arg_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(921f * 469f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(arg_2.c, arg_2.c))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_2.c), arg_2.c)))), u_input.a.yz, var_0);
    global0 = arg_2.b;
    var var_3 = arg_1.x;
    return var_2.a;
}

fn func_8(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(func_6(arg_0.c, arg_0.e, arg_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.c)) + arg_0.c), _wgslsmith_f_op_vec2_f32(arg_0.c * arg_0.c))), Struct_2(arg_2.a, _wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(arg_0.b.b, 0i))), vec2<f32>(389f, 590f), arg_0.d, func_5(func_4(824f, any(vec4<bool>(false, false, false, true)) || true, func_2(vec4<i32>(-29311i, arg_0.b.b, arg_0.b.b, arg_0.b.b), Struct_1(arg_0.e.a, 0u, vec2<bool>(false, false), u_input.a.x, 22926i), _wgslsmith_div_i32(arg_2.b, -1i), _wgslsmith_f_op_vec2_f32(arg_0.c + vec2<f32>(arg_0.c.x, 312f)))), Struct_3(func_4(1371f, true, Struct_1(vec2<i32>(0i, global0.b), global0.a, vec2<bool>(arg_0.e.c.x, true), 1u, -11599i)), func_1().a, vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x), 456f), arg_0.d, func_1().e)));
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -323f), arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -621f)), vec3<f32>(var_0.c.x, -1059f, _wgslsmith_f_op_f32(-var_0.c.x)), select(false, any(vec4<bool>(false, var_1.e.c.x, false, true)), var_1.e.c.x | var_1.e.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.c.x, var_1.c.x), var_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x)) * vec3<f32>(_wgslsmith_f_op_f32(1579f + var_0.c.x), -468f, var_0.c.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-397f, var_0.c.x, 2365f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2161f, var_1.c.x, arg_0.c.x)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, arg_0.c.x, var_0.c.x), vec3<f32>(-886f, var_0.c.x, 531f))))))));
    let var_3 = vec3<bool>(!var_1.e.c.x, any(vec4<bool>(any(!vec3<bool>(false, true, var_1.e.c.x)), !arg_0.e.c.x, any(!arg_0.e.c), !(!var_0.e.c.x))), any(select(vec4<bool>(var_0.e.c.x | false, var_1.e.c.x, arg_0.e.c.x, false), vec4<bool>(false | var_0.e.c.x, select(false, false, false), arg_0.e.c.x, !arg_0.e.c.x), false)));
    var var_4 = Struct_1(vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(global0.b, -2147483647i)), var_1.e.e << ((var_1.d.x & abs(u_input.a.x)) % 32u)), u_input.a.x, func_2(~arg_1, var_0.e, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -7909i, var_1.b.b, var_1.e.e), ~arg_1) >> (32825u % 32u), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - arg_0.c.x), -469f)))).c, ~global0.a, -arg_2.b);
    return func_6(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + var_2.x)), _wgslsmith_f_op_f32(-var_0.c.x)))), var_1.e, var_0.b, vec2<f32>(_wgslsmith_f_op_f32(select(1407f, 188f, true)), _wgslsmith_f_op_f32(f32(-1f) * -411f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(select(false, false, true), all(vec3<bool>(_wgslsmith_mod_i32(-1i, global0.b) > -2147483647i, true, any(vec3<bool>(true, true, true)) | true)), all(vec3<bool>(false, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, false)))));
    let var_1 = true;
    global0 = func_8(Struct_3(func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f - 1045f) + 1390f), !(!vec4<bool>(var_1, true, var_1, var_0.x)), func_1()), func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 148f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-788f, 1218f))), func_2(vec4<i32>(global0.b, -2147483647i, global0.b, 1i), func_1().e, ~global0.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(516f, -360f)))), func_1().b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1673f, -1169f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(889f, 168f)), vec2<f32>(1691f, 1518f)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(1196f)), _wgslsmith_f_op_f32(-454f + -652f))), ~(~(~vec2<u32>(global0.a, 66877u))), func_1().e), vec4<i32>(i32(-1i) * -global0.b, -9393i, -(global0.b ^ ~0i), func_7(_wgslsmith_f_op_f32(-420f - 1141f), select(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_1, true, var_0.x, true), vec4<bool>(var_1, true, true, var_1)), !vec4<bool>(var_1, var_1, var_1, false), select(vec4<bool>(var_1, true, false, var_0.x), vec4<bool>(true, var_1, var_0.x, false), false)), Struct_3(Struct_2(global0.a, global0.b), Struct_2(u_input.a.x, global0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(1023f, 1851f) - vec2<f32>(-722f, 962f)), ~vec2<u32>(4294967295u, u_input.a.x), func_5(Struct_2(59029u, -21182i), Struct_3(Struct_2(u_input.a.x, -13905i), Struct_2(4294967295u, 2147483647i), vec2<f32>(-583f, -152f), u_input.a.yw, Struct_1(vec2<i32>(1i, -32591i), 77764u, vec2<bool>(var_0.x, var_1), u_input.a.x, -27891i))))).b), Struct_2(8250u, min(func_6(vec2<f32>(616f, 392f), Struct_1(vec2<i32>(global0.b, 22069i), u_input.a.x, vec2<bool>(true, true), global0.a, global0.b), Struct_2(global0.a, global0.b), vec2<f32>(-414f, 753f)).b ^ -1i, i32(-1i) * -1i)));
    let var_2 = vec4<i32>(~global0.b, _wgslsmith_mod_i32(_wgslsmith_mult_i32(max(global0.b, ~1i), func_1().a.b), -2334i), 1i, global0.b << (u_input.a.x % 32u));
    global0 = Struct_2(u_input.a.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(164f, -956f)), 1463f)))), vec3<i32>(global0.b, ~func_7(137f, vec4<bool>(var_0.x, true, false, var_1), Struct_3(Struct_2(u_input.a.x, var_2.x), Struct_2(u_input.a.x, var_2.x), vec2<f32>(-2065f, -283f), vec2<u32>(26200u, 935u), Struct_1(var_2.zx, 14148u, vec2<bool>(false, var_1), 41588u, 0i))).b, 32838i) ^ var_2.xyx);
}

