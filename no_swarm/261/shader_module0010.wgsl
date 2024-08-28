struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1000f, vec2<f32>(111f, -1235f));

var<private> global1: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global2: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_5) -> vec3<bool> {
    global2 = arg_2.b;
    global1 = array<vec2<bool>, 6>();
    global0 = arg_2.b;
    var var_0 = (arg_1.x >> (_wgslsmith_div_u32(arg_1.x, arg_0.c.x) % 32u)) == _wgslsmith_div_u32(~19092u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, arg_2.c.b.c.x, u_input.b), vec4<u32>(arg_2.c.b.c.x, 71931u, arg_1.x, u_input.c)), 20295u));
    var var_1 = arg_0;
    return !(!(!(!vec3<bool>(arg_2.c.b.b.x, false, var_1.b.x))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_3(select(vec3<bool>(true, true, true), !func_3(Struct_1(31753i, vec3<bool>(false, false, true), vec4<u32>(u_input.a.x, 50009u, 12089u, u_input.c)), u_input.a.ww, Struct_5(26589u, Struct_2(global2.a, arg_0.wz), Struct_3(vec3<bool>(true, true, false), Struct_1(-1i, vec3<bool>(false, true, false), u_input.a), u_input.b), vec4<f32>(global2.a, 1873f, global2.a, 1525f))), func_3(Struct_1(~10257i, select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b))), (vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.c, u_input.a.x) % vec2<u32>(32u))) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), Struct_5(~0u, Struct_2(arg_0.x, vec2<f32>(global2.b.x, -1577f)), Struct_3(vec3<bool>(false, false, false), Struct_1(-10541i, vec3<bool>(false, false, true), u_input.a), 74081u), _wgslsmith_f_op_vec4_f32(-arg_0)))), Struct_1(-1i << (_wgslsmith_dot_vec3_u32(u_input.a.xxz, firstTrailingBit(u_input.a.zxz)) % 32u), select(select(func_3(Struct_1(0i, vec3<bool>(false, false, true), vec4<u32>(u_input.a.x, u_input.c, 42463u, u_input.a.x)), u_input.a.xx, Struct_5(u_input.c, Struct_2(global0.b.x, arg_0.yx), Struct_3(vec3<bool>(false, true, true), Struct_1(2147483647i, vec3<bool>(false, true, true), vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.a.x)), 1u), arg_0)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(u_input.a.x < u_input.b, false, all(vec4<bool>(false, false, true, true))), vec3<bool>(all(vec3<bool>(false, true, false)), select(true, true, false), true)), abs(abs(u_input.a))), _wgslsmith_mod_u32(~_wgslsmith_div_u32(0u, u_input.c), u_input.c) ^ countOneBits(~4294967295u));
    global1 = array<vec2<bool>, 6>();
    global1 = array<vec2<bool>, 6>();
    var var_1 = select(select(!select(select(vec4<bool>(false, false, false, var_0.b.b.x), vec4<bool>(var_0.a.x, var_0.b.b.x, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)), !vec4<bool>(false, true, var_0.b.b.x, var_0.a.x), vec4<bool>(var_0.b.b.x, var_0.b.b.x, var_0.a.x, false)), vec4<bool>(all(vec2<bool>(var_0.a.x, var_0.a.x)) | !var_0.b.b.x, !var_0.b.b.x, false, all(!var_0.b.b.xz)), select(select(!vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(true, var_0.a.x, false, var_0.b.b.x), !vec4<bool>(var_0.b.b.x, var_0.b.b.x, var_0.a.x, var_0.b.b.x)), select(select(vec4<bool>(var_0.a.x, false, true, var_0.a.x), vec4<bool>(false, var_0.a.x, false, var_0.b.b.x), var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), all(vec3<bool>(true, var_0.a.x, true))), true)), select(vec4<bool>(true, all(vec4<bool>(var_0.a.x, var_0.b.b.x, true, false)), var_0.a.x, true), select(vec4<bool>(true, false, true, var_0.a.x), vec4<bool>(true, var_0.b.b.x && false, true, true), vec4<bool>(false, !var_0.a.x, var_0.a.x, !var_0.a.x)), vec4<bool>(true, true, true, true)), any(var_0.a));
    global1 = array<vec2<bool>, 6>();
    return Struct_3(func_3(Struct_1(-32008i, var_0.a, vec4<u32>(var_0.c ^ 0u, 52305u, 0u, u_input.c ^ 4294967295u)), countOneBits(firstTrailingBit(vec2<u32>(39271u, var_0.b.c.x))), Struct_5(reverseBits(34755u), Struct_2(_wgslsmith_f_op_f32(global0.a - -501f), _wgslsmith_f_op_vec2_f32(sign(global2.b))), Struct_3(vec3<bool>(var_1.x, true, var_0.a.x), var_0.b, _wgslsmith_mod_u32(u_input.c, 0u)), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1747f), -284f, _wgslsmith_div_f32(arg_0.x, global2.a)))), Struct_1(-(_wgslsmith_add_i32(var_0.b.a, var_0.b.a) | -var_0.b.a), func_3(var_0.b, vec2<u32>(var_0.b.c.x, _wgslsmith_mult_u32(4294967295u, u_input.b)), Struct_5(firstLeadingBit(32934u), Struct_2(121f, arg_0.zw), Struct_3(vec3<bool>(var_1.x, var_1.x, true), Struct_1(var_0.b.a, var_0.b.b, vec4<u32>(86741u, var_0.b.c.x, 4294967295u, 34579u)), 4294967295u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(364f, global2.a, global0.b.x, arg_0.x))))), u_input.a), var_0.c);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(223f - 158f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a * -1152f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))), global2.b.x);
    let var_1 = !arg_1.b;
    var var_2 = Struct_1(-1i, arg_1.b, vec4<u32>(47811u, 0u, ~_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_div_u32(40363u, arg_0.b.b.c.x)), arg_1.c.x));
    var_0 = vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(181f, 721f), global0.a)), global0.b.x))), var_0.x);
    global1 = array<vec2<bool>, 6>();
    return func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1089f, _wgslsmith_f_op_f32(sign(-892f)), _wgslsmith_f_op_f32(max(-405f, 998f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1019f, global2.a)))) - vec4<f32>(-1494f, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-1219f * _wgslsmith_f_op_f32(1598f - 656f)), _wgslsmith_div_f32(-1726f, _wgslsmith_div_f32(global0.b.x, var_0.x))))).b;
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    var var_0 = func_4(Struct_4(u_input.c, func_2(vec4<f32>(_wgslsmith_f_op_f32(1000f + global0.a), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(ceil(-213f)), 401f)), -2147483647i & (arg_0.a & firstTrailingBit(-1i))), Struct_1(arg_0.a, !arg_0.b, vec4<u32>(13618u, abs(arg_0.c.x) | ~u_input.a.x, arg_0.c.x, ~0u)), abs(vec3<i32>(~_wgslsmith_mod_i32(arg_0.a, arg_0.a), -1i ^ (-32912i >> (u_input.b % 32u)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-31237i, 26235i), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a, -1i), vec2<i32>(arg_0.a, -41113i))))));
    var var_1 = Struct_3(!(!(!vec3<bool>(arg_0.b.x, var_0.b.x, true))), func_4(Struct_4(_wgslsmith_dot_vec3_u32(u_input.a.yxz, abs(vec3<u32>(1u, u_input.c, var_0.c.x))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global2.a, global0.a, global0.a) - vec4<f32>(1235f, -685f, global2.a, global2.b.x))), abs(-9461i)), Struct_1(arg_0.a, arg_0.b, arg_0.c), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.a, var_0.a, 0i), abs(vec3<i32>(-8108i, arg_0.a, var_0.a))) | ~(-vec3<i32>(-2147483647i, arg_0.a, 1i))), 8457u);
    var var_2 = ~var_0.a ^ (~var_0.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.a, var_1.b.a, reverseBits(-1i)), reverseBits(countOneBits(vec3<i32>(var_1.b.a, 0i, var_1.b.a)))));
    let var_3 = vec4<u32>(5569u, 1338u, _wgslsmith_dot_vec4_u32(vec4<u32>(max(49324u, _wgslsmith_div_u32(var_1.b.c.x, 18562u)), _wgslsmith_dot_vec3_u32(~var_1.b.c.wyw, arg_0.c.zxy), ~var_0.c.x, arg_0.c.x), ~vec4<u32>(1u, var_0.c.x, 0u, 4294967295u) >> (abs(abs(vec4<u32>(1u, 14214u, u_input.c, var_1.b.c.x))) % vec4<u32>(32u))), ~64774u);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, _wgslsmith_f_op_f32(step(global2.b.x, -507f))) - vec2<f32>(-1000f, _wgslsmith_f_op_f32(global2.a - -754f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2.b))));
    return Struct_4(_wgslsmith_sub_u32(arg_0.c.x, ~5434u), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, global2.b.x, var_4.x, var_4.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1514f, var_4.x, 957f) - vec4<f32>(-401f, 871f, 148f, global2.b.x))))), _wgslsmith_mod_i32(abs(arg_0.a), -28687i));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    let var_0 = arg_0.b.c;
    var var_1 = !all(arg_0.b.b.b);
    var var_2 = max(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c, arg_0.b.b.a, arg_0.b.b.a, 8974i), vec4<i32>(arg_0.c, arg_0.c, arg_0.c, arg_0.b.b.a)) << (arg_0.b.b.c % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(1i, -26569i, -3972i, 10445i)), vec4<i32>(arg_0.c, arg_0.c, 0i, -26429i))) ^ ~((vec4<i32>(arg_0.c, arg_0.c, 1i, 41339i) << (arg_0.b.b.c % vec4<u32>(32u))) | vec4<i32>(26521i, arg_0.c, arg_0.c, arg_0.b.b.a)), select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_0.c, arg_0.c, arg_0.b.b.a), max(vec4<i32>(arg_0.b.b.a, -47449i, 0i, arg_0.c), vec4<i32>(1i, arg_0.b.b.a, 0i, arg_0.c))), vec4<i32>(arg_0.b.b.a, arg_0.c, countOneBits(0i), _wgslsmith_clamp_i32(arg_0.b.b.a, -1i, 1i)), vec4<bool>(arg_2.x || arg_0.b.b.b.x, any(arg_2), arg_3, !arg_0.b.b.b.x)) << (vec4<u32>(u_input.a.x, abs(arg_0.a), func_4(Struct_4(arg_1, Struct_3(arg_2.wyw, arg_0.b.b, 24145u), 1i), arg_0.b.b, vec3<i32>(1i, -10842i, arg_0.c)).c.x, ~var_0 >> (1u % 32u)) % vec4<u32>(32u)));
    let var_3 = arg_3;
    let var_4 = var_2.x;
    return _wgslsmith_f_op_f32(1251f - 498f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstLeadingBit(-vec4<i32>(1i, 1i, 1i, 1i));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1977f * -1869f), global2.a, -666f))) + vec3<f32>(-1064f, global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) + 362f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-539f - global0.a) - global2.b.x), 698f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, 199f, 1761f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.a, -739f)))))));
    global2 = Struct_2(_wgslsmith_f_op_f32(func_5(func_1(Struct_1(2147483647i, vec3<bool>(true, true, true), vec4<u32>(u_input.b, 4294967295u, 1u, 45970u))), ~u_input.b, !vec4<bool>(false, func_3(Struct_1(var_0.x, vec3<bool>(false, true, false), vec4<u32>(u_input.b, 81618u, 0u, 1u)), u_input.a.wx, Struct_5(u_input.b, Struct_2(-1776f, vec2<f32>(global0.a, var_2.x)), Struct_3(vec3<bool>(false, true, false), Struct_1(var_0.x, vec3<bool>(true, true, false), vec4<u32>(u_input.a.x, u_input.c, 14741u, 29557u)), u_input.a.x), vec4<f32>(-327f, -493f, global0.a, 243f))).x, global2.a < -424f, true), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))))), var_2.xx);
    global2 = Struct_2(_wgslsmith_f_op_f32(var_2.x + -353f), _wgslsmith_f_op_vec2_f32(-var_2.yz));
    var var_3 = u_input.b;
    let var_4 = Struct_3(vec3<bool>(false, true != func_3(func_2(vec4<f32>(global0.b.x, -140f, global2.a, 905f)).b, vec2<u32>(8795u, 4294967295u), Struct_5(45788u, Struct_2(-1000f, var_2.zy), Struct_3(vec3<bool>(true, true, true), Struct_1(var_0.x, vec3<bool>(true, true, true), vec4<u32>(0u, u_input.b, u_input.b, u_input.a.x)), u_input.a.x), vec4<f32>(923f, 1000f, 612f, -400f))).x, true), Struct_1(-var_0.x, vec3<bool>(all(func_4(Struct_4(13084u, Struct_3(vec3<bool>(false, true, true), Struct_1(var_0.x, vec3<bool>(false, true, false), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), u_input.c), 2147483647i), Struct_1(var_0.x, vec3<bool>(false, true, true), vec4<u32>(u_input.a.x, 31642u, 9166u, u_input.b)), var_0.zwx).b), false, true), vec4<u32>(u_input.a.x, u_input.a.x, ~42637u, ~6058u)), 114076u & (~0u >> ((4294967295u << (func_1(Struct_1(2147483647i, vec3<bool>(false, false, true), vec4<u32>(u_input.a.x, u_input.b, u_input.b, 24257u))).b.b.c.x % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xz, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1024f, 923f, var_2.x, global2.b.x)))))).b.c.zxx);
}

