struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-357f, 856f, 2159f);

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-566f, -258f, vec4<i32>(-1i, -49488i, -120i, -1i)), Struct_1(-1175f, 550f, vec4<i32>(-1i, 5106i, 2147483647i, -1i)), Struct_1(-136f, -201f, vec4<i32>(0i, 2068i, 2147483647i, 28548i)), Struct_1(837f, -383f, vec4<i32>(-18902i, 4115i, -58545i, 2147483647i)), Struct_1(682f, -557f, vec4<i32>(1i, -28946i, i32(-2147483648), 2147483647i)), Struct_1(999f, 422f, vec4<i32>(25410i, -1i, 2147483647i, -1i)), Struct_1(2502f, 1389f, vec4<i32>(i32(-2147483648), -1i, -559i, -81756i)), Struct_1(135f, -448f, vec4<i32>(-25878i, 23135i, 5857i, 33435i)), Struct_1(-241f, -599f, vec4<i32>(48888i, -19121i, -6065i, -8314i)), Struct_1(1203f, 635f, vec4<i32>(23452i, -63661i, -46897i, i32(-2147483648))), Struct_1(-324f, -1786f, vec4<i32>(2147483647i, -38926i, 4226i, -36382i)), Struct_1(226f, 511f, vec4<i32>(0i, -41898i, -1i, 39623i)), Struct_1(-813f, -469f, vec4<i32>(-1i, 14591i, -1i, 4251i)), Struct_1(-1000f, 159f, vec4<i32>(i32(-2147483648), 1i, -1i, -7981i)), Struct_1(427f, 924f, vec4<i32>(18508i, 81390i, 1i, -1i)), Struct_1(707f, 392f, vec4<i32>(-25308i, i32(-2147483648), -6953i, -12636i)), Struct_1(822f, 855f, vec4<i32>(25461i, 2147483647i, -7747i, 0i)), Struct_1(-1027f, -993f, vec4<i32>(6994i, 0i, -1i, 2386i)), Struct_1(818f, 525f, vec4<i32>(-49206i, -2011i, 21576i, 76840i)), Struct_1(884f, -755f, vec4<i32>(-74888i, 7512i, -19267i, -42324i)), Struct_1(-1327f, -816f, vec4<i32>(-1i, 2147483647i, 2147483647i, i32(-2147483648))), Struct_1(1331f, -194f, vec4<i32>(55916i, 14301i, -10899i, -26179i)), Struct_1(1013f, -183f, vec4<i32>(1i, 0i, 2147483647i, -23291i)), Struct_1(278f, -760f, vec4<i32>(-6611i, -12541i, 1i, i32(-2147483648))), Struct_1(143f, -1252f, vec4<i32>(23137i, 26677i, -1i, 7346i)), Struct_1(-517f, 2179f, vec4<i32>(0i, i32(-2147483648), -1i, 794i)), Struct_1(-1550f, -1462f, vec4<i32>(49464i, 0i, 19556i, -2786i)), Struct_1(995f, 146f, vec4<i32>(5600i, 1i, 0i, 2147483647i)), Struct_1(-857f, -1048f, vec4<i32>(50156i, -1i, 0i, 0i)), Struct_1(2955f, 119f, vec4<i32>(1i, 7201i, 41418i, -1i)));

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<i32> {
    var var_0 = global2.x;
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~abs(vec4<i32>(u_input.a.x, 2147483647i, u_input.d.x, u_input.c)), vec4<i32>(-16036i, _wgslsmith_mult_i32(u_input.d.x, u_input.d.x), _wgslsmith_mult_i32(u_input.c, u_input.d.x), ~0i)), firstLeadingBit(reverseBits(abs(u_input.a)))), -u_input.a.x & ~(-(i32(-1i) * -12103i)), min(u_input.a.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.xz), (vec2<i32>(-3844i, -2826i) & vec2<i32>(-11612i, u_input.a.x)) ^ u_input.d)));
    global2 = vec4<bool>(any(!global2.xz), false, (u_input.d.x ^ 2147483647i) >= var_1.x, all(select(vec3<bool>(all(vec2<bool>(global2.x, true)), select(global2.x, global2.x, global2.x), false), vec3<bool>(!global2.x, !global2.x, true), all(select(global2.zx, global2.yy, global2.x)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(global0.zx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-524f, _wgslsmith_f_op_f32(exp2(global0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, -912f))))));
    var var_3 = ~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 0u) << (vec3<u32>(33174u, u_input.e, 23024u) % vec3<u32>(32u)), ~vec3<u32>(u_input.e, u_input.b, 4294967295u)) << (vec3<u32>(4294967295u, select(u_input.e, u_input.e, true), _wgslsmith_mod_u32(u_input.e, u_input.b)) % vec3<u32>(32u))) >> ((~vec3<u32>(69705u << (u_input.b % 32u), u_input.e, firstLeadingBit(1u)) ^ abs(min(vec3<u32>(u_input.b, u_input.e, u_input.e) >> (vec3<u32>(u_input.b, u_input.b, 66855u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, u_input.b, u_input.b)))) % vec3<u32>(32u));
    return u_input.a;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 - 527f))))), 989f, -func_3());
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.b, global0.x, true)))), var_0.a), _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-349f, var_0.a)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -511f, -609f) * vec3<f32>(-1368f, -1057f, 2738f)))));
    let var_1 = -(~abs(var_0.c));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-1962f * _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(floor(global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(624f))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c.x, 1i, ~(-59927i), ~(~var_0.c.x)), u_input.a, u_input.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-268f, arg_0, var_2.b, 1141f))))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(-1582f)), -959f, -1210f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(290f, 1000f, var_2.b, 532f) - vec4<f32>(654f, -379f, var_0.b, arg_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1567f, arg_0, global0.x, var_0.a) - vec4<f32>(-1000f, -720f, arg_0, var_2.b))))));
    return 1u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b + -899f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(arg_1.a))))) - vec3<f32>(global0.x, global0.x, -865f));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_1.b), var_0.a, max(var_0.c, var_0.c));
    global2 = vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f + 1719f))) >= _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f))), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(1000f * arg_1.a), false)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-255f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, arg_1.b))));
    var var_3 = true;
    return arg_1.c;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: bool) -> vec4<bool> {
    let var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 45961u, u_input.e), vec4<u32>(u_input.e, 1u, u_input.b, u_input.e), vec4<u32>(u_input.e, u_input.b, u_input.b, 4294967295u) >> (vec4<u32>(4294967295u, 0u, u_input.b, u_input.b) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(1u, u_input.b, u_input.e, u_input.e)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 40686u, 56647u, u_input.e), vec4<u32>(u_input.b, u_input.b, u_input.b, 28204u), vec4<u32>(17192u, u_input.e, u_input.b, u_input.b)))), ~vec4<u32>(abs(u_input.e), 0u, u_input.e, select(1u, u_input.b, true)));
    let var_1 = _wgslsmith_add_u32(var_0.x, 84504u);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.yz, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, arg_1.x))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.wx, arg_1.yy)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(104f - -171f)), _wgslsmith_f_op_f32(round(1981f)))));
    return vec4<bool>(false, global2.x, any(vec3<bool>(54426u > ~u_input.e, any(!vec4<bool>(true, false, arg_2, global2.x)), global2.x)), global2.x);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    global2 = func_5(func_4(vec4<u32>(select(u_input.b, ~38303u, global2.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(u_input.e, u_input.b, u_input.e))), _wgslsmith_div_u32(firstTrailingBit(0u), func_2(-850f)), u_input.e), Struct_1(_wgslsmith_f_op_f32(global0.x * arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -519f) * _wgslsmith_div_f32(arg_3.a, -155f)), ~arg_3.c & _wgslsmith_mult_vec4_i32(vec4<i32>(44385i, u_input.a.x, 28352i, -36599i), vec4<i32>(-40741i, 1i, -10196i, -21240i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-117f, arg_0, arg_0, global0.x), vec4<f32>(arg_3.b, 1061f, arg_0, -675f)) * vec4<f32>(1742f, arg_3.b, 291f, arg_3.a))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -888f), -124f, _wgslsmith_f_op_f32(exp2(global0.x)), 470f)))), all(vec2<bool>(global2.x, true)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(floor(arg_3.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1404f)))))), 1306f);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1502f, global0.x, select(global2.x, all(vec2<bool>(false, global2.x)), any(vec3<bool>(true, global2.x, arg_1)))))), -1238f, firstTrailingBit(-func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.e, 4294967295u, u_input.b), vec4<u32>(u_input.e, 50240u, u_input.e, 34667u)), global1[_wgslsmith_index_u32(~4294967295u, 30u)])));
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(u_input.b) | ~77893u, 30u)];
    let var_2 = ~u_input.e > (select(~0u, 6592u, any(select(vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(false, false, true, global2.x), vec4<bool>(arg_1, false, global2.x, true)))) ^ ~(u_input.b ^ u_input.e));
    return global1[_wgslsmith_index_u32(~4294967295u, 30u)];
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = true;
    var var_1 = func_5(select(u_input.a, ~_wgslsmith_div_vec4_i32(arg_1.c, vec4<i32>(arg_1.c.x, 7784i, 4139i, 49598i)), true) & -firstLeadingBit(~vec4<i32>(arg_0.c.x, u_input.a.x, arg_0.c.x, arg_1.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1496f, 307f, 1129f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, global0.x, -733f) + vec4<f32>(arg_0.a, arg_0.b, arg_0.a, global0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1010f, -1000f, 346f) + vec4<f32>(global0.x, arg_1.b, global0.x, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b + arg_0.a), 1453f, _wgslsmith_f_op_f32(arg_0.a - arg_0.a), _wgslsmith_f_op_f32(arg_0.a + arg_0.a))))), false);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b, -605f, global0.x), vec3<f32>(1736f, 1562f, arg_1.a))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, arg_1.b, global0.x), vec3<f32>(251f, arg_0.a, arg_1.a))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2180f, arg_1.b, 478f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1446f, arg_1.a, -1453f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, -1000f, global0.x) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, arg_1.b, 563f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b, -1000f, -1000f)))))))), global2.x));
    let var_3 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.e), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.e, u_input.b), vec3<u32>(u_input.e, u_input.b, 4294967295u)), countOneBits(vec3<u32>(u_input.b, 1u, 15624u)))) << (~max(_wgslsmith_mod_vec3_u32(vec3<u32>(38043u, u_input.b, 1u), vec3<u32>(1u, u_input.e, 0u)), vec3<u32>(u_input.e, 4294967295u, 1u)) % vec3<u32>(32u)), ~vec3<u32>(~(~4294967295u), _wgslsmith_add_u32(select(12097u, 4294967295u, var_1.x), u_input.b & 36154u), select(u_input.e, u_input.e, true)));
    global2 = vec4<bool>(min(u_input.b, _wgslsmith_mod_u32(1u, var_3)) == min(abs(u_input.b), _wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, u_input.e), countOneBits(7053u), u_input.b | u_input.e)), global2.x, !var_1.x, _wgslsmith_f_op_f32(trunc(arg_1.b)) != func_1(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-745f + var_2.x)), global2.x, vec3<i32>(-arg_0.c.x, arg_1.c.x, -12657i), arg_0).a);
    return !(!(!select(func_5(u_input.a, vec4<f32>(-501f, -2036f, arg_0.a, global0.x), var_1.x), vec4<bool>(true, true, true, true), vec4<bool>(false, global2.x, true, false))));
}

