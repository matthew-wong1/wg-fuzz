struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec4<bool> {
    return vec4<bool>(arg_0.e.x, true, arg_0.a.x, ~_wgslsmith_mult_i32(-2147483647i, arg_0.c >> (4294967295u % 32u)) <= -_wgslsmith_sub_i32(1i, arg_0.c));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = firstLeadingBit(vec3<i32>(-1i) * -(~(vec3<i32>(u_input.a, u_input.a, 4463i) & vec3<i32>(5351i, -4718i, 0i))));
    let var_1 = vec4<bool>(any(func_1(Struct_4(!arg_2.d, select(arg_0.a.x, 53502u, arg_2.c.x), i32(-1i) * -1i, vec3<i32>(6417i, 16484i, -33319i), !arg_2.c.yz), ~reverseBits(arg_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(821f, arg_0.d.x, -1235f, arg_0.d.x) * vec4<f32>(-1833f, -1351f, arg_0.d.x, 184f))).zwz), arg_0.b.d, (u_input.c.x < ~151291u) || !(all(vec3<bool>(arg_0.c.x, arg_1.x, arg_0.b.a)) || true), arg_0.b.d);
    let var_2 = ~select(vec2<u32>(arg_0.a.x, 18678u), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 4294967295u), arg_0.a.wx), vec2<bool>(!arg_2.b, false));
    var_0 = min(firstTrailingBit(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_0.x, 40288i), -vec3<i32>(1i, u_input.b.x, var_0.x)))), ~(~(-(~vec3<i32>(0i, -47942i, 41220i)))));
    var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(_wgslsmith_div_i32(2147483647i, -1i), _wgslsmith_sub_i32(var_0.x, var_0.x), -2147483647i), select(vec3<i32>(var_0.x, u_input.a, var_0.x), vec3<i32>(u_input.b.x, -22337i, u_input.a) | vec3<i32>(-755i, 37027i, 2147483647i), arg_2.b), true), max(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a, var_0.x), vec3<i32>(20551i, 2147483647i, var_0.x)), vec3<i32>(u_input.b.x, u_input.b.x, var_0.x)) | _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, var_0.x, -27617i), ~vec3<i32>(40021i, -1i, 1i)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(abs(vec3<i32>(24953i, u_input.b.x, -2147483647i))), vec3<i32>(firstLeadingBit(-69739i), firstLeadingBit(2147483647i), _wgslsmith_mult_i32(u_input.b.x, -14932i)), vec3<i32>(u_input.b.x, var_0.x, -1i))), ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, -31245i), firstTrailingBit(vec3<i32>(var_0.x, 1i, u_input.b.x)))));
    return 1000f;
}

