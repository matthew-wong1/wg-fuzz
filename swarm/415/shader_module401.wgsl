struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<i32> {
    global0 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), u_input.a, firstLeadingBit(1i), _wgslsmith_sub_i32(-2147483647i, 1i)), u_input.d), u_input.d);
    var var_0 = u_input.b.x ^ (_wgslsmith_sub_u32(~(~83086u), select(31339u << (u_input.b.x % 32u), 4294967295u, true)) & u_input.b.x);
    var var_1 = false;
    var_0 = abs(u_input.b.x);
    var var_2 = Struct_4(_wgslsmith_add_vec3_i32(vec3<i32>(0i | _wgslsmith_clamp_i32(u_input.a, u_input.a, 9101i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 25025i), vec2<i32>(-1i, -2147483647i)), -34226i), ~((u_input.d.wxy & vec3<i32>(23028i, u_input.a, 1i)) ^ (u_input.d.wzw & vec3<i32>(2147483647i, 10783i, u_input.d.x)))), -2147483647i, _wgslsmith_clamp_vec4_u32(firstTrailingBit((vec4<u32>(0u, u_input.b.x, u_input.c.x, 1u) & vec4<u32>(u_input.c.x, 4294967295u, 72567u, u_input.c.x)) >> (~vec4<u32>(1u, u_input.b.x, 4294967295u, 41030u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, 0u, 99181u), vec4<u32>(4294967295u, 1u, u_input.b.x, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, 16158u, u_input.b.x), vec4<u32>(0u, 1u, 13096u, u_input.c.x)), select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 93600u), vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.c.x), false)), (vec4<u32>(19959u, u_input.b.x, u_input.c.x, 27735u) >> (vec4<u32>(24497u, u_input.c.x, u_input.c.x, 33683u) % vec4<u32>(32u))) & select(vec4<u32>(1u, u_input.b.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.b.x, 67172u, u_input.c.x, 9834u), vec4<bool>(false, false, false, true))), select(~min(vec4<u32>(u_input.c.x, 4294967295u, 6737u, 4294967295u), vec4<u32>(u_input.c.x, u_input.b.x, 1u, 4294967295u)), ~vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.b.x) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 16163u, u_input.c.x), vec4<u32>(u_input.c.x, 19574u, 4294967295u, 7635u)), true)));
    return vec2<i32>(-14936i, u_input.d.x << (~(~1u) % 32u)) << (var_2.c.yy % vec2<u32>(32u));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec2<f32>) -> u32 {
    global0 = _wgslsmith_mult_i32(abs(abs(abs(-16307i) & ~u_input.a)), -arg_1.x);
    global0 = arg_0.b;
    var var_0 = ~(-38732i);
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(35430i, _wgslsmith_mult_i32(19263i, u_input.d.x)), u_input.d.x << (~18456u % 32u), arg_1.x), arg_0.a);
    let var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(max(arg_0.c.x, 15161u), select(16442u, ~0u, true)), arg_0.c.xy);
    return 1u;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    global0 = abs(~_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, u_input.d.x, -5148i, u_input.d.x)), ~10607i));
    return Struct_2(func_4(Struct_4(vec3<i32>(u_input.a & u_input.a, u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, -12104i)), 2147483647i, countOneBits(vec4<u32>(71669u, u_input.b.x, 28238u, u_input.c.x))), func_3(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -1000f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c, arg_0.c))))), _wgslsmith_sub_u32(~u_input.b.x, 35637u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-208f)), _wgslsmith_f_op_f32(max(-828f, arg_0.c)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, 478f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) * vec2<f32>(arg_0.c, 305f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.c, -1183f)))))), i32(-1i) * -countOneBits(u_input.d.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_4 {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1.d) << ((u_input.b | u_input.c) % vec2<u32>(32u)), vec2<i32>(arg_1.d, _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, arg_2.b), arg_1.d)) & max(-min(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(var_0, arg_3.b)), _wgslsmith_sub_vec2_i32(~vec2<i32>(var_0, arg_2.b), vec2<i32>(arg_2.b, 0i) & vec2<i32>(u_input.a, var_0))));
    let var_2 = u_input.b.x;
    let var_3 = ~86834u != arg_1.b;
    var_1 = -(2147483647i | ~abs(func_3().x));
    return Struct_4(vec3<i32>(2147483647i, -7389i, i32(-1i) * -(arg_1.d >> (0u % 32u))), 18102i, vec4<u32>(~4294967295u, func_4(Struct_4(-u_input.d.yxx, u_input.a, vec4<u32>(var_2, 4294967295u, var_2, 52769u)), u_input.d.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.c)))), arg_1.b, ~u_input.c.x));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32) -> vec4<u32> {
    let var_0 = true;
    return arg_0.c;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = select(_wgslsmith_clamp_vec2_u32(u_input.c >> (vec2<u32>(~4294967295u, 1u) % vec2<u32>(32u)), u_input.b, ~vec2<u32>(19494u, u_input.b.x)), ~u_input.c ^ vec2<u32>(u_input.c.x, u_input.b.x), !((u_input.b.x != ~62563u) | true));
    global0 = select(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-30424i, arg_0 | arg_0, -arg_0), vec3<i32>(-1i, arg_0, 20876i) << ((vec3<u32>(6119u, var_0.x, 9853u) & vec3<u32>(var_0.x, u_input.b.x, var_0.x)) % vec3<u32>(32u))), -(~vec3<i32>(-1i, 69212i, u_input.d.x))), u_input.a, any(vec3<bool>(any(vec2<bool>(true, true)), !(u_input.c.x > var_0.x), false)));
    var var_1 = true;
    let var_2 = Struct_4(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.d.wxz, (u_input.d.yxz >> (vec3<u32>(91920u, var_0.x, var_0.x) % vec3<u32>(32u))) & (vec3<i32>(-2147483647i, arg_0, u_input.d.x) ^ u_input.d.yxz)), min(u_input.d.x, u_input.a), u_input.a), arg_0, func_6(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2047f, -638f, 877f))), func_2(Struct_3(false, vec4<bool>(false, true, false, false), 626f, true)), Struct_1(_wgslsmith_f_op_f32(-604f - -2668f), u_input.a), Struct_1(_wgslsmith_f_op_f32(sign(836f)), _wgslsmith_clamp_i32(0i, -1i, u_input.d.x))), func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1289f, -747f, 1797f), vec3<f32>(-2068f, 989f, 1729f))), vec3<f32>(364f, -1000f, -824f)), Struct_2(_wgslsmith_add_u32(var_0.x, u_input.b.x), ~u_input.c.x, vec2<f32>(-1182f, -1054f), u_input.a), Struct_1(_wgslsmith_div_f32(-1486f, 1554f), -16239i), Struct_1(-145f, -arg_0)), u_input.b.x));
    return -2147483647i & u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_i32(8841i >> (0u % 32u), ~_wgslsmith_sub_i32(func_1(u_input.a | u_input.a), 2147483647i));
    global0 = _wgslsmith_mult_i32(-27462i, u_input.d.x);
    global0 = 2147483647i;
    global0 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-201f, func_2(Struct_3(true, vec4<bool>(false, false, false, false), -737f, true)).c.x, _wgslsmith_f_op_f32(518f - 683f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-238f, 570f, 316f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2669f, -187f, -208f)), true))))), Struct_2(4294967295u, u_input.c.x ^ ~_wgslsmith_add_u32(59920u, u_input.b.x), vec2<f32>(1f, 1f), u_input.d.x), Struct_1(1906f, ~_wgslsmith_sub_i32(-u_input.d.x, 2147483647i)), Struct_1(func_2(Struct_3(true, vec4<bool>(false, true, true, false), _wgslsmith_f_op_f32(floor(828f)), true)).c.x, _wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(u_input.a, u_input.d.x) >> (37798u % 32u)))).b;
    global0 = 7070i;
    let var_0 = Struct_4(-countOneBits(u_input.d.yyy), -13512i, _wgslsmith_mod_vec4_u32(~(~vec4<u32>(6926u, u_input.b.x, 4294967295u, 4294967295u)), vec4<u32>(~u_input.c.x, func_4(Struct_4(vec3<i32>(u_input.d.x, u_input.a, 1i), u_input.d.x, vec4<u32>(4294967295u, 49815u, u_input.c.x, 15948u)), u_input.d.wx, vec2<f32>(-1953f, 787f)), ~1u, u_input.b.x << (1866u % 32u)) << (~vec4<u32>(8003u, 119356u, 1u, 1u) % vec4<u32>(32u))));
    global0 = 10720i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, ~(var_0.c.x | 1u), reverseBits(~0u)), vec3<u32>(1u, 24952u, u_input.c.x) & ~(vec3<u32>(u_input.b.x, 0u, u_input.c.x) << (var_0.c.xxx % vec3<u32>(32u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.c.yyw, func_5(vec3<f32>(1375f, -2030f, 460f), Struct_2(var_0.c.x, u_input.b.x, vec2<f32>(-1582f, 1484f), -2147483647i), Struct_1(196f, 35818i), Struct_1(759f, -7945i)).c.yyw), abs(var_0.c.x << (var_0.c.x % 32u))), vec2<u32>(max(188u, 4294967295u), u_input.b.x)), _wgslsmith_mod_vec2_u32(abs(~select(u_input.b, vec2<u32>(31052u, u_input.b.x), true)), _wgslsmith_mod_vec2_u32(~(~u_input.c), var_0.c.zy)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 77526u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c.x, 0u) << (var_0.c.ww % vec2<u32>(32u)), u_input.b, select(vec2<u32>(u_input.c.x, u_input.b.x), u_input.b, true)) << (_wgslsmith_mod_vec2_u32(~var_0.c.zw, select(var_0.c.wy, vec2<u32>(0u, 1u), false)) % vec2<u32>(32u))));
}

