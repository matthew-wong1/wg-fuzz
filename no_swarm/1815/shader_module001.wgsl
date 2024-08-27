struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(24415u, 27860u), vec2<u32>(2058u, 69369u), vec2<u32>(47492u, 0u), vec2<u32>(0u, 33562u), vec2<u32>(50341u, 1u), vec2<u32>(0u, 51078u), vec2<u32>(9950u, 4294967295u), vec2<u32>(1u, 16388u), vec2<u32>(4294967295u, 1u), vec2<u32>(48603u, 1u), vec2<u32>(66032u, 122448u), vec2<u32>(35833u, 7807u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(38031u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(32038u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(37442u, 4294967295u), vec2<u32>(43659u, 4294967295u), vec2<u32>(0u, 52205u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_mod_u32(abs(~4294967295u), _wgslsmith_add_u32(abs(~14143u), 1u)));
    global0 = array<vec2<u32>, 21>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1367f))));
    let var_2 = Struct_1(var_0.a, select(vec4<bool>(all(vec3<bool>(true, true, true)), true, false, (54353i >= u_input.a.x) && select(true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(!any(vec2<bool>(false, false)), true, 4294967295u >= (var_0.a << (var_0.a % 32u)), !(var_1.a.x > var_1.a.x))), ~3884u, all(vec3<bool>(true | any(vec3<bool>(false, true, true)), all(vec3<bool>(false, false, false)) && true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false))))), !(false && any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false))));
    var var_3 = abs(~firstTrailingBit(vec3<u32>(86872u << (var_2.a % 32u), ~30067u, ~var_2.a)));
    return _wgslsmith_mult_i32(arg_0.x, -_wgslsmith_div_i32(-abs(5222i), i32(-1i) * -arg_0.x));
}

