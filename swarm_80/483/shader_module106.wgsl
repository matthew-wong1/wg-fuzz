struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(3478u, 4294967295u, 38076u), vec3<u32>(24639u, 4294967295u, 19044u), vec3<u32>(0u, 74231u, 45765u), vec3<u32>(32051u, 17264u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(23600u, 24780u, 1u), vec3<u32>(79456u, 25748u, 50588u), vec3<u32>(28128u, 19206u, 63574u), vec3<u32>(4294967295u, 47161u, 0u), vec3<u32>(4294967295u, 40033u, 4294967295u), vec3<u32>(1u, 1u, 690u), vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 34962u, 480u), vec3<u32>(1u, 1u, 27911u), vec3<u32>(10168u, 227u, 0u), vec3<u32>(0u, 0u, 91557u), vec3<u32>(44562u, 37729u, 0u), vec3<u32>(4294967295u, 33323u, 1u), vec3<u32>(51209u, 1u, 56632u), vec3<u32>(31602u, 1u, 0u), vec3<u32>(53865u, 43032u, 62127u), vec3<u32>(23109u, 29177u, 4294967295u), vec3<u32>(44653u, 4294967295u, 447u), vec3<u32>(33697u, 50000u, 1u));

var<private> global1: array<vec2<u32>, 21>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: bool;

var<private> global4: Struct_4 = Struct_4(420f, true, Struct_1(621f), vec4<u32>(33146u, 633u, 73993u, 0u), vec3<f32>(1491f, 1341f, -1403f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<f32> {
    let var_0 = false;
    var var_1 = ~select(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 65630i, -6497i), vec3<i32>(-1i, -36581i, 0i)), -33537i, 35948i, -(-55330i << (u_input.a % 32u))), vec4<i32>(0i, -(~(-34465i)), -9480i, 0i), vec4<bool>(global4.b, false, global4.b, var_0));
    let var_2 = -22421i;
    var var_3 = Struct_3(Struct_2(countOneBits(var_2), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4.c.a, global4.e.x))), vec2<f32>(_wgslsmith_div_f32(822f, global4.c.a), 249f)), _wgslsmith_f_op_f32(sign(-253f)), global4.e.xz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-436f, 993f), 1f, _wgslsmith_f_op_f32(global4.c.a - -134f), _wgslsmith_f_op_f32(ceil(-279f))))));
    global3 = global2.x;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_3.a.e.x, -1238f), _wgslsmith_f_op_f32(select(854f, 420f, any(vec3<bool>(global2.x, true, global2.x))))) - global4.e.xy);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) - arg_0.c));
    global4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(412f, 573f))))) + global4.c.a), false, Struct_1(global4.e.x), global4.d ^ global4.d, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1819f), -237f, _wgslsmith_f_op_f32(ceil(var_0))));
    global4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-arg_2.a.d.x))) * 435f)), select(global2.x, false, all(select(vec3<bool>(false, global2.x, global2.x), !vec3<bool>(global4.b, global4.b, global2.x), false))), Struct_1(arg_1), max(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global4.d, _wgslsmith_mult_vec4_u32(vec4<u32>(global4.d.x, global4.d.x, global4.d.x, 4294967295u), vec4<u32>(113863u, global4.d.x, global4.d.x, 26832u))), vec4<u32>(23296u << (u_input.b.x % 32u), 29268u, max(4465u, u_input.a), global4.d.x)), ~vec4<u32>(global4.d.x, 1u, 1u, 0u) >> (reverseBits(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)) % vec4<u32>(32u))), arg_0.e.xwz);
    var var_1 = ~1u;
    let var_2 = arg_0.b.x;
    return vec3<bool>(any(!select(vec3<bool>(global2.x, true, global4.b), vec3<bool>(false, false, false), vec3<bool>(true, global4.b, global2.x))) || (0u >= ~_wgslsmith_dot_vec3_u32(vec3<u32>(global4.d.x, 4294967295u, 4294967295u), global4.d.zzz)), global4.b, true);
}

fn func_2() -> f32 {
    let var_0 = 1u;
    let var_1 = Struct_2(-2147483647i << ((abs(u_input.b.x) ^ _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, 24439u), 0u)) % 32u), global4.e.xz, 134f, vec2<f32>(_wgslsmith_div_f32(-1350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e.x))), global4.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(590f, -1194f, global4.c.a, global4.e.x) * vec4<f32>(global4.e.x, 185f, global4.c.a, 638f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-428f, global4.c.a, 139f, global4.c.a))))));
    global1 = array<vec2<u32>, 21>();
    global1 = array<vec2<u32>, 21>();
    global2 = func_4(Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.b), vec2<f32>(global4.e.x, _wgslsmith_f_op_f32(-2005f * global4.a)), all(select(vec3<bool>(false, global2.x, global4.b), vec3<bool>(false, false, global4.b), vec3<bool>(global4.b, global4.b, global4.b))))), _wgslsmith_f_op_f32(-1911f + var_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-234f, global4.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_1.e, var_1.e), _wgslsmith_f_op_vec4_f32(-var_1.e)))), var_1.d.x, Struct_3(Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(290f, 1847f), vec2<f32>(1000f, -754f))) + _wgslsmith_f_op_vec2_f32(func_3())), -967f, vec2<f32>(-217f, _wgslsmith_f_op_vec2_f32(func_3()).x), var_1.e)));
    return -1032f;
}

fn func_1() -> vec3<bool> {
    global2 = vec3<bool>(global4.b, global4.b, global4.b);
    global1 = array<vec2<u32>, 21>();
    let var_0 = ~vec3<u32>(global4.d.x, ~(~(~u_input.c)), ~u_input.d);
    let var_1 = Struct_2(countOneBits(20590i), vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2001f))), 334f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1573f - 1889f), _wgslsmith_f_op_f32(global4.a + global4.e.x)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.c.a, global4.a, _wgslsmith_f_op_f32(1198f - global4.c.a), _wgslsmith_f_op_f32(-global4.e.x)), vec4<f32>(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)), -269f, _wgslsmith_div_f32(417f, _wgslsmith_f_op_f32(max(global4.e.x, 1975f)))))));
    let var_2 = vec2<u32>(reverseBits(4294967295u), _wgslsmith_div_u32(_wgslsmith_mod_u32(7560u, ~firstTrailingBit(var_0.x)), _wgslsmith_add_u32(_wgslsmith_add_u32(global4.d.x, u_input.a), 32999u) | firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(32182u, u_input.d), vec2<u32>(63258u, global4.d.x)))));
    return func_4(Struct_2(~countOneBits(-44828i), _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -809f), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.e.x, global4.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.a, -812f))), vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(-1094f + var_1.e.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_1.e * var_1.e)))))), 139f, Struct_3(var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(), vec3<bool>(true, func_1().x, false), all(vec2<bool>(global4.b, false)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e.x)), false, Struct_1(global4.a), global4.d, global4.e);
    global1 = array<vec2<u32>, 21>();
    let var_2 = var_1.e;
    var var_3 = 1157u;
    var var_4 = -(~(-vec4<i32>(15485i, -1i, 0i, -8940i) >> (abs(global4.d) % vec4<u32>(32u))));
    let var_5 = Struct_1(var_2.x);
    let var_6 = var_0.x;
    global0 = array<vec3<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2.zy));
}

