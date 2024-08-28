struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<bool> {
    return vec4<bool>(~countOneBits(_wgslsmith_div_i32(-45894i, 1i)) >= _wgslsmith_sub_i32(u_input.c, u_input.c), ~_wgslsmith_sub_u32(83803u, ~4294967295u) < u_input.d, !(u_input.c < (_wgslsmith_add_i32(-39786i, u_input.c) ^ -1i)), !select(select(true, true, false), true, all(vec2<bool>(false, false)) | true));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<Struct_2, 14>();
    let var_0 = arg_2;
    var var_1 = ~(~1363i);
    let var_2 = Struct_5(var_0.a.c.x, arg_2, true, true);
    let var_3 = Struct_3(var_2.b.a);
    return !select(func_3(), !(!var_2.b.a.b), !arg_1);
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 14>();
    var var_0 = Struct_2(Struct_1(1u, func_4(252f, func_3(), Struct_2(Struct_1(9588u, vec4<bool>(false, false, true, true), vec2<i32>(u_input.c, u_input.c), vec4<i32>(1i, u_input.a, u_input.e, 1i), vec3<u32>(0u, 4637u, 3090u)), u_input.c)), (~vec2<i32>(-17269i, u_input.e) ^ vec2<i32>(u_input.c, -17638i)) | -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.a, u_input.a)), -abs(abs(vec4<i32>(u_input.e, u_input.e, -1i, -21894i))), _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(u_input.b), ~0u, 48654u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(21089u, u_input.d, 1u), vec3<u32>(u_input.d, 33489u, u_input.b), vec3<u32>(u_input.d, u_input.d, u_input.d))))), _wgslsmith_sub_i32(-19209i, u_input.e));
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.c.x, -10862i, _wgslsmith_dot_vec3_i32(abs(var_0.a.d.yzx), -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, -35086i), var_0.a.d.yxw)), max(var_0.a.c.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, -1i), var_0.a.c.x))), var_0.a.d);
    var var_2 = Struct_4(vec3<bool>(var_0.a.b.x || any(vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, true)), true, !(!select(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x))), i32(-1i) * -1256i, Struct_3(var_0.a), _wgslsmith_f_op_f32(ceil(-370f)));
    var var_3 = ~var_2.c.a.c.x;
    return var_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    var var_0 = u_input.a;
    var var_1 = Struct_3(Struct_1(firstTrailingBit(u_input.b), vec4<bool>(false, all(vec2<bool>(arg_0.b.x, true)), arg_0.b.x, arg_0.b.x), _wgslsmith_mod_vec2_i32(arg_0.d.xy, _wgslsmith_mod_vec2_i32(arg_0.d.xx, ~arg_0.d.ww)), ~max(arg_0.d, -arg_0.d), firstLeadingBit(_wgslsmith_add_vec3_u32(reverseBits(arg_0.e), arg_0.e | arg_0.e))));
    var var_2 = vec4<bool>(true, var_1.a.b.x && false, func_2().e.x >= max(_wgslsmith_mod_u32(select(1094u, 0u, arg_0.b.x), ~u_input.b), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_1.a.e.x), vec2<u32>(arg_0.a, u_input.d))), true && var_1.a.b.x);
    return func_2();
}

fn func_1() -> i32 {
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    let var_0 = Struct_3(func_5(func_2(), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(u_input.e, u_input.a)), vec2<i32>(51283i, u_input.a))));
    var var_1 = -(~max(var_0.a.d, var_0.a.d));
    return _wgslsmith_mult_i32(u_input.c, ~(-53447i));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_2, arg_2: f32) -> Struct_4 {
    let var_0 = ~_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(arg_0.b.a.e.x, ~1u), 12528u ^ ~u_input.d);
    global0 = array<Struct_2, 14>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1988f), 1f))));
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-256f, var_1.x, -1396f, var_1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2219f, var_1.x, 1106f, arg_2))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-arg_2), arg_2)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, 427f, 215f, -883f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, var_1.x, -992f))), vec4<bool>(all(var_2.b.ywy), arg_0.c, true, false)))));
    return Struct_4(!(!var_2.b.zxx), var_2.d.x, Struct_3(arg_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-491f * var_3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(select(-753f, -1988f, arg_1.a.b.x))), var_3.x))));
}

