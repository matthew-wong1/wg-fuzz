struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 21456i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = Struct_3(Struct_1(vec4<u32>(0u, ~59120u, 4294967295u, ~u_input.a.x), vec4<bool>(all(vec3<bool>(false, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), true, all(vec4<bool>(true, true, true, true)))), Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.a.x, 38249u, u_input.e.x), vec4<u32>(u_input.b.x, u_input.c.x, 18483u, 6153u) & vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true))), abs(countOneBits(vec2<i32>(u_input.d, 8609i))) ^ -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, -1i), vec2<i32>(17252i, u_input.d)), Struct_1(~(~vec4<u32>(0u, 0u, 0u, u_input.a.x)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), select(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), true)), -2217f, _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(57613u, 37352u), ~4294967295u, ~30975u, reverseBits(u_input.c.x)), min(abs(vec4<u32>(u_input.e.x, u_input.a.x, u_input.e.x, 0u) >> (vec4<u32>(0u, u_input.a.x, u_input.b.x, 4294967295u) % vec4<u32>(32u))), countOneBits(vec4<u32>(1u, u_input.c.x, u_input.c.x, 1u) ^ vec4<u32>(54346u, 1u, u_input.a.x, 9992u)))));
    var var_1 = ~u_input.e.x & u_input.b.x;
    let var_2 = _wgslsmith_sub_u32(0u, ~_wgslsmith_add_u32(max(u_input.a.x, var_0.a.a.x), 31160u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(619f)) - _wgslsmith_div_f32(209f, arg_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))));
    var_1 = ~46132u;
    return select(true, false, var_0.b.d);
}

fn func_2(arg_0: Struct_3) -> vec4<bool> {
    global0 = arg_0.b.b.x;
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, -898f) * vec2<f32>(-706f, 356f))));
    var var_1 = any(arg_0.b.a.b);
    return select(!vec4<bool>(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-801f, 569f, arg_0.c) * vec3<f32>(315f, -1933f, arg_0.c))), any(arg_0.a.b.yy), !any(arg_0.b.a.b.yzx), arg_0.b.b.x >= -61616i), arg_0.a.b, ~arg_0.b.b.x >= -44459i);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = u_input.d;
    var_0 = u_input.d;
    var var_1 = -15588i;
    var_1 = -74752i;
    var_1 = countOneBits(u_input.d);
    return ~max(countOneBits(countOneBits(_wgslsmith_sub_i32(u_input.d, -1i))), 16974i);
}

