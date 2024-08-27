struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2385f;

var<private> global1: u32;

var<private> global2: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 32330i), vec2<i32>(-25180i, -1i), vec2<i32>(1i, -39285i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), 17518i), vec2<i32>(-53453i, 50478i), vec2<i32>(-26168i, -22173i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(26918i, 1i), vec2<i32>(-29032i, 1i), vec2<i32>(-64988i, 16283i), vec2<i32>(1i, 9813i), vec2<i32>(-1i, 1970i), vec2<i32>(0i, -27821i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, 1086i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(-30767i, -4578i), vec2<i32>(i32(-2147483648), -7849i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-137f, -1711f)))));
    global0 = var_0.x;
    let var_1 = any(!(!(!(!vec4<bool>(arg_0.x, true, false, arg_0.x)))));
    var var_2 = _wgslsmith_clamp_i32(-u_input.e.x, ~u_input.b, u_input.e.x);
    return ~select(74081u, u_input.d, arg_0.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global1 = _wgslsmith_mod_u32(func_3(vec3<bool>(true, true, true)) | 1u, select(_wgslsmith_add_u32(arg_0.e.d, _wgslsmith_mult_u32(u_input.d, _wgslsmith_add_u32(u_input.c, arg_1.a.x))), _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.d, arg_1.a.x), 1u), all(vec2<bool>(any(vec3<bool>(true, true, true)), true))));
    global2 = array<vec2<i32>, 22>();
    global2 = array<vec2<i32>, 22>();
    var var_0 = !(!(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(false, true, false, false), true)));
    let var_1 = !vec3<bool>(true, arg_0.d.d < ~arg_1.b.x, select(any(vec2<bool>(true, false)), true, var_0.x));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global2 = array<vec2<i32>, 22>();
    let var_0 = arg_2.e;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(493f))));
    var_1 = _wgslsmith_f_op_f32(step(-276f, arg_0.c));
    global0 = _wgslsmith_f_op_f32(575f * _wgslsmith_f_op_f32(-arg_2.e.c));
    return func_2(arg_2, Struct_1(vec4<u32>(1u, 34502u, 1u, arg_0.a.x), (var_0.a.zw << (~vec2<u32>(72737u, 4294967295u) % vec2<u32>(32u))) ^ ((vec2<u32>(4294967295u, 1u) ^ u_input.a) >> ((var_0.a.zy & u_input.a) % vec2<u32>(32u))), 1f, ~_wgslsmith_dot_vec4_u32(arg_2.b.a, arg_2.b.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = ((arg_0.a ^ arg_0.a) << ((~52280u | select(arg_1.d, ~arg_0.b.d, true)) % 32u)) != u_input.e.x;
    let var_1 = vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(u_input.e | firstLeadingBit(global2[_wgslsmith_index_u32(u_input.c, 22u)]), vec2<i32>(reverseBits(-46563i), _wgslsmith_add_i32(-8904i, u_input.b)));
    var var_2 = arg_1.c;
    let var_3 = arg_2.d;
    return Struct_1(max(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.d, 20598u), 61786u, func_2(Struct_2(-54517i, Struct_1(vec4<u32>(u_input.c, arg_1.b.x, var_3.b.x, 1u), arg_0.b.a.ww, arg_1.c, arg_0.e.a.x), arg_0.c, Struct_1(vec4<u32>(54153u, arg_1.b.x, arg_0.b.d, u_input.d), vec2<u32>(arg_0.e.d, 1u), arg_0.b.c, u_input.d), Struct_1(vec4<u32>(arg_1.a.x, 62400u, arg_2.e.b.x, arg_0.d.b.x), vec2<u32>(arg_1.b.x, arg_2.b.d), 915f, 59780u)), arg_1).b.b.x, _wgslsmith_add_u32(78500u, 11907u)), vec4<u32>(_wgslsmith_add_u32(0u, 0u), func_1(Struct_1(vec4<u32>(58476u, arg_0.e.b.x, arg_1.d, 79927u), u_input.a, -1504f, var_3.b.x), var_0, Struct_2(var_1.x, arg_1, vec4<f32>(arg_2.d.c, -887f, arg_2.c.x, -778f), arg_0.b, arg_2.e)).b.d, abs(arg_2.b.a.x), 52165u)), var_3.a), u_input.a, var_3.c, func_2(arg_2, Struct_1(vec4<u32>(var_3.d, firstLeadingBit(0u), 0u, 30404u << (arg_0.e.d % 32u)), vec2<u32>(0u, ~arg_1.d), arg_1.c, ~arg_1.b.x)).b.d);
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = func_1(func_2(Struct_2(func_1(arg_2, all(vec3<bool>(true, true, true)), Struct_2(arg_3, arg_2, vec4<f32>(-840f, arg_1.x, -328f, -1000f), Struct_1(arg_2.a, vec2<u32>(arg_2.a.x, arg_2.a.x), 1040f, u_input.d), arg_2)).a, Struct_1(vec4<u32>(33689u, 9463u, arg_2.d, arg_2.a.x), func_2(Struct_2(-1i, arg_2, vec4<f32>(arg_1.x, arg_2.c, 155f, -1657f), Struct_1(vec4<u32>(u_input.d, arg_2.d, arg_2.a.x, arg_2.d), u_input.a, arg_1.x, u_input.a.x), Struct_1(arg_2.a, arg_2.a.xx, arg_0, 0u)), arg_2).b.b, _wgslsmith_f_op_f32(f32(-1f) * -419f), 90470u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(442f, arg_0, -387f, 1000f)))), func_4(func_1(arg_2, true, Struct_2(arg_3, Struct_1(vec4<u32>(u_input.a.x, u_input.d, arg_2.d, 1u), arg_2.a.zz, -1417f, 1u), vec4<f32>(arg_2.c, -1000f, -2472f, arg_2.c), Struct_1(arg_2.a, vec2<u32>(arg_2.a.x, 0u), 1440f, 1u), Struct_1(vec4<u32>(122599u, 0u, 0u, u_input.d), arg_2.a.yy, 1055f, 27155u))), func_1(Struct_1(vec4<u32>(4294967295u, 0u, u_input.d, 20358u), arg_2.b, arg_0, u_input.d), false, Struct_2(35178i, arg_2, vec4<f32>(arg_1.x, -588f, 607f, arg_0), arg_2, arg_2)).b, func_1(Struct_1(arg_2.a, u_input.a, 446f, 39729u), true, Struct_2(arg_3, Struct_1(arg_2.a, u_input.a, 1000f, u_input.a.x), vec4<f32>(arg_0, -820f, -1460f, arg_0), Struct_1(arg_2.a, vec2<u32>(106675u, 1u), arg_1.x, 26339u), arg_2))), func_4(Struct_2(arg_3, arg_2, vec4<f32>(-665f, -1452f, -141f, arg_0), arg_2, Struct_1(vec4<u32>(46642u, 1u, 4294967295u, 32744u), u_input.a, arg_1.x, arg_2.b.x)), func_1(Struct_1(vec4<u32>(5048u, arg_2.a.x, 69475u, 12431u), vec2<u32>(arg_2.b.x, u_input.a.x), arg_2.c, 0u), true, Struct_2(arg_3, Struct_1(arg_2.a, vec2<u32>(0u, u_input.a.x), arg_0, 87432u), vec4<f32>(arg_1.x, 316f, arg_1.x, arg_2.c), Struct_1(arg_2.a, vec2<u32>(4294967295u, arg_2.d), arg_2.c, 0u), arg_2)).b, func_2(Struct_2(52509i, Struct_1(arg_2.a, u_input.a, arg_2.c, 0u), vec4<f32>(arg_1.x, -1521f, -396f, -1050f), Struct_1(vec4<u32>(arg_2.a.x, arg_2.b.x, 18496u, 5840u), u_input.a, arg_2.c, arg_2.d), Struct_1(vec4<u32>(1u, 19046u, u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.a.x), arg_2.c, 23680u)), Struct_1(arg_2.a, arg_2.a.xw, -498f, 1u)))), func_4(func_1(func_4(Struct_2(1i, arg_2, vec4<f32>(arg_2.c, arg_0, arg_1.x, 639f), arg_2, Struct_1(arg_2.a, vec2<u32>(1u, arg_2.a.x), arg_0, 11124u)), Struct_1(vec4<u32>(u_input.c, u_input.c, 52465u, u_input.a.x), arg_2.a.yw, arg_2.c, arg_2.d), Struct_2(u_input.b, Struct_1(arg_2.a, arg_2.b, -154f, u_input.d), vec4<f32>(arg_1.x, -405f, 1274f, arg_1.x), arg_2, arg_2)), true, func_1(arg_2, false, Struct_2(5338i, arg_2, vec4<f32>(arg_0, -818f, arg_0, -166f), arg_2, Struct_1(vec4<u32>(68935u, arg_2.b.x, 16316u, u_input.d), arg_2.a.yy, arg_0, 7733u)))), Struct_1(vec4<u32>(u_input.d, u_input.d, u_input.c, 12030u) & arg_2.a, func_4(Struct_2(2147483647i, Struct_1(vec4<u32>(arg_2.a.x, 1u, arg_2.b.x, arg_2.a.x), u_input.a, arg_1.x, u_input.a.x), vec4<f32>(464f, 998f, arg_0, -1210f), arg_2, Struct_1(vec4<u32>(u_input.d, arg_2.b.x, 1u, u_input.d), vec2<u32>(arg_2.b.x, 1u), -340f, 4294967295u)), arg_2, Struct_2(arg_3, arg_2, vec4<f32>(321f, arg_0, arg_1.x, arg_2.c), Struct_1(vec4<u32>(1u, arg_2.d, 0u, 0u), vec2<u32>(arg_2.b.x, u_input.d), -1034f, arg_2.b.x), arg_2)).b, arg_0, u_input.d), func_1(Struct_1(arg_2.a, vec2<u32>(24783u, 1u), arg_2.c, u_input.c), select(false, false, true), Struct_2(arg_3, arg_2, vec4<f32>(arg_1.x, arg_2.c, -555f, 141f), arg_2, Struct_1(arg_2.a, u_input.a, arg_2.c, arg_2.d))))).d, !(!(_wgslsmith_f_op_f32(step(arg_0, 1172f)) == _wgslsmith_f_op_f32(ceil(-1096f)))), func_1(func_2(Struct_2(~(-27962i), Struct_1(vec4<u32>(arg_2.d, u_input.c, 0u, arg_2.d), vec2<u32>(arg_2.b.x, 0u), -719f, u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(749f, arg_2.c, arg_2.c, 622f)), func_2(Struct_2(u_input.b, Struct_1(arg_2.a, u_input.a, -413f, u_input.c), vec4<f32>(arg_0, arg_0, 2409f, arg_1.x), arg_2, arg_2), arg_2).e, arg_2), Struct_1(select(vec4<u32>(0u, arg_2.d, arg_2.d, arg_2.b.x), vec4<u32>(36184u, 0u, 0u, arg_2.a.x), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec2_u32(arg_2.a.zz, arg_2.a.zy), arg_2.c, 1u)).e, !(~0u <= u_input.d), func_2(func_1(Struct_1(vec4<u32>(4294967295u, 34617u, 1u, u_input.c), u_input.a, -1270f, u_input.d), true, func_2(Struct_2(arg_3, Struct_1(arg_2.a, u_input.a, 310f, 112048u), vec4<f32>(1000f, arg_1.x, arg_1.x, -1204f), arg_2, Struct_1(arg_2.a, u_input.a, -759f, 34014u)), Struct_1(vec4<u32>(u_input.d, arg_2.b.x, arg_2.d, 34268u), vec2<u32>(u_input.d, 0u), arg_1.x, arg_2.d))), func_4(func_1(arg_2, true, Struct_2(u_input.e.x, Struct_1(vec4<u32>(1u, 4294967295u, arg_2.a.x, 4294967295u), vec2<u32>(arg_2.d, 1u), arg_1.x, 0u), vec4<f32>(1741f, arg_2.c, 211f, arg_1.x), Struct_1(arg_2.a, u_input.a, -1000f, 24158u), Struct_1(vec4<u32>(u_input.a.x, arg_2.d, 4294967295u, 66396u), vec2<u32>(arg_2.d, 1u), -689f, 15621u))), Struct_1(arg_2.a, vec2<u32>(4294967295u, 1u), arg_2.c, u_input.d), Struct_2(-2147483647i, arg_2, vec4<f32>(arg_0, 431f, -861f, arg_2.c), Struct_1(vec4<u32>(25284u, u_input.c, 60266u, 23753u), vec2<u32>(1u, u_input.d), arg_2.c, 4294967295u), Struct_1(vec4<u32>(18009u, arg_2.a.x, 1u, 25114u), vec2<u32>(arg_2.d, 4294967295u), arg_2.c, u_input.a.x)))))).e;
    global1 = _wgslsmith_mult_u32(arg_2.a.x ^ ~(~36048u >> (1u % 32u)), func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)))));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(func_1(func_1(arg_2, false, Struct_2(u_input.e.x, Struct_1(var_0.a, vec2<u32>(45744u, u_input.a.x), arg_2.c, var_0.a.x), vec4<f32>(-706f, arg_1.x, 1876f, arg_2.c), Struct_1(var_0.a, u_input.a, arg_0, 1u), Struct_1(arg_2.a, vec2<u32>(1u, var_0.a.x), -562f, var_0.a.x))).b, true, Struct_2(arg_3, Struct_1(vec4<u32>(u_input.d, 4294967295u, 3762u, 4294967295u), vec2<u32>(u_input.d, 55973u), -648f, u_input.d), vec4<f32>(arg_1.x, 345f, arg_1.x, 1253f), Struct_1(var_0.a, var_0.b, arg_2.c, var_0.b.x), Struct_1(var_0.a, arg_2.b, arg_1.x, 29940u))).a, u_input.b), ~(-6793i), arg_3) | _wgslsmith_mod_vec3_i32(vec3<i32>(-arg_3, arg_3 >> (30820u % 32u), -arg_3) & -(~vec3<i32>(-62320i, u_input.b, -2147483647i)), max(vec3<i32>(abs(24243i), 0i, arg_3), min(vec3<i32>(2147483647i, 32267i, -17290i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_3, -9202i), vec3<i32>(2147483647i, -1i, arg_3)))));
    global1 = ((min(0u, 0u) << (0u % 32u)) & ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_2.a.x, u_input.a.x, u_input.a.x), 0u)) | func_1(arg_2, true, Struct_2(countOneBits(-32481i), func_1(func_1(Struct_1(var_0.a, var_0.a.wy, -1789f, var_0.b.x), true, Struct_2(0i, Struct_1(vec4<u32>(var_0.a.x, 20850u, u_input.c, arg_2.b.x), arg_2.a.zy, 659f, u_input.a.x), vec4<f32>(var_0.c, 931f, arg_2.c, arg_0), Struct_1(vec4<u32>(27982u, var_0.a.x, arg_2.b.x, var_0.b.x), var_0.a.xz, arg_2.c, 1u), arg_2)).e, false, Struct_2(24272i, Struct_1(vec4<u32>(4294967295u, 0u, u_input.a.x, 56331u), var_0.a.xw, -1000f, arg_2.d), vec4<f32>(-1000f, arg_1.x, 311f, arg_2.c), Struct_1(arg_2.a, var_0.a.yw, arg_2.c, u_input.d), arg_2)).e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1026f, arg_2.c, -1306f, var_0.c)))), Struct_1(firstTrailingBit(var_0.a), vec2<u32>(var_0.a.x, 9897u), _wgslsmith_f_op_f32(-2302f - arg_0), u_input.d), Struct_1(~vec4<u32>(6235u, 0u, u_input.a.x, var_0.b.x), select(vec2<u32>(var_0.d, 95157u), vec2<u32>(1u, var_0.d), true), -642f, 4294967295u))).e.a.x;
    let var_2 = func_1(arg_2, (select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.e.x, 60466i, 2715i), vec4<i32>(arg_3, var_1.x, 23438i, 7811i)), arg_3, all(vec2<bool>(true, false))) << (17698u % 32u)) > _wgslsmith_mod_i32(1i ^ arg_3, var_1.x), Struct_2(-7173i >> (1u % 32u), arg_2, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-791f, arg_2.c, arg_0, arg_1.x), func_1(arg_2, false, Struct_2(arg_3, Struct_1(arg_2.a, vec2<u32>(24552u, 1352u), -258f, 43930u), vec4<f32>(-1695f, -2562f, -1293f, 1294f), arg_2, Struct_1(var_0.a, vec2<u32>(476u, var_0.a.x), arg_2.c, arg_2.a.x))).c, vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.c, var_0.c, arg_0, var_0.c))))), false)), arg_2, arg_2));
    return var_2;
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> vec4<i32> {
    let var_0 = 35254u;
    var var_1 = vec3<u32>(31485u, func_3(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(true, false, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), arg_1.e.a.x >> (var_0 % 32u));
    global0 = _wgslsmith_f_op_f32(step(1129f, -554f));
    let var_2 = func_2(func_5(_wgslsmith_f_op_f32(arg_1.d.c * 1199f), arg_1.c.xz, func_4(func_1(arg_1.d, true, func_5(arg_1.b.c, vec2<f32>(arg_1.e.c, -1055f), Struct_1(arg_1.e.a, vec2<u32>(25741u, 23606u), arg_1.b.c, 1u), 2147483647i)), func_2(arg_1, arg_1.e).b, Struct_2(-10142i, func_5(arg_1.b.c, arg_1.c.xy, Struct_1(vec4<u32>(44530u, 33013u, 0u, arg_1.d.b.x), u_input.a, 1000f, arg_1.e.d), 0i).e, _wgslsmith_f_op_vec4_f32(vec4<f32>(-818f, 1570f, arg_1.b.c, -900f) + arg_1.c), Struct_1(arg_1.d.a, var_1.zx, 364f, u_input.d), Struct_1(vec4<u32>(33345u, 0u, arg_1.e.a.x, arg_1.b.a.x), vec2<u32>(21797u, var_0), arg_1.c.x, 32312u))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, arg_2, u_input.e.x), vec3<i32>(arg_1.a, -7274i, -2147483647i)), ~vec3<i32>(-13007i, 27310i, arg_2)), -_wgslsmith_mult_vec3_i32(vec3<i32>(-62644i, u_input.e.x, arg_1.a), vec3<i32>(u_input.e.x, -2147483647i, arg_2)))), func_2(Struct_2(reverseBits(-1i), func_1(arg_1.e, true, func_2(arg_1, arg_1.d)).d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, -1039f, 190f, arg_1.d.c)), Struct_1(arg_1.b.a, vec2<u32>(arg_1.d.d, 35774u), _wgslsmith_f_op_f32(-1250f * arg_1.c.x), min(4294967295u, var_1.x)), Struct_1(vec4<u32>(0u, var_0, var_1.x, var_0) << (vec4<u32>(u_input.d, 37391u, 58412u, 30647u) % vec4<u32>(32u)), _wgslsmith_sub_vec2_u32(arg_1.d.b, vec2<u32>(var_0, arg_1.e.b.x)), 160f, func_3(vec3<bool>(false, false, false)))), func_1(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 0u, var_1.x, 0u), vec4<u32>(var_0, 0u, 55812u, 1413u)), vec2<u32>(var_0, arg_1.b.b.x), _wgslsmith_f_op_f32(floor(arg_1.e.c)), select(25630u, 0u, false)), true, Struct_2(_wgslsmith_sub_i32(-2147483647i, arg_1.a), arg_1.d, arg_1.c, func_5(-211f, vec2<f32>(324f, arg_1.e.c), arg_1.d, 20895i).d, Struct_1(vec4<u32>(arg_1.e.a.x, u_input.d, 31898u, 1439u), vec2<u32>(30505u, u_input.d), 401f, var_0))).e).e).e;
    global1 = ~4294967295u;
    return firstTrailingBit(max(-vec4<i32>(-1i, u_input.e.x, 2147483647i, 0i) & vec4<i32>(1i, arg_1.a, -2147483647i, 73790i), vec4<i32>(_wgslsmith_mult_i32(32015i, arg_1.a), -u_input.e.x, -2147483647i, firstLeadingBit(arg_1.a))) << (vec4<u32>(~(1u << (u_input.c % 32u)), ~(~var_1.x), 11859u, _wgslsmith_add_u32(func_2(arg_1, arg_1.e).b.b.x, var_1.x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(func_6(reverseBits(-1i), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1962f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 164f) - vec2<f32>(407f, -750f)) + vec2<f32>(483f, -1752f)), func_4(func_1(Struct_1(vec4<u32>(u_input.c, 17356u, 0u, 1u), u_input.a, -243f, u_input.d), false, Struct_2(-26922i, Struct_1(vec4<u32>(u_input.c, 41963u, 1u, u_input.c), u_input.a, -433f, u_input.d), vec4<f32>(-1000f, -1274f, 1000f, -546f), Struct_1(vec4<u32>(40614u, u_input.c, 61332u, u_input.a.x), u_input.a, 194f, 4294967295u), Struct_1(vec4<u32>(u_input.c, 37632u, u_input.a.x, u_input.c), vec2<u32>(u_input.a.x, 27767u), -1000f, u_input.d))), Struct_1(vec4<u32>(u_input.c, u_input.a.x, u_input.d, 4294967295u), u_input.a, 246f, 1u), func_1(Struct_1(vec4<u32>(u_input.a.x, 17910u, u_input.a.x, 28039u), u_input.a, -833f, u_input.a.x), false, Struct_2(u_input.b, Struct_1(vec4<u32>(15198u, 1u, u_input.d, u_input.d), u_input.a, -958f, 1407u), vec4<f32>(775f, 2463f, 135f, -2041f), Struct_1(vec4<u32>(86980u, 4294967295u, 14810u, u_input.d), u_input.a, 638f, u_input.a.x), Struct_1(vec4<u32>(30357u, u_input.c, 73501u, u_input.d), u_input.a, -1262f, 8654u)))), -countOneBits(9004i)), _wgslsmith_div_i32(u_input.b, -3440i)), vec4<i32>(2147483647i, abs(-u_input.e.x), u_input.b, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x), vec3<i32>(u_input.e.x, -416i, 56450i))) >> ((~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)) | ~vec4<u32>(0u, 1u, 0u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(-1i) * -(~(vec4<i32>(u_input.e.x, u_input.e.x, -54916i, u_input.b) | vec4<i32>(u_input.b, -41015i, u_input.b, -1i))));
    var var_1 = all(select(vec3<bool>(true, !any(vec3<bool>(false, true, true)), all(vec2<bool>(true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), any(vec2<bool>(false, true))), !select(false, true, true)));
    let var_2 = vec3<i32>(var_0.x, var_0.x, min(var_0.x, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-15777i, u_input.b, 1i, var_0.x)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_0.x, var_0.x, u_input.b), vec4<i32>(u_input.e.x, var_0.x, -2147483647i, var_0.x), vec4<i32>(0i, 1i, -35670i, u_input.b)), reverseBits(vec4<i32>(-33586i, -30713i, var_0.x, u_input.e.x))))));
    let var_3 = Struct_2(func_2(Struct_2(-76157i, Struct_1(vec4<u32>(106898u, u_input.c, u_input.d, u_input.c), reverseBits(u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -869f), _wgslsmith_mult_u32(u_input.c, u_input.d)), vec4<f32>(_wgslsmith_div_f32(-504f, -412f), -525f, _wgslsmith_f_op_f32(316f - 1513f), _wgslsmith_f_op_f32(sign(-1687f))), Struct_1(reverseBits(vec4<u32>(u_input.d, 1u, u_input.c, 55277u)), u_input.a, _wgslsmith_f_op_f32(select(109f, 134f, true)), 1u), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, u_input.c), vec4<u32>(u_input.a.x, 1u, u_input.d, u_input.c)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.d, 46459u)), _wgslsmith_div_f32(-1638f, 705f), select(0u, 26871u, true))), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 4294967295u, 1u), vec4<u32>(43070u, 55130u, u_input.c, 28306u)), _wgslsmith_mod_u32(0u, u_input.a.x), u_input.d << (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 44404u, 4294967295u), vec4<u32>(u_input.d, 2556u, u_input.a.x, u_input.a.x))), u_input.a, _wgslsmith_f_op_f32(trunc(248f)), ~(~61791u))).a, Struct_1(min(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 36542u), 1u, func_4(Struct_2(u_input.e.x, Struct_1(vec4<u32>(u_input.d, u_input.a.x, u_input.c, u_input.d), u_input.a, -758f, 1u), vec4<f32>(1221f, -1089f, 977f, 141f), Struct_1(vec4<u32>(u_input.a.x, 1u, u_input.c, 0u), vec2<u32>(0u, 45544u), -1000f, 0u), Struct_1(vec4<u32>(38888u, u_input.d, u_input.c, u_input.d), vec2<u32>(4294967295u, 1u), -1152f, 36048u)), Struct_1(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 1832u), vec2<u32>(1u, 80253u), -941f, u_input.d), Struct_2(0i, Struct_1(vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.d), vec2<u32>(u_input.d, 30566u), -893f, 23472u), vec4<f32>(1395f, 397f, 1902f, -956f), Struct_1(vec4<u32>(39203u, u_input.d, u_input.d, 62654u), u_input.a, -1440f, u_input.d), Struct_1(vec4<u32>(u_input.c, u_input.d, 26319u, u_input.c), u_input.a, -677f, u_input.d))).d, u_input.a.x), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, u_input.a.x, 0u), vec4<u32>(4294967295u, u_input.d, u_input.d, 1u) & vec4<u32>(u_input.c, u_input.a.x, 28206u, u_input.a.x))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1296f * -1488f) - _wgslsmith_f_op_f32(sign(909f)))), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 17073u, u_input.c), vec4<u32>(u_input.c, u_input.d, 65744u, u_input.c)), u_input.c >> (108659u % 32u)), ~u_input.d & ~u_input.c)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1077f, _wgslsmith_f_op_f32(sign(-317f)), _wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(func_2(Struct_2(var_2.x, Struct_1(vec4<u32>(4294967295u, 15485u, u_input.d, u_input.d), vec2<u32>(u_input.a.x, u_input.c), 1362f, u_input.a.x), vec4<f32>(-1000f, -389f, -1230f, -1000f), Struct_1(vec4<u32>(u_input.d, 4294967295u, u_input.c, 0u), u_input.a, -864f, u_input.d), Struct_1(vec4<u32>(0u, u_input.a.x, u_input.c, u_input.d), vec2<u32>(0u, u_input.a.x), -1520f, 33463u)), Struct_1(vec4<u32>(u_input.a.x, 54933u, u_input.a.x, 19435u), vec2<u32>(u_input.a.x, 4294967295u), 1508f, 8845u)).d.c - 244f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-247f, 2005f), _wgslsmith_f_op_f32(513f * 241f), -1368f, _wgslsmith_f_op_f32(f32(-1f) * -845f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 2242f, -2092f, -256f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1988f, -1252f, -231f, -809f))), !all(vec4<bool>(true, false, false, false)))), true && any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true)))), Struct_1(max(vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.d), func_5(186f, vec2<f32>(-1000f, -606f), Struct_1(vec4<u32>(u_input.d, 56075u, 14877u, u_input.d), vec2<u32>(u_input.d, u_input.d), 1568f, 1u), u_input.b).d.d, _wgslsmith_mult_u32(u_input.d, 33338u), firstTrailingBit(u_input.c)), vec4<u32>(1u, 22290u, u_input.a.x, 0u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, 9567u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.d)) % vec4<u32>(32u))), vec2<u32>(~(~29973u), u_input.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-288f, -776f))))), ~(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), Struct_1(select(~(vec4<u32>(u_input.d, 47299u, u_input.d, 1u) & vec4<u32>(u_input.a.x, 45863u, 1u, u_input.d)), ~(~vec4<u32>(37053u, u_input.a.x, 4294967295u, 4294967295u)), vec4<bool>(true, true, true, true)), u_input.a, _wgslsmith_f_op_f32(sign(465f)), min(~0u, u_input.a.x)));
    global1 = ~((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 42170u, var_3.e.a.x, 58631u), vec4<u32>(1u, 1u, 4294967295u, u_input.a.x)) ^ 4294967295u) ^ 1u) | u_input.a.x;
    let var_4 = ~(~var_2);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, u_input.a.x, var_3.b.d, func_2(Struct_2(_wgslsmith_mult_i32(var_2.x, u_input.e.x), var_3.d, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_3.c))), func_5(-1568f, var_3.c.yy, func_4(Struct_2(-1i, var_3.b, var_3.c, Struct_1(var_3.d.a, vec2<u32>(6226u, 24612u), -885f, 1u), Struct_1(var_3.b.a, u_input.a, -715f, var_3.e.b.x)), Struct_1(vec4<u32>(var_3.d.d, 0u, 27399u, 0u), vec2<u32>(u_input.a.x, 0u), var_3.d.c, u_input.a.x), var_3), var_3.a).e, var_3.d), func_4(func_2(var_3, func_1(var_3.d, false, var_3).b), Struct_1(firstTrailingBit(var_3.e.a), var_3.d.b, func_4(var_3, var_3.d, Struct_2(-16160i, Struct_1(vec4<u32>(4294967295u, 32009u, 13750u, var_3.b.d), vec2<u32>(var_3.d.a.x, 1u), var_3.b.c, 4294967295u), var_3.c, Struct_1(var_3.b.a, u_input.a, var_3.e.c, 29360u), Struct_1(var_3.d.a, vec2<u32>(u_input.d, 0u), 1000f, var_3.b.b.x))).c, ~var_3.e.a.x), func_2(var_3, func_5(var_3.b.c, var_3.c.xy, Struct_1(var_3.e.a, vec2<u32>(var_3.e.b.x, 1u), -204f, 4294967295u), var_0.x).b))).b.c);
}

