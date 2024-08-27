struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_2(vec2<u32>(26870u, 53645u), Struct_1(vec2<i32>(-55410i, -27690i), vec2<u32>(1u, 4294967295u), 4294967295u, -952f, 0u), false)), Struct_3(Struct_2(vec2<u32>(51659u, 0u), Struct_1(vec2<i32>(27473i, 12578i), vec2<u32>(4217u, 30149u), 4294967295u, -576f, 36660u), true)), Struct_3(Struct_2(vec2<u32>(23699u, 4294967295u), Struct_1(vec2<i32>(2147483647i, 21207i), vec2<u32>(1u, 9312u), 0u, -1000f, 0u), false)), Struct_3(Struct_2(vec2<u32>(75034u, 39405u), Struct_1(vec2<i32>(1i, -2122i), vec2<u32>(13243u, 22803u), 1u, 1597f, 0u), true)));

var<private> global2: array<vec2<u32>, 25>;

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_2(vec2<u32>(4357u, 3743u), Struct_1(vec2<i32>(0i, 20005i), vec2<u32>(4294967295u, 27138u), 50075u, -311f, 624u), false)), Struct_3(Struct_2(vec2<u32>(101464u, 107015u), Struct_1(vec2<i32>(6427i, 0i), vec2<u32>(0u, 4294967295u), 1u, 134f, 1u), true)), Struct_3(Struct_2(vec2<u32>(0u, 32177u), Struct_1(vec2<i32>(-9819i, 0i), vec2<u32>(45768u, 1762u), 456u, -783f, 1u), false)), Struct_3(Struct_2(vec2<u32>(1u, 53071u), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<u32>(69506u, 0u), 55467u, -720f, 42479u), false)), Struct_3(Struct_2(vec2<u32>(0u, 0u), Struct_1(vec2<i32>(10164i, 0i), vec2<u32>(46761u, 1u), 54328u, -2222f, 923u), false)), Struct_3(Struct_2(vec2<u32>(0u, 26927u), Struct_1(vec2<i32>(73798i, -27175i), vec2<u32>(68019u, 31785u), 68504u, -654f, 28285u), false)), Struct_3(Struct_2(vec2<u32>(64939u, 2902u), Struct_1(vec2<i32>(-1i, 1i), vec2<u32>(65900u, 0u), 6485u, 383f, 4294967295u), true)), Struct_3(Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec2<i32>(25323i, 3016i), vec2<u32>(17974u, 4294967295u), 57952u, 1000f, 0u), true)), Struct_3(Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(vec2<i32>(2147483647i, 1984i), vec2<u32>(9290u, 31970u), 4294967295u, 324f, 52755u), false)), Struct_3(Struct_2(vec2<u32>(17420u, 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<u32>(44338u, 1u), 0u, -701f, 5860u), true)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(0u, 52268u), u_input.b), 25u)], Struct_1(vec2<i32>(-1i) * -vec2<i32>(u_input.a, -1i), arg_2.b, u_input.b ^ ~56232u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 342f), 101537u), global0.x));
    global3 = array<Struct_3, 10>();
    let var_1 = Struct_4(var_0.a.b);
    return vec2<u32>(321u, var_1.a.c);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = -432f;
    let var_1 = Struct_2(~global2[_wgslsmith_index_u32(firstTrailingBit(12512u) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1u, u_input.b), vec3<u32>(72582u, arg_0.a.x, arg_0.b.e)), 25u)], Struct_1(_wgslsmith_div_vec2_i32(arg_0.b.a, abs(_wgslsmith_clamp_vec2_i32(arg_0.b.a, vec2<i32>(1i, -2147483647i), vec2<i32>(8548i, u_input.a)))), ~select(func_3(vec4<u32>(10895u, 57508u, 7228u, arg_0.b.b.x), -1130f, Struct_1(arg_0.b.a, arg_0.a, 25769u, arg_0.b.d, u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.c, 4294967295u), vec2<u32>(arg_2, arg_0.b.b.x)), !global0.yz), _wgslsmith_mult_u32(abs(u_input.b), (0u | arg_0.b.e) << (~1u % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.d + arg_0.b.d), _wgslsmith_f_op_f32(step(arg_0.b.d, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b.d, -814f)) * arg_0.b.d)), 4294967295u), select(abs(45822i), _wgslsmith_div_i32(-20542i, u_input.a >> (4294967295u % 32u)), all(vec3<bool>(true, true, true))) > (u_input.a ^ 0i));
    let var_2 = vec2<i32>(arg_0.b.a.x, 39401i);
    let var_3 = vec3<i32>(var_2.x, countOneBits(-countOneBits(3685i)), 49829i);
    let var_4 = select(!select(vec3<bool>(true, global0.x & global0.x, var_1.b.a.x < -2147483647i), select(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_3, false, true), vec3<bool>(true, true, global0.x)), select(vec3<bool>(arg_1, arg_1, arg_3), vec3<bool>(false, global0.x, true), vec3<bool>(var_1.c, arg_3, true)), vec3<bool>(global0.x, false, arg_1)), false), vec3<bool>(false, select(true && !arg_3, true, global0.x), (arg_0.c && arg_0.c) && false), !select((var_1.b.a.x ^ -38392i) > _wgslsmith_clamp_i32(u_input.a, arg_0.b.a.x, 0i), all(select(vec3<bool>(true, true, arg_1), vec3<bool>(true, true, global0.x), false)), arg_3));
    return u_input.a;
}

