struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> vec2<bool> {
    global1 = 104u;
    global1 = abs(~4294967295u);
    let var_0 = vec3<u32>(_wgslsmith_div_u32(33272u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(38839u, u_input.c.x, 4912u), ~u_input.c.zwz), ~(~vec3<u32>(u_input.c.x, u_input.c.x, 82931u)))), select(~(~_wgslsmith_mod_u32(u_input.c.x, 4294967295u)), 22148u, !arg_0.b.b.x), abs(_wgslsmith_mult_u32(arg_0.b.a, 25704u)));
    global1 = arg_0.c.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1251f)));
    return !(!arg_0.b.b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: u32, arg_3: u32) -> bool {
    global0 = -179f;
    var var_0 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-236f, 650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1383f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 1687f, -916f), vec3<f32>(-498f, 1143f, -705f)))), vec3<f32>(_wgslsmith_f_op_f32(2266f - -894f), _wgslsmith_f_op_f32(trunc(797f)), _wgslsmith_f_op_f32(min(1551f, 1834f)))))), Struct_1(1u, vec2<bool>(true, true), select(vec2<bool>(arg_0.x, arg_0.x), select(!vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false), !vec2<bool>(arg_0.x, false)), arg_0.x)), Struct_1(countOneBits(~1u), select(!arg_0.xz, vec2<bool>(arg_0.x && arg_0.x, false), vec2<bool>(select(false, true, true), false)), arg_0.yw), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(549f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, -929f)), _wgslsmith_f_op_f32(step(-358f, 1283f)))), _wgslsmith_div_f32(-524f, _wgslsmith_f_op_f32(sign(-293f))), arg_0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(max(arg_1.x, arg_1.x), arg_1.x, _wgslsmith_add_i32(arg_1.x, u_input.b.x)), u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.b.x, arg_1.x), vec4<i32>(u_input.a.x, 20243i, 42651i, u_input.b.x)), vec4<i32>(arg_1.x, 1i, -2147483647i, arg_1.x)), _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1.x, arg_1.x), arg_1.x)), firstLeadingBit(countOneBits(-vec4<i32>(u_input.b.x, arg_1.x, -1i, arg_1.x)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.d, var_0.d, var_0.d))))))), var_0.c, Struct_1(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c.x, var_0.b.a) << (_wgslsmith_clamp_u32(101766u, arg_2, arg_2) % 32u), _wgslsmith_sub_u32(var_0.b.a, arg_3)), arg_0.zw, select(arg_0.xy, select(var_0.c.b, vec2<bool>(false, var_0.c.b.x), func_2(Struct_2(vec3<f32>(var_0.a.x, var_0.a.x, 520f), Struct_1(1u, arg_0.zy, var_0.b.b), Struct_1(arg_2, arg_0.xx, vec2<bool>(var_0.b.c.x, false)), 1125f, vec4<i32>(1i, arg_1.x, arg_1.x, -14394i)), vec4<f32>(-1421f, -995f, var_0.a.x, var_0.a.x))), !var_0.b.c)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2164f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d), 1536f, var_0.c.b.x))))), vec4<i32>(~firstTrailingBit(arg_1.x), 39520i, u_input.b.x >> (0u % 32u), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(var_0.e, vec4<i32>(arg_1.x, 1i, arg_1.x, -1i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.e.x, -22346i, arg_1.x, 2147483647i), _wgslsmith_clamp_vec4_i32(var_0.e, vec4<i32>(-63991i, var_0.e.x, u_input.a.x, -1i), vec4<i32>(-22411i, 46361i, 36474i, -51536i))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -710f)) + var_0.a.x), 422f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(492f, var_0.d), 684f, _wgslsmith_f_op_f32(var_0.a.x * 899f))))), Struct_1(1u, select(vec2<bool>(arg_3 == 1u, all(vec2<bool>(true, true))), func_2(Struct_2(var_0.a, var_0.b, Struct_1(arg_3, arg_0.zz, vec2<bool>(false, var_0.c.c.x)), 2559f, vec4<i32>(u_input.a.x, -19351i, -1i, var_0.e.x)), vec4<f32>(761f, var_0.a.x, -1870f, 191f)), select(arg_0.xz, func_2(Struct_2(var_0.a, var_0.b, var_0.c, -693f, vec4<i32>(arg_1.x, 0i, -66273i, -1i)), vec4<f32>(var_0.a.x, var_0.a.x, -210f, var_0.d)), var_0.c.b)), var_0.b.c), Struct_1(~26132u, func_2(Struct_2(var_0.a, Struct_1(u_input.c.x, var_0.c.c, arg_0.wy), Struct_1(arg_2, vec2<bool>(var_0.b.c.x, false), vec2<bool>(false, false)), 186f, vec4<i32>(-40922i, var_0.e.x, 40516i, u_input.a.x) >> (u_input.c % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, -299f, var_0.d, var_0.a.x) * vec4<f32>(-1986f, var_0.a.x, var_0.a.x, var_0.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1101f, 1383f, var_0.d, var_0.d)))), vec2<bool>(!all(vec4<bool>(true, var_0.b.b.x, false, arg_0.x)), true)), -622f, select(_wgslsmith_mod_vec4_i32(var_0.e, abs(vec4<i32>(arg_1.x, -25119i, 2147483647i, arg_1.x)) >> (vec4<u32>(var_0.c.a, 1u, u_input.c.x, 1u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-var_0.e, vec4<i32>(arg_1.x, var_0.e.x, ~arg_1.x, max(arg_1.x, -2147483647i))), !(!vec4<bool>(true, false, var_0.b.b.x, false))));
    return var_0.c.c.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = -19608i;
    global1 = ~abs(abs(~32757u) & (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(arg_1.a, 4294967295u, arg_1.a, arg_1.a)) ^ (3055u >> (1u % 32u))));
    let var_1 = u_input.a;
    var var_2 = Struct_1(u_input.c.x, vec2<bool>(func_3(vec4<bool>(arg_1.b.x, arg_1.c.x, true, false), select(var_1, vec2<i32>(u_input.b.x, var_1.x), vec2<bool>(arg_1.b.x, arg_1.b.x)), 2395u, ~4294967295u) != false, arg_1.c.x), arg_1.b);
    let var_3 = vec2<bool>(true, ~(~(~u_input.c.x)) >= ~_wgslsmith_add_u32(0u, select(4831u, u_input.c.x, true)));
    return Struct_1(~1u, select(vec2<bool>(all(select(vec3<bool>(false, false, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, true, false))), select(false, true, any(vec3<bool>(true, true, arg_1.c.x)))), !select(select(arg_1.c, vec2<bool>(true, var_2.b.x), false), !vec2<bool>(arg_1.c.x, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), var_2.b)), select(vec2<bool>(var_3.x & false, false), arg_1.b, vec2<bool>(all(vec4<bool>(var_2.c.x, var_3.x, false, false)), any(select(vec3<bool>(arg_1.b.x, false, true), vec3<bool>(true, var_3.x, var_3.x), false)))));
}

