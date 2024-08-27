struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(-437f)), _wgslsmith_f_op_f32(-1098f * -590f), _wgslsmith_div_f32(-1000f, 2088f), _wgslsmith_f_op_f32(floor(812f)))))), Struct_3(1u, Struct_1(true, arg_0 ^ u_input.a, u_input.c, vec2<bool>(true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true))), ~(~u_input.b), 1f), vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.c)), vec4<u32>(select(95128u, u_input.b, false), 1u, ~40907u, u_input.b))));
    var var_1 = _wgslsmith_add_i32(~u_input.a, 46039i);
    var var_2 = Struct_1(true, ~arg_0, 42450u, !select(!select(vec2<bool>(false, false), var_0.b.c.xx, true), !var_0.b.c.xy, var_0.b.c.x));
    var var_3 = ~select(var_2.c, ~(~30037u), any(!vec4<bool>(var_0.b.b.a, var_2.a, var_2.d.x, var_2.a)));
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-750f * var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x + 891f)))), _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), var_0.b.d >= _wgslsmith_mult_u32(u_input.b | u_input.c, ~u_input.c)))));
    return !var_2.a;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(any(vec4<bool>(!func_3(-2147483647i), true, true, true)), 62820i, arg_1.x, vec2<bool>(true, true));
    var var_1 = arg_0;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1028f, arg_0) + -1868f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 1260f), _wgslsmith_f_op_f32(443f - arg_0));
    var var_3 = var_0;
    var_3 = Struct_1(var_0.a, _wgslsmith_clamp_i32(var_3.b, var_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.b, -60155i, var_0.b), firstLeadingBit(vec4<i32>(-1i, -6036i, var_0.b, -36903i)))) >> (abs(~u_input.c) % 32u), countOneBits(_wgslsmith_add_u32(var_0.c, var_0.c)), vec2<bool>(func_3(var_3.b) || any(!vec4<bool>(false, true, var_3.a, var_0.a)), var_3.d.x));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - var_2.x)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-234f * var_2.x))), _wgslsmith_f_op_f32(trunc(var_2.x)))), -var_0.b, var_0.c, !(!select(vec2<bool>(var_3.a, var_0.a), !var_3.d, select(vec2<bool>(false, var_0.a), var_0.d, var_3.d.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_2(Struct_1(!arg_2.x, -28228i, 1u, !vec2<bool>(any(vec4<bool>(false, arg_1.a, true, arg_2.x)), true)), firstLeadingBit(~_wgslsmith_sub_i32(-21584i, ~(-1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3.e, arg_3.e), vec2<f32>(-920f, arg_3.e))))))), (arg_1.d.x | all(!vec4<bool>(false, true, false, arg_2.x))) && !(!arg_3.c.x));
    var var_1 = arg_3.a;
    var_1 = _wgslsmith_mult_u32(u_input.c & ~_wgslsmith_add_u32(abs(1u), 0u), 80775u);
    var var_2 = Struct_3(max(~4294967295u, 4294967295u), Struct_1(!any(select(vec4<bool>(arg_1.d.x, false, arg_2.x, arg_1.d.x), vec4<bool>(true, arg_3.b.a, true, false), vec4<bool>(false, arg_1.a, arg_2.x, var_0.a.d.x))), ~_wgslsmith_div_i32(-arg_1.b, min(1i, 27685i)), firstTrailingBit(4947u), vec2<bool>(select(arg_1.a, var_0.a.d.x && false, !var_0.a.d.x), true)), vec3<bool>(1u < ~_wgslsmith_div_u32(0u, var_0.a.c), true && !func_3(var_0.b), any(!select(vec4<bool>(arg_2.x, true, true, arg_2.x), vec4<bool>(arg_3.c.x, true, arg_3.c.x, true), vec4<bool>(false, arg_2.x, arg_1.d.x, false)))), u_input.b | ~23325u, arg_3.e);
    var var_3 = ~select(-abs(vec2<i32>(1i, u_input.a)), _wgslsmith_sub_vec2_i32(-max(arg_0.yz, arg_0.zz), vec2<i32>(-24741i, -40999i)), true);
    return -arg_0.x;
}

