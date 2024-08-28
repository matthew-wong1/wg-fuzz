struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(14203i, 1i), vec2<i32>(49596i, -49837i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(75684i, -3878i), vec2<i32>(-29406i, 1i), vec2<i32>(972i, 4685i), vec2<i32>(-23773i, 1i), vec2<i32>(0i, -1i), vec2<i32>(0i, 40527i), vec2<i32>(1i, -31169i), vec2<i32>(i32(-2147483648), 8155i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -9011i), vec2<i32>(1i, 0i), vec2<i32>(63669i, 1i), vec2<i32>(58778i, 1i), vec2<i32>(-39563i, 955i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(1i, -2393i), vec2<i32>(26553i, i32(-2147483648)), vec2<i32>(2147483647i, -9093i), vec2<i32>(0i, 8479i), vec2<i32>(-56264i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 22483i), vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, 18021i), vec2<i32>(12131i, -1i), vec2<i32>(23069i, -1i), vec2<i32>(-41993i, -366i));

var<private> global2: array<f32, 6>;

var<private> global3: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(-1i, 1i), vec2<i32>(0i, 12254i), vec2<i32>(i32(-2147483648), -17284i), vec2<i32>(-2714i, -6775i), vec2<i32>(-1i, 43696i), vec2<i32>(-6666i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(16817i, -1i), vec2<i32>(22512i, i32(-2147483648)), vec2<i32>(-58282i, i32(-2147483648)), vec2<i32>(-31417i, 33581i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> bool {
    let var_0 = 1u;
    let var_1 = _wgslsmith_sub_u32(~1u, ~4294967295u);
    global0 = array<vec4<u32>, 20>();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~0u, 6u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 6u)]) + global2[_wgslsmith_index_u32(var_1, 6u)]) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1556f + global2[_wgslsmith_index_u32(var_1, 6u)]))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(228f * -357f)) + global2[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(581f + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0, 6u)], -385f)), global2[_wgslsmith_index_u32(~(~var_1), 6u)], any(vec2<bool>(false, false)) & true))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -20097i, 58159i, 1i) & vec4<i32>(-57822i, -2147483647i, u_input.a.x, -1i), max(vec4<i32>(1i, 1255i, 33486i, u_input.a.x), vec4<i32>(1325i, 22927i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, 20170i, -1i, u_input.a.x)) ^ vec4<i32>(~u_input.a.x, -u_input.a.x, -u_input.a.x, u_input.a.x), 0i, abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 73564u, 7523u), vec3<u32>(var_0, 34823u, 13050u), true), vec3<u32>(4294967295u, var_1, var_1)))), !select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), _wgslsmith_add_i32(u_input.a.x, u_input.a.x) <= 1i));
    return false;
}

