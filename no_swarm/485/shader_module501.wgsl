struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = select(vec4<bool>(true, true, true, false), vec4<bool>(true, !(~(-2147483647i) != arg_0.c.x), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)) || !any(vec4<bool>(true, true, false, false)), !(1i < arg_0.c.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, ~0i, arg_0.c.x & -42247i), -vec3<i32>(2147483647i, 0i, arg_0.c.x)) < arg_0.c.x);
    let var_1 = Struct_4(Struct_3(~35370u, Struct_2(select(var_0.x, all(vec2<bool>(true, false)), true), arg_0, u_input.d.x, Struct_1(u_input.c, _wgslsmith_mult_vec4_u32(arg_0.b, arg_0.b), arg_0.c), arg_0), Struct_2(var_0.x, arg_0, arg_0.a, arg_0, arg_0)));
    var_0 = !(!vec4<bool>(all(var_0.xzw), true, var_0.x, !any(vec3<bool>(var_1.a.b.a, var_0.x, var_0.x))));
    let var_2 = arg_0.a | 0u;
    let var_3 = var_1;
    return ~17756u;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~(u_input.c >> (4294967295u % 32u)), 53668u), ~select(reverseBits(u_input.c), u_input.d.x, true)), Struct_2(true, Struct_1(~u_input.d.x, vec4<u32>(reverseBits(u_input.c), _wgslsmith_sub_u32(u_input.d.x, 40225u), ~u_input.d.x, ~u_input.d.x), min(abs(vec3<i32>(14694i, 1i, 8080i)), -vec3<i32>(-58028i, u_input.b, u_input.a.x))), ~u_input.c, Struct_1(select(u_input.d.x ^ 19502u, 68395u, false), ~vec4<u32>(u_input.c, u_input.c, 327u, u_input.d.x) ^ ~vec4<u32>(33377u, 85454u, u_input.d.x, u_input.d.x), abs(select(vec3<i32>(-1i, u_input.a.x, 5695i), vec3<i32>(-1005i, 3896i, u_input.b), vec3<bool>(true, true, false)))), Struct_1(u_input.d.x, _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.d.x, u_input.c, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 104016u)), _wgslsmith_mult_vec3_i32(vec3<i32>(16672i, u_input.b, u_input.a.x) >> (vec3<u32>(u_input.d.x, u_input.d.x, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(u_input.b, u_input.a.x, u_input.a.x))))), Struct_2(!all(vec3<bool>(true, true, true)), Struct_1(~(u_input.c ^ u_input.d.x), firstLeadingBit(abs(vec4<u32>(0u, u_input.c, u_input.c, 4294967295u))), reverseBits(vec3<i32>(u_input.a.x, u_input.b, u_input.a.x))), 1u, Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(90800u, u_input.d.x, u_input.c, u_input.d.x), vec4<u32>(0u, u_input.d.x, 24298u, 74682u)), ~vec4<u32>(40519u, 4294967295u, 8684u, 53820u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(14408u, 4294967295u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 34702u, u_input.d.x, u_input.d.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(7037i, -500i, 27634i), vec3<i32>(u_input.b, -35507i, u_input.a.x)) | vec3<i32>(u_input.a.x, u_input.a.x, u_input.b)), Struct_1(~(~u_input.c), vec4<u32>(~0u, ~u_input.c, func_3(Struct_1(24534u, vec4<u32>(u_input.c, 0u, 4294967295u, u_input.d.x), vec3<i32>(2147483647i, -2147483647i, -9502i)), arg_0.x), u_input.d.x), max(-vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), max(vec3<i32>(2147483647i, 55408i, u_input.a.x), vec3<i32>(-2147483647i, u_input.b, u_input.b))))));
    var var_1 = abs(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(abs(0u), ~var_0.a)), vec2<u32>(~u_input.d.x, u_input.d.x) & vec2<u32>(23577u, ~u_input.d.x)));
    var_1 = min(u_input.d, vec2<u32>(7613u, var_0.b.d.a | 125793u) | vec2<u32>(~7476u, _wgslsmith_dot_vec2_u32(var_0.b.e.b.wy, u_input.d))) | firstTrailingBit(~_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.x, var_1.x), countOneBits(var_0.c.b.b.yz)));
    var var_2 = var_0.b.e.c;
    let var_3 = vec2<bool>(!all(!select(vec2<bool>(false, false), vec2<bool>(var_0.b.a, true), var_0.c.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(sign(arg_1)))) >= 279f);
    return Struct_4(var_0);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = select(!vec2<bool>(true, !arg_1.b.a & all(vec3<bool>(arg_0, false, true))), !(!(!vec2<bool>(arg_0, false))), !select(vec2<bool>(arg_1.c.a, all(vec2<bool>(false, arg_1.b.a))), vec2<bool>(true, arg_1.b.a), select(!vec2<bool>(arg_0, arg_2), !vec2<bool>(arg_1.c.a, arg_2), any(vec2<bool>(true, false)))));
    var_0 = !select(vec2<bool>(all(vec3<bool>(var_0.x, true, arg_0)), var_0.x), select(select(vec2<bool>(true, true), select(vec2<bool>(arg_0, var_0.x), vec2<bool>(true, true), arg_0), true), vec2<bool>(true, true), arg_1.b.a), var_0.x);
    let var_1 = true;
    var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true || arg_2, !var_1), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(arg_0, arg_1.c.a))));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-693f - 291f), -1330f, _wgslsmith_f_op_f32(min(1530f, 572f)), _wgslsmith_f_op_f32(306f * -670f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1474f, 1186f, -204f, -744f))), vec4<bool>(!arg_1.b.a, false, arg_1.c.a, false)))), 385f);
    return Struct_1(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(25363u, 0u, arg_1.a), arg_1.b.b.b.wzy), arg_1.c.d.b.xxz ^ vec3<u32>(1u, 43591u, var_2.a.c.d.b.x)), ~reverseBits(~u_input.d.x), ~1u), arg_1.c.d.b, vec3<i32>(var_2.a.b.e.c.x, 0i, ~var_2.a.b.b.c.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> StorageBuffer {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d.c.x, -firstLeadingBit(-1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-arg_1.b.c.x, arg_0.a.b.e.c.x), arg_0.a.b.b.c.zy)), reverseBits(abs(_wgslsmith_dot_vec3_i32(arg_1.d.c, -arg_1.e.c))));
    var var_1 = Struct_4(Struct_3(arg_1.d.b.x, Struct_2(!arg_0.a.c.a, arg_1.d, 1u, func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-196f, 917f, 837f, 989f))), _wgslsmith_f_op_f32(f32(-1f) * -926f)).a.c.b, arg_0.a.b.d), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-520f, 1903f, 1005f, -1115f) - vec4<f32>(426f, -478f, -1972f, -377f)), vec4<f32>(-1350f, -1362f, 1110f, 240f)), _wgslsmith_f_op_f32(-1437f * -446f)).a.b));
    var var_2 = arg_0;
    let var_3 = func_2(vec4<f32>(_wgslsmith_f_op_f32(334f - -1000f), -316f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1536f * -1416f), _wgslsmith_f_op_f32(-1459f + 1268f))))), -275f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1439f)))))).a;
    var_1 = arg_0;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -557f))))), vec4<u32>(u_input.d.x, ~1820u, _wgslsmith_add_u32(51314u, ~var_1.a.a), func_3(var_2.a.c.b, _wgslsmith_f_op_f32(f32(-1f) * -987f))), -(vec4<i32>(13695i, -var_1.a.c.d.c.x, countOneBits(-25419i), min(-6060i, u_input.b)) | -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 1i, -1i, 29734i), vec4<i32>(0i, var_3.b.b.c.x, -32356i, u_input.b))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_4(Struct_3(_wgslsmith_sub_u32(~0u, 49140u), Struct_2(false, Struct_1(u_input.d.x, vec4<u32>(8636u, u_input.d.x, 4294967295u, 1u), vec3<i32>(u_input.b, u_input.a.x, 2147483647i)), firstTrailingBit(4294967295u), func_1(true, Struct_3(u_input.c, Struct_2(true, Struct_1(u_input.d.x, vec4<u32>(u_input.d.x, 1u, 0u, 80368u), vec3<i32>(u_input.a.x, u_input.a.x, -72983i)), u_input.c, Struct_1(u_input.c, vec4<u32>(u_input.d.x, 0u, 22613u, u_input.d.x), vec3<i32>(u_input.a.x, u_input.a.x, 52413i)), Struct_1(u_input.c, vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, u_input.d.x), vec3<i32>(u_input.b, u_input.b, 14575i))), Struct_2(false, Struct_1(u_input.c, vec4<u32>(23323u, 115318u, 37999u, 13894u), vec3<i32>(u_input.b, -3542i, u_input.a.x)), u_input.c, Struct_1(u_input.d.x, vec4<u32>(55216u, 1u, 4294967295u, u_input.c), vec3<i32>(u_input.a.x, -2147483647i, -4744i)), Struct_1(u_input.d.x, vec4<u32>(0u, u_input.c, u_input.d.x, 21206u), vec3<i32>(31731i, u_input.b, 39654i)))), true, -2147483647i), Struct_1(44723u, vec4<u32>(45588u, u_input.d.x, 19814u, 4294967295u), vec3<i32>(u_input.a.x, u_input.b, 1i))), Struct_2(any(vec3<bool>(false, false, true)), func_1(true, Struct_3(0u, Struct_2(true, Struct_1(u_input.c, vec4<u32>(u_input.d.x, 8319u, 69673u, u_input.d.x), vec3<i32>(-6764i, u_input.a.x, u_input.b)), u_input.c, Struct_1(u_input.c, vec4<u32>(u_input.c, 18751u, 4294967295u, u_input.c), vec3<i32>(-1i, -40110i, u_input.a.x)), Struct_1(u_input.c, vec4<u32>(57379u, u_input.d.x, u_input.d.x, u_input.c), vec3<i32>(1i, u_input.a.x, -1i))), Struct_2(false, Struct_1(u_input.d.x, vec4<u32>(4294967295u, 0u, u_input.c, 0u), vec3<i32>(-13601i, u_input.b, 0i)), 9270u, Struct_1(4294967295u, vec4<u32>(1u, u_input.c, u_input.d.x, 30467u), vec3<i32>(u_input.a.x, u_input.a.x, 38438i)), Struct_1(73412u, vec4<u32>(1u, 51870u, u_input.c, 0u), vec3<i32>(u_input.a.x, -40399i, u_input.a.x)))), true, u_input.b), 1u, func_1(false, Struct_3(u_input.c, Struct_2(false, Struct_1(42884u, vec4<u32>(u_input.c, 32456u, 4294967295u, u_input.d.x), vec3<i32>(u_input.a.x, u_input.a.x, -36241i)), u_input.d.x, Struct_1(u_input.d.x, vec4<u32>(u_input.c, 21292u, 4294967295u, u_input.d.x), vec3<i32>(2147483647i, 1i, 23726i)), Struct_1(1u, vec4<u32>(u_input.c, 4294967295u, u_input.c, 60587u), vec3<i32>(-2147483647i, -39905i, u_input.a.x))), Struct_2(true, Struct_1(1u, vec4<u32>(1u, u_input.d.x, 12615u, u_input.c), vec3<i32>(u_input.b, 1i, u_input.a.x)), 4294967295u, Struct_1(28027u, vec4<u32>(77476u, 8581u, u_input.d.x, 1u), vec3<i32>(u_input.a.x, u_input.b, u_input.b)), Struct_1(10583u, vec4<u32>(45532u, u_input.d.x, u_input.c, 17973u), vec3<i32>(2147483647i, 4682i, 0i)))), false, -2147483647i), func_2(vec4<f32>(-111f, 288f, 1350f, -496f), -184f).a.b.e))), Struct_2(true, func_2(vec4<f32>(1f, 1f, 1f, 1f), -1552f).a.b.d, 0u, func_2(vec4<f32>(-2496f, _wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_f_op_f32(abs(762f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -536f), 1213f))).a.b.e, func_2(vec4<f32>(_wgslsmith_f_op_f32(abs(-338f)), _wgslsmith_f_op_f32(f32(-1f) * -1409f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 846f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1339f))))).a.b.b), u_input.d.x << (_wgslsmith_add_u32(firstLeadingBit(u_input.c), u_input.d.x) % 32u));
}

