struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -1i, 0i, 0i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_1);
    let var_1 = vec4<i32>(-u_input.b.x, u_input.b.x, ~(-83942i), ~global0.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a + arg_0) - -1628f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1419f) * arg_0))));
    let var_3 = _wgslsmith_add_i32(-2147483647i, global0.x | (~u_input.b.x & -1i)) ^ -1i;
    global0 = reverseBits(countOneBits(vec4<i32>(reverseBits(reverseBits(var_3)), _wgslsmith_div_i32(1i, -54666i), -1i, 20424i)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-225f)) + _wgslsmith_f_op_f32(trunc(arg_0)))), arg_1.c, arg_1.d, arg_1.e);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> vec2<u32> {
    var var_0 = 19304i;
    var_0 = abs(firstLeadingBit(~(min(global0.x, arg_2.x) & -1i)));
    global0 = vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, arg_2.x, 46774i, u_input.b.x) | min(vec4<i32>(global0.x, u_input.b.x, u_input.b.x, arg_2.x), vec4<i32>(u_input.b.x, -7672i, u_input.b.x, arg_2.x)), ~vec4<i32>(0i, global0.x, 2147483647i, global0.x) ^ reverseBits(vec4<i32>(-1i, arg_2.x, 40005i, 75915i)), vec4<bool>(true, u_input.a <= 49628u, any(vec4<bool>(true, false, false, false)), select(true, false, false))), (vec4<i32>(u_input.b.x, 0i, -18391i, u_input.b.x) << (select(vec4<u32>(42172u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 71130u), false) % vec4<u32>(32u))) & ~vec4<i32>(arg_2.x, global0.x, arg_2.x, 1i)), -abs(-1i), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i), arg_2.xx));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(86449u, u_input.a)), vec2<u32>(_wgslsmith_mult_u32(16219u, 72457u), 4294967295u)), ~(~u_input.a) >> (40208u % 32u), _wgslsmith_div_u32(~u_input.a, abs(u_input.a))), _wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) & vec4<u32>(1u, u_input.a, 1u, u_input.a)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 47231u, u_input.a) ^ vec4<u32>(0u, 1u, 60556u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 52763u), vec4<u32>(33625u, 90399u, 24521u, u_input.a)), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u), vec4<u32>(29553u, u_input.a, u_input.a, 65693u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1325f - arg_3))) - _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-511f * arg_0.x))) - _wgslsmith_f_op_f32(-arg_3)), 1000f, select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_2(328f, Struct_1(arg_0.x, arg_0.x, vec2<bool>(true, false), 20701u, -2654f)).c, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 900f)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(669f - arg_3)))), (abs(~4294967295u) | firstLeadingBit(var_1.x)) | 66848u, -581f);
    return select(min(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.yw, vec2<u32>(var_1.x, 26703u)), select(vec2<u32>(45236u, 35205u), vec2<u32>(u_input.a, var_2.d), vec2<bool>(true, false))), ~vec2<u32>(var_2.d, ~var_2.d)), abs(firstLeadingBit(_wgslsmith_div_vec2_u32(var_1.yx, _wgslsmith_mult_vec2_u32(var_1.wy, vec2<u32>(u_input.a, var_2.d))))), vec2<bool>(var_2.c.x, true));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_3;
    var var_1 = ~(global0.x & ~u_input.b.x);
    var var_2 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(12644u, 27592u, 24951u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, arg_3.a.d, arg_2.x), vec3<u32>(u_input.a, 0u, 28250u))), select(abs(~vec3<u32>(4294967295u, 4294967295u, arg_1.a.d)), abs(~vec3<u32>(arg_1.a.d, arg_0, 0u)), select(select(vec3<bool>(arg_3.a.c.x, false, arg_1.a.c.x), vec3<bool>(arg_3.a.c.x, false, arg_3.a.c.x), vec3<bool>(false, arg_1.a.c.x, arg_1.a.c.x)), !vec3<bool>(false, arg_3.a.c.x, arg_1.a.c.x), arg_3.a.c.x)));
    global0 = _wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(max(firstTrailingBit(vec4<i32>(u_input.b.x, global0.x, global0.x, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, -1i, -40462i, u_input.b.x), vec4<i32>(global0.x, u_input.b.x, -58908i, global0.x))), vec4<i32>(global0.x, u_input.b.x, global0.x, -3993i) & select(vec4<i32>(-2147483647i, u_input.b.x, 34914i, 10247i), vec4<i32>(-1i, 0i, u_input.b.x, u_input.b.x), vec4<bool>(false, false, true, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 5634i, u_input.b.x, u_input.b.x) << (vec4<u32>(var_0.a.d, 0u, 1u, arg_2.x) % vec4<u32>(32u)), vec4<i32>(0i, u_input.b.x, global0.x, 16252i))), -vec4<i32>(global0.x, -firstTrailingBit(global0.x), u_input.b.x | u_input.b.x, ~(~(-1i))));
    let var_3 = arg_1;
    return Struct_2(var_3.a);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = vec3<i32>(5895i, _wgslsmith_add_i32(i32(-1i) * -29781i, 1i), 18546i);
    let var_1 = func_4(max(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(81775u), u_input.a), vec2<u32>(~u_input.a, arg_3.d)), u_input.a), Struct_2(func_2(701f, arg_3)), ~(func_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1395f, 913f))), _wgslsmith_f_op_f32(512f - -1511f), abs(u_input.b), arg_1) ^ ~min(vec2<u32>(14975u, 9523u), vec2<u32>(arg_3.d, 83755u))), Struct_2(func_2(590f, func_2(1000f, func_2(-170f, arg_3)))));
    let var_2 = -1i;
    var var_3 = arg_3;
    let var_4 = -2147483647i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_3.a, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.a, 961f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(269f)), 2453f), _wgslsmith_f_op_f32(round(arg_3.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-520f, var_1.a.e, arg_3.a, var_3.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e, -279f, var_3.a, var_3.b))), !vec4<bool>(var_3.c.x, arg_3.c.x, false, var_1.a.c.x))))));
}