fn func_7(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<bool>) -> Struct_1 {
    global1 = array<Struct_1, 30>();
    var var_0 = func_1(_wgslsmith_f_op_f32(sign(global0.x)), all(func_5(vec4<i32>(u_input.a.x, max(-41185i, u_input.c), 32188i, 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1219f, global0.x, 487f, global0.x))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2700f, 965f, global0.x, global0.x)))), false).xxy), u_input.a.xxx & u_input.a.wxz, func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.x, -746f, false)), global0.x)), !(!any(vec4<bool>(arg_2.x, arg_1.x, false, arg_1.x))), -vec3<i32>(arg_0, _wgslsmith_sub_i32(arg_0, arg_0), -u_input.d.x), global1[_wgslsmith_index_u32(~func_2(global0.x), 30u)])).c.zyy;
    let var_1 = -1622f;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(274f + _wgslsmith_f_op_f32(exp2(var_1))), 1254f, global0.x, 1541f);
    var_0 = func_4(vec4<u32>(firstLeadingBit(~u_input.b << (_wgslsmith_add_u32(64678u, u_input.b) % 32u)), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1075f, 622f) - _wgslsmith_f_op_f32(step(var_2.x, 503f)))), u_input.b, _wgslsmith_clamp_u32(13905u, _wgslsmith_dot_vec2_u32(~vec2<u32>(18250u, u_input.e), vec2<u32>(40966u, 79533u)), u_input.e)), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_1))), arg_2.x, firstTrailingBit(u_input.a.xyw ^ (u_input.a.zzw << (vec3<u32>(u_input.e, 1u, 4294967295u) % vec3<u32>(32u)))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(31703u, u_input.b), 30u)])).zwx;
    return func_1(469f, !(all(vec3<bool>(false, true, global2.x)) || any(vec2<bool>(arg_1.x, arg_1.x))), max(select(-vec3<i32>(187i, u_input.d.x, 37850i), -vec3<i32>(arg_0, -1i, 6783i), 1i < (1i << (u_input.b % 32u))), -u_input.a.zzy), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.e, 84267u, u_input.e), vec4<u32>(1u, u_input.b, u_input.e, u_input.e)), vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e) >> (vec4<u32>(u_input.b, 1u, u_input.e, 0u) % vec4<u32>(32u))), ~vec4<u32>(u_input.b, 1u, 4294967295u, u_input.e)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.b), vec2<u32>(4294967295u, 2653u)) & max(u_input.e, 3443u), ~(~u_input.e), ~abs(u_input.e), 4294967295u)), 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(i32(-1i) * -18533i, !(!func_6(Struct_1(global0.x, global0.x, u_input.a), func_1(global0.x, global2.x, u_input.a.zyx, global1[_wgslsmith_index_u32(3340u, 30u)]))), !(!(!vec4<bool>(false, false, global2.x, global2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.d.x, select(u_input.a.x << (min(u_input.b, 0u) % 32u), -9855i, select(true, var_0.c.x > 1i, global2.x)), 2147483647i, ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, u_input.c), 25291i)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 21241u), vec3<u32>(764u, 14525u, u_input.e)) >> (~u_input.b % 32u)));
}