fn func_4(arg_0: i32) -> i32 {
    var var_0 = vec3<bool>(true, ~u_input.b <= 31236u, true);
    global2 = array<vec2<u32>, 25>();
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2263f - 810f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) - _wgslsmith_f_op_f32(step(-164f, 1000f))))));
    var_0 = !select(select(vec3<bool>(true, !var_0.x, true), select(vec3<bool>(true, true, true), !vec3<bool>(global0.x, true, global0.x), !vec3<bool>(var_0.x, true, false)), vec3<bool>(true, true, arg_0 <= u_input.a)), select(!select(vec3<bool>(global0.x, var_0.x, global0.x), vec3<bool>(true, var_0.x, var_0.x), false), vec3<bool>(all(vec3<bool>(global0.x, var_0.x, false)), true, true), select(select(vec3<bool>(var_0.x, global0.x, true), vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, var_0.x, var_0.x)), select(vec3<bool>(false, false, var_0.x), vec3<bool>(global0.x, false, false), false), select(vec3<bool>(global0.x, true, true), vec3<bool>(true, false, true), vec3<bool>(true, global0.x, true)))), select(~38978u > ~u_input.b, true, var_0.x));
    return -3080i;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    global2 = array<vec2<u32>, 25>();
    let var_0 = vec4<i32>(-((~u_input.a | 1i) >> (40853u % 32u)), arg_2.a.x, arg_2.a.x, func_4(func_2(Struct_2(vec2<u32>(26593u, 43939u), Struct_1(vec2<i32>(arg_2.a.x, arg_2.a.x), vec2<u32>(u_input.b, 4294967295u), 1u, arg_1.x, arg_2.c), arg_0.x), any(select(vec3<bool>(arg_0.x, false, true), vec3<bool>(true, true, true), arg_0.x)), countOneBits(min(arg_2.e, u_input.b)), select(true, global0.x, 27181i == u_input.a))));
    let var_1 = Struct_2(reverseBits(global2[_wgslsmith_index_u32(16759u, 25u)]), Struct_1(~select(_wgslsmith_mult_vec2_i32(arg_2.a, vec2<i32>(u_input.a, -13012i)), vec2<i32>(arg_2.a.x, -1761i), global0.x), abs(vec2<u32>(~arg_2.b.x, abs(36806u))), arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.d, arg_1.x) + _wgslsmith_f_op_f32(floor(arg_1.x))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.d), arg_1.x))), func_3(~(~vec4<u32>(72577u, arg_2.b.x, arg_2.c, u_input.b)), _wgslsmith_f_op_f32(arg_2.d * _wgslsmith_f_op_f32(trunc(-285f))), arg_2).x), !all(!vec4<bool>(global0.x, global0.x, arg_0.x, false)));
    let var_2 = abs(~(~(~vec4<u32>(u_input.b, 50124u, 4294967295u, var_1.b.b.x))));
    let var_3 = -abs(~abs(reverseBits(var_0.x)));
    return 0i;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(arg_0.e, 10u)];
    global3 = array<Struct_3, 10>();
    var var_1 = !select(vec2<bool>(var_0.a.b.d < _wgslsmith_f_op_f32(-var_0.a.b.d), global0.x), select(select(select(global0.yx, global0.yy, true), vec2<bool>(global0.x, true), var_0.a.c || global0.x), select(global0.zz, !vec2<bool>(true, global0.x), !vec2<bool>(global0.x, var_0.a.c)), var_0.a.c), !(!var_0.a.c));
    global0 = !vec3<bool>(select(var_0.a.c, true, false) | all(vec3<bool>(false, false, global0.x)), var_1.x, !any(!vec3<bool>(var_0.a.c, false, false)));
    let var_2 = !(!(all(vec4<bool>(true, true, true, false)) & global0.x));
    return arg_0;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec4_u32((~select(vec4<u32>(4294967295u, arg_1.c, 63933u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<bool>(global0.x, false, global0.x, global0.x)) & vec4<u32>(arg_1.e, 1u, ~0u, ~0u)) & ~(~(vec4<u32>(0u, 20199u, arg_0.a.c, arg_0.a.c) >> (vec4<u32>(arg_1.b.x, u_input.b, 6753u, arg_1.b.x) % vec4<u32>(32u)))), vec4<u32>(arg_1.c, arg_1.b.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_0.a.c, 0u, arg_1.c), vec4<u32>(arg_0.a.c, u_input.b, 730u, 4294967295u)), arg_1.e), arg_0.a.c), vec4<u32>(min(arg_1.b.x ^ 1u, 28964u), 61321u | func_5(Struct_1(arg_1.a, arg_1.b, 0u, -1869f, arg_1.c), Struct_4(Struct_1(arg_1.a, arg_0.a.b, u_input.b, arg_1.d, 1u)), ~vec4<u32>(arg_1.e, arg_0.a.b.x, arg_1.b.x, 1u), arg_1.b.x).c, 4294967295u, arg_0.a.e));
    var var_1 = global3[_wgslsmith_index_u32(min(57436u, func_5(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.a.x, arg_0.a.a.x), vec2<i32>(0i, -26961i)), reverseBits(arg_1.b), 43842u, -854f, _wgslsmith_add_u32(arg_1.c, 69805u)), arg_0, ~(~vec4<u32>(u_input.b, var_0.x, arg_1.e, arg_1.e)), select(_wgslsmith_sub_u32(arg_1.e, arg_1.e), _wgslsmith_div_u32(84905u, arg_0.a.e), all(vec3<bool>(true, false, global0.x)))).c) ^ var_0.x, 10u)];
    let var_2 = ~(~(~(~var_1.a.b.a.x))) & (u_input.a << (14299u % 32u));
    let var_3 = arg_1.b;
    var var_4 = arg_0.a.d;
    return Struct_2(var_0.zy, func_5(arg_0.a, Struct_4(var_1.a.b), vec4<u32>(arg_0.a.b.x, 101371u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, arg_0.a.b.x, arg_1.e, 99062u), vec4<u32>(arg_0.a.b.x, arg_0.a.c, arg_1.e, u_input.b) | vec4<u32>(var_3.x, var_3.x, arg_1.b.x, var_3.x)), ~39740u), 56052u), !any(select(vec3<bool>(var_1.a.c, var_1.a.c, true), vec3<bool>(true, true, true), var_1.a.b.d > 855f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_4(Struct_1(~(~vec2<i32>(-5265i, -34569i)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), global2[_wgslsmith_index_u32(u_input.b, 25u)]), vec2<u32>(u_input.b, u_input.b)), 0u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1521f - -1127f))), u_input.b)), func_5(Struct_1(vec2<i32>(func_1(vec4<bool>(false, true, global0.x, false), vec3<f32>(-1061f, -230f, 1562f), Struct_1(vec2<i32>(u_input.a, -53417i), global2[_wgslsmith_index_u32(u_input.b, 25u)], 34344u, -1033f, u_input.b), true), func_1(vec4<bool>(false, true, global0.x, false), vec3<f32>(568f, 1000f, -435f), Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<u32>(u_input.b, 0u), u_input.b, 1000f, u_input.b), true)), vec2<u32>(_wgslsmith_add_u32(21047u, 0u), ~1u), 8540u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-785f + -1799f))), _wgslsmith_sub_u32(9293u, u_input.b) << (~9459u % 32u)), Struct_4(Struct_1(vec2<i32>(-1i, -85094i), ~vec2<u32>(0u, 0u), u_input.b, -1263f, countOneBits(5964u))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 47112u, u_input.b), vec4<u32>(36092u, 43573u, u_input.b, 32987u), vec4<u32>(u_input.b, 13730u, u_input.b, 1u))), ~u_input.b));
    global2 = array<vec2<u32>, 25>();
    let var_1 = -327f;
    global0 = !vec3<bool>(var_0.c, !all(!vec3<bool>(global0.x, global0.x, true)), global0.x);
    let var_2 = global3[_wgslsmith_index_u32(~(~var_0.b.b.x), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.a.x, max(~var_0.b.e, u_input.b)), _wgslsmith_f_op_f32(-var_2.a.b.d), ~var_2.a.a.x);
}

