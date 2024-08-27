struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(0u, 1u, 4294967295u));

var<private> global4: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> vec3<u32> {
    let var_0 = Struct_5(Struct_3(Struct_1(u_input.a, global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 39392u), 1u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-132f, -1028f, 357f))), _wgslsmith_f_op_f32(step(-1000f, 1000f))), Struct_1(global2.x >> (~u_input.c.x % 32u), (vec3<u32>(u_input.b.x, 0u, 4294967295u) << (vec3<u32>(1u, 21589u, 4294967295u) % vec3<u32>(32u))) | countOneBits(u_input.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(642f, 1000f, 1273f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, 1777f, -954f)), !vec3<bool>(false, arg_2, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-161f, 1000f)))), _wgslsmith_add_vec4_u32(max(vec4<u32>(39944u, global2.x, global2.x, 42825u), vec4<u32>(4294967295u, 0u, arg_3, u_input.a)), vec4<u32>(1u, 58831u, 0u, u_input.b.x)) >> (firstLeadingBit(vec4<u32>(4294967295u, 28236u, 11620u, arg_3)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f - -868f) - _wgslsmith_f_op_f32(-2019f * -863f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(2037f)), 535f))), ~arg_3), true, 33244u, !(!vec3<bool>(true, any(vec4<bool>(false, arg_1.x, arg_2, true)), false)), ~u_input.d);
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.b.c.x);
    global3 = array<vec3<u32>, 1>();
    let var_2 = (u_input.d | 7431i) ^ -(i32(-1i) * -1i);
    var var_3 = Struct_1(_wgslsmith_mod_u32(global2.x, global2.x), firstTrailingBit(var_0.a.b.b ^ global3[_wgslsmith_index_u32(~arg_3, 1u)]) << (_wgslsmith_clamp_vec3_u32(u_input.c, ~vec3<u32>(var_0.a.e, 0u, 26748u), _wgslsmith_div_vec3_u32(~global3[_wgslsmith_index_u32(arg_3, 1u)], var_0.a.c.wyw)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-349f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-259f, var_1) * _wgslsmith_f_op_f32(-var_1)), 1321f), var_0.a.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + 327f) - _wgslsmith_f_op_f32(select(-1099f, 623f, true))))));
    return vec3<u32>(abs(var_0.a.b.b.x), ~4294967295u, ~7724u);
}

