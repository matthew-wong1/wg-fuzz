struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27>;

var<private> global1: Struct_1 = Struct_1(405f, vec2<u32>(7688u, 4294967295u), 4294967295u);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(153f, vec2<u32>(4294967295u, 4294967295u), 0u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = ~abs(0i);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(471f, global2.a, global1.a, global2.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(808f, 147f, -2565f, global2.a), vec4<f32>(global3.a, var_1.a, var_1.a, 2441f), vec4<bool>(true, true, false, false)))))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-1091f - _wgslsmith_f_op_f32(min(var_1.a, 126f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-694f, -268f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.xw, vec2<f32>(global3.a, global2.a), vec2<bool>(true, true))) * vec2<f32>(-537f, global1.a)))))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -990f))), vec2<u32>(global1.b.x, ~arg_0.c), _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.b.x, abs(global3.b.x)), ~firstTrailingBit(1u))), _wgslsmith_f_op_vec4_f32(sign(var_2)), Struct_1(-2147f, _wgslsmith_add_vec2_u32(select(global1.b, ~var_1.b, false), reverseBits(select(vec2<u32>(0u, global3.b.x), var_1.b, true))), 120129u), arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(u_input.d.yw, u_input.d.wz | u_input.e, select(vec2<bool>(true, true), vec2<bool>(false, false), true)), _wgslsmith_mod_vec2_i32(u_input.e, u_input.e) ^ (u_input.d.zz << (var_1.b % vec2<u32>(32u)))), min(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -18641i), vec2<i32>(var_0, var_0)), vec2<i32>(var_0, -10016i)), abs(~vec2<i32>(var_0, 25941i)))));
    return _wgslsmith_add_u32(~0u, abs(firstLeadingBit(_wgslsmith_sub_u32(firstLeadingBit(u_input.a), _wgslsmith_sub_u32(0u, 0u)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588f * global1.a)))), ~(vec2<u32>(func_3(Struct_1(arg_0.x, vec2<u32>(5040u, u_input.c), global3.b.x)), global2.c) >> (global3.b % vec2<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~global1.c, abs(global3.c), ~1u), reverseBits(1u)) & (1u | global3.c));
    global3 = Struct_1(1354f, _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(51156u, global2.b.x), 1u), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global1.b, vec2<u32>(global2.b.x, 1u)), vec2<u32>(u_input.c, global1.b.x))), abs(reverseBits(var_0.b)) & ~(~vec2<u32>(global3.c, u_input.c))), ~(var_0.b.x >> (global2.c % 32u)));
    let var_1 = ~54948i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-396f - var_0.a));
    let var_3 = arg_1.yy;
    return Struct_2(Struct_1(-289f, global3.b, global1.b.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -767f, 1267f, 433f))), Struct_1(arg_0.x, vec2<u32>(1u, 1u ^ min(global3.c, 38194u)), 0u), Struct_1(_wgslsmith_div_f32(-1854f, -491f), global2.b, u_input.c), _wgslsmith_dot_vec3_i32(u_input.d.yyy, _wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(u_input.d.xzx, u_input.d.wwy), -vec3<i32>(var_1, u_input.e.x, -6697i))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = false;
    var var_1 = vec4<u32>(global3.c, 0u, select(firstTrailingBit(_wgslsmith_div_u32(~global3.c, reverseBits(u_input.a))), arg_0.c.b.x, -u_input.d.x == _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, -1i), u_input.d.xzz & vec3<i32>(0i, -621i, 29049i))), 4294967295u);
    global2 = Struct_1(227f, select(global3.b, arg_0.d.b, arg_1), global1.c);
    let var_2 = func_2(arg_0.b.wzx, vec3<bool>(arg_1.x, true, all(arg_1)));
    let var_3 = select(countOneBits(firstLeadingBit(~abs(vec4<u32>(8015u, global3.b.x, 4294967295u, 1u)))), vec4<u32>(66241u, ~_wgslsmith_sub_u32(max(44859u, 4294967295u), min(76905u, 0u)), global2.b.x, ~(~_wgslsmith_div_u32(global3.b.x, global3.b.x))), !arg_1.x);
    return arg_0.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global1 = arg_2;
    global1 = Struct_1(global1.a, ~func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-146f, 617f, 1000f)))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))).a.b, _wgslsmith_div_u32(abs(~_wgslsmith_add_u32(646u, global1.b.x)), 1u));
    global1 = func_4(Struct_2(arg_1, vec4<f32>(_wgslsmith_f_op_f32(-global3.a), 1107f, arg_1.a, _wgslsmith_f_op_f32(-func_2(vec3<f32>(arg_0.a, -948f, arg_0.a), vec3<bool>(false, false, false)).c.a)), arg_1, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-676f, arg_1.a, arg_1.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -162f, arg_1.a) * vec3<f32>(arg_1.a, arg_1.a, arg_0.a))), vec3<bool>(global3.a == 380f, true, true)).d, u_input.e.x), vec2<bool>(!all(vec3<bool>(false, false, false)), !any(vec3<bool>(false, true, true))));
    var var_0 = 217f;
    global3 = Struct_1(arg_1.a, ~_wgslsmith_mult_vec2_u32(global3.b, ~global3.b), countOneBits(_wgslsmith_dot_vec2_u32(~(global2.b >> (vec2<u32>(49619u, 49016u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(global3.b, arg_1.b))));
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(968f, 622f, global3.a)))))), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), all(vec3<bool>(false, true, false)))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(-u_input.b < u_input.b)));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = reverseBits(1i);
    let var_1 = ~(~min(_wgslsmith_div_u32(global2.b.x, arg_0.a.b.x), ~35837u)) << (50276u % 32u);
    global0 = array<vec3<u32>, 27>();
    global2 = func_5(arg_0.a, arg_0.a, arg_0.c).c;
    global3 = arg_0.c;
    return func_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, global2.a, arg_0.a.a) * vec3<f32>(263f, arg_0.b.x, -1623f))))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), global1.a > global2.a), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), all(vec4<bool>(true, false, true, true))))).b.xww, !vec3<bool>(global2.a <= _wgslsmith_f_op_f32(-283f + 111f), true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true)))).d;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: bool) -> Struct_2 {
    global3 = func_6(func_5(func_4(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1591f, -1283f, -2241f) + vec3<f32>(global2.a, global1.a, 948f)), vec3<bool>(arg_3, arg_3, false)), vec2<bool>(true, false)), Struct_1(global3.a, ~global3.b >> (global1.b % vec2<u32>(32u)), min(~0u, ~4294967295u)), func_4(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-416f, global3.a, global3.a), vec3<f32>(global3.a, global2.a, 597f))), vec3<bool>(false, false, arg_3)), !vec2<bool>(arg_3, arg_3))));
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    let var_0 = arg_2.xxy;
    var var_1 = Struct_2(func_4(func_5(func_6(Struct_2(Struct_1(global3.a, var_0.xz, arg_0), vec4<f32>(1000f, global1.a, global3.a, global1.a), Struct_1(global2.a, vec2<u32>(26279u, 0u), 12420u), Struct_1(global2.a, global3.b, 20018u), u_input.e.x)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, global3.a)), select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, true, false), vec3<bool>(false, arg_3, true))).d, func_6(func_2(vec3<f32>(global1.a, -1000f, global2.a), vec3<bool>(true, arg_3, arg_3)))), !vec2<bool>(true, any(vec3<bool>(arg_3, false, false)))), vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.a, 345f, global1.a))), select(vec3<bool>(false, false, arg_3), vec3<bool>(false, arg_3, arg_3), arg_3)).a.a + _wgslsmith_f_op_f32(min(func_2(vec3<f32>(381f, 608f, -1000f), vec3<bool>(arg_3, true, true)).d.a, -1118f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f * global2.a))), global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - 713f) + _wgslsmith_f_op_f32(round(global1.a))) + -195f)), func_5(func_5(func_6(func_5(Struct_1(global1.a, global2.b, 4294967295u), Struct_1(1000f, vec2<u32>(56282u, 38271u), u_input.a), Struct_1(global2.a, global2.b, 8920u))), Struct_1(1115f, arg_2.xx, arg_2.x), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a, global1.a, global3.a), vec3<f32>(global2.a, global1.a, -1594f)), vec3<bool>(false, true, arg_3)).a).a, func_5(func_2(vec3<f32>(global3.a, global3.a, -1448f), !vec3<bool>(false, arg_3, arg_3)).d, Struct_1(_wgslsmith_f_op_f32(trunc(global3.a)), vec2<u32>(global1.b.x, 4294967295u), 99009u), func_6(func_2(vec3<f32>(-274f, global1.a, 546f), vec3<bool>(arg_3, arg_3, arg_3)))).a, func_4(Struct_2(func_4(Struct_2(Struct_1(global3.a, global1.b, 67650u), vec4<f32>(2125f, global1.a, global3.a, 1000f), Struct_1(global2.a, vec2<u32>(4294967295u, 0u), 36623u), Struct_1(2354f, var_0.xx, arg_0), -59297i), vec2<bool>(arg_3, arg_3)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global3.a, global3.a, global1.a) * vec4<f32>(global1.a, global2.a, 263f, -1143f)), Struct_1(global1.a, vec2<u32>(global2.b.x, var_0.x), 4294967295u), func_4(Struct_2(Struct_1(global1.a, vec2<u32>(4294967295u, 0u), var_0.x), vec4<f32>(global1.a, global1.a, 1145f, -936f), Struct_1(-278f, global3.b, 1u), Struct_1(741f, vec2<u32>(46309u, global2.b.x), global1.b.x), u_input.b), vec2<bool>(arg_3, arg_3)), u_input.b), !(!vec2<bool>(arg_3, true)))).c, Struct_1(global2.a, vec2<u32>(_wgslsmith_mod_u32(~global3.c, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.x, 0u), global2.b)), func_6(Struct_2(Struct_1(global2.a, vec2<u32>(arg_2.x, arg_2.x), arg_0), vec4<f32>(global3.a, global1.a, global2.a, -1370f), Struct_1(global2.a, global1.b, 3813u), Struct_1(global1.a, var_0.yz, arg_2.x), u_input.b)).c), global1.b.x | ~_wgslsmith_mult_u32(arg_2.x, 74520u)), -u_input.b);
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-154f, -1000f, 950f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1529f, global2.a, global2.a)))))), vec3<bool>(!arg_3, u_input.b > -min(0i, 15732i), all(select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(false, false, arg_3), vec3<bool>(true, false, true))) != ((var_1.e ^ var_1.e) < -1i)));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_2(func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), global2.b, ~_wgslsmith_mult_u32(global2.c, 0u)), arg_0.c, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2494f), arg_0.d.b, ~arg_2)).a, arg_0.b, func_6(Struct_2(Struct_1(-2056f, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.c.b.x, arg_0.c.b.x), global1.b), global2.c), _wgslsmith_f_op_vec4_f32(max(arg_0.b, _wgslsmith_f_op_vec4_f32(-arg_0.b))), func_2(vec3<f32>(global2.a, 745f, 967f), vec3<bool>(false, false, false)).c, arg_0.a, 36600i)), func_5(Struct_1(1f, arg_0.c.b, 0u), func_6(func_2(_wgslsmith_f_op_vec3_f32(select(arg_0.b.zwy, vec3<f32>(global1.a, 1571f, global1.a), vec3<bool>(false, false, true))), vec3<bool>(true, true, true))), func_1(~arg_2, func_1(68847u, arg_0.a.c, vec4<u32>(arg_2, 1u, global2.c, 69563u), true).c.b.x, abs(~vec4<u32>(4294967295u, arg_0.c.c, 0u, 22254u)), true).d).c, ~(~(~(1i & arg_1.x))));
    var var_1 = func_5(var_0.d, arg_0.d, Struct_1(544f, global2.b, ~(~select(1u, 0u, false))));
    var_0 = arg_0;
    let var_2 = vec4<i32>(~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.e, arg_1.x), u_input.d.zw ^ vec2<i32>(var_0.e, arg_0.e)), u_input.e), 1i, -2582i, 0i);
    var var_3 = ~_wgslsmith_mod_i32(_wgslsmith_div_i32(reverseBits(var_1.e), var_2.x), -13427i) > -10009i;
    return var_1.d;
}

