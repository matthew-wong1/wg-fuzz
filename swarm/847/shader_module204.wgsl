struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<bool>;

var<private> global2: f32 = -665f;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> i32 {
    return -13833i;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    global3 = select(vec4<bool>(true, !(_wgslsmith_f_op_f32(arg_0.x + -336f) > _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), true, global3.x), select(vec4<bool>(global3.x || false, global1.x & !global0.x, (1023f > arg_0.x) | global0.x, select(select(true, true, global0.x), global1.x, select(true, true, false))), !select(vec4<bool>(global0.x, false, true, false), !vec4<bool>(false, true, global1.x, global3.x), global0.x), vec4<bool>(false & all(vec4<bool>(true, global0.x, false, global3.x)), global0.x, global0.x, global3.x)), global0.x);
    let var_0 = all(global3.wxy);
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, u_input.b), select(~(vec2<i32>(-1i, -38978i) & vec2<i32>(u_input.b, arg_2)), ~(~vec2<i32>(u_input.a, 1535i)), select(select(global3.zy, vec2<bool>(global1.x, true), global3.x), select(global3.xw, vec2<bool>(false, false), global3.yz), vec2<bool>(false, global1.x)))));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_add_i32(1i, arg_2 | var_1.x), i32(-1i) * -var_1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, arg_1.x), vec2<u32>(4294967295u, u_input.d), arg_1.zy), max(arg_1.zz, vec2<u32>(4294967295u, 21339u))), arg_2), vec2<f32>(1223f, _wgslsmith_f_op_f32(arg_0.x * 1115f)), ~vec3<u32>(_wgslsmith_clamp_u32(1u, arg_1.x, arg_1.x), ~u_input.d, 0u), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, 2147483647i), vec2<i32>(0i, var_1.x))) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_1.x), ~vec2<i32>(30014i, 0i))), Struct_1(u_input.a, -3037i, u_input.d, min(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(23815i, 6439i)), _wgslsmith_add_i32(arg_2, -18594i) | min(-1i, -13214i))), ~u_input.c << (u_input.c % vec2<u32>(32u)));
    var var_3 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(i32(-1i) * -33665i, u_input.b, arg_2), ~select(vec3<i32>(-1i) * -vec3<i32>(-65429i, u_input.b, var_1.x), min(vec3<i32>(52028i, arg_2, var_1.x), vec3<i32>(-2147483647i, var_1.x, arg_2) & vec3<i32>(arg_2, arg_2, u_input.b)), vec3<bool>(var_0, all(vec2<bool>(false, false)), 872f < arg_0.x)), _wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, 2147483647i, arg_2), ~vec3<i32>(-2147483647i, var_2.a.d.x, 0i)), _wgslsmith_add_vec3_i32(-firstTrailingBit(vec3<i32>(1i, var_1.x, 34367i)), -abs(vec3<i32>(-20078i, u_input.b, 1i)))));
    return arg_1.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_5(global1.xz, max(u_input.c.x | 32721u, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2254f, -1000f))), ~min(vec3<u32>(15835u, 0u, 59139u), vec3<u32>(u_input.d, 1u, u_input.d)), func_3(Struct_4(1381f, global1.x, vec2<u32>(0u, u_input.c.x), 0i), Struct_2(Struct_1(1i, u_input.b, 4294967295u, 0i), vec2<f32>(-1949f, 115f), vec3<u32>(0u, 52427u, u_input.d), vec2<i32>(-31293i, u_input.b))))), -1840f, Struct_3(Struct_2(Struct_1(func_3(Struct_4(-766f, global0.x, u_input.c, 19042i), Struct_2(Struct_1(u_input.a, -106310i, 57305u, 0i), vec2<f32>(1739f, 407f), vec3<u32>(4294967295u, 1u, 27670u), vec2<i32>(u_input.a, 2147483647i))), 1186i, u_input.c.x | u_input.c.x, ~0i), _wgslsmith_div_vec2_f32(vec2<f32>(374f, 532f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 205f) - vec2<f32>(269f, 656f))), vec3<u32>(1u, _wgslsmith_mult_u32(u_input.c.x, 0u), 55652u), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, -1i))), Struct_1(u_input.b, u_input.a, u_input.d, u_input.a), u_input.c), ~(~select(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a, u_input.b), vec3<i32>(u_input.b, 66986i, u_input.b)), vec3<i32>(u_input.a, -2147483647i, u_input.b) << (vec3<u32>(u_input.c.x, 4294967295u, u_input.d) % vec3<u32>(32u)), select(global3.xwx, vec3<bool>(true, global0.x, global0.x), vec3<bool>(global1.x, global0.x, global0.x)))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-168f, var_0.d.a.b.x))))), var_0.d.a.b.x)), var_0.a.x, _wgslsmith_sub_vec2_u32(u_input.c, ~u_input.c) ^ var_0.d.c, reverseBits(var_0.e.x));
    var var_2 = ~(-_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.d.b.b, -1i, -33249i, 22056i), vec4<i32>(-1368i, u_input.a, 2147483647i, var_0.e.x)), -1i));
    var var_3 = Struct_5(!var_0.a, (51355u | u_input.c.x) << (var_1.c.x % 32u), _wgslsmith_f_op_f32(1402f * _wgslsmith_f_op_f32(max(913f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1529f)) + _wgslsmith_f_op_f32(-var_1.a))))), Struct_3(Struct_2(var_0.d.b, var_0.d.a.b, var_0.d.a.c, vec2<i32>(var_1.d, -29023i) << (_wgslsmith_sub_vec2_u32(u_input.c, var_0.d.c) % vec2<u32>(32u))), Struct_1(u_input.b << (var_0.b % 32u), u_input.b, var_0.b, countOneBits(u_input.b)), u_input.c >> (_wgslsmith_clamp_vec2_u32(reverseBits(u_input.c), var_0.d.c, max(vec2<u32>(var_1.c.x, 1u), vec2<u32>(var_0.d.b.c, 9142u))) % vec2<u32>(32u))), vec3<i32>(var_1.d, var_0.d.a.d.x, _wgslsmith_mult_i32(var_1.d, var_1.d)));
    global3 = !(!select(vec4<bool>(all(vec3<bool>(false, var_3.a.x, global0.x)), true | var_1.b, all(vec3<bool>(true, var_3.a.x, var_3.a.x)), !var_3.a.x), vec4<bool>(true, global1.x, all(var_3.a), true), !vec4<bool>(global0.x, false, var_1.b, false)));
    return global3.xyw;
}