fn func_5(arg_0: vec4<f32>) -> Struct_2 {
    global0 = countOneBits(firstLeadingBit(vec4<i32>(global0.x, global0.x | -2147483647i, ~global0.x, global0.x >> (u_input.a % 32u))) | abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, -57566i, u_input.b.x, 1i) << (vec4<u32>(0u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), abs(vec4<i32>(-1i, global0.x, global0.x, u_input.b.x)))));
    global0 = ~select(~(vec4<i32>(global0.x, -3423i, -2147483647i, 2147483647i) ^ vec4<i32>(0i, 39897i, 0i, u_input.b.x)), firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, -32763i, u_input.b.x))), vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), false)) ^ ~(~firstLeadingBit(max(vec4<i32>(58822i, -43268i, 0i, -27415i), vec4<i32>(u_input.b.x, 21633i, 2147483647i, u_input.b.x))));
    let var_0 = Struct_1(392f, arg_0.x, select(func_4(6253u, func_4(~23210u, func_4(u_input.a, Struct_2(Struct_1(arg_0.x, 359f, vec2<bool>(true, true), 48167u, arg_0.x)), vec2<u32>(u_input.a, u_input.a), Struct_2(Struct_1(arg_0.x, -626f, vec2<bool>(true, true), u_input.a, -1000f))), ~vec2<u32>(u_input.a, 32542u), func_4(u_input.a, Struct_2(Struct_1(arg_0.x, arg_0.x, vec2<bool>(true, true), u_input.a, arg_0.x)), vec2<u32>(u_input.a, u_input.a), Struct_2(Struct_1(486f, 1724f, vec2<bool>(true, false), 0u, arg_0.x)))), select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(42165u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 0u)), vec2<bool>(true, true)), func_4(1u, Struct_2(Struct_1(-430f, -419f, vec2<bool>(true, true), u_input.a, -411f)), ~vec2<u32>(40857u, 4294967295u), Struct_2(Struct_1(-1000f, 1042f, vec2<bool>(false, true), 119648u, 174f)))).a.c, vec2<bool>(!func_4(38488u, Struct_2(Struct_1(arg_0.x, arg_0.x, vec2<bool>(false, false), 34761u, arg_0.x)), vec2<u32>(u_input.a, 42678u), Struct_2(Struct_1(arg_0.x, arg_0.x, vec2<bool>(true, true), 71150u, -566f))).a.c.x, !any(vec3<bool>(false, true, false))), true), 4294967295u ^ select(~29944u ^ func_4(62092u, Struct_2(Struct_1(arg_0.x, arg_0.x, vec2<bool>(true, true), 1u, arg_0.x)), vec2<u32>(u_input.a, 4294967295u), Struct_2(Struct_1(arg_0.x, 808f, vec2<bool>(true, true), u_input.a, arg_0.x))).a.d, u_input.a, (global0.x != u_input.b.x) || all(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), func_4(32356u, func_4(79820u, Struct_2(Struct_1(1681f, arg_0.x, vec2<bool>(false, true), u_input.a, arg_0.x)), vec2<u32>(1u, 4294967295u), Struct_2(Struct_1(arg_0.x, -290f, vec2<bool>(true, true), u_input.a, arg_0.x))), _wgslsmith_add_vec2_u32(vec2<u32>(16930u, 47541u), vec2<u32>(u_input.a, 60106u)), func_4(u_input.a, Struct_2(Struct_1(-537f, 1938f, vec2<bool>(false, true), 40599u, arg_0.x)), vec2<u32>(25623u, u_input.a), Struct_2(Struct_1(-137f, 666f, vec2<bool>(true, true), 4294967295u, 313f)))).a).e * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(572f, arg_0.x), _wgslsmith_f_op_f32(arg_0.x - 770f))), -266f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-637f, arg_0.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(749f, var_0.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 532f) * arg_0.wx), _wgslsmith_f_op_vec2_f32(-arg_0.xz), !var_0.c)))));
    global0 = firstLeadingBit(vec4<i32>(-1i) * -max(vec4<i32>(global0.x, global0.x, -8245i, global0.x) << (vec4<u32>(u_input.a, 39094u, 20563u, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 2147483647i, 9186i, u_input.b.x)));
    return Struct_2(Struct_1(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -559f) - arg_0.x))), select(var_0.c, select(func_2(var_0.e, Struct_1(arg_0.x, var_0.e, var_0.c, 100890u, var_0.b)).c, !vec2<bool>(false, var_0.c.x), true), (var_0.c.x & false) & !var_0.c.x), u_input.a, _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1415f), var_0.e > var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(868f, 249f)) * -1203f), -659f, 489f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-981f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(true, 1046f, global0.x, Struct_1(-1849f, 733f, vec2<bool>(false, false), u_input.a, -404f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(773f, -779f, -1148f, 1627f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(216f, var_0.a.b, -653f, var_0.a.a) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b, -717f, var_0.a.b, var_0.a.b), vec4<f32>(-550f, -781f, -210f, 1126f))))) - vec4<f32>(var_0.a.e, _wgslsmith_f_op_f32(563f - _wgslsmith_f_op_f32(1000f * var_0.a.a)), var_0.a.e, -164f)), -u_input.b, vec3<u32>(u_input.a, 1u, 4294967295u));
}

