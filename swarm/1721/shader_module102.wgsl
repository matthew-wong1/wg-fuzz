struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-3113i, true, true, true, Struct_1(22275i, vec3<f32>(2663f, 1000f, 1690f), vec4<f32>(-1000f, -2229f, 1000f, 363f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> f32 {
    global0 = Struct_2(max(firstTrailingBit(min(u_input.d.x, u_input.d.x) | global0.a), ~_wgslsmith_clamp_i32(global0.e.a ^ global0.e.a, _wgslsmith_sub_i32(-49341i, u_input.a.x), global0.a ^ -19762i)), any(select(!select(vec4<bool>(false, false, arg_0, false), vec4<bool>(true, arg_1.x, true, arg_0), true), select(vec4<bool>(false, arg_1.x, global0.c, arg_1.x), select(vec4<bool>(arg_1.x, false, false, arg_0), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_1.x, arg_1.x, arg_0, false)), 0u != u_input.b.x), !select(vec4<bool>(false, true, arg_0, arg_1.x), vec4<bool>(false, true, true, arg_0), vec4<bool>(true, false, false, false)))), all(vec4<bool>(any(select(vec2<bool>(true, global0.d), vec2<bool>(false, false), false)), all(select(vec4<bool>(true, arg_0, arg_1.x, arg_0), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_1.x, arg_0, global0.d, false))), !(u_input.b.x < u_input.e), !(global0.c & true))), all(!arg_1), Struct_1(-1i, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.e.b.x - global0.e.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.b.x) * -1037f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.e.c.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.e.c.x, global0.e.c.x, 228f, 146f), global0.e.c, !vec4<bool>(false, false, global0.d, false)))))));
    let var_0 = -vec4<i32>(abs(global0.e.a), min(u_input.d.x, ~(-2147483647i)) >> (u_input.b.x % 32u), ~u_input.c, _wgslsmith_sub_i32(u_input.d.x, -4324i) << (10744u % 32u));
    var var_1 = firstLeadingBit(-vec2<i32>(reverseBits(0i), -11355i));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.b.x)));
    var var_3 = !(!select(vec4<bool>(981f < global0.e.b.x, 51052u < u_input.b.x, false, false), select(vec4<bool>(arg_1.x, global0.d, global0.c, arg_0), !vec4<bool>(false, false, arg_1.x, true), vec4<bool>(false, true, arg_0, true)), arg_0));
    return global0.e.c.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    global0 = Struct_2(~global0.a, true | global0.b, !arg_3.x, _wgslsmith_mod_u32(u_input.b.x, u_input.e) < select(~21142u, countOneBits(0u), arg_3.x), global0.e);
    global0 = Struct_2(47885i, global0.c, 2147483647i < global0.a, all(arg_1), global0.e);
    let var_0 = Struct_5(~vec4<u32>(~u_input.e, u_input.b.x, ~u_input.e, 1u) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(47183u, u_input.b.x, 52623u), _wgslsmith_clamp_vec3_u32(vec3<u32>(26142u, 0u, u_input.b.x), vec3<u32>(0u, u_input.e, u_input.e), vec3<u32>(u_input.e, 0u, 4294967295u))), u_input.b.x, ~1u, u_input.b.x));
    var var_1 = arg_0;
    var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.e.c.x))))))));
    return _wgslsmith_div_i32(~(~(-5883i)) | _wgslsmith_mod_i32(-global0.e.a & _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, -2147483647i), _wgslsmith_mult_i32(global0.a, _wgslsmith_dot_vec2_i32(u_input.d, u_input.d))), 0i);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = vec3<i32>(2605i, reverseBits(abs(~arg_0.x ^ 2147483647i)), _wgslsmith_div_i32(arg_0.x, _wgslsmith_add_i32(562i, func_4(Struct_3(global0.e.b.x), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(func_3(false, vec2<bool>(global0.d, global0.c))), !vec2<bool>(global0.c, global0.c)))));
    var_0 = ~max(arg_0, firstTrailingBit(vec3<i32>(global0.a, u_input.a.x, u_input.a.x))) >> (~(~(~vec3<u32>(u_input.b.x, u_input.e, 34915u)) & _wgslsmith_mod_vec3_u32(abs(vec3<u32>(82511u, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.e, 31792u, 47493u) & vec3<u32>(u_input.e, u_input.e, u_input.e))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_add_u32(u_input.b.x, 1u);
    let var_2 = Struct_2(global0.a, true & !(_wgslsmith_mod_i32(34958i, global0.a) >= u_input.d.x), (false && (global0.e.c.x < -235f)) || false, global0.b | any(!vec4<bool>(global0.c, global0.b, true, global0.d)), global0.e);
    var var_3 = -1i;
    return var_2;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: Struct_5) -> Struct_4 {
    global0 = Struct_2(func_4(Struct_3(_wgslsmith_f_op_f32(-375f + 252f)), !(!(!vec3<bool>(false, true, global0.c))), _wgslsmith_f_op_f32(-640f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.e.b.x), -702f))), select(vec2<bool>(false, arg_0.a != u_input.c), vec2<bool>(any(vec2<bool>(true, true)), global0.b), arg_0.d)), true, func_2(vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(global0.a), global0.a), -1i, 56091i)).b, any(vec3<bool>(global0.d, global0.d, 27520i <= u_input.a.x)) && (min(u_input.e, arg_3.a.x ^ u_input.e) < max(77608u, countOneBits(61525u))), Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-arg_0.e.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0.e.c, arg_0.e.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -1955f, arg_0.e.b.x) * func_2(vec3<i32>(20606i, u_input.a.x, 0i)).e.c), global0.c))));
    let var_0 = func_2(~(vec3<i32>(arg_0.a, arg_0.a, 0i) << (firstLeadingBit(max(vec3<u32>(0u, 31786u, u_input.b.x), arg_3.a.zyw)) % vec3<u32>(32u)))).e;
    var var_1 = vec2<i32>(global0.a ^ (i32(-1i) * -14807i), 1i);
    let var_2 = func_2(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(select(vec3<i32>(2147483647i, var_0.a, arg_0.a), vec3<i32>(global0.e.a, u_input.a.x, 10962i), vec3<bool>(global0.c, arg_0.b, false))), vec3<i32>(-1i) * -vec3<i32>(var_0.a, var_1.x, -42354i)), ~countOneBits(-vec3<i32>(arg_0.a, var_0.a, var_1.x)))).e;
    global0 = arg_0;
    return Struct_4(-21390i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.e.b.x)))), true);
}

