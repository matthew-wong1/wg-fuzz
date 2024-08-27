struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, false, false, true, true);

var<private> global1: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = vec2<i32>(min(~firstTrailingBit(~593i), _wgslsmith_div_i32(u_input.a, u_input.a)), ~min(0i, 1i) >> (u_input.b.x % 32u));
    let var_1 = 2951f;
    let var_2 = vec4<f32>(-1957f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-691f, var_1) + _wgslsmith_f_op_f32(var_1 + var_1)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1))))), _wgslsmith_f_op_f32(-var_1), 1000f);
    var var_3 = Struct_1(var_0.x, -(~(-1i)) != u_input.a);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - 312f), _wgslsmith_f_op_f32(abs(1000f))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(200f - _wgslsmith_f_op_f32(func_3()));
    let var_0 = !(!vec2<bool>(false, arg_3.a.b));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -181f);
    let var_2 = !(-u_input.a > (_wgslsmith_sub_i32(reverseBits(arg_2.a.a), arg_3.a.a) >> (arg_3.b.x % 32u)));
    var var_3 = 63091i;
    return arg_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    return 0u;
}

fn func_5(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = func_4(func_2(_wgslsmith_add_u32(u_input.b.x, ~4294967295u), ~firstLeadingBit(~arg_1), Struct_3(func_2(u_input.b.x, _wgslsmith_mult_u32(83322u, u_input.b.x), Struct_3(Struct_1(3603i, arg_0), vec4<u32>(arg_1, u_input.b.x, 4294967295u, 0u)), Struct_3(Struct_1(u_input.c.x, true), u_input.b)), vec4<u32>(53359u, ~u_input.b.x, u_input.b.x, 1u)), Struct_3(func_2(~arg_1, _wgslsmith_mult_u32(1u, 31853u), Struct_3(Struct_1(u_input.c.x, false), vec4<u32>(25538u, 1u, u_input.b.x, 4294967295u)), Struct_3(Struct_1(u_input.d.x, true), u_input.b)), ~vec4<u32>(arg_1, 0u, 34466u, u_input.b.x))), Struct_1(u_input.d.x, _wgslsmith_clamp_u32(arg_1, ~0u, 35898u) <= ~(u_input.b.x << (27563u % 32u))), func_2(u_input.b.x, _wgslsmith_add_u32(14207u, min(arg_1 & u_input.b.x, 0u >> (u_input.b.x % 32u))), Struct_3(func_2(~38667u, 2683u, Struct_3(Struct_1(u_input.d.x, true), vec4<u32>(arg_1, 1u, arg_1, 44647u)), Struct_3(Struct_1(u_input.a, arg_0), u_input.b)), firstLeadingBit(vec4<u32>(93176u, 96574u, u_input.b.x, 29120u))), Struct_3(Struct_1(u_input.a, true), ~(vec4<u32>(arg_1, 828u, 4294967295u, u_input.b.x) << (u_input.b % vec4<u32>(32u))))).b, vec4<i32>(-1i) * -min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 0i, 1i, u_input.c.x), vec4<i32>(u_input.a, u_input.c.x, u_input.a, 64541i)), vec4<i32>(0i, -80201i, -1i, u_input.d.x)));
    var var_1 = select(vec4<bool>(func_2(59281u, arg_1, Struct_3(Struct_1(u_input.d.x, arg_0), u_input.b), Struct_3(Struct_1(-76554i, arg_0), u_input.b)).b, ~61749u <= ~(~var_0), (true | !arg_0) & global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), select(!select(select(vec4<bool>(arg_0, global0[_wgslsmith_index_u32(7814u, 5u)], false, global0[_wgslsmith_index_u32(var_0, 5u)]), vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_0, arg_0, arg_0, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0, true, global0[_wgslsmith_index_u32(39831u, 5u)], false), vec4<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], arg_0, global0[_wgslsmith_index_u32(arg_1, 5u)]), false)), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], arg_0, arg_0)), !vec4<bool>(false & arg_0, true, arg_1 <= 4294967295u, true)), select(true, true & (59687u != _wgslsmith_mod_u32(arg_1, 1u)), func_2(18490u, 4294967295u, Struct_3(Struct_1(u_input.c.x, arg_0), ~u_input.b), Struct_3(func_2(var_0, 21476u, Struct_3(Struct_1(2147483647i, false), vec4<u32>(1u, 4294967295u, 47988u, arg_1)), Struct_3(Struct_1(2147483647i, false), u_input.b)), vec4<u32>(0u, var_0, 11713u, arg_1))).b));
    var var_2 = 30059i;
    let var_3 = func_2(~28381u, 0u, Struct_3(func_2(var_0, ~73529u, Struct_3(func_2(0u, 76795u, Struct_3(Struct_1(u_input.d.x, var_1.x), u_input.b), Struct_3(Struct_1(u_input.c.x, arg_0), vec4<u32>(arg_1, arg_1, arg_1, 1u))), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)), Struct_3(Struct_1(-6827i, false), ~u_input.b)), vec4<u32>(_wgslsmith_sub_u32(arg_1 & var_0, ~arg_1), 72703u, var_0, u_input.b.x)), Struct_3(func_2(1u, _wgslsmith_mod_u32(func_4(Struct_1(u_input.c.x, false), Struct_1(u_input.a, var_1.x), false, vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.a)), arg_1), Struct_3(func_2(85805u, var_0, Struct_3(Struct_1(u_input.a, true), vec4<u32>(26653u, 11848u, var_0, u_input.b.x)), Struct_3(Struct_1(u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 5u)]), u_input.b)), select(vec4<u32>(5390u, arg_1, var_0, var_0), u_input.b, vec4<bool>(var_1.x, true, true, global0[_wgslsmith_index_u32(0u, 5u)]))), Struct_3(Struct_1(0i, global0[_wgslsmith_index_u32(2251u, 5u)]), ~u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(47316u, 4294967295u, 1u, 49467u), reverseBits(u_input.b)) ^ vec4<u32>(var_0, u_input.b.x, 30123u, countOneBits(var_0))));
    global1 = -1037f;
    return Struct_2(var_3.a, Struct_1(_wgslsmith_clamp_i32(-2147483647i, -reverseBits(var_3.a), (u_input.c.x >> (18333u % 32u)) ^ var_3.a), firstLeadingBit(reverseBits(0u)) < _wgslsmith_dot_vec4_u32(max(u_input.b, u_input.b), u_input.b)), ~var_0);
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(~arg_0.b.a, func_2(u_input.b.x, 15533u, Struct_3(arg_0.b, u_input.b), Struct_3(arg_0.b, u_input.b)).a), 50434i, _wgslsmith_clamp_i32(arg_0.b.a, _wgslsmith_add_i32(u_input.d.x, u_input.d.x), _wgslsmith_mod_i32(u_input.d.x, 21956i))), ~vec3<i32>(u_input.d.x << (23859u % 32u), firstTrailingBit(u_input.c.x), arg_0.a)), Struct_1(u_input.a, arg_0.b.b), _wgslsmith_sub_u32(arg_0.c, arg_0.c << (0u % 32u)));
    let var_1 = Struct_1(-50732i, var_0.b.b == !var_0.b.b);
    let var_2 = abs(arg_0.c);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-757f, -174f, true)) + -582f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1027f)) - 1177f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -826f)))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(var_3.x, 2776f)), 392f, _wgslsmith_f_op_f32(ceil(-849f)), _wgslsmith_f_op_f32(func_3())), vec4<f32>(_wgslsmith_f_op_f32(ceil(1055f)), _wgslsmith_f_op_f32(trunc(566f)), _wgslsmith_f_op_f32(var_3.x * 421f), _wgslsmith_f_op_f32(abs(678f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 1064f, var_3.x, var_3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -2002f, -674f))))));
    return Struct_3(func_5(true, arg_0.c).b, _wgslsmith_mult_vec4_u32(vec4<u32>(var_2, arg_0.c, abs(~u_input.b.x), var_0.c), u_input.b));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<u32>) -> Struct_3 {
    return func_6(func_5(true != !(!global0[_wgslsmith_index_u32(arg_1, 5u)]), ~func_4(func_2(arg_1, 1u, Struct_3(Struct_1(u_input.c.x, global0[_wgslsmith_index_u32(87986u, 5u)]), u_input.b), Struct_3(Struct_1(u_input.c.x, global0[_wgslsmith_index_u32(37174u, 5u)]), vec4<u32>(4294967295u, 0u, arg_2.x, u_input.b.x))), func_2(4294967295u, arg_1, Struct_3(Struct_1(-39471i, global0[_wgslsmith_index_u32(0u, 5u)]), vec4<u32>(arg_1, u_input.b.x, 4294967295u, 4294967295u)), Struct_3(Struct_1(1i, true), u_input.b)), !global0[_wgslsmith_index_u32(u_input.b.x, 5u)], vec4<i32>(u_input.c.x, u_input.c.x, 69261i, u_input.a))));
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    var var_0 = ~arg_1.b & vec4<u32>(20285u, firstTrailingBit(~u_input.b.x) | 4294967295u, 1u, 1u);
    var_0 = _wgslsmith_mult_vec4_u32(u_input.b, arg_1.b);
    let var_1 = _wgslsmith_f_op_f32(-1001f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_2 = vec4<u32>(~(max(var_0.x, 4294967295u) >> (func_6(Struct_2(u_input.a, Struct_1(arg_1.a.a, arg_1.a.b), arg_0.x)).b.x % 32u)) | countOneBits(arg_1.b.x), _wgslsmith_mod_u32(4294967295u, 36747u), func_6(func_5(true, 1u)).b.x, 1u);
    global0 = array<bool, 5>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    global1 = _wgslsmith_f_op_f32(func_7(firstTrailingBit(select(vec3<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x), vec3<u32>(0u, 1u, u_input.b.x) & vec3<u32>(u_input.b.x, 4294967295u, 31566u), true)), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2729f, 1708f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1313f, -2051f)))), 4294967295u, u_input.b.wx)));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1659f + _wgslsmith_f_op_f32(min(-882f, _wgslsmith_f_op_f32(-705f * 622f)))))), -648f));
    global1 = 763f;
    var var_0 = vec4<u32>(~u_input.b.x, 0u, _wgslsmith_dot_vec2_u32(u_input.b.yz & vec2<u32>(~0u, 4294967295u), ~vec2<u32>(func_1(vec2<f32>(-1838f, 867f), 4294967295u, u_input.b.zy).b.x, u_input.b.x)), u_input.b.x ^ ~_wgslsmith_sub_u32(18174u, select(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 5u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32((-1i & func_6(Struct_2(-15177i, Struct_1(2746i, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), 1u)).a.a) | u_input.c.x, u_input.d.x), u_input.b.x, u_input.b.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-192f, -793f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-849f))))));
}

