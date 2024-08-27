struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(-1i, -8208i), vec2<i32>(-38607i, 2147483647i), vec2<i32>(-42251i, -1i), vec2<i32>(1669i, 13519i), vec2<i32>(0i, 33276i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(1i, 0i), vec2<i32>(0i, 37435i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-11296i, -27846i), vec2<i32>(-707i, 39804i), vec2<i32>(28699i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -30441i), vec2<i32>(-15329i, 1i), vec2<i32>(1i, -20003i), vec2<i32>(-34304i, -82361i), vec2<i32>(-1i, -26089i), vec2<i32>(27044i, -23641i), vec2<i32>(-68914i, -8088i), vec2<i32>(5713i, 0i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = select(!(!vec4<bool>(var_0.a && var_0.a, !var_0.a, var_0.a, any(vec2<bool>(arg_0.a, true)))), select(vec4<bool>(var_0.a, var_0.a, true, select(43195u, var_0.b, true) <= (arg_0.d.x | 1u)), vec4<bool>(all(vec2<bool>(false, arg_0.a)), true, var_0.a, true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(arg_0.a, true, var_0.a, var_0.a), !vec4<bool>(false, true, var_0.a, arg_0.a), !arg_0.a), vec4<bool>(var_0.a, true, arg_0.a, arg_0.a))), vec4<bool>(arg_0.a, any(select(vec3<bool>(arg_0.a, true, true), vec3<bool>(true, false, true), select(false, false, var_0.a))), false & arg_0.a, arg_0.a));
    let var_2 = vec3<i32>(1i, 1i, 1i);
    global0 = array<vec2<i32>, 21>();
    var_1 = vec4<bool>(var_1.x, true, true == !((4294967295u == var_0.d.x) || true), false);
    return var_0.a;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(func_3(Struct_1(true, 31361u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(275f)), -1991f)), reverseBits(vec3<u32>(u_input.c.x, 1u, 10107u)))), _wgslsmith_clamp_u32(1u, u_input.c.x, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -269f), -1762f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f - 930f)))), _wgslsmith_clamp_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(14813u, u_input.a, 18224u), u_input.b.wzy & vec3<u32>(u_input.c.x, 32902u, u_input.b.x)), vec3<u32>(1u, ~41568u, 33452u), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), vec3<u32>(~(~12089u), _wgslsmith_add_u32(61743u, 29939u), 990u), vec3<u32>(u_input.c.x, 21953u, 2462u)));
    var var_1 = Struct_1(var_0.a, countOneBits(~(~var_0.d.x) | ~u_input.c.x), var_0.c, vec3<u32>(var_0.b, _wgslsmith_mult_u32(abs(u_input.a | u_input.a), u_input.b.x), var_0.d.x));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.c, -386f, var_0.a)))), 1619f)))), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(453f + var_0.c), 754f)))));
    var var_3 = var_0;
    let var_4 = 1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1475f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-411f, 1973f)))), var_2.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    global0 = array<vec2<i32>, 21>();
    var var_0 = arg_1;
    let var_1 = -(((_wgslsmith_mod_vec3_i32(vec3<i32>(86381i, 1i, -1i), vec3<i32>(1i, -1i, -18285i)) >> ((vec3<u32>(4294967295u, 4829u, u_input.c.x) & var_0.d) % vec3<u32>(32u))) << ((_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, u_input.c.x, 4675u), var_0.d) & ~vec3<u32>(1u, arg_0.b, arg_0.b)) % vec3<u32>(32u))) << (~u_input.c % vec3<u32>(32u)));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(max(1405f, _wgslsmith_f_op_f32(-arg_1.c)));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1462f, var_3, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, _wgslsmith_f_op_f32(arg_0.c + var_0.c), _wgslsmith_f_op_f32(arg_0.c - var_3))), select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.a, true, var_2.a), select(vec3<bool>(var_0.a, true, false), vec3<bool>(var_0.a, true, arg_1.a), vec3<bool>(true, false, false))), vec3<bool>(func_3(arg_1), var_0.a && true, var_0.a), var_2.a)))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    global0 = array<vec2<i32>, 21>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_f_op_f32(func_2()) < -228f, 0u, _wgslsmith_f_op_f32(trunc(arg_1.x)), select(vec3<u32>(u_input.c.x, u_input.c.x, 3307u), vec3<u32>(u_input.b.x, u_input.a, u_input.c.x), vec3<bool>(false, true, arg_0)) | u_input.c), Struct_1(all(select(vec3<bool>(false, false, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, true))), u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.a), u_input.b.zyz, vec3<u32>(1u, u_input.a, 4294967295u)))))));
    global0 = array<vec2<i32>, 21>();
    var var_1 = _wgslsmith_f_op_f32(floor(arg_1.x));
    var var_2 = Struct_1(!func_3(Struct_1(any(vec2<bool>(true, arg_0)), ~u_input.b.x, _wgslsmith_div_f32(-753f, -1475f), vec3<u32>(u_input.a, u_input.b.x, 1u) | vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), ~1u, var_0.x, u_input.c);
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.x, countOneBits(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(30154u, 4294967295u, 30710u, 56755u), vec4<u32>(4294967295u, 0u, var_2.b, 6856u)), 83037u) >> (vec4<u32>(var_2.b, 3256u, countOneBits(u_input.c.x), 4294967295u) % vec4<u32>(32u)), vec4<u32>(~0u, u_input.b.x, ~(var_2.b ^ var_2.d.x), 1u)), 0u);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_1 {
    global0 = array<vec2<i32>, 21>();
    var var_0 = arg_0;
    var var_1 = arg_0.c < -389f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(1623f)) >= arg_0.c, u_input.c.x, -414f, ~_wgslsmith_sub_vec3_u32(var_0.d, min(abs(vec3<u32>(21062u, 1u, u_input.b.x)), _wgslsmith_div_vec3_u32(arg_0.d, u_input.b.wzz))));
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, min(4294967295u, 0u) >> (var_2.b % 32u), 1u, var_2.b), abs(u_input.b));
    return Struct_1(false, ~_wgslsmith_dot_vec4_u32(select(~u_input.b, u_input.b, arg_0.a), countOneBits(abs(u_input.b))), _wgslsmith_f_op_f32(floor(441f)), vec3<u32>(~_wgslsmith_mult_u32(~var_0.d.x, var_0.d.x), countOneBits(~var_0.d.x), ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    var var_0 = func_5(Struct_1(any(vec2<bool>(false, true)), _wgslsmith_mod_u32(countOneBits(~u_input.a), func_1(true, vec4<f32>(-617f, 310f, -601f, 695f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) * -555f), 1f), vec3<u32>(1u, 1u, _wgslsmith_sub_u32(func_1(true, vec4<f32>(1000f, -1926f, 567f, 425f)), 1u))), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), true, 2147483647i != select(abs(2447i), _wgslsmith_div_i32(11063i, -14157i), true), func_3(Struct_1(true, 25545u, 118f, ~vec3<u32>(13696u, 0u, 20779u)))), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), select(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], vec2<bool>(true, false)))), reverseBits(i32(-1i) * -32305i), 1i));
    var var_1 = func_5(Struct_1(true, ~(~var_0.b | 39431u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), var_0.c), vec3<u32>(u_input.b.x, ~firstTrailingBit(116262u), ~_wgslsmith_add_u32(48657u, var_0.d.x))), !vec4<bool>(true, var_0.a, true, true), vec3<i32>(~2147483647i, ~abs(firstLeadingBit(16855i)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, -2147483647i), abs(-67156i), abs(-17947i)) << (~(~var_0.d.x) % 32u)));
    var_0 = Struct_1(true, ~4294967295u, var_1.c, vec3<u32>(109467u, ~var_0.d.x & ~0u, _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.b, func_5(Struct_1(var_1.a, var_1.d.x, 537f, vec3<u32>(var_1.b, var_1.d.x, var_0.b)), vec4<bool>(false, var_0.a, var_1.a, true), vec3<i32>(29926i, -2147483647i, -28926i)).d.x), ~(~var_0.d.x))));
    let var_2 = Struct_1(false, func_5(Struct_1(reverseBits(4294967295u) > func_5(Struct_1(false, var_1.d.x, 1948f, vec3<u32>(u_input.c.x, 0u, var_0.d.x)), vec4<bool>(false, var_0.a, var_0.a, false), vec3<i32>(-2147483647i, -7689i, 0i)).d.x, func_5(Struct_1(true, var_0.d.x, var_0.c, vec3<u32>(46583u, 2548u, 4294967295u)), !vec4<bool>(var_0.a, var_1.a, var_0.a, true), vec3<i32>(1i, 1i, 1i)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(-2064f * -1184f)), ~_wgslsmith_add_vec3_u32(var_1.d, vec3<u32>(u_input.b.x, var_1.d.x, 8611u))), select(!(!vec4<bool>(var_0.a, false, var_0.a, var_0.a)), select(select(vec4<bool>(true, true, var_0.a, false), vec4<bool>(false, var_0.a, false, var_1.a), false), vec4<bool>(false, true, false, var_0.a), select(vec4<bool>(var_1.a, true, var_1.a, false), vec4<bool>(false, true, var_1.a, var_1.a), vec4<bool>(var_0.a, true, false, var_0.a))), var_1.a), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(14326i, 10869i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 21946i, 25638i), vec4<i32>(-2147483647i, -64266i, 0i, 1234i))))).b, var_1.c, vec3<u32>(0u, ~func_1(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 370f, var_1.c, var_0.c))), 31510u));
    var var_3 = Struct_1(var_2.a, 25243u, _wgslsmith_div_f32(-2396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-410f - 1f))), ~(reverseBits(u_input.b.xyx) | _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d.x, 43039u, u_input.a), u_input.b.wxz), vec3<u32>(0u, var_0.d.x, 32297u))));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(32916i, 12327i), global0[_wgslsmith_index_u32(u_input.a, 21u)]), firstLeadingBit(1i)), i32(-1i) * -79994i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-4907i, 0i, 29042i), vec3<i32>(-17773i, 16932i, 30155i))) ^ min(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-73199i, 2147483647i, -11685i)), vec3<i32>(8765i, -27760i, 28696i)), select(-vec3<i32>(22794i, 2147483647i, -4726i), vec3<i32>(1i, 1i, 1i), !vec3<bool>(var_3.a, false, false))), 4294967295u, -abs(vec4<i32>(18903i, -26709i, i32(-1i) * -2147483647i, abs(-2147483647i))), -(i32(-1i) * -18356i), _wgslsmith_clamp_u32(~var_3.d.x, 9351u, func_1(!any(vec4<bool>(false, false, var_3.a, var_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, -1359f, -866f, -510f))))));
}