fn func_6(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_3 {
    global0 = Struct_2(global0.a, false, any(select(select(vec4<bool>(false, true, global0.c, false), vec4<bool>(false, global0.d, global0.c, false), global0.b), vec4<bool>(false, true, true, all(vec4<bool>(arg_0.c, true, global0.c, global0.b))), vec4<bool>(!arg_0.c, func_5(Struct_2(arg_0.a, false, true, global0.d, Struct_1(arg_0.a, vec3<f32>(global0.e.c.x, -1514f, 1421f), global0.e.c)), arg_0.b, Struct_3(-611f), Struct_5(vec4<u32>(5114u, 63057u, u_input.b.x, 1u))).c, !arg_0.c, false))), all(select(select(select(vec3<bool>(true, global0.c, arg_0.c), vec3<bool>(global0.c, true, arg_0.c), false), !vec3<bool>(global0.b, false, true), global0.c), vec3<bool>(true, true, true), all(vec3<bool>(false, arg_0.c, false)) | arg_0.c)), global0.e);
    let var_0 = reverseBits(_wgslsmith_sub_vec4_i32(-(~(vec4<i32>(-1i, -28393i, arg_0.a, -2147483647i) ^ vec4<i32>(2147483647i, u_input.a.x, -1i, 1i))), vec4<i32>(8010i, abs(i32(-1i) * -14441i), 2219i, -(global0.e.a | u_input.a.x))));
    global0 = func_2(var_0.ywz >> ((abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 25225u, 22741u), vec3<u32>(4294967295u, 1u, u_input.b.x))) << (firstTrailingBit(reverseBits(vec3<u32>(1u, 68256u, u_input.b.x))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(33495u, u_input.b.x, 17914u, 37778u), vec4<u32>(u_input.b.x, u_input.b.x, 40664u, u_input.e)) ^ vec4<u32>(u_input.e, 1u, 1u, u_input.e), ~vec4<u32>(38924u, u_input.b.x | 0u, u_input.b.x, u_input.b.x)), ~(~(~1u)), 1u);
    global0 = Struct_2(2147483647i, true, -global0.e.a == func_2(max(select(var_0.zxz, vec3<i32>(6059i, 1i, 1i), arg_0.c), var_0.wzy)).e.a, false, func_2(~(~(vec3<i32>(-1i, arg_0.a, -14739i) | vec3<i32>(0i, var_0.x, -1i)))).e);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global0.e.b.x, arg_0.b))))))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: bool) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = u_input.c;
    let var_2 = func_6(func_5(func_2(firstLeadingBit(vec3<i32>(global0.a, var_1, arg_1) ^ vec3<i32>(-1i, 7966i, global0.a))), _wgslsmith_f_op_f32(2191f - -1000f), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.e.b.x + -797f)))), Struct_5(vec4<u32>(_wgslsmith_mult_u32(var_0.x, 4294967295u), var_0.x, var_0.x, ~var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(func_3(true == all(vec3<bool>(false, false, true)), vec2<bool>(true, any(vec3<bool>(arg_2, arg_2, arg_2))))), global0.e.b.x, _wgslsmith_f_op_f32(-global0.e.c.x)));
    var var_3 = -(-abs(u_input.d) >> ((_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(var_0, var_0), u_input.b) >> (_wgslsmith_clamp_vec2_u32(~var_0, abs(vec2<u32>(var_0.x, 55281u)), vec2<u32>(u_input.e, u_input.b.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_4 = !vec4<bool>(true, !(!(u_input.a.x <= arg_0)), !(!(!global0.b)), global0.d);
    return Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-7367i, -1i, 14069i), vec3<i32>(u_input.d.x, 2147483647i, arg_0) ^ vec3<i32>(var_1, 0i, -58798i), vec3<i32>(14229i, arg_0, -11190i)), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(arg_1, global0.a, 30682i)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_3.x, -30519i), vec3<i32>(15709i, -2110i, 38717i)))), vec3<i32>(2147483647i, countOneBits(reverseBits(arg_0)), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -767f))) > -858f, !(!(!var_4.x)), true, Struct_1(~reverseBits(var_3.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(2528f, -133f, global0.e.b.x), global0.e.b), _wgslsmith_f_op_vec3_f32(floor(global0.e.b))))), global0.e.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-6173i, 54539i, !((1u << (~u_input.b.x % 32u)) <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(u_input.e, u_input.b.x))));
    var var_0 = -37177i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global0.e.b.x), _wgslsmith_div_f32(global0.e.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.b.x) + global0.e.b.x)), -344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f) * global0.e.c.x) + _wgslsmith_f_op_f32(round(-1017f))));
    let var_2 = _wgslsmith_mult_vec3_i32(-vec3<i32>(min(-26636i, -2147483647i & u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(31758i, global0.a, u_input.a.x) & vec3<i32>(2147483647i, u_input.d.x, u_input.a.x), vec3<i32>(-2147483647i, global0.e.a, 15658i)), u_input.a.x >> (~u_input.b.x % 32u)), vec3<i32>(15780i, i32(-1i) * -5110i, 1i << (_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x) % 32u)));
    var var_3 = select(select(vec3<bool>(global0.c, select(global0.d, true, select(global0.c, true, global0.b)), true), select(vec3<bool>(true, true, all(vec2<bool>(global0.d, false))), !(!vec3<bool>(global0.b, false, global0.d)), select(vec3<bool>(global0.b, global0.c, false), select(vec3<bool>(global0.d, true, global0.c), vec3<bool>(global0.c, global0.b, false), vec3<bool>(true, true, global0.c)), select(vec3<bool>(global0.c, false, false), vec3<bool>(global0.b, global0.b, global0.c), vec3<bool>(global0.b, global0.d, false)))), func_1(~u_input.c, abs(-2147483647i), global0.d).a < -4514i), !select(vec3<bool>(global0.b | true, global0.c, true), select(vec3<bool>(global0.b, global0.b, true), vec3<bool>(true, global0.d, true), all(vec3<bool>(global0.d, global0.c, false))), !vec3<bool>(global0.d, global0.b, true)), select(!(!(!vec3<bool>(global0.b, global0.b, global0.c))), !vec3<bool>(true, global0.d, false & global0.d), global0.d));
    var var_4 = var_2;
    let var_5 = Struct_5(~countOneBits(vec4<u32>(15694u, 1u, 42179u, u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.xx, _wgslsmith_mod_vec4_i32(~(~vec4<i32>(global0.a, var_4.x, -2147483647i, u_input.a.x)), ~(~vec4<i32>(2147483647i, var_2.x, 1i, var_2.x)) << (~_wgslsmith_mult_vec4_u32(var_5.a, var_5.a) % vec4<u32>(32u))), -firstTrailingBit(u_input.a), -abs(-(~38130i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e.c + vec4<f32>(_wgslsmith_f_op_f32(max(-444f, global0.e.c.x)), _wgslsmith_f_op_f32(-global0.e.b.x), _wgslsmith_f_op_f32(-global0.e.b.x), _wgslsmith_f_op_f32(399f - var_1.x))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.d, vec2<bool>(false, true)))), 1352f, _wgslsmith_f_op_f32(-func_2(var_2).e.c.x))));
}