fn func_4(arg_0: Struct_4) -> i32 {
    let var_0 = max(reverseBits(reverseBits(select(arg_0.a.c, _wgslsmith_mult_i32(arg_0.a.a.a.a.x, arg_0.a.e.b), true))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(-87454i, u_input.a.x, 2147483647i)) >> (~vec3<u32>(arg_0.a.e.c, arg_0.a.d, 14797u) % vec3<u32>(32u)), arg_0.a.e.a.zyx), 1i));
    global2 = array<f32, 6>();
    var var_1 = _wgslsmith_clamp_i32(arg_0.a.a.a.a.x, ~arg_0.a.b.x, 1i);
    var var_2 = _wgslsmith_f_op_f32(floor(-1359f));
    var var_3 = Struct_1(vec4<i32>(i32(-1i) * -2147483647i, -5216i, abs(u_input.a.x << (13797u % 32u)), -35113i), firstTrailingBit(firstTrailingBit(var_0)), arg_0.a.e.c);
    return _wgslsmith_div_i32(_wgslsmith_add_i32(-u_input.a.x, -(~(-2147483647i))), _wgslsmith_mult_i32(reverseBits(_wgslsmith_mult_i32(abs(arg_0.a.c), var_3.a.x)), _wgslsmith_clamp_i32(select(firstLeadingBit(arg_0.a.c), _wgslsmith_add_i32(1i, u_input.a.x), any(vec4<bool>(false, arg_0.a.a.b.x, false, arg_0.b))), -(~39179i), reverseBits(~(-1i)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec4<f32> {
    var var_0 = Struct_1(vec4<i32>(4117i, u_input.a.x, func_4(Struct_4(Struct_3(Struct_2(Struct_1(vec4<i32>(0i, u_input.a.x, 1i, -1985i), u_input.a.x, 20213u), vec3<bool>(false, true, arg_1)), vec3<i32>(21585i, u_input.a.x, 2147483647i), u_input.a.x, arg_0.x, Struct_1(vec4<i32>(u_input.a.x, 29960i, u_input.a.x, u_input.a.x), u_input.a.x, arg_0.x)), func_3(), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 6u)], 260f, 857f, global2[_wgslsmith_index_u32(52846u, 6u)]) * vec4<f32>(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(arg_0.x, 6u)], 761f, 1220f)))), u_input.a.x), 1i, arg_0.x);
    return vec4<f32>(925f, global2[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1248f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~1u, 6u)]))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(46048u, 6u)])))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    global0 = array<vec4<u32>, 20>();
    global1 = array<vec2<i32>, 31>();
    var var_0 = Struct_4(arg_2, true, _wgslsmith_f_op_vec4_f32(func_2(min(abs(~vec3<u32>(arg_3, 43379u, arg_0.a.c)), vec3<u32>(min(1u, 54050u), ~arg_0.a.c, 1u)), any(arg_1.a.b))));
    var var_1 = min(~arg_2.a.a.c, arg_3);
    var_1 = _wgslsmith_mult_u32(arg_3, 44940u);
    return arg_1.e;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_2.x))));
    var var_1 = _wgslsmith_mult_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.c, arg_1.c, 0u), vec3<u32>(arg_1.c, arg_1.c, 36912u))) | reverseBits(vec3<u32>(18447u, arg_1.c << (4294967295u % 32u), 19451u)), (select(vec3<u32>(arg_1.c, arg_1.c, arg_1.c), ~vec3<u32>(arg_1.c, arg_1.c, 1u), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))) << (select(vec3<u32>(arg_1.c, 0u, arg_1.c) ^ vec3<u32>(1u, arg_1.c, arg_1.c), abs(vec3<u32>(arg_1.c, arg_1.c, 59731u)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)) % vec3<u32>(32u))) ^ ~vec3<u32>(arg_1.c | 11370u, ~arg_1.c, countOneBits(1u)));
    let var_2 = u_input.a.x;
    let var_3 = global0[_wgslsmith_index_u32(1u, 20u)];
    let var_4 = _wgslsmith_clamp_vec4_i32(func_1(Struct_2(arg_1, !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), Struct_3(Struct_2(Struct_1(vec4<i32>(31850i, arg_0, arg_1.b, -2147483647i), -79333i, 34236u), vec3<bool>(true, true, true)), abs(vec3<i32>(u_input.a.x, u_input.a.x, arg_1.b)), 2147483647i, var_1.x, func_1(Struct_2(Struct_1(arg_1.a, arg_0, 34679u), vec3<bool>(false, false, true)), Struct_3(Struct_2(arg_1, vec3<bool>(true, false, true)), vec3<i32>(var_2, -50524i, u_input.a.x), 46899i, 0u, Struct_1(arg_1.a, var_2, 49563u)), Struct_3(Struct_2(arg_1, vec3<bool>(false, false, false)), u_input.a, arg_1.a.x, 4294967295u, arg_1), 1u)), Struct_3(Struct_2(func_1(Struct_2(arg_1, vec3<bool>(false, false, false)), Struct_3(Struct_2(arg_1, vec3<bool>(false, false, false)), vec3<i32>(-1i, -20344i, var_2), u_input.a.x, 73031u, arg_1), Struct_3(Struct_2(arg_1, vec3<bool>(true, false, true)), u_input.a, arg_0, var_1.x, Struct_1(vec4<i32>(-12351i, arg_1.b, u_input.a.x, -65739i), var_2, 0u)), 4294967295u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), -vec3<i32>(-31243i, u_input.a.x, 5738i), -_wgslsmith_mod_i32(u_input.a.x, 49603i), ~_wgslsmith_add_u32(1u, 0u), arg_1), abs(768u)).a, ~arg_1.a, arg_1.a);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(arg_2.x + arg_2.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 6u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(abs(42380u), 6u)];
    let var_1 = !vec2<bool>((-2147483647i < u_input.a.x) || (global2[_wgslsmith_index_u32(~4294967295u, 6u)] < _wgslsmith_f_op_f32(1447f - 521f)), _wgslsmith_f_op_f32(func_5(max(-41062i, 52163i), func_1(Struct_2(Struct_1(vec4<i32>(-8231i, 2147483647i, -2147483647i, -9099i), u_input.a.x, 4294967295u), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(vec4<i32>(13130i, u_input.a.x, 29864i, -7514i), u_input.a.x, 1u), vec3<bool>(true, true, true)), vec3<i32>(u_input.a.x, u_input.a.x, 0i), -10544i, 1u, Struct_1(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -2147483647i), 1i, 43752u)), Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 412i, u_input.a.x), 1i, 26380u), vec3<bool>(false, true, false)), u_input.a, u_input.a.x, 1u, Struct_1(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), u_input.a.x, 51729u)), 40685u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(26409u, 6u)], -222f, -725f, -808f)))) == -815f);
    global2 = array<f32, 6>();
    global2 = array<f32, 6>();
    global0 = array<vec4<u32>, 20>();
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(~vec3<u32>(1u, 1u, 1u), var_1.x)).wz)));
    let x = u_input.a;
    s_output = StorageBuffer(-763i, 2147483647i, -575f, 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(410f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
}

