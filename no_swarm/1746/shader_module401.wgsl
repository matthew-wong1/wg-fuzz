struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(91507u, vec3<u32>(40702u, 4294967295u, 1u), 1976i, vec4<i32>(-36020i, 10174i, -1i, -19890i), vec2<bool>(true, true));

var<private> global1: array<vec2<bool>, 13>;

var<private> global2: bool = false;

var<private> global3: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec3<f32>(462f, 723f, -1638f), -1i), Struct_3(vec3<f32>(-1000f, -280f, 913f), -11284i), Struct_3(vec3<f32>(-898f, 760f, -1355f), i32(-2147483648)), Struct_3(vec3<f32>(-456f, 1050f, 125f), -40785i), Struct_3(vec3<f32>(-619f, 594f, -1132f), -15039i), Struct_3(vec3<f32>(-161f, 1476f, -262f), 0i), Struct_3(vec3<f32>(-1052f, -1275f, 1274f), 1i), Struct_3(vec3<f32>(1000f, 762f, -538f), i32(-2147483648)), Struct_3(vec3<f32>(490f, -250f, -245f), -14055i), Struct_3(vec3<f32>(1240f, 153f, 1684f), 13345i), Struct_3(vec3<f32>(-839f, 534f, -1698f), i32(-2147483648)), Struct_3(vec3<f32>(-623f, 822f, 330f), 6404i), Struct_3(vec3<f32>(737f, -181f, 142f), -8617i), Struct_3(vec3<f32>(190f, 2326f, -699f), 0i), Struct_3(vec3<f32>(579f, 933f, -1000f), -15664i), Struct_3(vec3<f32>(388f, -180f, 846f), 48636i), Struct_3(vec3<f32>(485f, -636f, -804f), -2739i), Struct_3(vec3<f32>(-742f, -696f, 2020f), 1i), Struct_3(vec3<f32>(-377f, 515f, -671f), 0i), Struct_3(vec3<f32>(596f, 264f, -546f), -28477i), Struct_3(vec3<f32>(1212f, -542f, 594f), 11541i), Struct_3(vec3<f32>(458f, 933f, 465f), 1i), Struct_3(vec3<f32>(1319f, -1253f, 705f), -1i), Struct_3(vec3<f32>(345f, 208f, -305f), -9399i), Struct_3(vec3<f32>(-1305f, -967f, 496f), 2147483647i));