fn func_4(arg_0: f32) -> vec2<bool> {
    var var_0 = ~(~(~vec4<u32>(0u, 0u, u_input.d, u_input.d)) << (_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(101374u, 4294967295u, u_input.d, u_input.c.x), vec4<u32>(u_input.d, u_input.d, u_input.c.x, u_input.c.x)), ~(~vec4<u32>(u_input.c.x, u_input.d, u_input.d, u_input.c.x))) % vec4<u32>(32u)));
    var_0 = vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~var_0.xz, firstLeadingBit(var_0.wz)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d, var_0.x, 19991u), _wgslsmith_mult_u32(u_input.d, 0u))), firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, var_0.x, 4294967295u, u_input.c.x) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, var_0.x, 31112u, var_0.x), vec4<u32>(1u, 0u, 0u, 24286u)), vec4<u32>(countOneBits(var_0.x), min(u_input.c.x, 0u), u_input.c.x, abs(var_0.x)))), abs(84889u), 2583u);
    let var_1 = vec4<bool>(!any(func_1(Struct_4(vec3<bool>(false, true, false), var_0.x, u_input.b.x, vec3<i32>(15065i, 2147483647i, 0i), vec2<bool>(false, false)), ~vec4<u32>(1u, var_0.x, var_0.x, 1u), vec4<f32>(319f, -217f, 699f, 951f))), all(func_1(Struct_4(vec3<bool>(false, false, true), 298u, 0i, ~vec3<i32>(6525i, 15912i, u_input.b.x), vec2<bool>(false, true)), _wgslsmith_add_vec4_u32(max(vec4<u32>(var_0.x, u_input.d, u_input.d, u_input.c.x), vec4<u32>(47260u, var_0.x, 0u, var_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 21879u, 4294967295u, 4294967295u), vec4<u32>(u_input.c.x, 77228u, 0u, 0u))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, 690f, -1390f, arg_0)))).xwz), all(!vec3<bool>(false, u_input.a >= 1i, true)), true);
    let var_2 = vec2<bool>(true, true);
    let var_3 = 1000f;
    return !(!(!(!select(var_2, vec2<bool>(var_2.x, var_1.x), vec2<bool>(true, var_1.x)))));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(all(vec2<bool>(!(u_input.d < 0u), false)), select(abs(select(abs(vec2<u32>(28293u, 4294967295u)), vec2<u32>(u_input.d, 0u), true)), u_input.c, !func_4(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<u32>(u_input.d, u_input.c.x, u_input.c.x, 40597u), Struct_1(false, vec2<u32>(32127u, u_input.c.x), vec4<u32>(61548u, 1u, 1u, 4294967295u), true), vec2<bool>(false, false), vec2<f32>(-466f, -613f)), vec3<bool>(true, false, true), Struct_3(14499u, false, vec3<bool>(true, true, true), vec3<bool>(false, true, true)))))), countOneBits(vec4<u32>(u_input.d, 36519u, 21312u, _wgslsmith_mod_u32(304u, ~u_input.d))), any(vec2<bool>(true, true)));
    let var_1 = Struct_4(func_1(Struct_4(select(vec3<bool>(var_0.a, false, false), vec3<bool>(false, var_0.d, false), true), _wgslsmith_clamp_u32(4294967295u, ~26008u, 141602u), _wgslsmith_clamp_i32(u_input.b.x, 43521i, 0i) ^ u_input.a, vec3<i32>(~(-79558i), ~u_input.a, 15088i), vec2<bool>(all(vec2<bool>(var_0.d, false)), var_0.a)), min(abs(var_0.c), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.c.x, 4294967295u, 1u, var_0.c.x), var_0.c)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(308f, -737f, 1600f, 708f), vec4<f32>(870f, -1547f, 516f, 265f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1211f, 527f, 1582f, 542f), vec4<f32>(-478f, -2689f, -817f, 138f)))), vec4<f32>(-266f, -151f, _wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(round(-426f)))))).xwz, ~select(var_0.c.x, select(~u_input.d, ~0u, any(vec3<bool>(false, false, true))), true), firstLeadingBit(i32(-1i) * -1i), _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), vec3<i32>(-1i, u_input.a, u_input.a))) << (reverseBits(select(vec3<u32>(28585u, 62077u, 0u), vec3<u32>(var_0.c.x, 43815u, 4294967295u), true)) % vec3<u32>(32u)), vec3<i32>(~(~(-1i)), -u_input.b.x, u_input.b.x)), !(!func_1(Struct_4(vec3<bool>(var_0.a, var_0.a, true), 11220u, u_input.a, vec3<i32>(-1635i, u_input.b.x, u_input.a), vec2<bool>(false, true)), ~vec4<u32>(11463u, 30123u, u_input.d, var_0.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, 443f, 1461f, -189f))).zx));
    let var_2 = !(u_input.b.x <= var_1.d.x);
    var var_3 = Struct_4(vec3<bool>(true, true, var_2), reverseBits(u_input.d), var_1.d.x, vec3<i32>(2147483647i, ~(_wgslsmith_add_i32(var_1.d.x, -2147483647i) << (firstLeadingBit(var_0.c.x) % 32u)), u_input.a), var_1.e);
    var_0 = Struct_1(var_0.a, u_input.c, var_0.c, var_1.e.x);
    return var_1;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    return Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(arg_3.b.b.x, u_input.d, arg_3.a.x, 1u), arg_3.a, !vec4<bool>(arg_2.x, true, arg_3.b.a, false)), vec4<u32>(u_input.d, 9873u, u_input.c.x, 4294967295u) << (firstTrailingBit(arg_3.a) % vec4<u32>(32u))), vec4<u32>(~u_input.d & arg_3.a.x, arg_3.a.x, arg_3.a.x, _wgslsmith_mult_u32(16049u, _wgslsmith_dot_vec2_u32(u_input.c, arg_3.a.ww))), arg_3.b.c), Struct_1(true != (true && func_2().a.x), ~((u_input.c | u_input.c) & vec2<u32>(1u, 12296u)), ~_wgslsmith_mult_vec4_u32(firstTrailingBit(arg_3.a), arg_3.a), any(!select(arg_2.yzx, vec3<bool>(false, arg_3.b.a, arg_2.x), arg_2.x))), !func_2().a.zz, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(arg_3.b.c, Struct_1(true, u_input.c, arg_3.a, arg_2.x), arg_2.zw, arg_3.d), vec3<bool>(true, false, arg_3.c.x), Struct_3(arg_3.a.x, false, vec3<bool>(false, true, false), arg_2.yyx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-589f * 158f))), arg_3.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2174f) - _wgslsmith_f_op_f32(-1000f - -867f));
    var var_1 = 13294u | u_input.d;
    var var_2 = func_5(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a >> (28387u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, -34119i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.a))), -2736i), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), -1i), select(select(func_1(Struct_4(vec3<bool>(true, false, true), 0u, u_input.a, vec3<i32>(-1i, u_input.a, u_input.a), vec2<bool>(false, true)), vec4<u32>(0u, 1u, 4294967295u, u_input.d), vec4<f32>(1044f, -2209f, 1509f, -293f)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, all(vec2<bool>(true, false)), u_input.d > 2785u)), func_1(func_2(), ~abs(vec4<u32>(u_input.d, u_input.d, u_input.d, 74664u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-869f, 891f, -1412f, -626f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(383f, -755f, -433f, -1694f)))), vec4<bool>(false, true, true, all(vec3<bool>(false, false, false)))), Struct_2(vec4<u32>(u_input.c.x, 18042u, max(u_input.c.x, u_input.c.x), ~u_input.c.x), Struct_1(true, u_input.c, vec4<u32>(select(61094u, 35318u, false), ~0u, _wgslsmith_mult_u32(u_input.c.x, u_input.d), u_input.d), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1226f)).x), select(vec2<bool>(true, select(true, true, false)), func_4(-1467f), -391f == _wgslsmith_f_op_f32(sign(1034f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(418f, 762f)))))));
    var_2 = Struct_2(~max(firstLeadingBit(var_2.a), ~_wgslsmith_div_vec4_u32(vec4<u32>(43832u, u_input.d, 63255u, u_input.d), var_2.b.c)), func_5(-u_input.a, _wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.a, abs(u_input.a)), _wgslsmith_mult_i32(~2147483647i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x))), !func_1(func_2(), var_2.b.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(926f, 1146f, -271f, -606f) + vec4<f32>(var_2.d.x, -341f, var_2.d.x, 165f))), Struct_2(~vec4<u32>(u_input.d, 44239u, 98290u, 0u), Struct_1(false, countOneBits(var_2.a.yw), ~vec4<u32>(26744u, 57629u, u_input.c.x, u_input.c.x), true), !func_2().a.xy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_2.d, vec2<f32>(var_2.d.x, var_2.d.x)), _wgslsmith_f_op_vec2_f32(-var_2.d), var_2.c.x)))).b, !var_2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), 776f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.d.x, 1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(26768i, -2147483647i, ~(-12741i), _wgslsmith_sub_i32(u_input.b.x, 2147483647i)), abs(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i)))), var_2.b.c);
}