fn func_2() -> Struct_2 {
    let var_0 = func_3(vec4<i32>(-51876i, u_input.c.x, u_input.c.x, max(~(~u_input.c.x), -(-1i & u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, 1f, _wgslsmith_div_f32(-215f, _wgslsmith_f_op_f32(ceil(-889f))))));
    let var_2 = ~(~_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 21u)] >> (vec2<u32>(1u, 78139u) % vec2<u32>(32u)), vec2<u32>(63509u, 4294967295u))));
    let var_3 = select(!vec4<bool>(1i >= _wgslsmith_add_i32(1i, var_0), _wgslsmith_f_op_f32(step(var_1.x, var_1.x)) > _wgslsmith_f_op_f32(-var_1.x), var_0 > _wgslsmith_mult_i32(u_input.b, 5111i), true), vec4<bool>(true, true, true, true), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false))));
    var var_4 = var_0;
    return Struct_2(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    global0 = array<vec2<u32>, 21>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(310f, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(-arg_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.a)))))));
    global0 = array<vec2<u32>, 21>();
    let var_1 = Struct_3(_wgslsmith_sub_u32(~(1u >> (1u % 32u)), firstLeadingBit(1u << (1u % 32u))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), 1666f) * vec2<f32>(_wgslsmith_f_op_f32(round(-1576f)), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-arg_0.a.x)))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - -933f), _wgslsmith_f_op_f32(-723f - arg_0.a.x)), 406f) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(var_2.a.x - 137f))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = func_4(func_2());
    let var_1 = ~select(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1, arg_1, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 2575u, arg_1), vec3<u32>(arg_1, arg_1, 1u)), vec3<u32>(6145u, 0u, 31387u)), _wgslsmith_clamp_vec3_u32(~firstLeadingBit(vec3<u32>(0u, arg_1, 1u)), _wgslsmith_add_vec3_u32(~vec3<u32>(19478u, 4294967295u, 4294967295u), vec3<u32>(arg_1, arg_1, arg_1) & vec3<u32>(arg_1, arg_1, arg_1)), firstLeadingBit(vec3<u32>(8903u, 0u, arg_1)) >> (~vec3<u32>(arg_1, 0u, arg_1) % vec3<u32>(32u))), (_wgslsmith_f_op_f32(1000f - arg_0.a.x) < -339f) & true);
    var var_2 = u_input.a;
    let var_3 = 578f;
    var var_4 = min(_wgslsmith_mod_vec4_u32(min(vec4<u32>(94041u, arg_1, 4294967295u, var_1.x), ~vec4<u32>(var_1.x, 1u, 17417u, 7811u)), ~vec4<u32>(28452u, var_1.x, 46595u, 60111u) << (abs(vec4<u32>(39346u, 0u, var_1.x, 51380u)) % vec4<u32>(32u))) ^ firstTrailingBit(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 12067u, var_1.x, arg_1)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 0u, var_1.x, arg_1), vec4<u32>(arg_1, var_1.x, 0u, 0u)))), reverseBits(max(~vec4<u32>(1u, var_1.x, 4294967295u, arg_1), select(firstLeadingBit(vec4<u32>(arg_1, 45080u, 21546u, 18915u)), vec4<u32>(arg_1, var_1.x, arg_1, 105u), vec4<bool>(true, true, true, true)))));
    return func_4(arg_0);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: f32) -> Struct_1 {
    global0 = array<vec2<u32>, 21>();
    let var_0 = Struct_3(firstTrailingBit(arg_1.x));
    var var_1 = Struct_1(~(arg_1.x & arg_1.x), vec4<bool>(!(!(arg_0.a.x > -1566f)), ~arg_1.x >= firstTrailingBit(~13236u), any(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, any(vec3<bool>(false, false, false)))), !any(vec3<bool>(false, false, true)) || false), 0u, true, true);
    var var_2 = Struct_4(vec2<f32>(arg_2.a.x, func_2().a.x));
    var var_3 = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_2.a * _wgslsmith_f_op_vec2_f32(-arg_2.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1911f, 1233f) * func_2().a)))));
    return Struct_1(_wgslsmith_dot_vec2_u32(~arg_1, reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(42143u, 35194u), _wgslsmith_mult_vec2_u32(arg_1, arg_1)))), vec4<bool>(-390f >= _wgslsmith_f_op_f32(-arg_0.a.x), true, var_1.d, var_1.d), var_1.a ^ arg_1.x, (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(102f + arg_3), _wgslsmith_f_op_f32(round(-3715f)), true)) >= 1329f) && var_1.d, all(select(select(var_1.b.yx, var_1.b.zy, true), var_1.b.ww, !select(var_1.b.ww, var_1.b.xy, vec2<bool>(var_1.d, false)))));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    var var_0 = firstTrailingBit(min(~select(~arg_0.x, _wgslsmith_mod_u32(arg_1.a, arg_1.a), true), arg_1.c));
    global0 = array<vec2<u32>, 21>();
    return Struct_3(0u);
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec3<u32>) -> vec2<i32> {
    global0 = array<vec2<u32>, 21>();
    let var_0 = Struct_1(~4294967295u, !select(!vec4<bool>(false, false, arg_0.x, arg_0.x), !select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), false), func_6(vec2<u32>(34361u, arg_3.x), Struct_1(arg_3.x, vec4<bool>(false, arg_0.x, false, false), 1u, false, arg_0.x), Struct_1(arg_3.x, vec4<bool>(arg_0.x, false, true, true), arg_1.a, false, true)).a <= ~arg_1.a), ~_wgslsmith_mult_u32(arg_1.a, ~1u), arg_0.x, all(!(!vec4<bool>(false, arg_0.x, true, arg_0.x))));
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    return select(vec2<i32>(u_input.b, 0i), vec2<i32>(_wgslsmith_sub_i32(arg_2, max(~arg_2, 1i)), _wgslsmith_sub_i32(min(-12197i, -3562i), -15574i)), select(vec2<bool>(~u_input.b >= func_3(vec4<i32>(u_input.a.x, 2147483647i, arg_2, arg_2)), !arg_0.x), vec2<bool>(any(!arg_0), all(func_5(Struct_4(vec2<f32>(-1008f, -1044f)), vec2<u32>(var_0.a, 4294967295u), Struct_4(vec2<f32>(-247f, -735f)), -1149f).b)), func_5(func_4(Struct_2(vec2<f32>(1296f, 1193f))), ~arg_3.xy << (select(vec2<u32>(arg_1.a, 0u), vec2<u32>(0u, 0u), vec2<bool>(arg_0.x, var_0.b.x)) % vec2<u32>(32u)), func_4(func_2()), _wgslsmith_div_f32(-1055f, 256f)).b.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(func_7(vec2<bool>(true, true), func_6(global0[_wgslsmith_index_u32(1u, 21u)], func_5(Struct_4(vec2<f32>(-1525f, -523f)), ~global0[_wgslsmith_index_u32(4294967295u, 21u)], func_1(Struct_2(vec2<f32>(156f, 825f)), 62286u, u_input.a.zx, vec3<f32>(-419f, -1000f, -205f)), 660f), func_5(Struct_4(vec2<f32>(612f, 782f)), global0[_wgslsmith_index_u32(~4294967295u, 21u)], func_4(Struct_2(vec2<f32>(-1044f, -2428f))), -1327f)), _wgslsmith_div_i32(-22782i, -u_input.b), vec3<u32>(~(~4294967295u), ~0u, 1u)), firstTrailingBit(_wgslsmith_sub_vec2_i32(~(~u_input.c), -max(vec2<i32>(2147483647i, u_input.b), u_input.c))));
    global0 = array<vec2<u32>, 21>();
    let var_1 = !(!(-1i <= (u_input.a.x & 1i)));
    var var_2 = Struct_3(33651u);
    let var_3 = Struct_3(var_2.a);
    let var_4 = -739f;
    var_0 = 2168i;
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(var_2.a, var_2.a, var_3.a, 4294967295u)), _wgslsmith_add_vec4_u32(select(~vec4<u32>(var_5, 54024u, 4294967295u, var_2.a), ~vec4<u32>(var_5, 3033u, 4294967295u, 4294967295u), true), vec4<u32>(66526u, 1u, var_2.a, 16016u) ^ vec4<u32>(0u, 1u, 11725u, 1u))), -(~u_input.a.x));
}

