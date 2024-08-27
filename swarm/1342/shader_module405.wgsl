struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(true, 668f);

var<private> global1: array<vec2<f32>, 2>;

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_1(vec2<f32>(410f, -155f), 1u, -17231i, vec2<bool>(false, false), 0u), 409f, -321f, Struct_1(vec2<f32>(-162f, -734f), 6457u, 2147483647i, vec2<bool>(true, false), 0u)), Struct_4(Struct_1(vec2<f32>(1000f, -1000f), 0u, 11996i, vec2<bool>(true, false), 0u), 1763f, -643f, Struct_1(vec2<f32>(-1886f, 1701f), 39261u, 17389i, vec2<bool>(true, true), 4294967295u)), Struct_4(Struct_1(vec2<f32>(212f, -1497f), 82818u, -6300i, vec2<bool>(true, false), 53174u), 1920f, -213f, Struct_1(vec2<f32>(-768f, -663f), 48855u, -1i, vec2<bool>(true, true), 15808u)), Struct_4(Struct_1(vec2<f32>(691f, -877f), 74732u, 0i, vec2<bool>(false, false), 1u), 165f, 1282f, Struct_1(vec2<f32>(2325f, -298f), 4294967295u, -14119i, vec2<bool>(true, false), 10009u)), Struct_4(Struct_1(vec2<f32>(1162f, -643f), 16569u, 0i, vec2<bool>(false, false), 4294967295u), -132f, 211f, Struct_1(vec2<f32>(-1583f, -1136f), 92593u, 1i, vec2<bool>(true, true), 0u)), Struct_4(Struct_1(vec2<f32>(219f, -721f), 64104u, 2147483647i, vec2<bool>(true, true), 4294967295u), -986f, -444f, Struct_1(vec2<f32>(427f, 912f), 0u, -11459i, vec2<bool>(false, true), 4294967295u)), Struct_4(Struct_1(vec2<f32>(1433f, 2410f), 0u, 1i, vec2<bool>(true, true), 28346u), -1679f, -1095f, Struct_1(vec2<f32>(-795f, -187f), 0u, i32(-2147483648), vec2<bool>(true, false), 0u)), Struct_4(Struct_1(vec2<f32>(-1027f, -732f), 0u, 1i, vec2<bool>(true, true), 10387u), -721f, -627f, Struct_1(vec2<f32>(1000f, 1569f), 0u, -4497i, vec2<bool>(true, true), 4294967295u)), Struct_4(Struct_1(vec2<f32>(1000f, -389f), 42907u, -18676i, vec2<bool>(true, true), 31305u), 861f, -1554f, Struct_1(vec2<f32>(-265f, -158f), 75538u, 0i, vec2<bool>(true, false), 1u)), Struct_4(Struct_1(vec2<f32>(735f, 1963f), 4294967295u, -58380i, vec2<bool>(false, true), 12510u), 588f, -692f, Struct_1(vec2<f32>(-1076f, 1000f), 1u, 40497i, vec2<bool>(true, false), 7710u)), Struct_4(Struct_1(vec2<f32>(-374f, -458f), 39550u, 29928i, vec2<bool>(true, false), 1u), -1234f, -149f, Struct_1(vec2<f32>(1027f, 1413f), 19089u, 3744i, vec2<bool>(false, true), 0u)), Struct_4(Struct_1(vec2<f32>(-1309f, -346f), 0u, 2147483647i, vec2<bool>(false, false), 18390u), 1815f, -673f, Struct_1(vec2<f32>(614f, -1000f), 33221u, -36717i, vec2<bool>(false, true), 1u)), Struct_4(Struct_1(vec2<f32>(299f, -647f), 0u, 1i, vec2<bool>(true, true), 22579u), 210f, -1016f, Struct_1(vec2<f32>(137f, 1000f), 27124u, 12544i, vec2<bool>(false, false), 0u)), Struct_4(Struct_1(vec2<f32>(1448f, 1496f), 0u, 32635i, vec2<bool>(true, false), 8194u), -961f, -344f, Struct_1(vec2<f32>(-774f, 1932f), 37742u, -1i, vec2<bool>(true, true), 4294967295u)), Struct_4(Struct_1(vec2<f32>(925f, -1500f), 1u, 2147483647i, vec2<bool>(true, false), 0u), -516f, -357f, Struct_1(vec2<f32>(-1000f, -1000f), 4294967295u, -44328i, vec2<bool>(true, false), 1u)), Struct_4(Struct_1(vec2<f32>(-2159f, -402f), 0u, 2147483647i, vec2<bool>(false, true), 12499u), 139f, -817f, Struct_1(vec2<f32>(290f, 999f), 0u, 15842i, vec2<bool>(true, false), 4294967295u)), Struct_4(Struct_1(vec2<f32>(518f, 623f), 44897u, -1559i, vec2<bool>(true, true), 40343u), 284f, 1000f, Struct_1(vec2<f32>(864f, -1013f), 4294967295u, 15166i, vec2<bool>(false, false), 23096u)), Struct_4(Struct_1(vec2<f32>(201f, 1949f), 4294967295u, 5869i, vec2<bool>(true, true), 103425u), -1000f, 685f, Struct_1(vec2<f32>(196f, 629f), 4294967295u, -3820i, vec2<bool>(false, true), 42633u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_5(global0.a, _wgslsmith_f_op_f32(-arg_1.x));
    global2 = array<Struct_4, 18>();
    var var_1 = !(!(!(!select(vec4<bool>(true, var_0.a, global0.a, var_0.a), vec4<bool>(global0.a, arg_0.d.x, false, true), true))));
    let var_2 = vec2<i32>(arg_0.c, select(0i, -2147483647i, 2147483647i > -reverseBits(arg_0.c)));
    var_0 = Struct_5(var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1503f), arg_0.a.x)));
    return Struct_3(abs(vec4<i32>(2147483647i, var_2.x, ~(-34335i), -var_2.x | ~2147483647i)), arg_0.d.x, select((abs(vec3<u32>(u_input.b.x, arg_0.e, arg_0.b)) | countOneBits(vec3<u32>(arg_0.b, arg_0.b, 0u))) | vec3<u32>(0u, u_input.c, u_input.a), select(~(~vec3<u32>(u_input.b.x, 6846u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(44724u, 4138u, arg_0.e), vec3<u32>(338u, u_input.a, 6684u)) >> (vec3<u32>(arg_0.e, 1u, 4294967295u) % vec3<u32>(32u)), true), select(var_1.yxx, vec3<bool>(var_0.a, !arg_0.d.x, !var_0.a), !global0.a)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(828f, 645f), vec2<f32>(global0.b, -533f)), false)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-184f, global0.b)))), abs(u_input.b.x), arg_1.x, select(!(!vec2<bool>(true, global0.a)), !vec2<bool>(global0.a, arg_0.b), !vec2<bool>(global0.a, global0.a)), ~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(max(global0.b, -1188f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(floor(741f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b))), Struct_1(global1[_wgslsmith_index_u32(arg_0.c.x, 2u)], 34721u, ~arg_0.a.x, select(select(vec2<bool>(global0.a, arg_0.b), select(vec2<bool>(true, true), vec2<bool>(false, arg_0.b), global0.a), !vec2<bool>(arg_0.b, arg_0.b)), vec2<bool>(all(vec3<bool>(arg_0.b, arg_0.b, true)), global0.a), arg_0.b), ~(13546u >> (u_input.b.x % 32u))));
    var var_1 = 1i;
    var var_2 = _wgslsmith_sub_vec2_i32(abs(arg_0.a.ww), vec2<i32>(0i, arg_1.x)) >> (vec2<u32>(arg_0.c.x, _wgslsmith_add_u32(func_2(Struct_1(var_0.d.a, var_0.d.e, arg_1.x, var_0.d.d, 1u), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-722f, var_0.b, global0.b, 153f), vec4<f32>(global0.b, var_0.b, global0.b, global0.b)))).c.x, 4294967295u)) % vec2<u32>(32u));
    let var_3 = arg_0.b;
    let var_4 = var_0.d;
    return arg_0.c.x;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<i32>) -> vec2<u32> {
    global2 = array<Struct_4, 18>();
    global0 = Struct_5(global0.a, _wgslsmith_f_op_f32(-915f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(trunc(global0.b))))));
    var var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.c, u_input.c, 0u) & vec4<u32>(0u, 34257u, u_input.a, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(26383u, u_input.a, 1u, 2176u), ~vec4<u32>(0u, u_input.a, 4294967295u, u_input.c))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 35907u, 0u, 19466u), vec4<u32>(55369u, u_input.a, u_input.c, 66265u)), vec4<u32>(u_input.a, u_input.a, u_input.b.x, 18842u) ^ vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.c)));
    var var_1 = Struct_5(!global0.a, global0.b);
    global1 = array<vec2<f32>, 2>();
    return u_input.b >> ((vec2<u32>(func_3(func_2(Struct_1(vec2<f32>(global0.b, global0.b), u_input.b.x, -1i, vec2<bool>(var_1.a, true), u_input.b.x), vec4<f32>(var_1.b, 1000f, global0.b, 418f)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, arg_1, -1i), arg_2.yyw)), 0u) >> (_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.a)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 113039u), u_input.b, u_input.b), vec2<u32>(_wgslsmith_mult_u32(4294967295u, 0u), u_input.b.x)) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, 417f))), _wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(abs(-358f))), _wgslsmith_f_op_f32(-global0.b)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1415f, 1499f, global0.b, 366f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_div_f32(-266f, -403f), 944f))))), select(global0.a, global0.a, all(vec3<bool>(true, false, true)) & global0.a) || false));
    let var_1 = Struct_2(4294967295u, select(!vec4<bool>(global0.a, all(vec2<bool>(global0.a, true)), any(vec4<bool>(true, global0.a, false, global0.a)), true), !select(select(vec4<bool>(global0.a, global0.a, false, false), vec4<bool>(false, true, true, true), vec4<bool>(global0.a, true, global0.a, true)), select(vec4<bool>(true, global0.a, true, false), vec4<bool>(global0.a, global0.a, true, true), vec4<bool>(global0.a, false, global0.a, false)), !vec4<bool>(global0.a, global0.a, global0.a, global0.a)), !vec4<bool>(global0.a, any(vec4<bool>(global0.a, true, true, global0.a)), var_0.x == 469f, any(vec2<bool>(global0.a, true)))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_1, 16018u), reverseBits(arg_0.x)), ~vec2<u32>(4294967295u, 90928u)), Struct_1(vec2<f32>(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(sign(639f)))), arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-34518i, 17474i, -38084i), select(vec3<i32>(-86327i, -34212i, -96971i), vec3<i32>(14241i, 0i, -22136i), true)), vec2<bool>(true, global0.a), _wgslsmith_mod_u32(func_1(~2147483647i, firstLeadingBit(30457i), vec4<i32>(-2147483647i, -4202i, 0i, 0i)).x, _wgslsmith_sub_u32(arg_0.x | 2124u, arg_1))), min(vec3<i32>(0i, countOneBits(0i), ~_wgslsmith_mod_i32(36938i, -1i)), max(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(25936i, 1i, -2147483647i)))));
    global1 = array<vec2<f32>, 2>();
    var var_2 = Struct_2(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(3205u, 1u)), _wgslsmith_add_vec2_u32(arg_0, var_1.c)), !vec4<bool>(true, var_1.b.x, any(select(var_1.b, vec4<bool>(true, var_1.d.d.x, var_1.b.x, false), false)), any(vec3<bool>(var_1.d.d.x, global0.a, true))), var_1.c, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.x, 681f), _wgslsmith_f_op_f32(-var_0.x)) - vec2<f32>(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(exp2(var_0.x)))), ~(~var_1.d.e), _wgslsmith_dot_vec2_i32(func_2(Struct_1(vec2<f32>(-293f, -1000f), 15193u, var_1.e.x, vec2<bool>(false, true), var_1.d.b), vec4<f32>(2302f, global0.b, var_0.x, var_0.x)).a.yz, ~(-vec2<i32>(var_1.d.c, 29481i))), var_1.b.ww, ~_wgslsmith_div_u32(1253u, arg_0.x) | (arg_1 >> (~1u % 32u))), var_1.e);
    var var_3 = Struct_2(~arg_0.x, vec4<bool>(true, !(!(var_1.d.a.x == var_1.d.a.x)), !any(!vec4<bool>(var_2.b.x, var_1.d.d.x, true, false)), any(var_2.d.d)), vec2<u32>(19947u, ~func_1(_wgslsmith_div_i32(-34834i, var_1.e.x), 1i, _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_2.d.c, var_1.d.c, -42664i), vec4<i32>(27436i, -21447i, var_1.e.x, var_1.d.c))).x), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.d.a.x + -746f), _wgslsmith_div_f32(1000f, global0.b))), ~abs(firstLeadingBit(315u)), ~min(~(-42067i), abs(-69540i)), !var_1.b.wx, ~_wgslsmith_mod_u32(arg_1, 4294967295u)), ~vec3<i32>(-42660i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e.x, 0i, -2147483647i, 34487i) | vec4<i32>(15969i, var_1.e.x, 39485i, var_2.d.c), vec4<i32>(var_2.d.c, 0i, 30287i, var_2.d.c)), var_1.d.c));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-731f, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-856f, var_1.d.a.x))) + vec2<f32>(1695f, _wgslsmith_f_op_f32(sign(-840f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.d.a, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(510f, var_1.d.a.x))), vec2<bool>(global0.a, var_1.d.d.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(611f, -1845f)))))), ~1u, _wgslsmith_add_i32(~_wgslsmith_div_i32(50685i, abs(-41629i)), ~((i32(-1i) * -1i) & -var_3.e.x)), select(!vec2<bool>(true, all(vec3<bool>(true, false, true))), var_1.d.d, var_1.d.d.x), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b & min(vec2<u32>(4294967295u, 4294967295u ^ _wgslsmith_add_u32(4294967295u, u_input.b.x)), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a, 125632u), vec3<u32>(0u, 46793u, u_input.c)), u_input.b.x & 1u));
    global0 = Struct_5(false, _wgslsmith_div_f32(-1299f, _wgslsmith_f_op_f32(f32(-1f) * -1233f)));
    var var_1 = global1[_wgslsmith_index_u32(~(~var_0.x), 2u)];
    global2 = array<Struct_4, 18>();
    let var_2 = func_4(func_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -40083i, -5025i, 1i), vec4<i32>(-28658i, -1i, 17134i, -3139i)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-2994i, 2147483647i))), -_wgslsmith_add_i32(37165i, -19249i), ~vec4<i32>(1i, 1i, 1i, 1i)) << (max(~func_2(Struct_1(vec2<f32>(-245f, -964f), u_input.a, -43858i, vec2<bool>(true, true), var_0.x), vec4<f32>(var_1.x, -1450f, global0.b, 900f)).c.yz, func_1(func_2(Struct_1(vec2<f32>(-242f, 962f), var_0.x, -2147483647i, vec2<bool>(false, false), 0u), vec4<f32>(var_1.x, 680f, global0.b, -500f)).a.x, 1i, vec4<i32>(885i, 97011i, 1i, 2147483647i))) % vec2<u32>(32u)), 1u);
    var var_3 = ~1826u;
    var var_4 = all(vec3<bool>(!select(true, !var_2.d.x, global0.a), any(var_2.d) | true, var_2.d.x));
    var var_5 = _wgslsmith_div_vec3_i32(~vec3<i32>(max(-18384i, -66244i >> (1u % 32u)), var_2.c, var_2.c), _wgslsmith_div_vec3_i32(-(~(vec3<i32>(var_2.c, 21061i, -2147483647i) >> (vec3<u32>(var_0.x, var_2.e, var_0.x) % vec3<u32>(32u)))), select(-vec3<i32>(var_2.c, var_2.c, 36717i), ~vec3<i32>(6908i, 2147483647i, var_2.c), var_2.d.x && any(vec4<bool>(global0.a, true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_2.a.x)), -399f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, var_1.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1930f, -648f) * vec2<f32>(var_2.a.x, global0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_2.a.x) * global1[_wgslsmith_index_u32(1u, 2u)]))))), _wgslsmith_mult_vec2_u32(~(~u_input.b) ^ _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(31211u, 1u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_2.b), max(u_input.b, vec2<u32>(40282u, u_input.b.x)))), -_wgslsmith_mod_i32(abs(-var_5.x), _wgslsmith_sub_i32(~50593i, var_2.c)));
}