var<private> global4: array<u32, 2>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(15191u, select(vec2<bool>(!global0.e.x, global0.e.x & false), !select(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 2u)], 13u)], global0.e, false), any(!vec3<bool>(global0.e.x, global0.e.x, global0.e.x))), ~abs(firstLeadingBit(u_input.a)), ~(~(vec4<u32>(global0.b.x, u_input.d, u_input.a.x, global4[_wgslsmith_index_u32(17776u, 2u)]) & vec4<u32>(u_input.b, global0.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 2u)], 2u)], global4[_wgslsmith_index_u32(1u, 2u)]))), -2147483647i), abs(~abs(~vec4<u32>(u_input.a.x, 0u, 6438u, global0.b.x))));
    global2 = !(_wgslsmith_mult_i32(~global0.c, reverseBits(-2147483647i)) > 0i);
    var var_1 = ~(~var_0.b.xzy);
    global2 = var_0.a.b.x;
    var_1 = select(~_wgslsmith_add_vec3_u32(var_0.a.d.zxw, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.a, var_1.x, 20365u) << (vec3<u32>(934u, global4[_wgslsmith_index_u32(25494u, 2u)], u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(64634u, var_1.x, 66492u))), max(vec3<u32>(global0.a, 0u, 102372u ^ var_1.x), u_input.a), true);
    return ~select(global0.a, _wgslsmith_mult_u32(0u, 1u), true & var_0.a.b.x);
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.b, u_input.a.x, 19088u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 2u)], 2u)])), _wgslsmith_div_u32(u_input.a.x, 0u)), !global1[_wgslsmith_index_u32(global0.b.x, 13u)], global0.b, vec4<u32>(~global0.a, ~4882u, global4[_wgslsmith_index_u32(u_input.b << (19604u % 32u), 2u)], u_input.d), 1i), reverseBits(~(~vec4<u32>(global0.a, u_input.b, u_input.d, global0.b.x)))), ~max(countOneBits(global0.a), ~_wgslsmith_div_u32(global4[_wgslsmith_index_u32(u_input.b, 2u)], 21176u)), Struct_1(u_input.b, vec2<bool>(global0.a < ~global4[_wgslsmith_index_u32(global0.a, 2u)], global0.e.x), vec3<u32>(global0.b.x, u_input.d, func_3()), vec4<u32>(~(~9983u), ~(70821u & u_input.d), ~global4[_wgslsmith_index_u32(73334u, 2u)] << (u_input.b % 32u), _wgslsmith_sub_u32(func_3(), u_input.b)), reverseBits(i32(-1i) * -13476i)), Struct_2(Struct_1(firstLeadingBit(global0.a << (u_input.a.x % 32u)), global1[_wgslsmith_index_u32(select(1u, 1u, global0.e.x) ^ ~4294967295u, 13u)], vec3<u32>(71104u, 0u, _wgslsmith_mult_u32(47004u, 1u)), ~(~vec4<u32>(global0.b.x, global0.b.x, 1u, u_input.d)), u_input.c.x), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.d, global0.a, global4[_wgslsmith_index_u32(33186u, 2u)]), vec4<u32>(66684u, u_input.d, global0.a, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(35626u, 2u)], global0.a, 56106u, global4[_wgslsmith_index_u32(64644u, 2u)]), ~vec4<u32>(0u, 4294967295u, 4294967295u, global4[_wgslsmith_index_u32(u_input.b, 2u)])))));
    var var_1 = var_0.d.a.b.x;
    let var_2 = var_0.c.b.x;
    global2 = global0.e.x && !(!(true | (7549u <= u_input.d)));
    let var_3 = global0.b.yz;
    return !select(!vec4<bool>(true, true, global0.e.x, u_input.d >= 26588u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, global0.e.x), any(vec2<bool>(var_0.a.a.b.x, true))), !global0.e.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = arg_2.d;
    let var_1 = ~0u;
    global2 = var_0.a.b.x;
    let var_2 = abs(-5095i);
    let var_3 = all(func_2());
    return Struct_2(arg_2.a.a, vec4<u32>(_wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(var_1, global0.b.x, 0u, u_input.d), vec4<u32>(arg_2.b, 16388u, 0u, arg_3.x)), var_0.b, var_3), ~vec4<u32>(global4[_wgslsmith_index_u32(var_1, 2u)], 0u, var_1, 1u)), 0u, 0u, arg_2.a.a.a));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    global1 = array<vec2<bool>, 13>();
    let var_0 = !(all(func_2().xx) & func_4(select(arg_0, select(arg_0, arg_0, false), any(arg_2.a.b)), vec4<bool>(arg_2.a.b.x, all(arg_0), true, true), Struct_4(Struct_2(Struct_1(arg_2.b.x, arg_0.zy, vec3<u32>(10158u, 0u, 1u), vec4<u32>(global0.b.x, arg_2.b.x, 1u, 1u), -1i), vec4<u32>(4294967295u, arg_2.a.d.x, u_input.d, 0u)), global4[_wgslsmith_index_u32(arg_2.a.c.x, 2u)], Struct_1(arg_2.a.d.x, vec2<bool>(false, arg_2.a.b.x), vec3<u32>(33501u, 139440u, 12957u), arg_2.b, u_input.c.x), func_4(vec4<bool>(global0.e.x, arg_1.e.x, arg_0.x, true), vec4<bool>(arg_1.e.x, arg_2.a.b.x, global0.e.x, false), Struct_4(arg_2, 1u, Struct_1(4294967295u, arg_0.wz, u_input.a, vec4<u32>(arg_2.b.x, 99757u, arg_2.b.x, global0.a), arg_2.a.e), arg_2), vec3<u32>(0u, arg_2.a.d.x, 1u))), vec3<u32>(global0.a, ~global0.b.x, firstTrailingBit(u_input.d))).a.b.x);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(ceil(1000f)), arg_3) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -103f, arg_3) * vec3<f32>(arg_3, arg_3, arg_3))))), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-47607i), ~u_input.c.x, global0.d.x << (109933u % 32u), -4447i) << (_wgslsmith_mod_vec4_u32(arg_2.b, vec4<u32>(0u, 11112u, 2206u, arg_1.b.x)) % vec4<u32>(32u)), abs(abs(global0.d) ^ ~arg_1.d)));
    global3 = array<Struct_3, 25>();
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-394f, _wgslsmith_f_op_f32(-1520f + var_1.a.x)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -691f))), true));
    return arg_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_5) -> Struct_1 {
    let var_0 = -25329i;
    var var_1 = func_5(!vec4<bool>(arg_1.e.x, !(!global0.e.x), !(true | global0.e.x), false), Struct_5(countOneBits(~4294967295u), ~reverseBits(global0.b), ~(-countOneBits(global0.c)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0.d.x, 6732i, u_input.c.x), global0.d) >> (~vec4<u32>(u_input.b, arg_1.b.x, global4[_wgslsmith_index_u32(arg_1.b.x, 2u)], u_input.b) % vec4<u32>(32u)), !select(vec2<bool>(true, global0.e.x), arg_1.e, global0.e)), func_4(select(select(!vec4<bool>(false, global0.e.x, false, arg_1.e.x), !vec4<bool>(true, arg_1.e.x, false, false), true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(global0.e.x, arg_1.e.x, global0.e.x, global0.e.x), arg_1.e.x), vec4<bool>(true, global0.e.x, false, true), arg_1.e.x), !func_2()), !(!select(vec4<bool>(false, global0.e.x, global0.e.x, arg_1.e.x), vec4<bool>(arg_1.e.x, false, global0.e.x, false), arg_1.e.x)), Struct_4(Struct_2(Struct_1(u_input.a.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(105224u, 2u)], 13u)], vec3<u32>(global4[_wgslsmith_index_u32(global0.b.x, 2u)], 102507u, 22330u), vec4<u32>(arg_1.a, global4[_wgslsmith_index_u32(80687u, 2u)], 4294967295u, 4996u), global0.c), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(0u, 2u)], 1u, 0u) >> (vec4<u32>(22837u, 5990u, global0.a, u_input.a.x) % vec4<u32>(32u))), 4294967295u, Struct_1(select(68165u, 4294967295u, global0.e.x), func_2().xx, vec3<u32>(4294967295u, 6967u, arg_1.b.x), vec4<u32>(32216u, 0u, global0.b.x, 16122u) >> (vec4<u32>(1u, 4294967295u, global4[_wgslsmith_index_u32(26884u, 2u)], arg_1.a) % vec4<u32>(32u)), arg_1.d.x), Struct_2(Struct_1(u_input.d, vec2<bool>(arg_1.e.x, true), global0.b, vec4<u32>(arg_1.b.x, global0.b.x, 0u, 52318u), 9324i), reverseBits(vec4<u32>(arg_1.b.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4572u, 2u)], 2u)], arg_1.b.x, 0u)))), u_input.a), -385f);
    global3 = array<Struct_3, 25>();
    var var_2 = 4294967295u;
    var var_3 = vec4<i32>(var_0, _wgslsmith_clamp_i32(arg_1.c, ~_wgslsmith_sub_i32(u_input.c.x, 47666i), ~func_4(vec4<bool>(var_1.a.b.x, false, false, false), vec4<bool>(true, var_1.a.b.x, true, var_1.a.b.x), Struct_4(Struct_2(var_1.a, var_1.a.d), 16681u, var_1.a, Struct_2(var_1.a, vec4<u32>(1u, u_input.a.x, var_1.b.x, arg_1.a))), u_input.a).a.e), 1i, global0.c) ^ (vec4<i32>(abs(-2147483647i), var_0, _wgslsmith_dot_vec3_i32(global0.d.wxx, vec3<i32>(2147483647i, 1495i, 0i) << (vec3<u32>(arg_1.a, 0u, 1u) % vec3<u32>(32u))), ~var_1.a.e) << (var_1.b % vec4<u32>(32u)));
    return Struct_1(var_1.a.c.x, vec2<bool>(!(!(!global0.e.x)), true), min(firstLeadingBit(vec3<u32>(1u, 5244u, arg_1.a)) >> (vec3<u32>(arg_1.b.x, arg_1.b.x, global0.b.x) % vec3<u32>(32u)), u_input.a), abs(~(~vec4<u32>(arg_1.b.x, arg_1.a, arg_1.a, 54402u))), -13937i);
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = 2075f;
    var var_1 = _wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(-arg_1, u_input.c.x)), ~(firstTrailingBit(-13608i) | 39976i));
    let var_2 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(56914u, ~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.a.d.x, 1u, 4294967295u, arg_0.b), vec4<u32>(global4[_wgslsmith_index_u32(33736u, 2u)], 43517u, arg_0.a.a.c.x, global4[_wgslsmith_index_u32(35189u, 2u)])), global0.b.x >> (1u % 32u))), max(~vec4<u32>(arg_0.d.b.x, u_input.a.x, 1u, 109443u), ~arg_0.c.d) << (_wgslsmith_mod_vec4_u32(min(arg_0.d.a.d, vec4<u32>(51521u, global0.b.x, 0u, 4294967295u)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(4294967295u, global0.a, 70777u, global0.a), arg_0.c.d), ~vec4<u32>(arg_0.b, 61941u, 14320u, 1u))) % vec4<u32>(32u)));
    return arg_0;
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> vec2<i32> {
    global0 = Struct_5(arg_0.a.a.c.x, vec3<u32>(global0.b.x, func_4(!select(vec4<bool>(global0.e.x, false, false, arg_0.a.a.b.x), vec4<bool>(true, arg_0.a.a.b.x, true, arg_1.a.b.x), false), vec4<bool>(false & arg_0.d.a.b.x, true, func_4(vec4<bool>(global0.e.x, false, arg_1.a.b.x, false), vec4<bool>(arg_0.d.a.b.x, global0.e.x, true, arg_1.a.b.x), arg_0, vec3<u32>(global0.b.x, arg_1.b.x, 23946u)).a.b.x, true), func_6(func_6(Struct_4(Struct_2(Struct_1(4294967295u, vec2<bool>(arg_0.c.b.x, arg_1.a.b.x), global0.b, vec4<u32>(1u, 59685u, 61554u, global4[_wgslsmith_index_u32(global0.a, 2u)]), 1i), arg_0.c.d), u_input.d, Struct_1(u_input.b, arg_0.d.a.b, u_input.a, arg_1.b, global0.d.x), Struct_2(Struct_1(u_input.a.x, vec2<bool>(true, false), u_input.a, vec4<u32>(arg_1.a.c.x, 67389u, 11216u, 22916u), global0.d.x), vec4<u32>(u_input.a.x, 4294967295u, 80420u, global4[_wgslsmith_index_u32(77875u, 2u)]))), arg_1.a.e, vec2<u32>(arg_1.b.x, 15332u)), arg_0.d.a.e, ~vec2<u32>(29132u, 16596u)), ~global0.b).a.c.x, 1u), _wgslsmith_add_i32(-(_wgslsmith_mult_i32(arg_0.c.e, -18087i) & u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, u_input.c.x), _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.c.x, 4715i), global0.d.zw, true), countOneBits(global0.d.yx)))), global0.d, !select(func_1(vec4<f32>(-1426f, -1692f, -333f, 2499f), Struct_5(arg_0.c.a, vec3<u32>(arg_2, arg_1.a.d.x, 53462u), -1i, vec4<i32>(u_input.c.x, u_input.c.x, 20636i, arg_0.c.e), vec2<bool>(global0.e.x, true))).b, arg_1.a.b, vec2<bool>(arg_1.b.x == 4514u, arg_0.d.a.b.x)));
    let var_0 = func_6(Struct_4(Struct_2(func_4(vec4<bool>(false, arg_1.a.b.x, false, global0.e.x), vec4<bool>(true, false, global0.e.x, false), func_6(Struct_4(arg_0.d, 36080u, Struct_1(1u, global0.e, vec3<u32>(1u, arg_0.d.b.x, 82678u), arg_0.a.b, -2995i), arg_1), 1i, arg_0.c.c.zz), arg_1.b.zzz).a, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.d.x, global0.b.x, 0u, u_input.b), vec4<u32>(36853u, 11944u, 15897u, global0.b.x)), arg_1.b)), global0.a, arg_1.a, Struct_2(Struct_1(func_5(vec4<bool>(true, arg_0.a.a.b.x, global0.e.x, false), Struct_5(4294967295u, arg_1.b.wxy, arg_0.a.a.e, global0.d, vec2<bool>(arg_1.a.b.x, false)), arg_1, -434f).a.d.x, vec2<bool>(true, true), ~arg_1.a.d.wzz, abs(vec4<u32>(global0.b.x, 0u, 41837u, arg_0.d.a.a)), arg_1.a.e), ~(~arg_0.d.b))), 24476i, ~_wgslsmith_mod_vec2_u32(u_input.a.zy, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.b.x), vec2<u32>(4294967295u, 1u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)))));
    let var_1 = select(global0.e, vec2<bool>(true & !all(vec3<bool>(false, arg_1.a.b.x, true)), (arg_1.a.b.x | (var_0.c.b.x || true)) | true), false);
    global3 = array<Struct_3, 25>();
    return reverseBits(-u_input.c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(func_7(func_6(Struct_4(Struct_2(Struct_1(0u, global0.e, vec3<u32>(global0.a, 1u, u_input.b), vec4<u32>(u_input.a.x, u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 2u)], 78077u), -20318i), vec4<u32>(global4[_wgslsmith_index_u32(global0.b.x, 2u)], 12867u, global0.b.x, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(44851u, global0.b.x, 36148u, global0.a), vec4<u32>(u_input.b, 34098u, global0.b.x, 4664u)), func_1(vec4<f32>(1167f, 1606f, 1473f, -1867f), Struct_5(u_input.a.x, global0.b, global0.d.x, global0.d, vec2<bool>(true, global0.e.x))), Struct_2(Struct_1(10577u, global0.e, global0.b, vec4<u32>(global4[_wgslsmith_index_u32(u_input.d, 2u)], global4[_wgslsmith_index_u32(global0.b.x, 2u)], 4294967295u, 20063u), 7562i), vec4<u32>(1u, global0.a, 0u, 4294967295u))), func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1143f, -709f, -735f, -1393f))), Struct_5(1u, vec3<u32>(4294967295u, u_input.a.x, global0.a), 18201i, global0.d, vec2<bool>(global0.e.x, global0.e.x))).e, vec2<u32>(global0.a, ~global0.a)), func_6(Struct_4(func_4(vec4<bool>(global0.e.x, false, global0.e.x, true), vec4<bool>(false, false, false, true), Struct_4(Struct_2(Struct_1(4294967295u, global0.e, vec3<u32>(global0.a, 70896u, u_input.b), vec4<u32>(global0.a, 4812u, 26323u, u_input.b), 28967i), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 2u)], 2u)], u_input.a.x, 4294967295u, 1u)), 77950u, Struct_1(global4[_wgslsmith_index_u32(49043u, 2u)], global1[_wgslsmith_index_u32(global0.b.x, 13u)], global0.b, vec4<u32>(43473u, global4[_wgslsmith_index_u32(u_input.d, 2u)], 35003u, 4294967295u), 2147483647i), Struct_2(Struct_1(42219u, global0.e, global0.b, vec4<u32>(4294967295u, global0.b.x, 0u, 31070u), u_input.c.x), vec4<u32>(u_input.d, 62174u, 23240u, 0u))), global0.b), ~global0.b.x, func_5(vec4<bool>(global0.e.x, true, global0.e.x, global0.e.x), Struct_5(global0.b.x, global0.b, -2147483647i, vec4<i32>(global0.c, 2147483647i, 1i, u_input.c.x), global0.e), Struct_2(Struct_1(50413u, vec2<bool>(false, true), vec3<u32>(8349u, global0.b.x, global4[_wgslsmith_index_u32(8976u, 2u)]), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 2u)], 2u)], 2u)], u_input.b, global0.b.x, global0.b.x), 0i), vec4<u32>(11857u, 1003u, 1u, global0.b.x)), -735f).a, Struct_2(Struct_1(1u, vec2<bool>(true, false), u_input.a, vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), global0.d.x), vec4<u32>(global4[_wgslsmith_index_u32(u_input.b, 2u)], global4[_wgslsmith_index_u32(4294967295u, 2u)], 0u, u_input.d))), 57146i, vec2<u32>(~global4[_wgslsmith_index_u32(u_input.b, 2u)], 0u)).a, u_input.a.x), u_input.c.zy << (~(vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 2u)], 4294967295u) & (global0.b.xz ^ vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 1u))) % vec2<u32>(32u)));
    var var_1 = func_6(func_6(Struct_4(func_6(func_6(Struct_4(Struct_2(Struct_1(61598u, global0.e, vec3<u32>(7212u, u_input.a.x, 0u), vec4<u32>(17604u, 114274u, 17164u, global4[_wgslsmith_index_u32(global0.b.x, 2u)]), global0.d.x), vec4<u32>(global0.b.x, u_input.a.x, u_input.d, global0.b.x)), u_input.d, Struct_1(global4[_wgslsmith_index_u32(6987u, 2u)], vec2<bool>(global0.e.x, false), vec3<u32>(75882u, global4[_wgslsmith_index_u32(global0.b.x, 2u)], 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 17579u), var_0), Struct_2(Struct_1(14630u, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 2u)], 13u)], u_input.a, vec4<u32>(63722u, 67907u, global0.b.x, 1u), var_0), vec4<u32>(1u, 1u, global0.b.x, u_input.a.x))), global0.d.x, vec2<u32>(17592u, global4[_wgslsmith_index_u32(4294967295u, 2u)])), global0.c, ~vec2<u32>(u_input.a.x, 4294967295u)).a, 4294967295u, func_5(vec4<bool>(false, global0.e.x, true, false), Struct_5(30475u, global0.b, u_input.c.x, global0.d, vec2<bool>(global0.e.x, global0.e.x)), func_4(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, global0.e.x), Struct_4(Struct_2(Struct_1(4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], vec3<u32>(u_input.b, 36941u, 0u), vec4<u32>(0u, 0u, 696u, global0.b.x), u_input.c.x), vec4<u32>(9436u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.a, 2u)], 2u)], 4294967295u, u_input.d)), 4294967295u, Struct_1(global0.a, vec2<bool>(true, false), vec3<u32>(60278u, 24797u, 50833u), vec4<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 2u)], global4[_wgslsmith_index_u32(16324u, 2u)], global0.b.x, u_input.a.x), -3358i), Struct_2(Struct_1(u_input.d, vec2<bool>(true, global0.e.x), vec3<u32>(7282u, 541u, 126817u), vec4<u32>(global0.b.x, u_input.d, global0.b.x, global0.a), var_0), vec4<u32>(global0.b.x, global4[_wgslsmith_index_u32(u_input.b, 2u)], 27967u, 23094u))), vec3<u32>(12339u, u_input.b, global0.a)), _wgslsmith_f_op_f32(1782f - -194f)).a, Struct_2(func_1(vec4<f32>(1086f, -390f, -541f, 1077f), Struct_5(global0.a, global0.b, 1i, global0.d, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.b.x, 2u)], 2u)], 13u)])), _wgslsmith_add_vec4_u32(vec4<u32>(54151u, 0u, 0u, 0u), vec4<u32>(18235u, global4[_wgslsmith_index_u32(0u, 2u)], 4294967295u, u_input.b)))), ~(~min(20476i, -19704i)), vec2<u32>(4294967295u, (83819u & global4[_wgslsmith_index_u32(u_input.d, 2u)]) ^ (global4[_wgslsmith_index_u32(u_input.a.x, 2u)] & global4[_wgslsmith_index_u32(5504u, 2u)]))), -1i, global0.b.xx);
    let var_2 = Struct_5(u_input.a.x, vec3<u32>(global4[_wgslsmith_index_u32(abs(~u_input.d), 2u)], 1u, var_1.c.a), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2003f, 1623f, 1000f, -406f), vec4<f32>(-1679f, 352f, -1233f, -875f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(288f, -214f, -791f, 235f), vec4<f32>(1544f, -227f, 1787f, 264f))))), Struct_5(var_1.b, vec3<u32>(var_1.d.a.c.x, 97650u, 8372u), -38949i, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_1.c.e, var_1.a.a.e, -5024i), vec4<i32>(u_input.c.x, global0.c, u_input.c.x, var_1.a.a.e)), global0.e)).e, vec4<i32>(var_1.c.e & _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, -1i, -6118i) >> (var_1.c.d.xxw % vec3<u32>(32u)), -vec3<i32>(-1i, global0.d.x, global0.d.x)), global0.c, -65416i, u_input.c.x & _wgslsmith_dot_vec2_i32(~global0.d.xz, vec2<i32>(-2147483647i, var_1.c.e))), global1[_wgslsmith_index_u32(~(func_1(vec4<f32>(1195f, -916f, -1014f, 459f), Struct_5(var_1.c.c.x, vec3<u32>(global0.b.x, global0.a, var_1.d.b.x), 32418i, vec4<i32>(-1i, global0.d.x, var_0, -30468i), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.a, 2u)], 13u)])).a | (11893u ^ global0.b.x)) >> (global0.a % 32u), 13u)]);
    let var_3 = u_input.c.x;
    var_1 = func_6(func_6(func_6(func_6(func_6(Struct_4(var_1.a, 0u, var_1.d.a, Struct_2(Struct_1(global4[_wgslsmith_index_u32(var_2.a, 2u)], global0.e, var_1.c.c, var_1.d.a.d, global0.d.x), vec4<u32>(var_1.c.a, var_1.b, 58821u, 24853u))), 22276i, var_2.b.yy), var_0, var_2.b.zz), -9582i, ~vec2<u32>(global4[_wgslsmith_index_u32(0u, 2u)], 28116u) & reverseBits(global0.b.zz)), global0.d.x, _wgslsmith_clamp_vec2_u32(global0.b.zx, var_2.b.zx, countOneBits(~var_2.b.yz))), _wgslsmith_mod_i32(-1i >> (global4[_wgslsmith_index_u32(~(~var_1.d.a.a), 2u)] % 32u), -reverseBits(var_3)), u_input.a.xx);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1536f * _wgslsmith_f_op_f32(-1000f - 942f)))) - _wgslsmith_f_op_f32(abs(-283f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1935f * _wgslsmith_f_op_f32(floor(158f)))))));
    let var_5 = vec4<bool>(-1i >= (i32(-1i) * -global0.d.x), var_2.e.x, ((var_4.x != _wgslsmith_f_op_f32(min(var_4.x, var_4.x))) & var_2.e.x) && func_4(vec4<bool>(true, var_2.c > 22503i, global0.e.x, var_2.e.x), vec4<bool>(global0.e.x, var_2.e.x, var_2.e.x, var_2.e.x), func_6(Struct_4(var_1.d, var_1.d.b.x, Struct_1(u_input.d, global0.e, vec3<u32>(4294967295u, 34072u, var_1.a.a.c.x), vec4<u32>(u_input.a.x, 65489u, 28670u, 0u), -2147483647i), var_1.d), select(var_3, 20883i, var_1.a.a.b.x), global0.b.yy), min(vec3<u32>(4294967295u, 13370u, 87929u), reverseBits(global0.b))).a.b.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2038f - -2386f)))), ~vec2<i32>(-13203i, -2147483647i), var_2.d, var_4.x);
}

