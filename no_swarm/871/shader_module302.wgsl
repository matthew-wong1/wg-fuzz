struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-1i, 1i, 2147483647i, 0i), vec4<i32>(-1i, 1i, 13339i, 1i), vec4<i32>(-4527i, 0i, -1i, 1i));

var<private> global2: bool;

var<private> global3: array<vec3<f32>, 24>;

var<private> global4: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(36170i, 36657i), vec2<i32>(-63998i, i32(-2147483648)), vec2<i32>(14755i, -1i), vec2<i32>(7310i, 34265i), vec2<i32>(-37839i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, 15079i), vec2<i32>(19822i, -1i), vec2<i32>(2147483647i, -438i), vec2<i32>(75008i, -707i), vec2<i32>(28125i, 33790i), vec2<i32>(-33312i, 18734i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), -37500i), vec2<i32>(16724i, -22360i), vec2<i32>(-25825i, 63381i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(32305i, 0i), vec2<i32>(46206i, 72147i), vec2<i32>(0i, -783i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, -15097i), vec2<i32>(0i, 44211i), vec2<i32>(1i, i32(-2147483648)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    let var_0 = arg_0;
    global3 = array<vec3<f32>, 24>();
    global1 = array<vec4<i32>, 3>();
    global0 = array<Struct_1, 27>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.d, var_0.d), 27u)];
    return arg_0.b;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1((arg_0 >> ((firstTrailingBit(u_input.b.x) & firstTrailingBit(0u)) % 32u)) ^ 2147483647i, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32((vec4<u32>(u_input.c, u_input.c, 4294967295u, 1u) << (vec4<u32>(u_input.b.x, 10494u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) | ~vec4<u32>(0u, 50020u, u_input.c, 0u), func_3(Struct_1(-1i, vec4<u32>(19055u, 26983u, 0u, 15545u), vec2<f32>(1462f, 1663f), vec3<u32>(u_input.b.x, 52240u, u_input.c), 0i), reverseBits(arg_0))), vec4<u32>(1u, 0u, _wgslsmith_div_u32(~34041u, 18181u), u_input.b.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(530f, -694f) * vec2<f32>(-215f, 933f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1365f, 2781f) - vec2<f32>(229f, -249f))))))), ~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.c, 9580u), ~vec3<u32>(1594u, u_input.b.x, u_input.b.x), vec3<u32>(0u, u_input.b.x, u_input.b.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(31096i, arg_0), vec2<i32>(-69943i, arg_0)), abs(vec2<i32>(1i, 2147483647i))), reverseBits(10956i), ~arg_0, u_input.a.x), u_input.a));
    let var_1 = 8643u;
    return var_0;
}

fn func_1() -> u32 {
    var var_0 = func_2(u_input.a.x);
    var var_1 = Struct_1(select((firstLeadingBit(1i) >> (~u_input.b.x % 32u)) >> (~max(u_input.c, 9551u) % 32u), -(~(var_0.a ^ u_input.a.x)), var_0.e != ~_wgslsmith_div_i32(1387i, u_input.a.x)), ~_wgslsmith_mod_vec4_u32(~var_0.b, vec4<u32>(_wgslsmith_div_u32(var_0.b.x, u_input.b.x), var_0.d.x, _wgslsmith_dot_vec4_u32(var_0.b, var_0.b), u_input.c)), var_0.c, (var_0.d >> (_wgslsmith_sub_vec3_u32(var_0.b.yyx, reverseBits(var_0.d)) % vec3<u32>(32u))) ^ countOneBits(_wgslsmith_mult_vec3_u32(~var_0.b.ywz, vec3<u32>(1u, u_input.b.x, 1u))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x << (var_0.b.x % 32u), -873i, ~var_0.e), u_input.a.x) ^ _wgslsmith_sub_i32(u_input.a.x, u_input.a.x));
    var var_2 = vec3<bool>(false, !(_wgslsmith_sub_u32(~var_1.b.x, var_1.d.x) < _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_1.d.x, u_input.b.x, 53932u), 50242u)), true);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~min(~39314u, var_0.b.x << (53289u % 32u)), 26303u, 31060u), 27u)];
    let var_4 = (7037u ^ ~var_1.b.x) ^ ~(0u >> (var_1.b.x % 32u));
    return 1u;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = select(vec3<bool>(true, (1i & u_input.a.x) > arg_1, any(select(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(false, arg_0, arg_0, false), true), select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, arg_0, true, false), true), true))), !select(!vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(all(vec2<bool>(arg_0, true)), false, true)), !(!all(vec3<bool>(true, false, false))));
    let var_1 = !vec2<bool>(true, arg_0);
    global0 = array<Struct_1, 27>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-897f, 277f)))), vec2<f32>(-1043f, _wgslsmith_f_op_f32(-1083f + -368f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(294f, 1f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1965f, -1481f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1051f, 1000f), vec2<f32>(-108f, -1000f))))))))));
    var var_3 = select(!vec3<bool>(true, !var_1.x, true), vec3<bool>(any(!vec3<bool>(var_1.x, var_1.x, false)) != (var_1.x == !arg_0), false, true), true);
    return global0[_wgslsmith_index_u32(u_input.b.x, 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), 1i, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x << (func_1() % 32u), ~_wgslsmith_clamp_u32(1u, u_input.c, u_input.c), _wgslsmith_div_u32(1u | u_input.c, ~1u)), _wgslsmith_div_vec3_u32(~abs(vec3<u32>(u_input.c, 1u, 0u)), vec3<u32>(4294967295u, u_input.c, abs(80048u))), abs(_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.b.x, 4294967295u, 13730u)), func_2(u_input.a.x).d))));
    global0 = array<Struct_1, 27>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b >> (u_input.b % vec2<u32>(32u)), ~vec2<u32>(var_0.b.x, u_input.b.x)), 95234u, countOneBits(~9013u), _wgslsmith_div_u32(_wgslsmith_div_u32(1u, var_0.b.x), u_input.c)), vec4<u32>(1u, ~(~12990u), 0u, 1u)), 27u)];
    global0 = array<Struct_1, 27>();
    let var_2 = _wgslsmith_mod_i32(abs(-1i), _wgslsmith_div_i32(~(-3762i), -1i));
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_1.b.x, min(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_1.b.x, var_1.b.x), ~var_0.d.x), ~abs(var_1.d.x))), ~0u << (var_1.d.x % 32u));
}

