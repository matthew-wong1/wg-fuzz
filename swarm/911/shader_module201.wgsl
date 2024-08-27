struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(17767i, -5695i, 1i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), 1832i, i32(-2147483648)), vec3<i32>(-17636i, 0i, -1i), vec3<i32>(1i, 1i, -1i), vec3<i32>(0i, -3282i, 7300i), vec3<i32>(34967i, -1i, 4815i), vec3<i32>(30238i, 2147483647i, 0i), vec3<i32>(-1i, 1i, 36396i), vec3<i32>(2147483647i, 9094i, 1i), vec3<i32>(2147483647i, -12834i, 4893i), vec3<i32>(-1i, 7896i, -36196i), vec3<i32>(-4649i, 2147483647i, 2147483647i));

var<private> global1: array<vec3<i32>, 26>;

var<private> global2: f32 = 2180f;

var<private> global3: vec2<u32> = vec2<u32>(87064u, 40133u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: f32) -> u32 {
    global1 = array<vec3<i32>, 26>();
    global1 = array<vec3<i32>, 26>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, arg_2.b.d.a, arg_2.a.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1755f, arg_3, arg_1.b.a.a), vec3<f32>(arg_2.e.d.a, arg_3, arg_1.a.e.d.a)))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.e.d.a, 277f, arg_1.a.a.a), vec3<f32>(arg_1.a.e.c.a, arg_1.b.a.a, 188f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(168f, 129f, arg_2.a.a) - vec3<f32>(arg_2.b.c.a, -1158f, arg_3)))) + vec3<f32>(arg_3, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(379f)))), 301f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(780f, arg_3, arg_2.b.c.a)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2443f, 228f, arg_2.a.a), vec3<f32>(506f, arg_2.b.c.a, arg_3))))))), all(!(!vec3<bool>(arg_1.a.c, arg_1.b.c, arg_1.a.c)))));
    let var_1 = var_0;
    var var_2 = Struct_2(~(~_wgslsmith_mod_u32(~0u, 35336u)), arg_1.b.e.b, arg_2.e.c, Struct_1(arg_3, arg_0.x));
    return 4294967295u;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<f32>) -> Struct_1 {
    global3 = ~(~vec2<u32>(func_3(vec3<u32>(4294967295u, 3778u, u_input.b), Struct_4(Struct_3(Struct_1(-1107f, 103230u), Struct_2(global3.x, vec4<i32>(u_input.d.x, -1i, -2147483647i, -560i), Struct_1(arg_2.x, global3.x), Struct_1(600f, 41632u)), arg_0, u_input.d.yz, Struct_2(arg_1.x, vec4<i32>(u_input.d.x, 0i, u_input.e, u_input.d.x), Struct_1(arg_2.x, u_input.b), Struct_1(arg_2.x, global3.x))), Struct_3(Struct_1(arg_2.x, 1u), Struct_2(arg_1.x, u_input.d, Struct_1(1366f, 1u), Struct_1(244f, 0u)), true, u_input.d.wz, Struct_2(0u, u_input.d, Struct_1(-314f, global3.x), Struct_1(1132f, 1u))), 67349u), Struct_3(Struct_1(-1113f, 90857u), Struct_2(global3.x, vec4<i32>(7995i, u_input.d.x, 0i, u_input.e), Struct_1(1000f, arg_1.x), Struct_1(-1037f, 13140u)), true, vec2<i32>(22535i, 6605i), Struct_2(arg_1.x, u_input.d, Struct_1(arg_2.x, 0u), Struct_1(1072f, 32185u))), arg_2.x), 45695u) >> ((~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, global3.x), vec2<u32>(81650u, u_input.a)) >> (firstLeadingBit(arg_1) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_0 = arg_1.x;
    var var_1 = Struct_4(Struct_3(Struct_1(arg_2.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0, 0u, u_input.b, var_0), vec4<u32>(var_0, 42763u, var_0, 77436u), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), ~vec4<u32>(0u, 38373u, global3.x, 1u))), Struct_2(1u & firstLeadingBit(global3.x), firstTrailingBit(_wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(45074i, u_input.e, u_input.d.x, -28107i))), Struct_1(_wgslsmith_f_op_f32(-arg_2.x), 15356u << (arg_1.x % 32u)), Struct_1(_wgslsmith_f_op_f32(-arg_2.x), global3.x)), arg_0, -_wgslsmith_mod_vec2_i32(u_input.d.zx, u_input.d.zx ^ u_input.d.zx), Struct_2(~(~var_0), vec4<i32>(i32(-1i) * -30681i, -6689i | u_input.d.x, 1i, 1i), Struct_1(782f, var_0), Struct_1(_wgslsmith_f_op_f32(min(-1049f, arg_2.x)), arg_1.x >> (691u % 32u)))), Struct_3(Struct_1(arg_2.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0, 61298u), 0u)), Struct_2(u_input.a, vec4<i32>(0i, u_input.e, -25144i, u_input.e) << (countOneBits(vec4<u32>(var_0, global3.x, u_input.a, 35224u)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(1142f - arg_2.x), _wgslsmith_div_u32(50494u, 64584u)), Struct_1(_wgslsmith_f_op_f32(-arg_2.x), 89146u << (1u % 32u))), arg_0, vec2<i32>(~u_input.d.x, u_input.d.x), Struct_2(abs(~0u), u_input.d, Struct_1(_wgslsmith_f_op_f32(floor(329f)), 40597u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -182f), global3.x >> (52108u % 32u)))), var_0);
    var var_2 = Struct_4(var_1.b, var_1.b, 1u);
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.b.d.a, -463f, 264f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.e.c.a, arg_2.x, -344f))))))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.b.c.a, -439f) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1364f, -503f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) - _wgslsmith_f_op_f32(var_2.a.b.c.a * var_2.a.e.c.a)))), u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    global0 = array<vec3<i32>, 13>();
    let var_0 = Struct_5(global3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<f32>(-334f, -630f, arg_0.a, arg_0.a), vec4<bool>(true, true, true, false)))), vec4<f32>(-1658f, _wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a))))));
    global0 = array<vec3<i32>, 13>();
    var var_1 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2341f)) * func_2(false, vec2<u32>(17765u, 27987u), var_0.b.yx).a), 78191u >> (_wgslsmith_sub_u32(4294967295u, arg_0.b) % 32u)), Struct_2(0u, u_input.d, func_2(u_input.c >= 0u, _wgslsmith_mult_vec2_u32(vec2<u32>(2351u, 9612u), vec2<u32>(u_input.b, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -1000f))), Struct_1(944f, 53685u)), select(true, true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), select(vec2<i32>(-2147483647i, u_input.d.x), u_input.d.yy, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), Struct_2(~_wgslsmith_mult_u32(1u, global3.x), ~u_input.d, func_2(any(vec4<bool>(false, false, true, false)), vec2<u32>(arg_0.b, global3.x) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), vec2<f32>(arg_0.a, var_0.b.x)), func_2(9223u > global3.x, ~vec2<u32>(var_0.a, 11231u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) - var_0.b.wz)))), Struct_3(arg_0, Struct_2(~select(64910u, 1u, false), ~(-vec4<i32>(1i, 1i, -3811i, arg_1)), Struct_1(_wgslsmith_f_op_f32(max(-1169f, 371f)), countOneBits(var_0.a)), func_2(true, max(vec2<u32>(var_0.a, u_input.b), vec2<u32>(u_input.a, 4294967295u)), vec2<f32>(arg_0.a, arg_0.a))), select(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), all(vec4<bool>(true, true, true, true))), u_input.d.yw, Struct_2(func_2(any(vec2<bool>(false, true)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(0u, global3.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_0.b.x), vec2<f32>(var_0.b.x, 1000f), false))).b, select(firstTrailingBit(vec4<i32>(arg_1, u_input.e, 0i, 1i)), _wgslsmith_add_vec4_i32(u_input.d, u_input.d), true), arg_0, Struct_1(func_2(true, vec2<u32>(global3.x, global3.x), vec2<f32>(1029f, var_0.b.x)).a, abs(4294967295u)))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(48714u, var_0.a), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u))), vec2<u32>(~arg_0.b, u_input.c)));
    global1 = array<vec3<i32>, 26>();
    return var_1.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = u_input.e;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.e.c.a, -894f, -1091f, arg_2.b.c.a)))) * vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + arg_0.b.c.a), _wgslsmith_f_op_f32(-arg_1.x), 452f, -1053f))));
    var var_2 = !vec2<bool>(arg_0.c, _wgslsmith_f_op_f32(-arg_2.e.c.a) != func_2(false, vec2<u32>(u_input.c, 125280u), _wgslsmith_div_vec2_f32(var_1.xx, arg_1.zy)).a);
    var_2 = vec2<bool>(!(!(!arg_2.c)) && false, var_2.x);
    var var_3 = func_4(arg_2.b.c, -1327i);
    return Struct_1(_wgslsmith_div_f32(-1108f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_2.b.d.a - 491f)), 1292f)), var_3.b.a);
}

