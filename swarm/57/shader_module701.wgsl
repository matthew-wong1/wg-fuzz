struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> i32 {
    let var_0 = Struct_2(select(vec4<bool>(false, select(-1268f >= arg_0, any(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, true))), false, any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), 2147483647i >= ~_wgslsmith_clamp_i32(-28955i, 1i, 1i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) - _wgslsmith_f_op_f32(-arg_0)), !vec4<bool>(u_input.b.x <= 43134u, false, true, arg_0 <= 2054f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 909f)))))), 6073u, u_input.d);
    var var_1 = var_0.b;
    let var_2 = !((_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.c.x - var_0.b.a))) < var_0.b.a) != (u_input.a.x == var_0.d));
    let var_3 = min(countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_i32(select(vec4<i32>(33061i, var_0.d, 0i, u_input.a.x), vec4<i32>(81189i, 21326i, -27588i, u_input.c.x), false), -vec4<i32>(u_input.c.x, var_0.d, var_0.d, u_input.a.x)))), _wgslsmith_div_vec4_i32(vec4<i32>(max(var_0.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -41576i), u_input.a)), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_0.d, 0i, 1i), vec4<i32>(u_input.c.x, 8520i, -2147483647i, 2147483647i)), firstTrailingBit(-2147483647i), _wgslsmith_add_i32(firstTrailingBit(-2188i), i32(-1i) * -2147483647i)), abs(countOneBits(vec4<i32>(u_input.c.x, -18308i, var_0.d, 1i))) >> (vec4<u32>(4294967295u, u_input.b.x, ~var_0.c, abs(u_input.b.x)) % vec4<u32>(32u))));
    let var_4 = 436f;
    return ~0i;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = select(vec3<i32>(~abs(-54195i), firstLeadingBit(func_3(arg_0.x, _wgslsmith_f_op_f32(step(-318f, arg_1.a.a)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, arg_3.x), vec3<i32>(-23617i, -2147483647i, -17053i)) & arg_3.x), vec3<i32>(-46283i, arg_1.b.d, u_input.c.x), !(!select(!arg_1.d.b.zxz, arg_1.a.b.yxw, true)));
    return Struct_3(Struct_1(261f, select(arg_1.a.b, arg_1.a.b, vec4<bool>(true, true && arg_1.e, all(arg_1.a.b.yzy), false)), vec2<f32>(-1428f, _wgslsmith_f_op_f32(-arg_0.x))), Struct_2(!arg_1.b.b.b, arg_1.d, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(0u, 1u), min(u_input.b.zx, u_input.b.zx), vec2<bool>(false, true)), u_input.b.zy), arg_3.x), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(u_input.b.x, 16247u), 15531u, _wgslsmith_mult_u32(1u, 56898u)), ~vec4<u32>(1u, 4294967295u, 4294967295u, arg_1.b.c)), Struct_1(arg_1.b.b.c.x, arg_1.d.b, vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(685f, arg_1.a.a))))), arg_1.e);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> Struct_4 {
    var var_0 = Struct_4(vec4<f32>(730f, _wgslsmith_f_op_f32(ceil(arg_1.a.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a) + _wgslsmith_f_op_f32(1755f * -935f)))), _wgslsmith_f_op_f32(-arg_0.b.a)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_2.a.a, 219f), _wgslsmith_f_op_f32(exp2(arg_1.d.c.x)), _wgslsmith_f_op_f32(arg_2.d.c.x * 254f), _wgslsmith_f_op_f32(arg_1.b.b.c.x + arg_2.d.c.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.a, -448f, -733f, arg_0.b.a) * vec4<f32>(arg_0.b.a, -756f, 221f, -192f))))))), arg_0.a.ywx, vec3<u32>(~arg_2.c.x, 1u, 27364u));
    var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.b.c.x)), _wgslsmith_div_f32(func_2(var_0.b, arg_2, u_input.b.x, vec2<i32>(6397i, arg_0.d)).a.a, _wgslsmith_f_op_f32(1122f * 1030f)))), 1294f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1714f, arg_2.b.b.a)) - arg_2.d.c.x))), -1000f), var_0.a, vec3<bool>(true, false, false), min(vec3<u32>(25532u, 10826u, (38927u & arg_2.c.x) >> (arg_1.c.x % 32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b.x, arg_1.b.c, ~var_0.d.x), _wgslsmith_mult_vec3_u32(var_0.d, vec3<u32>(1u, arg_1.c.x, 1u)))));
    let var_1 = _wgslsmith_f_op_f32(min(1231f, 1777f));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_3, arg_2.b.d, arg_3, 6360i), ~(~(vec4<i32>(arg_3, -40521i, -22106i, 1i) << (arg_1.c % vec4<u32>(32u))))), -33183i);
    var_2 = _wgslsmith_mod_vec2_i32(-(~u_input.a.xz), (u_input.c >> (~(~vec2<u32>(var_0.d.x, var_0.d.x)) % vec2<u32>(32u))) << (min(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, arg_2.c.x), vec2<u32>(arg_2.b.c, 0u), u_input.b.zx) | _wgslsmith_sub_vec2_u32(var_0.d.yy, u_input.b.yy), select(arg_1.c.yy >> (vec2<u32>(arg_1.b.c, 47137u) % vec2<u32>(32u)), vec2<u32>(arg_1.b.c, arg_0.c), arg_1.a.b.yy)) % vec2<u32>(32u)));
    return Struct_4(var_0.b, var_0.b, !vec3<bool>(!arg_2.e, func_2(_wgslsmith_f_op_vec4_f32(var_0.a * var_0.a), func_2(var_0.a, Struct_3(arg_0.b, arg_1.b, vec4<u32>(var_0.d.x, arg_0.c, arg_1.b.c, u_input.b.x), Struct_1(-561f, arg_0.b.b, var_0.a.yx), arg_0.b.b.x), arg_0.c, u_input.c), abs(0u), select(u_input.a.zz, u_input.a.zy, arg_1.e)).a.b.x, !all(arg_0.a.yz)), min(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.d.x, arg_1.b.c), 48001u >> (u_input.b.x % 32u), 1u), vec3<u32>(u_input.b.x, 4294967295u, ~arg_0.c)), ~(~vec3<u32>(arg_1.b.c, arg_0.c, arg_2.b.c))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: f32) -> f32 {
    let var_0 = func_2(arg_2.b, Struct_3(arg_0, Struct_2(select(select(arg_0.b, vec4<bool>(true, false, arg_2.c.x, true), vec4<bool>(true, arg_0.b.x, true, true)), vec4<bool>(arg_2.c.x, false, true, arg_2.c.x), vec4<bool>(arg_2.c.x, arg_0.b.x, arg_0.b.x, false)), arg_0, _wgslsmith_mult_u32(1u, ~1u), -4396i), vec4<u32>(58996u, 1u, 25491u, 84276u), Struct_1(arg_0.c.x, !(!arg_0.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.wx), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3, arg_2.a.x), vec2<f32>(arg_2.b.x, 1274f), arg_0.b.x)))), arg_2.c.x), ~arg_2.d.x, -vec2<i32>(u_input.c.x, arg_1.x) >> (~u_input.b.zy % vec2<u32>(32u))).a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1f), !arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.c - var_0.c), var_0.c)) + arg_2.a.zw) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(exp2(arg_2.b.yw))), var_0.c)));
    let var_2 = countOneBits(_wgslsmith_sub_u32(countOneBits(min(22669u, u_input.b.x)), ~arg_2.d.x));
    let var_3 = true;
    var var_4 = arg_1.x;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(997f, arg_3, 1551f, arg_0.a))))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, -1175f, var_0.a)), Struct_3(Struct_1(-572f, var_0.b, vec2<f32>(-386f, -419f)), Struct_2(arg_0.b, arg_0, 4294967295u, arg_1.x), vec4<u32>(arg_2.d.x, 11343u, arg_2.d.x, 44802u), var_1, true), 1u, u_input.c), 91186u, _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, arg_1.x), arg_1.wz), vec2<i32>(arg_1.x, arg_1.x), u_input.c)).d.a + 1532f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_2 {
    let var_0 = false;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-714f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-936f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1313f + -361f)))), _wgslsmith_f_op_f32(func_5(Struct_1(-1105f, vec4<bool>(var_0, true, true, var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(1315f, 771f) + vec2<f32>(-412f, -448f))), countOneBits(vec4<i32>(15957i, u_input.c.x, u_input.d, u_input.d) & vec4<i32>(u_input.c.x, 10464i, 1i, -2147483647i)), func_4(Struct_2(vec4<bool>(var_0, false, true, var_0), Struct_1(-777f, vec4<bool>(var_0, true, var_0, var_0), vec2<f32>(-1138f, 1289f)), arg_0.x, u_input.a.x), Struct_3(Struct_1(1072f, vec4<bool>(true, var_0, false, var_0), vec2<f32>(570f, 1053f)), Struct_2(vec4<bool>(false, false, false, var_0), Struct_1(421f, vec4<bool>(false, var_0, var_0, false), vec2<f32>(1000f, -1174f)), 60822u, 0i), vec4<u32>(arg_1, u_input.b.x, 0u, 97932u), Struct_1(919f, vec4<bool>(var_0, var_0, false, false), vec2<f32>(-300f, -771f)), false), func_2(vec4<f32>(993f, -403f, -247f, -700f), Struct_3(Struct_1(776f, vec4<bool>(var_0, false, true, var_0), vec2<f32>(-1416f, 193f)), Struct_2(vec4<bool>(true, var_0, var_0, true), Struct_1(298f, vec4<bool>(var_0, var_0, var_0, false), vec2<f32>(1181f, -893f)), arg_0.x, -1i), vec4<u32>(u_input.b.x, u_input.b.x, arg_0.x, arg_1), Struct_1(1974f, vec4<bool>(false, true, true, var_0), vec2<f32>(1264f, -429f)), var_0), arg_0.x, vec2<i32>(-174i, u_input.c.x)), u_input.c.x << (4294967295u % 32u)), func_4(Struct_2(vec4<bool>(var_0, var_0, var_0, var_0), Struct_1(168f, vec4<bool>(false, var_0, var_0, true), vec2<f32>(-279f, -721f)), 0u, 2147483647i), Struct_3(Struct_1(1498f, vec4<bool>(var_0, var_0, false, false), vec2<f32>(1075f, -2142f)), Struct_2(vec4<bool>(true, var_0, var_0, var_0), Struct_1(410f, vec4<bool>(var_0, false, var_0, var_0), vec2<f32>(1000f, 176f)), 54044u, u_input.a.x), vec4<u32>(16703u, arg_1, 0u, u_input.b.x), Struct_1(698f, vec4<bool>(var_0, var_0, false, var_0), vec2<f32>(-243f, 398f)), var_0), func_2(vec4<f32>(-615f, 1499f, 1000f, 488f), Struct_3(Struct_1(1543f, vec4<bool>(var_0, var_0, false, false), vec2<f32>(-510f, -260f)), Struct_2(vec4<bool>(var_0, false, true, var_0), Struct_1(-1028f, vec4<bool>(var_0, false, var_0, var_0), vec2<f32>(911f, -461f)), arg_0.x, -1i), vec4<u32>(52760u, 32689u, arg_1, 9254u), Struct_1(652f, vec4<bool>(true, var_0, false, var_0), vec2<f32>(1514f, -1429f)), var_0), 13444u, u_input.a.xx), 2147483647i).b.x))), _wgslsmith_f_op_f32(f32(-1f) * -487f));
    let var_2 = vec2<bool>(any(select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0), var_0), vec3<bool>(false, true, true), all(vec4<bool>(var_0, true, var_0, false)))) | func_4(func_2(vec4<f32>(2050f, var_1.x, var_1.x, var_1.x), Struct_3(Struct_1(-1459f, vec4<bool>(var_0, var_0, true, false), vec2<f32>(-2344f, var_1.x)), Struct_2(vec4<bool>(false, var_0, var_0, var_0), Struct_1(-1531f, vec4<bool>(false, var_0, var_0, false), vec2<f32>(var_1.x, var_1.x)), 5490u, u_input.a.x), vec4<u32>(arg_1, 1u, u_input.b.x, u_input.b.x), Struct_1(var_1.x, vec4<bool>(true, var_0, var_0, var_0), vec2<f32>(var_1.x, var_1.x)), var_0), func_4(Struct_2(vec4<bool>(false, true, var_0, false), Struct_1(var_1.x, vec4<bool>(var_0, false, true, var_0), var_1.xy), 30874u, 2147483647i), Struct_3(Struct_1(var_1.x, vec4<bool>(var_0, true, false, false), var_1.yx), Struct_2(vec4<bool>(false, var_0, var_0, var_0), Struct_1(-511f, vec4<bool>(var_0, false, false, var_0), var_1.xz), 1u, u_input.a.x), vec4<u32>(4294967295u, 26610u, u_input.b.x, arg_1), Struct_1(-1000f, vec4<bool>(var_0, true, true, var_0), vec2<f32>(var_1.x, var_1.x)), true), Struct_3(Struct_1(var_1.x, vec4<bool>(var_0, var_0, true, var_0), vec2<f32>(-115f, var_1.x)), Struct_2(vec4<bool>(var_0, true, var_0, false), Struct_1(-1558f, vec4<bool>(var_0, true, var_0, var_0), var_1.zy), u_input.b.x, u_input.d), vec4<u32>(15066u, u_input.b.x, 0u, 4294967295u), Struct_1(var_1.x, vec4<bool>(var_0, true, var_0, false), vec2<f32>(998f, -453f)), true), 34893i).d.x, ~u_input.c).b, func_2(vec4<f32>(1355f, 1555f, 1798f, var_1.x), Struct_3(Struct_1(var_1.x, vec4<bool>(var_0, var_0, true, true), vec2<f32>(-1047f, 955f)), Struct_2(vec4<bool>(var_0, var_0, var_0, var_0), Struct_1(-1419f, vec4<bool>(var_0, var_0, var_0, var_0), var_1.yx), 1u, -23701i), vec4<u32>(u_input.b.x, 42708u, u_input.b.x, 70042u), Struct_1(var_1.x, vec4<bool>(var_0, var_0, false, false), var_1.xz), true), select(1u, 24181u, var_0), vec2<i32>(0i, 2147483647i)), Struct_3(func_2(vec4<f32>(var_1.x, var_1.x, -1000f, var_1.x), Struct_3(Struct_1(588f, vec4<bool>(false, true, false, false), var_1.yz), Struct_2(vec4<bool>(false, var_0, var_0, false), Struct_1(var_1.x, vec4<bool>(true, var_0, false, var_0), var_1.zx), arg_0.x, -12551i), vec4<u32>(4294967295u, u_input.b.x, 7985u, arg_0.x), Struct_1(var_1.x, vec4<bool>(var_0, false, true, var_0), var_1.yx), var_0), 0u, vec2<i32>(u_input.c.x, u_input.c.x)).d, Struct_2(vec4<bool>(var_0, var_0, false, false), Struct_1(2425f, vec4<bool>(var_0, var_0, var_0, true), var_1.xz), 44392u, u_input.d), vec4<u32>(arg_0.x, arg_1, arg_1, arg_1) << (vec4<u32>(4294967295u, u_input.b.x, 17252u, arg_0.x) % vec4<u32>(32u)), func_2(vec4<f32>(var_1.x, -2056f, var_1.x, -719f), Struct_3(Struct_1(460f, vec4<bool>(var_0, false, var_0, false), var_1.yy), Struct_2(vec4<bool>(true, false, true, true), Struct_1(var_1.x, vec4<bool>(false, false, var_0, var_0), vec2<f32>(826f, 313f)), arg_0.x, 0i), vec4<u32>(u_input.b.x, arg_0.x, 5127u, 141159u), Struct_1(var_1.x, vec4<bool>(true, var_0, var_0, true), vec2<f32>(-323f, -1305f)), var_0), 73001u, vec2<i32>(-37435i, u_input.a.x)).b.b, !var_0), u_input.c.x).c.x, true);
    var var_3 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(func_2(vec4<f32>(1190f, var_1.x, 538f, -555f), Struct_3(Struct_1(-460f, vec4<bool>(true, true, var_2.x, var_0), vec2<f32>(1267f, var_1.x)), Struct_2(vec4<bool>(true, true, var_2.x, true), Struct_1(243f, vec4<bool>(var_2.x, var_2.x, false, var_0), vec2<f32>(var_1.x, var_1.x)), 0u, -72846i), vec4<u32>(u_input.b.x, u_input.b.x, arg_0.x, u_input.b.x), Struct_1(var_1.x, vec4<bool>(var_2.x, false, false, true), var_1.zz), var_2.x), arg_1, vec2<i32>(66022i, 39859i)).b.b, ~vec4<i32>(u_input.a.x, u_input.c.x, 3444i, u_input.c.x), Struct_4(vec4<f32>(-557f, var_1.x, -936f, 942f), vec4<f32>(var_1.x, 734f, var_1.x, var_1.x), vec3<bool>(var_0, false, false), vec3<u32>(1u, arg_1, 0u)), 1285f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-605f))), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x + var_1.x)))), var_1.x);
    var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-418f, _wgslsmith_f_op_f32(f32(-1f) * -270f)), _wgslsmith_f_op_f32(f32(-1f) * -278f), -1212f)));
    return Struct_2(select(vec4<bool>(true, var_0, var_2.x, !all(vec3<bool>(var_0, true, true))), vec4<bool>(true, _wgslsmith_div_f32(var_3.x, 659f) >= _wgslsmith_f_op_f32(-var_3.x), !any(var_2), true), any(!vec3<bool>(var_2.x, var_0, var_2.x))), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_3.x, var_3.x, 1336f) * vec4<f32>(668f, -168f, var_1.x, 1038f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, -270f, var_1.x, var_1.x), vec4<f32>(-763f, -511f, 197f, 1085f))))), Struct_3(Struct_1(872f, select(vec4<bool>(false, false, var_0, true), vec4<bool>(var_0, true, false, true), vec4<bool>(var_0, false, true, true)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(808f, -373f)))), Struct_2(!vec4<bool>(var_0, var_0, true, true), Struct_1(var_1.x, vec4<bool>(false, false, false, false), var_3.zy), ~arg_1, -29988i), vec4<u32>(8611u, 51030u, 18887u, _wgslsmith_sub_u32(1u, arg_1)), Struct_1(_wgslsmith_f_op_f32(-var_3.x), func_2(vec4<f32>(-105f, 820f, 1840f, 1000f), Struct_3(Struct_1(var_1.x, vec4<bool>(var_2.x, true, var_0, var_0), var_1.zx), Struct_2(vec4<bool>(false, true, false, false), Struct_1(var_3.x, vec4<bool>(false, var_0, false, false), vec2<f32>(1000f, var_3.x)), u_input.b.x, u_input.c.x), vec4<u32>(arg_0.x, u_input.b.x, 2985u, 0u), Struct_1(-941f, vec4<bool>(true, false, var_0, false), var_1.xy), var_2.x), arg_1, u_input.a.xz).d.b, vec2<f32>(var_3.x, 531f)), u_input.d >= -38178i), 6111u, u_input.c).b.b, ~_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(arg_0.x, ~arg_0.x)), ~(~(-_wgslsmith_div_i32(u_input.a.x, 2147483647i))));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -224f), arg_1.b.c.x, -1655f, _wgslsmith_f_op_f32(-arg_1.b.c.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.c.x, arg_1.b.a, arg_1.b.c.x, 484f)) * vec4<f32>(arg_1.b.a, -672f, arg_1.b.c.x, arg_1.b.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.c.x, arg_1.b.c.x, arg_1.b.c.x, -1426f) + vec4<f32>(947f, arg_1.b.a, arg_1.b.c.x, arg_1.b.a))), !(!arg_1.b.b))))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.a, -854f, 339f, -1446f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.c.x, arg_1.b.c.x, 269f, arg_1.b.a) * vec4<f32>(-1219f, 136f, 308f, arg_1.b.c.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a, -1000f, -516f, -838f)))), Struct_3(arg_1.b, arg_1, max(_wgslsmith_div_vec4_u32(vec4<u32>(80814u, 1u, u_input.b.x, 4294967295u), vec4<u32>(33642u, u_input.b.x, 0u, u_input.b.x)), vec4<u32>(4294967295u, arg_1.c, u_input.b.x, 4294967295u) ^ vec4<u32>(u_input.b.x, arg_1.c, arg_1.c, 16944u)), func_1(select(vec2<u32>(0u, arg_1.c), u_input.b.xz, false), arg_1.c).b, !select(arg_1.b.b.x, true, false)), ~1u, (-vec2<i32>(arg_1.d, arg_0.x) << (~u_input.b.zy % vec2<u32>(32u))) ^ ~(~vec2<i32>(u_input.c.x, arg_0.x))), arg_1.c, arg_0).b;
    let var_1 = func_1(select(_wgslsmith_clamp_vec2_u32(u_input.b.zx, vec2<u32>(var_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, u_input.b.x, u_input.b.x), u_input.b)), _wgslsmith_mod_vec2_u32(~u_input.b.xy, ~vec2<u32>(arg_1.c, var_0.c))), ~(~(~u_input.b.zx)), vec2<bool>(false, !(27513u != var_0.c))), var_0.c);
    let var_2 = 38174i ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a, ~(-vec3<i32>(arg_1.d, arg_1.d, arg_0.x))), var_1.d);
    let var_3 = var_0.b;
    let var_4 = var_1.a.x;
    return func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c.x + 417f) + _wgslsmith_f_op_f32(var_3.a + -297f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-835f, arg_1.b.c.x))))), func_2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -672f), 698f)), -1113f, _wgslsmith_f_op_f32(-arg_1.b.c.x), 662f), func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.a, -105f, arg_1.b.a, -1000f))))), Struct_3(func_2(vec4<f32>(arg_1.b.a, 1464f, var_1.b.a, arg_1.b.a), Struct_3(Struct_1(var_1.b.c.x, vec4<bool>(false, var_1.b.b.x, false, arg_1.b.b.x), vec2<f32>(var_3.c.x, 1910f)), var_1, vec4<u32>(arg_1.c, arg_1.c, var_0.c, var_0.c), var_1.b, false), 35442u, u_input.a.zy).a, func_1(u_input.b.yz, var_1.c), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, 4294967295u, var_0.c, 0u), vec4<u32>(u_input.b.x, 66990u, var_0.c, 0u)), var_0.b, arg_1.a.x), ~(var_0.c & var_1.c), vec2<i32>(_wgslsmith_mult_i32(var_0.d, var_0.d), func_3(1331f, -1000f))), _wgslsmith_sub_u32(1u ^ func_1(u_input.b.zz, 0u).c, 0u), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, -41321i), vec2<i32>(-1i, arg_0.x)), -arg_0, _wgslsmith_mod_vec2_i32(arg_0, u_input.c))), ~u_input.b.x, vec2<i32>(i32(-1i) * -33744i, arg_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = func_6(countOneBits(vec2<i32>(u_input.d, _wgslsmith_mult_i32(u_input.d, u_input.d))), func_1(vec2<u32>(~(~var_0), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(33525u, u_input.b.x), vec2<u32>(u_input.b.x, 16892u)), reverseBits(vec2<u32>(var_0, 0u)))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0, 0u, u_input.b.x, 1u) | vec4<u32>(0u, u_input.b.x, var_0, 1u)), reverseBits(vec4<u32>(var_0, u_input.b.x, 36335u, var_0)) ^ vec4<u32>(u_input.b.x, var_0, 54553u, var_0))));
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2459f) - 360f), !func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b.c.x, var_1.a.c.x, 998f, 1741f)), func_6(u_input.a.yz, var_1.b), _wgslsmith_add_u32(0u, 0u), firstLeadingBit(vec2<i32>(-2147483647i, u_input.c.x))).b.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.a.c + _wgslsmith_f_op_vec2_f32(ceil(var_1.d.c))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b.b.c.x, 284f))), true))), Struct_2(var_1.a.b, func_2(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(var_1.a.c.x * 154f), -1054f), Struct_3(Struct_1(var_1.d.a, vec4<bool>(true, true, false, false), var_1.d.c), Struct_2(vec4<bool>(false, var_1.d.b.x, true, var_1.a.b.x), Struct_1(908f, var_1.b.b.b, vec2<f32>(var_1.b.b.c.x, var_1.b.b.a)), 4294967295u, var_1.b.d), ~var_1.c, var_1.b.b, true), func_6(abs(vec2<i32>(u_input.c.x, u_input.d)), var_1.b).b.c, vec2<i32>(_wgslsmith_div_i32(1i, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, -51258i))).b.b, 3694u, 1i), var_1.c, var_1.b.b, ~1u < u_input.b.x);
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-var_1.b.b.c.x), vec4<bool>(!(var_1.a.b.x || true), false, !all(var_1.d.b.zz), !func_1(var_1.c.xw, var_0).a.x), _wgslsmith_div_vec2_f32(var_1.d.c, var_1.d.c)), var_1.b, var_1.c, Struct_1(689f, vec4<bool>(true, all(!var_1.a.b), true, !(var_1.e | var_1.b.b.b.x)), _wgslsmith_f_op_vec2_f32(var_1.a.c + _wgslsmith_f_op_vec2_f32(select(var_1.b.b.c, _wgslsmith_f_op_vec2_f32(-var_1.a.c), true | var_1.b.b.b.x)))), var_1.d.b.x);
    var var_2 = func_4(Struct_2(var_1.d.b, Struct_1(1657f, var_1.a.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.d.c.x, -1561f)))), ~(~func_2(vec4<f32>(var_1.b.b.c.x, -198f, -675f, -345f), Struct_3(var_1.a, Struct_2(vec4<bool>(var_1.a.b.x, true, var_1.e, false), var_1.b.b, 1871u, 11268i), var_1.c, Struct_1(var_1.b.b.a, vec4<bool>(var_1.a.b.x, var_1.d.b.x, true, false), var_1.b.b.c), var_1.a.b.x), 0u, u_input.c).c.x), func_3(_wgslsmith_f_op_f32(max(var_1.a.c.x, _wgslsmith_f_op_f32(-var_1.d.c.x))), -342f)), func_6(min(u_input.a.yx, vec2<i32>(-u_input.c.x, ~2147483647i)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1344f, 620f, -940f, var_1.d.a), vec4<f32>(var_1.d.c.x, var_1.a.c.x, var_1.d.a, 1091f)))), func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(638f, -1324f, var_1.b.b.c.x, -682f))), Struct_3(var_1.b.b, var_1.b, vec4<u32>(var_1.c.x, 42910u, 1u, var_0), var_1.d, var_1.e), ~u_input.b.x, u_input.a.zx), 56709u, -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b.d, u_input.d), u_input.c, vec2<i32>(213i, -315i))).b), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d.c.x, var_1.a.a, var_1.a.a, var_1.a.c.x))) * vec4<f32>(963f, _wgslsmith_f_op_f32(step(-934f, 1000f)), -1446f, _wgslsmith_f_op_f32(2098f + var_1.b.b.a))), Struct_3(var_1.b.b, Struct_2(var_1.b.a, func_2(vec4<f32>(var_1.a.a, 1171f, -670f, 616f), Struct_3(var_1.b.b, var_1.b, var_1.c, var_1.a, false), var_1.b.c, vec2<i32>(-34707i, -19853i)).b.b, _wgslsmith_dot_vec2_u32(u_input.b.yz, var_1.c.yz), 62339i), _wgslsmith_div_vec4_u32(var_1.c, var_1.c) >> (vec4<u32>(var_1.b.c, 1u, var_1.b.c, var_0) % vec4<u32>(32u)), func_6(u_input.c, func_6(u_input.c, var_1.b).b).a, true), ~(~1u), _wgslsmith_mod_vec2_i32(u_input.a.yx & u_input.c, u_input.a.xx) << (_wgslsmith_div_vec2_u32(~u_input.b.zx, vec2<u32>(68908u, u_input.b.x)) % vec2<u32>(32u))), func_6(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-23562i, u_input.d), -vec2<i32>(u_input.a.x, 1633i), reverseBits(vec2<i32>(0i, 36962i))), var_1.b).b.d << (~28361u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(select(53103u, u_input.b.x, var_2.c.x), _wgslsmith_div_u32(4294967295u, 42139u)), ~0u), var_2.d.x));
}