fn func_1() -> vec4<bool> {
    global0 = u_input.d;
    global0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), -243f), _wgslsmith_div_vec4_f32(vec4<f32>(-450f, -1025f, -241f, 972f), _wgslsmith_div_vec4_f32(vec4<f32>(1510f, 239f, -1000f, -210f), vec4<f32>(1000f, 1058f, 904f, 170f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1090f))), Struct_1(~vec4<u32>(u_input.b.x, u_input.a.x, u_input.c.x, 13102u), func_2(Struct_3(Struct_1(vec4<u32>(u_input.b.x, u_input.a.x, u_input.c.x, 1u), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, u_input.a.x, 4294967295u), vec4<bool>(true, true, true, false)), vec2<i32>(8180i, u_input.d), Struct_1(vec4<u32>(u_input.a.x, 35016u, u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, true)), false), 2139f, vec4<u32>(u_input.c.x, 42688u, u_input.e.x, u_input.a.x))))), -1i), u_input.d);
    global0 = u_input.d;
    let var_0 = u_input.e.x;
    var var_1 = Struct_2(Struct_1(abs(vec4<u32>(4294967295u, 4294967295u, 0u, var_0) ^ vec4<u32>(2458u, u_input.c.x, 49001u, 58597u)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(21982u, 7954u, u_input.c.x, u_input.b.x), vec4<u32>(10084u, u_input.e.x, var_0, 10277u)), 0u, var_0 ^ var_0, max(var_0, var_0)) % vec4<u32>(32u)), vec4<bool>((u_input.d <= 0i) || any(vec4<bool>(true, true, true, true)), true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, -1i, -31928i), vec4<i32>(u_input.d, u_input.d, u_input.d, -16435i)) != _wgslsmith_mult_i32(u_input.d, u_input.d), any(vec2<bool>(true, false)))), firstLeadingBit(abs(-vec2<i32>(-14397i, 2147483647i)) & _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-22296i, u_input.d), vec2<i32>(u_input.d, 4729i), true), reverseBits(vec2<i32>(u_input.d, u_input.d)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-22910i, u_input.d)))), Struct_1(abs(vec4<u32>(u_input.b.x, 17403u, 69421u, 1u) ^ ~vec4<u32>(u_input.e.x, u_input.b.x, 4294967295u, u_input.c.x)), vec4<bool>(!any(vec3<bool>(false, false, true)), !func_2(Struct_3(Struct_1(vec4<u32>(0u, 4294967295u, var_0, var_0), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec4<u32>(u_input.a.x, var_0, 1u, u_input.b.x), vec4<bool>(true, false, false, false)), vec2<i32>(-30391i, u_input.d), Struct_1(vec4<u32>(var_0, var_0, var_0, 4294967295u), vec4<bool>(false, true, false, true)), true), -358f, vec4<u32>(0u, 33365u, 0u, 11947u))).x, _wgslsmith_dot_vec4_i32(vec4<i32>(-12238i, 2147483647i, 0i, 19698i), vec4<i32>(1i, -1i, u_input.d, 2147483647i)) >= -84683i, !func_2(Struct_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 15708u, 0u), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<u32>(u_input.e.x, u_input.c.x, 30834u, 0u), vec4<bool>(false, true, true, false)), vec2<i32>(u_input.d, u_input.d), Struct_1(vec4<u32>(u_input.a.x, 56265u, 4294967295u, u_input.a.x), vec4<bool>(false, true, true, false)), true), -773f, vec4<u32>(var_0, u_input.c.x, var_0, u_input.a.x))).x)), false);
    return !(!vec4<bool>(var_1.c.a.x <= ~30775u, select(!var_1.c.b.x, var_1.a.b.x, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 13230i), vec2<i32>(-2147483647i, u_input.d)) == _wgslsmith_clamp_i32(u_input.d, var_1.b.x, u_input.d), var_1.c.b.x));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_3 {
    global0 = ~_wgslsmith_mult_i32(arg_2.b.x, ~(-arg_2.b.x));
    global0 = arg_1.b.b.x;
    global0 = ~max(reverseBits(arg_1.b.b.x) >> (arg_1.b.c.a.x % 32u), 70770i) ^ arg_2.b.x;
    var var_0 = arg_2.c.b;
    var var_1 = Struct_3(Struct_1(~vec4<u32>(arg_1.b.c.a.x << (40193u % 32u), _wgslsmith_div_u32(u_input.e.x, arg_1.d.x), firstTrailingBit(u_input.a.x), arg_2.c.a.x | arg_1.d.x), vec4<bool>(true && arg_2.d, (1464f == arg_3.x) | arg_2.d, any(arg_2.c.b.zz) || false, true)), Struct_2(arg_1.a, vec2<i32>(_wgslsmith_add_i32(0i, func_4(vec2<f32>(arg_3.x, arg_3.x), vec4<f32>(arg_3.x, 859f, -1979f, -212f), arg_1.c, arg_1.a)), -1i), arg_1.b.a, true), arg_1.c, vec4<u32>(u_input.a.x, u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(arg_2.a.a.x), u_input.c.x, arg_1.a.a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c.a.x, 581u), vec2<u32>(arg_1.a.a.x, u_input.a.x))), _wgslsmith_dot_vec2_u32(arg_1.b.c.a.yx, vec2<u32>(countOneBits(arg_2.c.a.x), ~48376u))));
    return Struct_3(arg_1.a, Struct_2(Struct_1(~vec4<u32>(4294967295u, var_1.a.a.x, 30822u, arg_1.d.x) >> (reverseBits(vec4<u32>(7924u, arg_2.c.a.x, 4294967295u, var_1.a.a.x)) % vec4<u32>(32u)), arg_0), var_1.b.b, Struct_1(vec4<u32>(1u, 37691u, abs(1u), var_1.b.a.a.x), select(!arg_0, arg_2.a.b, true)), all(vec3<bool>(true, false, arg_2.c.b.x))), arg_3.x, vec4<u32>(80384u, ~57973u, 1u, _wgslsmith_dot_vec3_u32(arg_1.d.zyz << (vec3<u32>(18353u, arg_1.a.a.x, var_1.b.a.a.x) % vec3<u32>(32u)), vec3<u32>(var_1.b.c.a.x, 1895u, 109533u) | var_1.d.xww) | max(72235u, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(u_input.d, u_input.d);
    let var_0 = func_5(select(func_1(), vec4<bool>(all(vec3<bool>(true, true, true)), false, true, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.e.x, u_input.c.x), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) > 0u), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec4<u32>(4294967295u, ~u_input.e.x, 41664u, 29436u), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(93496u, 4294967295u, 76689u, u_input.b.x), vec4<u32>(0u, 7371u, 4294967295u, u_input.e.x)), vec4<bool>(true, true, true, true)), ~abs(vec2<i32>(0i, u_input.d)), Struct_1(~vec4<u32>(4294967295u, u_input.a.x, 9729u, 0u), func_2(Struct_3(Struct_1(vec4<u32>(31336u, 41902u, 50546u, u_input.c.x), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec4<u32>(u_input.c.x, u_input.a.x, 1148u, 74683u), vec4<bool>(true, false, true, true)), vec2<i32>(u_input.d, u_input.d), Struct_1(vec4<u32>(45470u, 21868u, 0u, 59493u), vec4<bool>(false, true, true, true)), true), 2022f, vec4<u32>(68150u, u_input.c.x, 1u, u_input.a.x)))), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(189f + -953f) - _wgslsmith_f_op_f32(abs(244f))), _wgslsmith_f_op_f32(-1f))), vec4<u32>(~max(u_input.b.x, 57640u), _wgslsmith_dot_vec2_u32(~u_input.c.xx, vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.b.x), 15825u | u_input.c.x), ~_wgslsmith_mult_u32(4294967295u, u_input.b.x))), Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 38331u, u_input.e.x, u_input.a.x), vec4<u32>(u_input.c.x, 4294967295u, u_input.e.x, 4294967295u)), func_1()), ~(vec2<i32>(-1i) * -vec2<i32>(16356i, -1i)), Struct_1(vec4<u32>(~0u, u_input.c.x, 4294967295u, 1u), func_1()), any(vec2<bool>(true, true)) && any(vec3<bool>(true, true, false))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-625f - -441f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1176f, -1000f)), -479f))), _wgslsmith_f_op_f32(189f * 1322f)));
    var var_1 = var_0.b;
    var var_2 = func_5(var_0.b.c.b, func_5(vec4<bool>(false, var_1.a.b.x, var_1.a.b.x || true, true), Struct_3(var_0.b.a, Struct_2(var_1.a, _wgslsmith_add_vec2_i32(var_0.b.b, vec2<i32>(1i, var_1.b.x)), var_1.a, true), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_div_vec4_u32(var_1.c.a, vec4<u32>(31721u, 4294967295u, var_0.a.a.x, var_0.a.a.x))), var_0.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-173f, var_0.c)))), Struct_2(func_5(var_1.a.b, var_0, Struct_2(func_5(vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, var_0.b.c.b.x), var_0, var_0.b, vec2<f32>(1351f, var_0.c)).a, vec2<i32>(u_input.d, 15034i), func_5(var_0.b.a.b, var_0, Struct_2(Struct_1(vec4<u32>(u_input.a.x, 51279u, 1054u, var_1.a.a.x), vec4<bool>(true, false, true, true)), var_0.b.b, Struct_1(vec4<u32>(var_0.a.a.x, 4294967295u, 8041u, 9877u), vec4<bool>(true, var_1.a.b.x, var_0.a.b.x, false)), true), vec2<f32>(var_0.c, var_0.c)).b.c, true), vec2<f32>(-1324f, _wgslsmith_f_op_f32(-var_0.c))).a, ~(-(vec2<i32>(-5087i, var_0.b.b.x) >> (var_1.a.a.zx % vec2<u32>(32u)))), func_5(func_1(), Struct_3(func_5(var_0.b.c.b, Struct_3(Struct_1(vec4<u32>(var_1.a.a.x, u_input.e.x, 4294967295u, u_input.b.x), var_0.b.a.b), var_0.b, -1140f, var_0.d), var_0.b, vec2<f32>(774f, var_0.c)).a, Struct_2(Struct_1(var_0.b.c.a, var_1.c.b), var_1.b, Struct_1(var_0.d, var_0.b.a.b), true), _wgslsmith_f_op_f32(-var_0.c), vec4<u32>(1u, var_1.c.a.x, 6906u, var_1.a.a.x)), func_5(vec4<bool>(true, true, var_0.b.d, false), func_5(vec4<bool>(true, var_0.b.a.b.x, false, false), var_0, var_0.b, vec2<f32>(var_0.c, -314f)), var_0.b, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, 528f), vec2<f32>(204f, var_0.c))).b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-275f, -537f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, 365f), vec2<f32>(1378f, 2893f)), var_0.a.b.yz))).b.a, all(select(vec4<bool>(var_1.d, true, var_1.d, false), vec4<bool>(var_1.a.b.x, true, var_1.d, var_0.b.d), true)) & var_0.b.a.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c))), vec2<f32>(-931f, _wgslsmith_div_f32(1774f, -461f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-623f, 1777f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c)))))))).b;
    var var_3 = var_2.c.b.zzw;
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec3_i32(-abs(vec3<i32>(1i, 13628i, var_2.b.x)), reverseBits(-vec3<i32>(var_2.b.x, 2147483647i, 44068i))), firstTrailingBit(u_input.d), vec4<i32>(1i, reverseBits(-(~var_1.b.x)), 2843i, ~var_1.b.x), -vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_1.b.x, 0i, 54600i)), vec3<i32>(var_2.b.x, u_input.d, 49552i)), u_input.d, _wgslsmith_sub_i32(var_0.b.b.x, _wgslsmith_sub_i32(u_input.d, -7937i))), _wgslsmith_mult_u32((47385u | var_0.a.a.x) & ~1u, var_0.d.x));
}