fn func_8(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~firstLeadingBit(~vec3<u32>(62114u & arg_0.c.c, 1u, global2.b.x));
    global1 = func_6(func_5(func_4(Struct_2(func_1(global2.b.x, 9677u, vec4<u32>(4294967295u, u_input.a, 0u, 61506u), false).d, _wgslsmith_f_op_vec4_f32(arg_0.b * arg_0.b), Struct_1(-364f, global3.b, 36472u), Struct_1(594f, arg_0.d.b, u_input.c), ~(-3283i)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), ~global2.b, _wgslsmith_mult_u32(41723u, 97920u) | func_2(arg_0.b.yxz, vec3<bool>(true, true, false)).c.c), func_6(arg_0)));
    let var_1 = arg_0.d;
    global1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(106f, -1061f, global1.a)))))), vec3<bool>(true, true, arg_0.e >= abs(-1i))).c;
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.xw)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_8(Struct_2(func_7(func_1(global1.c, 17768u, firstLeadingBit(vec4<u32>(global3.b.x, 4294967295u, 0u, global2.c)), true), u_input.d.zw, global3.b.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(722f, global3.a, global3.a, 1392f) - vec4<f32>(global2.a, -308f, global2.a, 1000f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-564f, -128f, -269f, global1.a)))))), Struct_1(-808f, global1.b, 4294967295u), func_6(func_5(Struct_1(global2.a, global3.b, 22699u), Struct_1(global1.a, vec2<u32>(global3.b.x, global3.b.x), global2.c), Struct_1(global3.a, vec2<u32>(4294967295u, 36113u), 4294967295u))), ~reverseBits(_wgslsmith_add_i32(-1i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(func_1(~7037u, 4294967295u, _wgslsmith_mult_vec4_u32(vec4<u32>(global2.c, global3.c, 1922u, u_input.a), vec4<u32>(4294967295u, global2.c, 7228u, global3.b.x)), false).d.c, ~max(1u, 13580u)), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(global1.b.x, 0u), global3.b))), -25472i, ~select(_wgslsmith_sub_i32(-u_input.d.x, -u_input.e.x), _wgslsmith_clamp_i32(1i, u_input.d.x, u_input.d.x & u_input.d.x), select(true, all(vec2<bool>(false, false)), true)));
}

