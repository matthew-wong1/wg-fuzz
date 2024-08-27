struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = vec3<i32>(0i, _wgslsmith_add_i32(~35551i, abs(-abs(-2147483647i))), u_input.e);
    var_0 = min(firstLeadingBit(~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b.x, -12042i, var_0.x), vec3<i32>(var_0.x, 40443i, 27976i), vec3<i32>(1i, 0i, 47526i)))), vec3<i32>(_wgslsmith_add_i32(-(u_input.b | -11410i), (u_input.e ^ 2147483647i) >> (9845u % 32u)), var_0.x, i32(-1i) * -2147483647i));
    let var_1 = ~vec4<u32>(u_input.c.x, arg_0.e & 4294967295u, firstLeadingBit(arg_0.e), ~_wgslsmith_sub_u32(arg_0.e >> (arg_0.d % 32u), _wgslsmith_div_u32(arg_0.e, 23478u)));
    var var_2 = Struct_4(Struct_2(586f, arg_0));
    var var_3 = Struct_3(var_2.a, ~(-max(vec4<i32>(u_input.e, var_2.a.b.b.x, 22132i, var_0.x) & vec4<i32>(-1i, u_input.e, u_input.e, u_input.b), vec4<i32>(33914i, u_input.d.x, -33182i, var_2.a.b.b.x))), var_2.a, ~(~var_0.x));
    return var_2.a.b.a;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> u32 {
    var var_0 = arg_0.a;
    var_0 = Struct_2(_wgslsmith_div_f32(var_0.a, arg_0.a.b.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(var_0.b.a.x, -516f), vec2<i32>(-29570i, arg_1.a.b.b.x), -17657i, arg_0.a.b.e, arg_0.a.b.e)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.a - arg_1.a.b.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, var_0.b.a.x) + arg_1.a.b.a))), ~(~(vec2<i32>(var_0.b.c, arg_1.a.b.b.x) >> (vec2<u32>(arg_0.a.b.d, 1u) % vec2<u32>(32u)))), arg_1.a.b.b.x, ~u_input.a, ~(~abs(arg_1.a.b.d))));
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(abs(-14455i), countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -1i, arg_1.a.b.b.x), vec3<i32>(1i, arg_1.a.b.b.x, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a.b.c, 0i, -9959i), vec3<i32>(-1i, u_input.b, -2147483647i)))), -_wgslsmith_add_i32(select(-17083i, -2147483647i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(27706i, 0i, var_0.b.c), vec3<i32>(arg_0.a.b.c, arg_0.a.b.c, -4627i))), arg_1.a.b.b.x), -_wgslsmith_div_vec4_i32(-(~vec4<i32>(arg_1.a.b.c, u_input.b, arg_0.a.b.b.x, u_input.b)), vec4<i32>(-52416i, 1i, arg_1.a.b.b.x, u_input.e)));
    var var_2 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, ~4294967295u), vec2<u32>(min(u_input.a, var_0.b.e), ~u_input.a)), ~u_input.c.xz, ~firstTrailingBit(u_input.c.yz & u_input.c.wx));
    var var_3 = select(_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 697u, u_input.a, arg_1.a.b.d), vec4<u32>(u_input.a, var_2.x, var_0.b.d, arg_0.a.b.d) >> (vec4<u32>(arg_0.a.b.d, 4294967295u, var_2.x, 38212u) % vec4<u32>(32u))), ~vec4<u32>(10779u, arg_0.a.b.e, arg_0.a.b.e, u_input.a) & vec4<u32>(var_2.x, var_0.b.e, 53031u, arg_1.a.b.e | 19890u)), u_input.c & ~firstTrailingBit(vec4<u32>(79730u, var_0.b.e, arg_0.a.b.d, arg_1.a.b.e)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, all(vec2<bool>(false, true)), all(vec3<bool>(false, false, true)), true)));
    return u_input.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = Struct_3(Struct_2(-152f, Struct_1(_wgslsmith_div_vec2_f32(arg_1.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_0.x))), vec2<i32>(-19093i, -7160i), ~u_input.d.x, ~abs(arg_3.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), func_2(Struct_4(Struct_2(arg_1.x, Struct_1(vec2<f32>(1000f, arg_0.x), vec2<i32>(u_input.d.x, 7801i), -1i, 1u, u_input.a))), Struct_4(Struct_2(arg_1.x, Struct_1(vec2<f32>(arg_0.x, -165f), vec2<i32>(-12449i, 0i), u_input.d.x, u_input.a, 22507u))))))), vec4<i32>(u_input.e, u_input.b, _wgslsmith_sub_i32(~abs(-7564i), u_input.d.x), u_input.e), Struct_2(-1995f, Struct_1(arg_0.wx, -vec2<i32>(u_input.b, u_input.b), -179i, _wgslsmith_div_u32(arg_2.x, u_input.a), _wgslsmith_div_u32(select(4294967295u, arg_3.x, false), 1814u))), u_input.b);
    var var_1 = vec3<bool>(true, true, true);
    let var_2 = Struct_4(var_0.a);
    var var_3 = var_2;
    let var_4 = var_2.a.b.a.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, -540f, 1442f, var_3.a.b.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-569f, var_4, arg_1.x, -2142f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, arg_0.x, 1172f, arg_0.x) + _wgslsmith_f_op_vec4_f32(select(arg_1, arg_1, vec4<bool>(true, var_1.x, true, var_1.x))))), select(!vec4<bool>(var_1.x, false, var_1.x, false), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x), true), 15466i >= u_input.d.x))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = arg_2.a;
    let var_1 = true;
    let var_2 = arg_3.yw;
    let var_3 = arg_2;
    var var_4 = arg_1.x;
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(-arg_0), vec2<u32>(arg_2.a.b.e, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(arg_3.x, 4294967295u, var_2.x), vec3<u32>(19479u, 23297u, var_3.a.b.e)))).x)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-735f, 314f), arg_2.a.b.a, arg_1.x)), -vec2<i32>(arg_2.a.b.b.x, -2147483647i), ~(~var_0.b.b.x), min(u_input.a, ~arg_3.x), var_0.b.e | _wgslsmith_dot_vec2_u32(arg_3.xw, u_input.c.yw))), _wgslsmith_div_vec4_i32(-vec4<i32>(max(var_3.a.b.b.x, 0i), 1i, -u_input.b, 1i), ~vec4<i32>(var_0.b.b.x, 28248i, u_input.d.x, arg_2.a.b.b.x) >> ((u_input.c << ((vec4<u32>(49172u, 0u, 14393u, arg_2.a.b.d) | arg_3) % vec4<u32>(32u))) % vec4<u32>(32u))), var_0, _wgslsmith_mod_i32(var_3.a.b.c, _wgslsmith_add_i32(-arg_2.a.b.b.x, firstLeadingBit(arg_2.a.b.c))) & select(min(i32(-1i) * -1694i, ~(-14624i)), var_0.b.b.x, any(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1071f, _wgslsmith_f_op_f32(max(705f, -230f)), _wgslsmith_f_op_f32(step(-1698f, 2149f)), _wgslsmith_f_op_f32(sign(-1042f)))), _wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1503f), _wgslsmith_f_op_f32(sign(-616f)), 493f, _wgslsmith_f_op_f32(-371f + 798f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(160f, -723f, -434f, 523f)), vec2<u32>(u_input.c.x, 69165u), vec3<u32>(4294967295u, u_input.a, 0u)))), !select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(false, false, true, true)))), Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -992f) + -388f), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1639f, -1000f) + vec2<f32>(-233f, -1282f)), u_input.d, _wgslsmith_mod_i32(26774i, -31795i), 1u, u_input.a))), _wgslsmith_mod_vec4_u32(~u_input.c, vec4<u32>(u_input.a | ~u_input.a, abs(23156u & u_input.c.x), ~_wgslsmith_dot_vec3_u32(u_input.c.wzx, u_input.c.wwy), 1u)));
    let var_1 = 43453u >> ((_wgslsmith_dot_vec3_u32(u_input.c.wzw, vec3<u32>(~var_0.c.b.d, u_input.a, ~var_0.c.b.e)) << (~1u % 32u)) % 32u);
    var var_2 = !select(vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), true, true, any(vec3<bool>(false, false, true))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_0.d != var_0.a.b.c, all(vec4<bool>(false, true, false, false)))));
    var_2 = vec4<bool>(true, true, true, var_2.x);
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -213f))) - 693f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(var_0.c.b.a.x, 1859f, -658f, 569f), vec4<f32>(418f, var_0.a.b.a.x, var_0.a.a, -265f), vec2<u32>(var_0.c.b.d, 34832u), u_input.c.xwy)).x * var_0.a.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(var_0.a.b.a.x, var_0.a.b.a.x, 624f, var_0.c.a), vec4<f32>(var_0.c.b.a.x, var_0.c.a, 1394f, 665f), u_input.c.ww, u_input.c.xxy)).x)), var_0.a.b.a.x));
    var_2 = !vec4<bool>(!var_2.x, (_wgslsmith_f_op_f32(-var_3.x) == var_0.c.b.a.x) & true, false == all(vec4<bool>(true, true, true, var_2.x)), true);
    let var_4 = 66808i;
    var_2 = select(select(!select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), select(vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(var_2.x, false, true, true)), 43897i >= u_input.e), !vec4<bool>(true, false, var_2.x, 442f > var_3.x), !all(vec3<bool>(true, false, var_2.x))), vec4<bool>(!var_2.x, var_2.x, var_2.x, var_2.x), !select(select(select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, false, var_2.x)), !vec4<bool>(var_2.x, true, true, false), vec4<bool>(true, var_2.x, var_2.x, true)), select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), !vec4<bool>(true, var_2.x, var_2.x, var_2.x), !var_2.x), !vec4<bool>(true, var_2.x, true, var_2.x)));
    var_2 = !vec4<bool>(any(vec4<bool>(!var_2.x, !var_2.x, var_2.x, var_2.x)), true, var_2.x | false, select(all(select(vec4<bool>(false, var_2.x, true, true), vec4<bool>(false, true, false, true), vec4<bool>(var_2.x, true, false, var_2.x))), ~var_1 >= 0u, true || (var_2.x && var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(-5663i, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -1i, -33856i), vec4<i32>(-30888i, 2147483647i, u_input.e, var_0.b.x))), -var_4, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.b, var_0.c.b.b.x)), min(vec2<i32>(-1i, var_0.c.b.c), select(vec2<i32>(69269i, var_0.c.b.b.x), vec2<i32>(-32052i, var_0.b.x), var_2.xx)))), _wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.d, _wgslsmith_clamp_vec2_i32(u_input.d, vec2<i32>(-48792i, -1i), vec2<i32>(var_0.a.b.b.x, var_0.a.b.b.x))), -_wgslsmith_add_vec2_i32(var_0.c.b.b >> (u_input.c.zw % vec2<u32>(32u)), vec2<i32>(52960i, var_4))), -1000f, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(~0u, 1u, 1u ^ var_0.a.b.e)), abs(u_input.c.zzz)), _wgslsmith_sub_i32(var_0.a.b.c, countOneBits(2147483647i)));
}