fn func_1() -> i32 {
    global1 = u_input.c.x;
    let var_0 = true;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2459f, _wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(step(1247f, -932f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1021f, -1070f, -1733f) * vec3<f32>(-1000f, 1482f, -1000f))))), Struct_1(~(~u_input.c.x), vec2<bool>(any(select(vec3<bool>(false, false, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0))), true), vec2<bool>(true, select(var_0, true, !var_0))), func_4(20002u, Struct_1(u_input.c.x, select(!vec2<bool>(var_0, true), !vec2<bool>(var_0, false), func_2(Struct_2(vec3<f32>(-2728f, -315f, -116f), Struct_1(u_input.c.x, vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)), Struct_1(u_input.c.x, vec2<bool>(var_0, false), vec2<bool>(var_0, var_0)), -506f, vec4<i32>(-1i, -37856i, u_input.b.x, u_input.b.x)), vec4<f32>(-1814f, -1684f, -638f, -1143f))), vec2<bool>(true, func_3(vec4<bool>(var_0, false, var_0, true), vec2<i32>(u_input.a.x, u_input.a.x), 1u, 61426u))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1739f)), 1100f, 1f)), _wgslsmith_div_f32(878f, -1349f), -vec4<i32>(25730i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(14193i, 1i)), -30309i, ~reverseBits(u_input.b.x)));
    var var_2 = var_1.e ^ -var_1.e;
    var_2 = var_1.e;
    return var_1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2098f;
    var var_0 = _wgslsmith_sub_i32(~u_input.b.x, min(func_1(), 9913i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, ~(~vec4<u32>(u_input.c.x, u_input.c.x | u_input.c.x, 4294967295u << (u_input.c.x % 32u), 37391u)), reverseBits(_wgslsmith_add_u32(u_input.c.x, abs(4294967295u))) & ~reverseBits(402u));
}