fn func_7(arg_0: Struct_4, arg_1: i32, arg_2: vec2<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d), -2092f, _wgslsmith_div_f32(-887f, 1519f), _wgslsmith_div_f32(282f, arg_0.d))))) - vec4<f32>(-1030f, _wgslsmith_f_op_f32(select(arg_0.d, -1368f, !(arg_0.a.x | true))), arg_0.d, -209f));
    global0 = array<Struct_2, 14>();
    let var_1 = 4294967295u;
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    return Struct_3(func_6(Struct_5(~max(-11493i, u_input.e), global0[_wgslsmith_index_u32(func_6(Struct_5(0i, Struct_2(Struct_1(arg_0.c.a.e.x, vec4<bool>(false, true, false, false), vec2<i32>(arg_1, arg_1), arg_0.c.a.d, vec3<u32>(var_1, arg_0.c.a.e.x, 1u)), 16930i), false, false), Struct_2(Struct_1(u_input.d, arg_0.c.a.b, arg_0.c.a.d.xz, arg_0.c.a.d, arg_0.c.a.e), arg_1), _wgslsmith_f_op_f32(arg_0.d * -728f)).c.a.e.x, 14u)], true, func_4(-1652f, arg_0.c.a.b, global0[_wgslsmith_index_u32(firstLeadingBit(48074u), 14u)]).x), global0[_wgslsmith_index_u32(var_1, 14u)], arg_0.d).c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(firstTrailingBit(~(~vec2<u32>(0u, 1u))) << (vec2<u32>(17679u, max(18822u, ~15815u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(39855u, u_input.d) ^ ~vec2<u32>(17185u, 21025u), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(6152u, 4294967295u), vec2<u32>(15443u, u_input.d))), vec2<bool>(true, true)), select(select(vec2<u32>(u_input.b, u_input.d), vec2<u32>(30142u, u_input.b), true), vec2<u32>(26991u, u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 9566u), vec2<u32>(u_input.d, 30072u)), ~76462u)), all(vec2<bool>(all(vec4<bool>(false, true, false, false)), true)));
    global0 = array<Struct_2, 14>();
    var var_1 = -1287f;
    var var_2 = func_7(func_6(Struct_5(_wgslsmith_div_i32(2147483647i, func_1()), Struct_2(func_5(Struct_1(var_0.x, vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, -3602i), vec4<i32>(-2147483647i, -43221i, 1i, u_input.c), vec3<u32>(69687u, 4294967295u, u_input.b)), vec2<i32>(u_input.e, u_input.a)), _wgslsmith_sub_i32(u_input.c, u_input.a)), true, func_2().b.x), global0[_wgslsmith_index_u32(~4294967295u, 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(597f - -1203f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-312f, 2655f)))), _wgslsmith_sub_i32(47171i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), func_6(Struct_5(u_input.e, Struct_2(Struct_1(61534u, vec4<bool>(true, false, false, true), vec2<i32>(u_input.a, 24955i), vec4<i32>(-9058i, u_input.e, 2147483647i, -1i), vec3<u32>(59474u, 50728u, 0u)), u_input.e), false, true), global0[_wgslsmith_index_u32(4294967295u, 14u)], 817f).c.a.d.zx) << (u_input.b % 32u)), func_2().b.yz);
    global0 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-541f - _wgslsmith_f_op_f32(select(1045f, 1218f, var_2.a.b.x))), -1428f)), var_2.a.d.x, -1131f, ~vec2<u32>(~_wgslsmith_dot_vec2_u32(var_2.a.e.yx, var_0), countOneBits(var_2.a.e.x) ^ reverseBits(16101u)), ~vec4<u32>(~0u, 34554u, u_input.b, abs(_wgslsmith_mod_u32(var_2.a.e.x, 38750u))));
}