fn func_2() -> f32 {
    global3 = array<vec3<u32>, 1>();
    global0 = countOneBits(~global2.x);
    var var_0 = Struct_5(Struct_3(Struct_1(_wgslsmith_mult_u32(8589u, select(u_input.c.x, global2.x, false)), func_3(-vec3<i32>(10234i, u_input.d, 0i), vec2<bool>(true, true), any(vec3<bool>(true, false, false)), global2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(497f, -1404f, -2242f), vec3<f32>(-1023f, 482f, -1366f))), 480f), Struct_1(min(firstLeadingBit(8442u), max(16801u, global2.x)), firstLeadingBit(func_3(vec3<i32>(u_input.d, 35985i, u_input.d), global4[_wgslsmith_index_u32(1u, 20u)], true, global2.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1630f, 1000f, 1085f))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1323f - 1125f))), min(vec4<u32>(17257u, u_input.b.x & u_input.c.x, 34112u, ~global2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, global2.x, 60904u, u_input.a), vec4<u32>(u_input.a, 1u, 1u, 4294967295u) >> (vec4<u32>(14335u, 0u, global2.x, global2.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(abs(1522f)), _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, global2.x), u_input.c.xx), ~u_input.c.xz), _wgslsmith_mod_u32(0u, 78658u))), true, min(abs(firstTrailingBit(~u_input.c.x)), countOneBits(~(~global2.x))), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), _wgslsmith_add_i32(u_input.d, -abs(u_input.d)));
    global3 = array<vec3<u32>, 1>();
    var var_1 = var_0.a;
    return 1f;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    let var_0 = select(~vec3<u32>(global2.x, u_input.c.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 29765u, 24910u, u_input.b.x), vec4<u32>(0u, 1u, 0u, arg_1.e)), 9301u & arg_1.c.x)), ~(~(~firstLeadingBit(vec3<u32>(arg_1.a.b.x, arg_1.b.b.x, global2.x)))), arg_0.a);
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))) >= arg_1.d;
    var var_1 = arg_1.a;
    let var_2 = vec2<u32>(~(~77667u), ~1u) >> (min(vec2<u32>(6694u, arg_1.b.b.x) << (u_input.b.yy % vec2<u32>(32u)), var_1.b.xx) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_2))));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool) -> vec3<bool> {
    var var_0 = Struct_4(vec3<u32>(global2.x >> (37783u % 32u), ~global2.x >> (min(firstLeadingBit(92941u), 4294967295u) % 32u), ~u_input.b.x >> (select(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 26171u), u_input.c.x, 0u > global2.x) % 32u)), countOneBits(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(34692u, 14675u, u_input.c.x, 4294967295u), vec4<u32>(2974u, global2.x, u_input.a, u_input.b.x), vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.b.x)))), Struct_3(Struct_1(12598u, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, global2.x, global2.x), vec3<u32>(arg_1.x, global2.x, 1u), vec3<u32>(139227u, 4294967295u, 39889u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1110f, -1000f, 2077f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f))), Struct_1(46194u, firstTrailingBit(~vec3<u32>(global2.x, arg_1.x, u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1228f), _wgslsmith_f_op_f32(-854f + -1576f), _wgslsmith_f_op_f32(f32(-1f) * -413f)), _wgslsmith_f_op_f32(round(-910f))), reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(59285u, 80368u, 20211u, 15162u), vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 1u)), select(vec4<u32>(58580u, 11952u, global2.x, u_input.a), vec4<u32>(arg_1.x, u_input.a, u_input.c.x, arg_1.x), arg_2))), _wgslsmith_div_f32(-968f, 1091f), _wgslsmith_div_u32(arg_1.x, u_input.b.x)));
    var var_1 = select(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global3[_wgslsmith_index_u32(5272u, 1u)], vec3<u32>(u_input.b.x, arg_1.x, 1u)) ^ min(var_0.a, vec3<u32>(0u, arg_1.x, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.x, 4294967295u, 1u), vec3<u32>(var_0.c.a.b.x, u_input.a, global2.x)) & var_0.c.b.b)), select(~(~u_input.c.x), ~_wgslsmith_div_u32(countOneBits(1u), global2.x), false), false);
    var_0 = Struct_4(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.c.x, min(1u, u_input.a)), ~(var_0.c.e | 4294967295u)), 1u, abs(~_wgslsmith_dot_vec3_u32(var_0.b.yzz, var_0.a))), var_0.c.c << (~_wgslsmith_add_vec4_u32(~vec4<u32>(global2.x, 0u, 28627u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(35063u, 4294967295u, var_0.c.a.a, u_input.c.x), vec4<u32>(global2.x, var_0.b.x, global2.x, 86730u))) % vec4<u32>(32u)), var_0.c);
    let var_2 = vec4<u32>(func_3(firstTrailingBit(vec3<i32>(-305i, _wgslsmith_add_i32(-13554i, u_input.d), u_input.d)), !global4[_wgslsmith_index_u32(4294967295u, 20u)], !select(true, true, any(vec2<bool>(true, true))), _wgslsmith_add_u32(~arg_1.x >> ((arg_1.x ^ 4294967295u) % 32u), ~(~0u))).x, 1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.a.x, arg_1.x), abs(~10399u)), arg_1.x);
    var_1 = ~46308u;
    return !vec3<bool>(!all(vec4<bool>(arg_0.a, arg_2, arg_2, true)) & !arg_0.a, func_1(func_1(arg_0, var_0.c, _wgslsmith_f_op_f32(var_0.c.d + 501f)), Struct_3(Struct_1(var_0.a.x, vec3<u32>(10836u, 4294967295u, 1u), vec3<f32>(var_0.c.b.c.x, 2182f, var_0.c.a.c.x), var_0.c.b.c.x), Struct_1(0u, var_0.c.a.b, vec3<f32>(1717f, var_0.c.a.c.x, var_0.c.b.d), 186f), ~vec4<u32>(var_0.b.x, var_2.x, 57446u, 8876u), var_0.c.d, 0u), -1832f).a, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global2 = _wgslsmith_mod_vec2_u32(u_input.b.xz, u_input.b.yy);
    var var_1 = ~(~(~(~u_input.a)));
    let var_2 = !(!(!func_4(func_1(Struct_2(true), Struct_3(Struct_1(u_input.c.x, u_input.c, vec3<f32>(473f, 327f, -925f), 338f), Struct_1(31557u, global3[_wgslsmith_index_u32(var_0, 1u)], vec3<f32>(-178f, -226f, -863f), 102f), vec4<u32>(0u, u_input.c.x, var_0, u_input.c.x), 2074f, 4294967295u), 831f), max(u_input.c.zy, u_input.b.yz), var_0 >= global2.x)));
    global0 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -44053i), abs(vec2<i32>(u_input.d, u_input.d))), vec2<i32>(~2147483647i, -1i), vec2<i32>(u_input.d, abs(u_input.d))), ~vec2<i32>(u_input.d, 0i) | _wgslsmith_clamp_vec2_i32(min(vec2<i32>(-15578i, -1i), vec2<i32>(u_input.d, -36923i)), countOneBits(vec2<i32>(u_input.d, u_input.d)), -vec2<i32>(u_input.d, u_input.d))), _wgslsmith_mod_vec4_i32(abs((vec4<i32>(u_input.d, 657i, u_input.d, u_input.d) | vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)) >> (~vec4<u32>(51135u, 4294967295u, 1u, var_0) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32((vec4<i32>(u_input.d, 1i, -13981i, -37816i) ^ vec4<i32>(-1i, 1i, u_input.d, -1i)) & -vec4<i32>(29730i, u_input.d, -1i, u_input.d), -(~vec4<i32>(u_input.d, 0i, u_input.d, -36553i)))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 0u, 77340u), vec3<u32>(u_input.b.x, var_0, 9306u)), countOneBits(reverseBits(global3[_wgslsmith_index_u32(32212u, 1u)]))) & (select(u_input.b, global3[_wgslsmith_index_u32(var_0 >> (12077u % 32u), 1u)], false) >> (abs(~vec3<u32>(59680u, 0u, 1u)) % vec3<u32>(32u))));
}