fn func_1() -> Struct_3 {
    let var_0 = u_input.c | reverseBits(u_input.b);
    return Struct_3(1u, Struct_1((_wgslsmith_clamp_i32(17405i, 0i, u_input.a) & countOneBits(u_input.a)) > ~(-25687i << (u_input.b % 32u)), func_4(vec4<i32>(u_input.a, u_input.a, 0i, 1i) >> ((vec4<u32>(9904u, var_0, u_input.c, u_input.c) ^ vec4<u32>(63395u, u_input.c, 0u, var_0)) % vec4<u32>(32u)), Struct_1(true, u_input.a >> (1u % 32u), var_0, vec2<bool>(false, true)), vec3<bool>(true, true, true), Struct_3(84582u, func_2(289f, vec2<u32>(var_0, 50440u)), vec3<bool>(false, false, false), select(4382u, u_input.c, false), _wgslsmith_f_op_f32(max(-824f, -230f)))), ~u_input.b, !vec2<bool>(select(false, true, false), true)), vec3<bool>(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true)), any(func_2(_wgslsmith_f_op_f32(-392f - 162f), vec2<u32>(u_input.c, u_input.b) & vec2<u32>(87180u, var_0)).d), !all(vec3<bool>(true, true, true))), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-2467f)), 912f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-303f, 1000f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(306f, -554f))))));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: u32, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = select(!vec4<bool>(~arg_1.c.x > _wgslsmith_mod_u32(40417u, arg_1.b.b.c), !all(vec4<bool>(arg_1.b.c.x, arg_1.b.b.d.x, false, false)), arg_1.b.c.x, true), select(select(select(!vec4<bool>(arg_3.x, arg_1.b.c.x, true, false), vec4<bool>(arg_3.x, false, arg_3.x, arg_1.b.b.a), arg_3.x), !(!vec4<bool>(arg_3.x, true, true, arg_1.b.c.x)), !select(vec4<bool>(true, true, arg_3.x, arg_1.b.b.a), vec4<bool>(arg_1.b.c.x, false, arg_3.x, arg_1.b.c.x), vec4<bool>(arg_3.x, false, arg_3.x, true))), select(select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_1.b.b.a, arg_3.x, true, arg_3.x), func_3(arg_1.b.b.b)), vec4<bool>(false, arg_2 <= 0u, arg_1.b.c.x, func_3(arg_1.b.b.b)), vec4<bool>(false, any(vec4<bool>(true, false, true, true)), all(vec4<bool>(arg_1.b.c.x, arg_1.b.b.a, arg_1.b.b.d.x, arg_3.x)), arg_1.b.b.d.x)), true), vec4<bool>(false, _wgslsmith_f_op_f32(ceil(arg_1.b.e)) < 1f, any(!arg_1.b.c), !(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_1.b.b.b, 37305i), vec4<i32>(arg_0, 0i, 7659i, -1i)) > (i32(-1i) * -23343i))));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, -4726i, _wgslsmith_div_i32(2147483647i, arg_0) ^ abs(u_input.a), arg_1.b.b.b) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.c.x, 4294967295u, 4294967295u, 51080u) | vec4<u32>(46586u, 1u, 0u, arg_2), select(vec4<u32>(25009u, arg_1.c.x, 76578u, 60224u), vec4<u32>(u_input.b, 1u, 23631u, 4294967295u), var_0)) % vec4<u32>(32u)), -abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 2147483647i, arg_0, arg_1.b.b.b), vec4<i32>(-46117i, 2147483647i, 28565i, -37120i)), arg_1.b.b.b, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_1.b.b.b, arg_0), vec4<i32>(2147483647i, -7379i, 39600i, u_input.a)))));
    let var_2 = arg_1.a.x;
    var var_3 = arg_1.a;
    var_3 = _wgslsmith_f_op_vec4_f32(sign(arg_1.a));
    return Struct_2(func_1().b, arg_0, _wgslsmith_f_op_vec2_f32(-var_3.zz), arg_1.b.b.d.x & !all(select(arg_1.b.c, var_0.xyz, vec3<bool>(true, arg_3.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a, Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-564f, 2099f, -298f, 363f)) * vec4<f32>(1140f, 1000f, -103f, -226f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(976f, 915f, -1034f, 1025f), vec4<f32>(516f, 1491f, 292f, 1965f), vec4<bool>(true, true, true, true)))), func_1(), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 1u, u_input.c), 7754u ^ u_input.c), u_input.c)), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.b, abs(u_input.b)), 6214u), !func_1().b.d);
    var_0 = func_5(u_input.a, Struct_4(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(sign(-700f)), 383f, func_5(-12857i, Struct_4(vec4<f32>(1244f, 507f, 1981f, var_0.c.x), Struct_3(0u, var_0.a, vec3<bool>(var_0.d, false, var_0.a.d.x), u_input.c, 190f), vec2<u32>(u_input.b, u_input.b)), func_2(var_0.c.x, vec2<u32>(28611u, u_input.c)).c, func_5(1i, Struct_4(vec4<f32>(-2189f, -189f, 107f, 540f), Struct_3(4294967295u, var_0.a, vec3<bool>(true, true, false), var_0.a.c, var_0.c.x), vec2<u32>(1u, 14399u)), u_input.b, vec2<bool>(false, false)).a.d).c.x), Struct_3(~_wgslsmith_div_u32(u_input.b, 4294967295u), Struct_1(var_0.a.a, ~0i, var_0.a.c, vec2<bool>(var_0.d, var_0.a.a)), select(vec3<bool>(var_0.d, false, var_0.d), !vec3<bool>(var_0.d, var_0.a.a, false), true), _wgslsmith_mult_u32(reverseBits(var_0.a.c), var_0.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * -540f))), vec2<u32>(~select(2127u, u_input.b, false), 1u)), ~var_0.a.c, vec2<bool>(!(var_0.a.a && select(var_0.d, false, var_0.d)), var_0.a.d.x));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(312f, -195f, var_0.c.x, -128f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 1000f, 1000f, var_0.c.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1082f, 649f, var_0.c.x))))), func_1(), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.c, 11423u), vec2<u32>(var_0.a.c, 4294967295u), vec2<u32>(0u, 0u)) << (vec2<u32>(58273u, var_0.a.c) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~var_1.c.x, 1u, 31296u, 1u), vec4<u32>(0u, var_0.a.c << (4294967295u % 32u), 28584u, ~var_0.a.c)), vec4<u32>(15166u, ~_wgslsmith_sub_u32(42329u, 39703u), ~(var_0.a.c | var_0.a.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.c, 1u, var_0.a.c, var_1.c.x), countOneBits(vec4<u32>(1u, 1u, 36166u, 1u))))), ~vec4<u32>(~_wgslsmith_div_u32(14519u, 2973u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_1.c.x, var_1.c.x), vec3<u32>(80888u, var_1.b.a, 22254u) ^ vec3<u32>(var_0.a.c, 92654u, var_0.a.c)), u_input.b, 4294967295u));
    var var_3 = var_0.a.d;
    var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(var_0.a.c), func_1().a, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x))), vec2<u32>(~var_2.x, var_2.x)).c, var_1.c.x), vec4<u32>(_wgslsmith_add_u32(~u_input.c, ~u_input.b & 0u), _wgslsmith_div_u32(_wgslsmith_add_u32(func_5(var_1.b.b.b, Struct_4(var_1.a, var_1.b, vec2<u32>(var_0.a.c, u_input.c)), var_1.b.d, vec2<bool>(var_0.d, var_1.b.b.d.x)).a.c, 1u), _wgslsmith_add_u32(~u_input.b, u_input.c)), var_1.b.a, var_2.x));
    var var_4 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1062f)))), _wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1131f * -659f))))), _wgslsmith_f_op_f32(step(var_0.c.x, -1075f))), Struct_3(max(~4294967295u, var_1.c.x ^ func_2(var_0.c.x, var_2.xy).c), var_0.a, select(select(var_1.b.c, var_1.b.c, !vec3<bool>(var_0.a.d.x, true, false)), !(!var_1.b.c), select(vec3<bool>(var_0.d, var_0.a.d.x, true), vec3<bool>(var_1.b.c.x, var_3.x, false), true)), var_2.x, _wgslsmith_f_op_f32(1040f * var_0.c.x)), ~firstTrailingBit(var_1.c));
    let var_5 = !(!vec4<bool>(false, func_2(-623f, firstTrailingBit(var_2.zy)).d.x, false, true));
    let var_6 = var_4.b.c.yy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1189f, 848f, -1000f) - vec3<f32>(var_0.c.x, var_1.a.x, -723f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-648f, 275f, -2153f), vec3<f32>(var_4.b.e, var_1.a.x, -1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.a.yyy * var_4.a.zzy)))), _wgslsmith_mult_vec3_i32(vec3<i32>(~(~(-13018i)), -9968i, _wgslsmith_add_i32(firstLeadingBit(var_0.b), firstTrailingBit(var_4.b.b.b))), _wgslsmith_mod_vec3_i32(select(abs(vec3<i32>(var_4.b.b.b, var_0.b, var_4.b.b.b)), reverseBits(vec3<i32>(1i, 475i, -34966i)), var_5.x), vec3<i32>(-37793i, var_0.b, 0i) ^ vec3<i32>(var_1.b.b.b, -24133i, 21899i))), 1696u);
}

