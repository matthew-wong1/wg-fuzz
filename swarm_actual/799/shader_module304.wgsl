struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<f32>) -> vec4<i32> {
    var var_0 = arg_0.a.x;
    var_0 = arg_0.a.x >> (1u % 32u);
    let var_1 = arg_0;
    let var_2 = arg_0.a.zw;
    var_0 = -1i;
    return arg_0.a;
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(arg_0.x, u_input.c.x, -48506i, arg_0.x) | (u_input.c << (vec4<u32>(44400u, 0u, 31213u, 6699u) % vec4<u32>(32u))))) >> (_wgslsmith_clamp_u32(u_input.e, u_input.e, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 0u, u_input.e, u_input.e), vec4<u32>(u_input.e, 65943u, u_input.e, arg_1), true), vec4<u32>(arg_1, u_input.e, arg_1, u_input.e)), _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(arg_1, arg_1)))) % 32u);
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~arg_0.x, -arg_0.x, -arg_0.x, abs(2147483647i)), ~u_input.c, vec4<i32>(1i, 35302i, 62387i, _wgslsmith_mult_i32(u_input.d, 32593i))), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-491f, 461f) - -522f)))));
    let var_2 = Struct_2(-vec3<i32>(1i, 1i, _wgslsmith_add_i32(~(-34658i), u_input.d)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-299f * _wgslsmith_f_op_f32(-var_1.b)), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(402f)) * _wgslsmith_f_op_f32(min(-1024f, -376f)))))), true, Struct_1(u_input.c, -600f));
    var_1 = var_2.d;
    var_0 = 4098i;
    return _wgslsmith_div_f32(378f, 873f);
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_div_u32(~41653u << (u_input.e % 32u), 0u) << (0u % 32u);
    var_0 = 93449u;
    let var_1 = arg_0;
    var var_2 = Struct_1(~(~func_2(Struct_1(vec4<i32>(-6068i, u_input.d, u_input.d, 76290i), -1528f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1068f, -1000f, 189f, 1052f)), 12951u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1739f, -1948f) + vec2<f32>(-236f, 1685f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2013f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.c.wz, 33779u)) + _wgslsmith_f_op_f32(round(-491f)))), 1138f)));
    return 806f;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = Struct_1(firstLeadingBit(vec4<i32>(-arg_2.a.x, _wgslsmith_div_i32(var_0.a.x, arg_2.a.x), _wgslsmith_sub_i32(1i, -18884i), -u_input.a)) ^ var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(1066f, -197f))), -321f, true && any(vec3<bool>(false, true, false)))));
    var var_2 = Struct_2(arg_2.a.zxz, vec4<f32>(1f, 1f, 1f, 1f), countOneBits(firstTrailingBit(1i) & (arg_0.x | -13335i)) > -abs(_wgslsmith_mult_i32(var_1.a.x, var_1.a.x)), Struct_1(var_0.a, _wgslsmith_f_op_f32(ceil(-1000f))));
    var_2 = Struct_2(~vec3<i32>(~(arg_0.x >> (103169u % 32u)), arg_2.a.x, arg_0.x), _wgslsmith_f_op_vec4_f32(var_2.b - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1036f, -1000f, -182f, var_1.b)))), var_2.b, !select(vec4<bool>(false, var_2.c, false, true), vec4<bool>(true, var_2.c, var_2.c, var_2.c), vec4<bool>(var_2.c, true, var_2.c, var_2.c))))), !(u_input.e > u_input.e), var_0);
    return Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(arg_0, select(firstLeadingBit(arg_0), abs(arg_0), vec3<bool>(true, false, true))), ~_wgslsmith_add_vec3_i32(abs(var_2.a), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_2.d.a.x, arg_2.a.x), vec3<i32>(14772i, 34431i, 5532i)))), _wgslsmith_f_op_vec4_f32(-var_2.b), var_2.c, Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.x, var_2.a.x, -2147483647i, var_1.a.x), var_0.a) & vec4<i32>(~var_1.a.x, _wgslsmith_sub_i32(47434i, u_input.c.x), var_2.d.a.x ^ var_0.a.x, 62980i), _wgslsmith_f_op_f32(func_3(-vec2<i32>(var_0.a.x, -39340i), firstLeadingBit(_wgslsmith_div_u32(33819u, arg_1.x))))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = Struct_2(arg_0.a, arg_0.b, true, Struct_1(vec4<i32>(-(0i ^ u_input.b.x), var_0.d.a.x, 2147483647i, var_0.a.x), _wgslsmith_f_op_f32(1300f - _wgslsmith_div_f32(458f, _wgslsmith_f_op_f32(903f + arg_1)))));
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_div_i32(var_1.d.a.x, arg_0.d.a.x), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(41413i, i32(-1i) * -45024i, u_input.d | 40776i), arg_0.a.x), func_4(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.d.a.x, 6345i, arg_0.d.a.x), vec3<i32>(-1i, 20047i, 2147483647i), var_0.d.a.ywy), vec2<u32>(1u, ~arg_3), func_4(~arg_0.a, reverseBits(vec2<u32>(39889u, 35151u)), arg_0.d).d).a.x, _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, u_input.b.x, 0i, u_input.a) | arg_0.d.a, -arg_0.d.a))), arg_0.b.x);
    let var_3 = func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_2.a.x, var_1.d.a.x) >> (4294967295u % 32u), -var_2.a.x << (1u % 32u), u_input.d & var_2.a.x), abs(vec3<i32>(max(var_2.a.x, arg_0.a.x), var_0.d.a.x, u_input.a >> (arg_3 % 32u)))), ~(~(~firstLeadingBit(vec2<u32>(u_input.e, 2117u)))), Struct_1(var_1.d.a << ((vec4<u32>(0u, 1u, 4294967295u, 67973u) | ~vec4<u32>(4294967295u, u_input.e, arg_3, 1u)) % vec4<u32>(32u)), _wgslsmith_div_f32(-983f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))).d;
    return func_4(select(select(arg_0.d.a.www, -vec3<i32>(var_3.a.x, 22424i, -19387i) >> (vec3<u32>(0u, 63731u, u_input.e) % vec3<u32>(32u)), vec3<bool>(true, true, true)), vec3<i32>(_wgslsmith_sub_i32(50103i, func_2(Struct_1(vec4<i32>(var_2.a.x, 9650i, var_3.a.x, var_1.a.x), 1853f), var_1.b, u_input.e, vec2<f32>(-655f, arg_0.d.b)).x), var_2.a.x, var_0.a.x), vec3<bool>(all(vec2<bool>(false, var_1.c)), true, arg_3 >= ~1u)), min(_wgslsmith_mod_vec2_u32(~vec2<u32>(29621u, u_input.e), abs(vec2<u32>(84842u, u_input.e))), min(vec2<u32>(52373u, arg_3), _wgslsmith_div_vec2_u32(vec2<u32>(arg_3, u_input.e), vec2<u32>(0u, arg_3)))) >> (max(select(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3, u_input.e), vec2<u32>(39236u, 52601u)), ~vec2<u32>(28097u, u_input.e), false), _wgslsmith_mult_vec2_u32(~vec2<u32>(23667u, arg_3), ~vec2<u32>(arg_3, 4294967295u))) % vec2<u32>(32u)), var_0.d).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(16992u, 66968u, 1u)), vec3<u32>(1u, 1u, 29603u)), _wgslsmith_add_vec3_u32(select(countOneBits(vec3<u32>(32141u, u_input.e, u_input.e)), max(vec3<u32>(59595u, u_input.e, 21813u), vec3<u32>(u_input.e, 0u, 90978u)), u_input.e == 60307u), (vec3<u32>(u_input.e, 43791u, u_input.e) | vec3<u32>(u_input.e, 1u, u_input.e)) | vec3<u32>(4294967295u, 4294967295u, u_input.e)) ^ firstTrailingBit(select(firstLeadingBit(vec3<u32>(49452u, 1u, u_input.e)), ~vec3<u32>(51397u, u_input.e, 50105u), any(vec3<bool>(true, false, true)))));
    let var_1 = Struct_2(u_input.c.wzy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(614f + 913f), _wgslsmith_f_op_f32(-692f + 1000f), 189f, _wgslsmith_f_op_f32(abs(598f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1406f, -838f, -1268f, -237f), vec4<f32>(1461f, -1022f, 133f, 124f), false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1976f, 211f, -1511f, -536f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1390f, 185f, -242f, -2018f), vec4<f32>(-832f, -277f, -1600f, 607f), false))))), true, func_5(func_4(~(-vec3<i32>(-4848i, 19593i, u_input.d)), vec2<u32>(75785u ^ u_input.e, countOneBits(var_0.x)), Struct_1(~vec4<i32>(0i, -5408i, u_input.b.x, 1i), _wgslsmith_f_op_f32(func_1(0u, u_input.c.yxz)))), _wgslsmith_f_op_f32(-905f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(198f + 526f) - -319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2364f, 1415f), _wgslsmith_f_op_f32(-126f + 1194f), true))), var_0.x));
    var var_2 = select(!(!vec4<bool>(var_1.c & var_1.c, false, false, func_4(u_input.c.xzy, vec2<u32>(var_0.x, var_0.x), Struct_1(vec4<i32>(45141i, 4471i, 0i, var_1.a.x), var_1.d.b)).c)), vec4<bool>(!any(vec2<bool>(var_1.c, true)) | false, var_1.c, u_input.e > _wgslsmith_add_u32(_wgslsmith_sub_u32(70796u, 1u), var_0.x), true), true);
    let var_3 = ~0u;
    var_2 = !(!select(select(vec4<bool>(false, var_2.x, true, false), vec4<bool>(false, var_1.c, var_2.x, true), all(vec2<bool>(var_2.x, true))), !select(vec4<bool>(var_2.x, var_1.c, false, false), vec4<bool>(var_2.x, true, true, true), var_1.c), !vec4<bool>(var_1.c, true, false, var_1.c)));
    var var_4 = var_1.d;
    var var_5 = Struct_1(-(abs(~vec4<i32>(-21713i, 18570i, -2147483647i, 25648i)) | vec4<i32>(firstLeadingBit(u_input.c.x), -10613i, var_1.d.a.x, 5049i)), _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(var_4.b * 457f)));
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(0i, -65493i, -u_input.d)));
}