fn func_5(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = ~u_input.c.x | u_input.c.x;
    global0 = !(!arg_0.xy);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_i32(2147483647i, min(u_input.a, u_input.a), select(-2147483647i, -34562i, global0.x)), u_input.a, abs(u_input.d), u_input.a), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -626f), 1f), vec2<f32>(_wgslsmith_f_op_f32(step(-388f, 385f)), -271f)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x), ~vec2<u32>(8725u, 51697u)), _wgslsmith_sub_u32(21418u, min(u_input.c.x, u_input.c.x)), ~(~0u)), vec2<i32>(-1i) * -(vec2<i32>(-33844i, u_input.b) | vec2<i32>(-2147483647i, u_input.b))), Struct_1(abs(u_input.b), -2993i, u_input.c.x << (4294967295u % 32u), func_3(Struct_4(-474f, global3.x, abs(vec2<u32>(u_input.c.x, 4452u)), u_input.a), Struct_2(Struct_1(0i, 2147483647i, u_input.c.x, -24621i), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(797f, 257f), vec2<f32>(745f, 159f))), vec3<u32>(u_input.d, u_input.c.x, u_input.c.x), select(vec2<i32>(0i, -3734i), vec2<i32>(-49962i, 2147483647i), false)))), min(vec2<u32>(4294967295u, 0u << (_wgslsmith_div_u32(u_input.c.x, u_input.d) % 32u)), _wgslsmith_add_vec2_u32(~(vec2<u32>(19270u, u_input.d) & vec2<u32>(u_input.d, u_input.c.x)), firstLeadingBit(vec2<u32>(1u, 82509u)))));
    let var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_f32(-var_1.a.b.x);
    return var_1.a;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = -u_input.a;
    var var_1 = func_5(select(select(!select(vec3<bool>(true, false, true), global3.xxx, global3.zwx), !func_2(), !(!vec3<bool>(global3.x, true, false))), vec3<bool>(!(!global1.x), global1.x, true), true));
    global3 = select(!vec4<bool>(any(select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global3.x, false, false, true), vec4<bool>(global1.x, false, global0.x, global3.x))), any(global3.xzz), false, all(!vec2<bool>(global1.x, true))), !(!select(select(vec4<bool>(global1.x, true, false, global3.x), vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(global0.x, global0.x, global0.x, false)), vec4<bool>(true, true, false, global1.x), false | global0.x)), !vec4<bool>(global1.x, global0.x, all(vec4<bool>(global3.x, false, false, false)), true));
    let var_2 = vec2<bool>(false, global0.x);
    let var_3 = reverseBits(vec4<i32>(~var_1.a.b & ~(-67309i), -(78730i >> (1u % 32u)), var_1.d.x, -21609i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(func_3(Struct_4(-648f, global1.x, vec2<u32>(1u, 4294967295u), u_input.b), Struct_2(var_1.a, vec2<f32>(var_1.b.x, 2229f), vec3<u32>(u_input.c.x, 7504u, 31341u), vec2<i32>(var_1.a.a, var_1.d.x))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, 2147483647i), max(-4914i, 1i), -365i & u_input.a), ~var_1.a.d ^ select(var_1.a.d, -2147483647i, true), 0i), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.d.x, -28408i, -1i, -48540i), firstLeadingBit(vec4<i32>(-58554i, var_1.d.x, var_1.a.b, var_1.d.x))));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(round(1446f)), true | func_1(~vec2<u32>(1u, 0u)), u_input.c, func_3(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(613f - -1763f) + _wgslsmith_f_op_f32(f32(-1f) * -133f)), !global0.x, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 18664u), vec2<u32>(u_input.d, u_input.c.x)), 22030i), func_5(vec3<bool>(true, global0.x || true, !global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_i32(u_input.a, -1310i << (~u_input.d % 32u))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, 759f, var_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 362f, _wgslsmith_f_op_f32(f32(-1f) * -1053f)) + vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), var_0.a))));
}

