struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(4294967295u, 4294967295u, 17278u), vec3<u32>(4294967295u, 46539u, 1u), vec3<u32>(4856u, 4294967295u, 26902u), vec3<u32>(4294967295u, 1u, 21145u), vec3<u32>(3245u, 0u, 4294967295u), vec3<u32>(58675u, 47835u, 0u), vec3<u32>(10606u, 13606u, 5655u), vec3<u32>(32594u, 4294967295u, 59009u), vec3<u32>(24963u, 43105u, 4294967295u), vec3<u32>(8633u, 0u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(80544u, 1u, 7280u), vec3<u32>(17834u, 8085u, 0u), vec3<u32>(8656u, 4294967295u, 69564u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 73390u, 23982u), vec3<u32>(0u, 71222u, 1u), vec3<u32>(6721u, 0u, 67284u), vec3<u32>(0u, 17744u, 16532u), vec3<u32>(4294967295u, 1u, 49228u), vec3<u32>(36188u, 1u, 1u), vec3<u32>(0u, 6565u, 1u), vec3<u32>(1089u, 0u, 11625u), vec3<u32>(23800u, 7875u, 4294967295u), vec3<u32>(4294967295u, 37494u, 17809u), vec3<u32>(1u, 91382u, 25625u), vec3<u32>(26809u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(86512u, 0u, 1u), vec3<u32>(31814u, 0u, 1u), vec3<u32>(42946u, 4294967295u, 52232u), vec3<u32>(1u, 1u, 4294967295u));

var<private> global1: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(27383i, i32(-2147483648), 2147483647i), vec3<i32>(5510i, 2612i, 1i), vec3<i32>(2147483647i, -1i, -16283i), vec3<i32>(10919i, 1i, 48355i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_2(40036u | (u_input.e ^ 22807u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(221f, -766f, arg_0))))), true, ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(14719u, u_input.c, u_input.c, 10493u), ~u_input.d)), arg_0);
    global0 = array<vec3<u32>, 32>();
    let var_1 = var_0.b;
    global1 = array<vec3<i32>, 4>();
    let var_2 = _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, 34085i, -12523i, -24302i), -vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, 2147483647i), select(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, 43358i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -1i), true)), ~(-vec4<i32>(2147483647i, -1i, -19760i, u_input.b.x))), _wgslsmith_div_i32(-_wgslsmith_sub_i32(u_input.a, u_input.b.x), -u_input.b.x) >> (~(~(~18370u)) % 32u));
    return Struct_3(var_0, select(u_input.b, _wgslsmith_sub_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), u_input.b, vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(54646i, -1i)), !(!vec2<bool>(var_0.c, true))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-1021f + 461f), 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a + var_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1748f, 681f, 445f) + vec3<f32>(var_0.b.a.x, 523f, arg_0))))), u_input.d.x, false && any(vec2<bool>(true, true)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: f32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-625f, func_2(arg_2).a.b.a.x), 1f, 237f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1389f), _wgslsmith_f_op_f32(arg_2 * arg_2), arg_2)))));
    return -1306f;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = array<vec3<i32>, 4>();
    let var_0 = ~u_input.c;
    global1 = array<vec3<i32>, 4>();
    let var_1 = 1627f;
    var var_2 = func_2(var_1);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_u32(0u, var_0), vec2<u32>(1u, var_2.d), _wgslsmith_f_op_f32(var_1 - var_1)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1043f)), _wgslsmith_f_op_f32(var_2.a.b.a.x + 956f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 32>();
    let var_0 = func_1(u_input.a != 17088i);
    global0 = array<vec3<u32>, 32>();
    let var_1 = !any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false))) | all(vec2<bool>(func_2(_wgslsmith_f_op_f32(-var_0.a.x)).a.c, !func_2(var_0.a.x).a.c));
    let var_2 = ~(-2283i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) * _wgslsmith_f_op_f32(-var_0.a.x)) - var_0.a.x))), abs(u_input.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1324f, var_0.a.x, _wgslsmith_f_op_f32(func_3(u_input.d.x, u_input.d.wz, -341f))))), vec2<i32>(u_input.a, -(~(-13483i)) | firstTrailingBit(_wgslsmith_sub_i32(2147483647i, 0i))));
}

