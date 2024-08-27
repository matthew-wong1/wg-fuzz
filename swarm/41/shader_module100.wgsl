struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 3>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = arg_0.a.x;
    global0 = array<Struct_5, 3>();
    global0 = array<Struct_5, 3>();
    global0 = array<Struct_5, 3>();
    var var_1 = arg_0.b;
    return arg_0.b;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32) -> u32 {
    global0 = array<Struct_5, 3>();
    let var_0 = all(arg_0.yw);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-734f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-998f, 2867f), _wgslsmith_f_op_f32(1011f * 167f))))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-326f - 962f) * _wgslsmith_f_op_f32(floor(-809f))), 1550f));
    global0 = array<Struct_5, 3>();
    let var_1 = 4354i;
    return 4294967295u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<i32>) -> i32 {
    let var_0 = arg_0;
    let var_1 = -arg_3.xyx;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 398f, arg_2, arg_2) - vec4<f32>(arg_2, -334f, arg_2, arg_2)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, arg_2), vec4<f32>(-199f, arg_2, arg_2, -293f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), arg_2, arg_2, _wgslsmith_f_op_f32(-arg_2)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(arg_2 + 923f), _wgslsmith_f_op_f32(arg_2 * 561f), arg_2)))));
    let var_3 = Struct_5(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a, 1u), func_1(Struct_3(var_2.www, Struct_2(var_0.a, true))).a.a.x) >> (vec2<u32>(u_input.a ^ var_0.a.d, min(u_input.b, 4294967295u)) % vec2<u32>(32u)), select(_wgslsmith_mult_vec2_u32(var_0.a.e.xz, ~arg_1.yx), vec2<u32>(43087u, arg_0.a.e.x), arg_3.x < select(-45654i, var_1.x, true)), _wgslsmith_div_vec2_u32(vec2<u32>(~var_0.a.d, func_3(vec4<bool>(false, true, arg_0.a.c.x, arg_0.b), Struct_2(arg_0.a, false), u_input.a)), var_0.a.e.xz)), ~1u, ~var_1.xz, arg_0.a.e, Struct_4(func_1(Struct_3(var_2.yzz, Struct_2(Struct_1(var_0.a.e.yz, arg_3.x, vec2<bool>(false, arg_0.a.c.x), arg_1.x, vec3<u32>(6274u, 4294967295u, arg_0.a.e.x)), false))), var_0));
    let var_4 = var_3.e;
    return ~(-var_4.b.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_mod_u32(max(u_input.b, u_input.a), select(1u, u_input.a, false)), ~12990u), func_2(func_1(Struct_3(vec3<f32>(-197f, -352f, -684f), Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.b), -1741i, vec2<bool>(true, true), u_input.a, vec3<u32>(u_input.a, 32870u, 1443u)), false))), abs(abs(vec4<u32>(1u, 18057u, 47105u, u_input.a))), 610f, abs(vec4<i32>(1i, 1i, 1i, 1i))), vec2<bool>(select(false, true, 0u >= u_input.b), true), ~u_input.b, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.a), vec3<u32>(62330u, u_input.b, 1u), min(vec3<u32>(u_input.a, 94743u, u_input.b), vec3<u32>(u_input.a, u_input.b, u_input.b))), _wgslsmith_mod_vec3_u32(~vec3<u32>(15424u, 63198u, 47002u), func_1(Struct_3(vec3<f32>(-812f, -2101f, -1834f), Struct_2(Struct_1(vec2<u32>(u_input.b, 289u), -1443i, vec2<bool>(false, true), u_input.b, vec3<u32>(u_input.a, u_input.b, u_input.b)), false))).a.e))), true);
    global0 = array<Struct_5, 3>();
    var var_1 = _wgslsmith_mult_i32(var_0.a.b, 21729i);
    global0 = array<Struct_5, 3>();
    var var_2 = vec3<u32>(countOneBits(min(abs(u_input.b >> (4294967295u % 32u)), (u_input.a ^ u_input.a) | (u_input.b & 0u))), _wgslsmith_dot_vec2_u32(~(~(var_0.a.e.xy >> (vec2<u32>(39511u, u_input.a) % vec2<u32>(32u)))), var_0.a.a), 0u);
    let var_3 = !func_1(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(178f, 1000f, 394f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1830f, -687f))), Struct_2(Struct_1(var_2.zy, 20066i, var_0.a.c, 2770u, vec3<u32>(u_input.a, u_input.b, var_0.a.e.x)), var_0.b))).a.c;
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1341f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f)), _wgslsmith_f_op_f32(select(-841f, _wgslsmith_f_op_f32(trunc(-832f)), var_3.x == false)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1457f + _wgslsmith_f_op_f32(-639f + -536f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, 696f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f - -229f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-966f);
}