fn func_1(arg_0: u32, arg_1: i32) -> vec4<i32> {
    global2 = -1000f;
    global1 = array<vec3<i32>, 26>();
    var var_0 = Struct_3(func_5(func_4(func_2(false, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, global3.x), vec2<u32>(arg_0, u_input.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2375f, -1196f) * vec2<f32>(-1324f, 757f))), ~(arg_1 & arg_1)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(241f, _wgslsmith_f_op_f32(ceil(-2109f)), -1282f, _wgslsmith_f_op_f32(max(213f, -186f))))), func_4(Struct_1(func_4(Struct_1(409f, u_input.c), arg_1).b.d.a, ~u_input.a), -1i)), Struct_2(global3.x, select(u_input.d, -vec4<i32>(u_input.e, arg_1, -2147483647i, u_input.e), true), Struct_1(-440f, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 5965u, 1u, u_input.b), vec4<u32>(4294967295u, 4294967295u, global3.x, arg_0)), vec4<u32>(arg_0, 0u, global3.x, 60004u) | vec4<u32>(0u, 4294967295u, global3.x, 1u))), Struct_1(-1428f, 18569u)), true, ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, arg_1), firstLeadingBit(select(vec2<i32>(u_input.e, arg_1), u_input.d.wz, false))), func_4(Struct_1(1f, arg_0), firstTrailingBit(i32(-1i) * -2440i)).e);
    let var_1 = select(any(!vec2<bool>(var_0.c, var_0.c)), select(true, 1474f < var_0.e.d.a, select(any(!vec2<bool>(var_0.c, var_0.c)), true, var_0.c)), var_0.c);
    var var_2 = _wgslsmith_div_vec3_u32(~((_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.e.c.b, 0u, u_input.b), vec3<u32>(arg_0, u_input.c, u_input.b), vec3<u32>(global3.x, var_0.b.a, var_0.a.b)) << (abs(vec3<u32>(0u, 1u, u_input.b)) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.e.c.b, global3.x, var_0.e.a), select(vec3<u32>(arg_0, 4709u, global3.x), vec3<u32>(1u, 1u, var_0.b.a), true)) % vec3<u32>(32u))), vec3<u32>(firstLeadingBit(countOneBits(u_input.a)), ~global3.x, arg_0));
    return vec4<i32>((countOneBits(countOneBits(-1i)) & abs(arg_1)) | 0i, var_0.b.b.x, 0i, abs(~_wgslsmith_div_i32(u_input.d.x, reverseBits(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_sub_u32(global3.x, ~abs(1u)), _wgslsmith_mult_vec4_i32(~vec4<i32>(~0i, u_input.e, -u_input.e, -u_input.e), ~func_1(~u_input.c, u_input.d.x)), Struct_1(-594f, select(63426u, ~(~global3.x), func_4(func_5(Struct_3(Struct_1(1221f, 0u), Struct_2(global3.x, vec4<i32>(u_input.d.x, u_input.e, u_input.e, 72295i), Struct_1(361f, 35818u), Struct_1(1711f, 66198u)), true, vec2<i32>(u_input.d.x, u_input.e), Struct_2(9463u, u_input.d, Struct_1(964f, u_input.a), Struct_1(1113f, u_input.a))), vec4<f32>(902f, 429f, 2331f, 1000f), Struct_3(Struct_1(-1888f, 19195u), Struct_2(4294967295u, u_input.d, Struct_1(-630f, 5552u), Struct_1(321f, 32156u)), false, vec2<i32>(45221i, -2147483647i), Struct_2(u_input.c, u_input.d, Struct_1(-103f, u_input.b), Struct_1(128f, global3.x)))), u_input.e).c)), Struct_1(-978f, 26287u));
    global3 = vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(0u, 26389u), _wgslsmith_div_u32(_wgslsmith_sub_u32(8193u, var_0.c.b), 1u)), u_input.c) >> (max(~(vec2<u32>(0u, 42174u) << (vec2<u32>(51144u, u_input.b) % vec2<u32>(32u))), min(vec2<u32>(_wgslsmith_mod_u32(0u, 47001u), 8431u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global3.x), vec2<u32>(global3.x, global3.x)))) % vec2<u32>(32u));
    global2 = _wgslsmith_f_op_f32(sign(452f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.c.a)), _wgslsmith_f_op_f32(ceil(var_0.d.a)))))));
    let var_2 = ~abs(-48280i);
    var var_3 = Struct_4(Struct_3(func_5(Struct_3(func_2(false, vec2<u32>(27092u, u_input.b), vec2<f32>(var_0.d.a, var_0.c.a)), func_4(Struct_1(-1741f, 4294967295u), var_0.b.x).b, select(true, false, false), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2, u_input.e), vec2<i32>(u_input.d.x, 9663i), u_input.d.yz), func_4(Struct_1(313f, global3.x), u_input.d.x).e), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -238f), var_0.c.a, _wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(-470f + var_0.c.a)), Struct_3(func_4(var_0.d, u_input.e).b.c, var_0, true, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, 0i), vec2<i32>(-37196i, var_0.b.x)), var_0)), Struct_2(~(~global3.x), var_0.b | vec4<i32>(var_2, u_input.d.x, var_2, var_0.b.x), var_0.c, var_0.c), true & (all(vec2<bool>(false, false)) & true), u_input.d.xw, Struct_2(u_input.c, vec4<i32>(_wgslsmith_add_i32(var_2, u_input.e), -2147483647i, func_4(var_0.d, u_input.e).b.b.x, -var_0.b.x), Struct_1(_wgslsmith_f_op_f32(-var_0.c.a), var_0.a), var_0.c)), Struct_3(func_5(func_4(var_0.d, ~18754i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(532f, -111f, 191f, var_0.c.a), vec4<f32>(var_0.d.a, 892f, -439f, 317f)))), Struct_3(var_0.d, func_4(Struct_1(var_0.c.a, u_input.a), var_2).e, false, vec2<i32>(u_input.e, var_2), Struct_2(var_0.d.b, vec4<i32>(2147483647i, 1i, var_0.b.x, 2147483647i), var_0.c, Struct_1(-456f, 1154u)))), var_0, !(var_0.c.a < -2720f) || true, ~min(-vec2<i32>(0i, 2147483647i), u_input.d.xx), Struct_2(~0u, ~vec4<i32>(19850i, -17320i, u_input.d.x, -31274i) & (vec4<i32>(-2147483647i, var_2, -2147483647i, var_0.b.x) >> (vec4<u32>(0u, var_0.d.b, u_input.a, var_0.d.b) % vec4<u32>(32u))), var_0.d, func_2(true, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(2722u, var_0.a)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c.a, 1368f)))))), _wgslsmith_mod_u32(91532u, var_0.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec2<u32>(var_0.c.b, _wgslsmith_sub_u32(0u, var_3.b.e.a)), vec2<u32>(~15356u, 1u), select(!vec2<bool>(var_3.b.c, var_3.a.c), !vec2<bool>(false, var_3.b.c), any(vec3<bool>(true, var_3.a.c, false)))));
}

