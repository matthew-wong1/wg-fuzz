struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> bool {
    var var_0 = Struct_2(arg_1.d, ~(~arg_1.b), Struct_1(arg_1.a.a, any(!select(vec4<bool>(arg_1.d.b, true, true, arg_1.c.a), vec4<bool>(false, arg_1.d.b, arg_1.c.b, arg_1.c.b), vec4<bool>(true, arg_1.a.b, true, arg_1.d.b))), _wgslsmith_f_op_vec3_f32(max(arg_1.d.c, _wgslsmith_f_op_vec3_f32(-arg_1.c.c))), _wgslsmith_sub_vec4_u32(countOneBits(arg_1.c.d | arg_1.c.d), vec4<u32>(15050u, 1u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.d.x, u_input.b.x, 26249u), vec3<u32>(33294u, arg_1.c.d.x, 0u)))), arg_1.a.c.zz), Struct_1(!all(vec3<bool>(false, arg_1.c.b, true)) || true, select(all(!vec2<bool>(arg_1.c.a, arg_1.c.b)), any(!vec4<bool>(arg_1.d.b, arg_1.a.b, true, arg_1.c.b)), arg_1.d.a), vec3<f32>(_wgslsmith_f_op_f32(arg_1.d.c.x + arg_1.a.c.x), arg_1.d.c.x, _wgslsmith_f_op_f32(-arg_1.d.e.x)), max(arg_1.c.d, reverseBits(arg_1.d.d)), _wgslsmith_f_op_vec2_f32(-arg_1.d.e)), _wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(u_input.b.x, 1u)) << (_wgslsmith_add_vec2_u32(arg_1.a.d.wz, vec2<u32>(arg_1.b, 1u)) % vec2<u32>(32u)), u_input.b.xy, vec2<u32>(~(~4294967295u), firstLeadingBit(u_input.b.x | 1u))));
    let var_1 = vec3<bool>(false, true, false);
    let var_2 = select(vec2<bool>(any(select(vec4<bool>(arg_1.c.a, arg_1.c.b, true, var_1.x), select(vec4<bool>(true, false, var_1.x, arg_1.c.a), vec4<bool>(false, var_1.x, true, var_0.a.a), var_0.d.a), !vec4<bool>(true, true, true, var_1.x))), false), !vec2<bool>(false, (0i | u_input.d.x) > 2147483647i), arg_1.a.b);
    var var_3 = arg_0.ywz;
    var var_4 = u_input.d;
    return any(vec4<bool>(_wgslsmith_f_op_f32(320f + _wgslsmith_f_op_f32(390f + -1521f)) >= var_0.a.c.x, var_2.x, arg_1.a.a, all(!select(vec4<bool>(var_0.c.b, var_0.c.b, var_2.x, arg_1.a.b), vec4<bool>(var_2.x, true, var_0.d.b, false), vec4<bool>(var_1.x, false, var_1.x, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: f32) -> vec3<f32> {
    global0 = array<vec3<i32>, 15>();
    let var_0 = Struct_1(all(select(!vec4<bool>(false, arg_0.a, arg_0.b.x, arg_1), arg_0.b, select(vec4<bool>(arg_1, arg_1, arg_1, arg_0.b.x), !arg_0.b, !arg_0.b))), !all(vec2<bool>(true, arg_1)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-607f, arg_0.c, arg_0.c) + vec3<f32>(arg_0.c, arg_0.c, 925f))))))), select(_wgslsmith_mod_vec4_u32(vec4<u32>(~29324u, ~28261u, firstTrailingBit(u_input.b.x), ~15391u), vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, arg_2), ~45570u, _wgslsmith_clamp_u32(arg_2, u_input.b.x, u_input.b.x), arg_2)), vec4<u32>((arg_2 | u_input.b.x) & u_input.b.x, ~u_input.b.x, 0u, _wgslsmith_clamp_u32(arg_2, arg_2, u_input.b.x)), func_3(abs(u_input.d), Struct_2(Struct_1(arg_1, arg_1, vec3<f32>(-726f, -372f, -161f), vec4<u32>(26529u, arg_2, 4530u, arg_2), vec2<f32>(arg_3, arg_3)), 2878u, Struct_1(arg_1, true, vec3<f32>(arg_3, arg_0.c, arg_0.c), vec4<u32>(u_input.b.x, u_input.b.x, 102u, 4294967295u), vec2<f32>(471f, arg_0.c)), Struct_1(arg_1, arg_1, vec3<f32>(arg_0.c, -883f, arg_0.c), vec4<u32>(71694u, 29171u, u_input.b.x, arg_2), vec2<f32>(arg_3, arg_3)), ~u_input.b.xy))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-342f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-485f))))))));
    let var_1 = var_0.c.x > _wgslsmith_f_op_f32(abs(604f));
    let var_2 = !(!select(!arg_0.b.yz, !vec2<bool>(var_0.b, var_1), arg_0.b.yz));
    let var_3 = Struct_1(all(select(arg_0.b, select(arg_0.b, select(vec4<bool>(true, false, true, true), vec4<bool>(var_1, arg_1, var_1, arg_0.b.x), arg_0.b), vec4<bool>(var_0.a, true, arg_1, var_2.x)), select(!vec4<bool>(true, arg_0.b.x, var_0.b, true), !vec4<bool>(var_0.b, arg_1, false, true), !vec4<bool>(var_2.x, false, false, true)))), !select(false, any(select(arg_0.b, vec4<bool>(true, true, var_2.x, true), arg_0.b)), all(!arg_0.b)), var_0.c, vec4<u32>(1u, ~29707u, 41419u, ~var_0.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), -549f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.e))) + _wgslsmith_div_vec2_f32(var_0.c.yz, vec2<f32>(374f, 1189f)))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1583f, var_3.c.x)), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-var_0.e.x));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> vec2<f32> {
    global0 = array<vec3<i32>, 15>();
    var var_0 = false;
    var var_1 = !vec2<bool>(((arg_2.x > u_input.b.x) & false) & !any(vec2<bool>(arg_0.x, arg_0.x)), true);
    var_1 = select(arg_0.yx, arg_0.yy, !(!vec2<bool>(!var_1.x, true)));
    global0 = array<vec3<i32>, 15>();
    return arg_1.xx;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(Struct_1(!(false && any(vec3<bool>(false, true, true))), !(any(vec2<bool>(true, true)) && true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, -2474f, -905f)), vec3<f32>(-1461f, 1751f, -1000f)))), _wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u)), reverseBits(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x))), ~(vec4<u32>(u_input.b.x, u_input.b.x, 103573u, 0u) << (vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(func_5(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec3_f32(func_4(Struct_3(false, vec4<bool>(false, true, false, false), 556f), func_3(vec4<i32>(u_input.a.x, -1i, 2147483647i, u_input.a.x), Struct_2(Struct_1(false, true, vec3<f32>(160f, 1613f, -752f), vec4<u32>(19274u, 0u, u_input.b.x, u_input.b.x), vec2<f32>(-1741f, 1090f)), 56542u, Struct_1(false, false, vec3<f32>(1898f, 1284f, -1540f), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec2<f32>(-389f, -1206f)), Struct_1(true, true, vec3<f32>(1427f, -156f, -1000f), vec4<u32>(1u, 1u, 1u, u_input.b.x), vec2<f32>(-237f, 279f)), u_input.b.yx)), abs(10805u), _wgslsmith_f_op_f32(step(-1106f, -232f)))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(16538u, 4294967295u, u_input.b.x, 9177u)), ~vec4<u32>(70745u, 0u, 0u, u_input.b.x), abs(vec4<u32>(52663u, 4294967295u, 0u, u_input.b.x)))))), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), Struct_1(false, !(false & all(vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(327f, -256f, -315f), vec3<f32>(-1000f, 533f, -421f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-483f, 463f, 592f), vec3<f32>(956f, 1708f, 1633f)))), !(u_input.b.x <= u_input.b.x))), ~min(reverseBits(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-993f, -349f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, 598f))))), Struct_1(any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)), !any(vec4<bool>(false, true, false, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(133f, 508f, 1241f), vec3<f32>(221f, 304f, 344f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-746f, 186f, -628f)))), ~(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1613f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(vec3<bool>(false, false, false), vec3<f32>(-384f, -1172f, 460f), vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x))).x))), vec2<u32>(1u >> (firstLeadingBit(u_input.b.x) % 32u), u_input.b.x));
    var var_1 = firstTrailingBit(u_input.d);
    let var_2 = _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, firstLeadingBit(countOneBits(u_input.d.x)), (14164i << (var_0.b % 32u)) ^ select(var_1.x, u_input.c.x, false), _wgslsmith_add_i32(-19970i, -7875i)), select(-vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, ~var_1.x), -vec4<i32>(-206i, 0i, max(u_input.c.x, 0i), 31109i), false));
    return ~23211u;
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(755f, -1492f, -1925f, -1453f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(159f, -2035f, -494f, -1329f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, 151f, -1627f, -486f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(742f, -1809f, 1528f, 1000f), vec4<f32>(-638f, 310f, 408f, -1352f), vec4<bool>(false, var_0.x, false, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-577f, -1000f, 119f, 765f))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1463f, 970f, -1000f, -585f) - vec4<f32>(359f, -1000f, 1000f, 1149f)))))));
    global0 = array<vec3<i32>, 15>();
    var var_2 = -_wgslsmith_add_i32(0i, 4103i);
    let var_3 = Struct_3(var_0.x, !(!vec4<bool>(1u >= u_input.b.x, var_0.x, var_0.x, false)), -1755f);
    return Struct_1(false, select(var_3.a, var_0.x, !all(select(vec4<bool>(var_3.b.x, true, var_3.a, var_3.a), var_3.b, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-427f, var_1.x, var_3.c)))), var_1.xxx, false)), ~firstTrailingBit(abs(select(vec4<u32>(16431u, 16521u, 1u, arg_1), vec4<u32>(u_input.b.x, 4294967295u, arg_2.x, 9769u), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xz)));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = ~abs(1u);
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(~1u, ~_wgslsmith_div_u32(firstTrailingBit(arg_0.x), u_input.b.x)), 39624u);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2013f + -387f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -347f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1140f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -997f) - -913f)), _wgslsmith_f_op_f32(round(944f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(522f, -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(559f, -581f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2328f)))));
    var var_3 = 1316f;
    let var_4 = func_6(firstLeadingBit(reverseBits(-u_input.d.x & -56851i)), func_2(), u_input.b);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-11454i, select(func_1(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 10958u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 5193u)))), -(i32(-1i) * -10305i), !func_3(min(u_input.d, u_input.d), Struct_2(Struct_1(false, false, vec3<f32>(316f, 165f, 928f), vec4<u32>(80986u, 38924u, u_input.b.x, 84768u), vec2<f32>(-1610f, 1541f)), 0u, Struct_1(true, false, vec3<f32>(377f, -649f, -436f), vec4<u32>(6214u, 4294967295u, 22884u, 20892u), vec2<f32>(1470f, 301f)), Struct_1(false, true, vec3<f32>(-1286f, 1004f, 1000f), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec2<f32>(506f, 1247f)), vec2<u32>(42319u, 1223u)))));
    var var_1 = select(vec3<bool>(false, any(vec3<bool>(true, true, true)), !(var_0.x < -1i)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true), vec3<bool>(true, true, true), true), vec3<bool>(true, any(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true))), (u_input.b.x ^ u_input.b.x) != 0u));
    let var_2 = vec3<u32>(~abs(func_6(~1i, func_2(), _wgslsmith_sub_vec3_u32(vec3<u32>(53809u, 21278u, u_input.b.x), u_input.b)).d.x), u_input.b.x, _wgslsmith_mod_u32(u_input.b.x >> (u_input.b.x % 32u), 4294967295u));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-684f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1414f + -361f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(275f)), _wgslsmith_f_op_f32(f32(-1f) * -964f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(738f, -819f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(611f)), _wgslsmith_f_op_f32(f32(-1f) * -457f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(402f))), var_1.x && true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1241f)) - _wgslsmith_f_op_f32(-671f - -393f))), -148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_3(true, vec4<bool>(var_1.x, true, true, true), 1319f), true, 1u, 613f)).x)), _wgslsmith_f_op_f32(f32(-1f) * -575f)));
    var var_4 = Struct_2(Struct_1(false, true, _wgslsmith_f_op_vec3_f32(round(var_3.yxw)), select(abs(~vec4<u32>(1u, 4294967295u, 31706u, 1u)), vec4<u32>(0u, _wgslsmith_add_u32(var_2.x, u_input.b.x), 34542u, u_input.b.x & 55025u), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), false), vec4<bool>(var_1.x, false, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, true))), vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, 1881f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), _wgslsmith_mod_vec2_u32(u_input.b.zz, firstLeadingBit(vec2<u32>(1u, 18202u)))), Struct_1(var_1.x, _wgslsmith_f_op_f32(636f * var_3.x) < 671f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_3(var_1.x, vec4<bool>(true, true, false, var_1.x), -168f), var_1.x, 47591u, -218f))), ~vec4<u32>(~var_2.x, 7743u, 30678u, var_2.x), var_3.zy), func_6(~u_input.d.x, 48519u, vec3<u32>(_wgslsmith_add_u32(u_input.b.x << (var_2.x % 32u), 4294967295u), 25217u, ~577u >> (_wgslsmith_div_u32(1u, 1u) % 32u))), var_2.yz >> (var_2.yx % vec2<u32>(32u)));
    let var_5 = u_input.a.x > reverseBits(-29340i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec3_u32(var_2, vec3<u32>(~var_2.x, var_4.e.x, _wgslsmith_mult_u32(25092u, var_4.a.d.x)))), ~(-16204i), ~0u);
}

