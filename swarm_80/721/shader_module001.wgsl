struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = 838f;
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_1 = vec2<u32>(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), ~vec4<u32>(56802u, 1u, 5231u, u_input.b.x)) >> (~max(~u_input.b.x, ~u_input.a.x) % 32u), ~firstLeadingBit(u_input.a.x & abs(u_input.a.x)));
    var var_2 = Struct_3(!vec2<bool>(all(vec2<bool>(true, false)), false), Struct_2(min(vec4<u32>(var_1.x, 6113u, reverseBits(0u), var_1.x | 1u), vec4<u32>(u_input.a.x, 36804u, 45580u, 0u)), 1u), !any(vec4<bool>(true, true, true, true)), Struct_2(vec4<u32>(var_1.x, firstTrailingBit(22892u) ^ 0u, var_1.x, 64731u), _wgslsmith_add_u32(~1u, ~var_1.x)));
    return var_2.a.x;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> u32 {
    global0 = array<Struct_1, 1>();
    let var_0 = vec4<bool>(arg_0, false, all(select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, true), arg_1.x >= 6450i), vec3<bool>(true, arg_1.x == arg_1.x, arg_0), !func_3())), any(vec3<bool>(arg_0, true, !any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)))));
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    let var_1 = !arg_0;
    return ~(~(~4294967295u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<u32>) -> bool {
    var var_0 = arg_0;
    var_0 = !arg_0;
    let var_1 = Struct_2(vec4<u32>(firstTrailingBit(~arg_3.x), ~(~(31294u >> (arg_3.x % 32u))), reverseBits(20794u ^ func_2(var_0.x, vec4<i32>(-16896i, -2147483647i, 1i, 2147483647i))), u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(18443u, ~4294967295u ^ firstTrailingBit(arg_3.x)), arg_3.x));
    var_0 = select(!vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(!func_3(), _wgslsmith_f_op_f32(ceil(1000f)) != 643f, true), arg_0.x);
    var_0 = !select(!vec3<bool>(!var_0.x, false, select(false, false, arg_1.x)), !select(arg_0, vec3<bool>(arg_1.x, var_0.x, arg_0.x), arg_0), vec3<bool>(!arg_0.x, false, any(vec3<bool>(arg_1.x, arg_1.x, arg_0.x))));
    return true;
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    var var_0 = Struct_3(select(select(vec2<bool>(true, true), select(!vec2<bool>(arg_0.a, arg_0.a), select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, true), true), vec2<bool>(arg_0.a, arg_0.a)), select(any(vec4<bool>(true, false, arg_0.a, arg_0.a)), arg_0.a, all(vec3<bool>(false, arg_0.a, true)))), !(!select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false), vec2<bool>(true, false))), any(vec3<bool>(true, all(vec2<bool>(arg_0.a, arg_0.a)), arg_0.a))), Struct_2((_wgslsmith_mod_vec4_u32(vec4<u32>(7501u, 4294967295u, arg_0.c, 0u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u)) & (vec4<u32>(arg_0.c, u_input.a.x, 1u, 1u) ^ vec4<u32>(u_input.a.x, arg_0.c, arg_0.c, u_input.a.x))) | abs(select(vec4<u32>(arg_0.c, u_input.a.x, 39943u, 44577u), vec4<u32>(u_input.a.x, arg_0.c, u_input.b.x, arg_0.c), vec4<bool>(arg_0.a, true, true, false))), _wgslsmith_mod_u32(abs(~arg_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(9960u, 1u, 1u, 2915u), vec4<u32>(1262u, 57914u, 5461u, 4294967295u) << (vec4<u32>(18739u, 1u, arg_0.c, arg_0.c) % vec4<u32>(32u))))), arg_0.a, Struct_2(~(~vec4<u32>(12366u, u_input.a.x, 1u, u_input.b.x)), ~(u_input.a.x | 1u)));
    var var_1 = var_0.d;
    let var_2 = !vec3<bool>(var_0.c, false, true);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.d)), arg_0.d, _wgslsmith_f_op_f32(-arg_0.d)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d, arg_0.d, arg_0.d), vec3<f32>(1060f, 190f, arg_0.d))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1414f, 311f), _wgslsmith_f_op_f32(-arg_0.d), 919f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-409f, 614f, -407f), vec3<f32>(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(var_0.c, arg_0.a, false))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -594f), arg_0.d, arg_0.d) + vec3<f32>(_wgslsmith_div_f32(arg_0.d, arg_0.d), _wgslsmith_f_op_f32(sign(arg_0.d)), 168f))));
    global0 = array<Struct_1, 1>();
    return Struct_2(~vec4<u32>((31163u << (u_input.a.x % 32u)) << (_wgslsmith_mod_u32(arg_0.c, var_1.a.x) % 32u), var_0.b.b | _wgslsmith_mod_u32(142573u, var_1.a.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.c, 10410u, var_1.b), 25884u), 0u), firstTrailingBit(0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.a.x < u_input.a.x) != select(false, any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false)), select(true, true, true));
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_1 = func_4(Struct_4(func_1(vec3<bool>(false, any(vec3<bool>(var_0, var_0, var_0)), var_0 || true), vec4<bool>(var_0, true, var_0, !var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -923f)), _wgslsmith_mod_vec3_u32(~vec3<u32>(114359u, u_input.b.x, 27140u), _wgslsmith_mod_vec3_u32(vec3<u32>(41064u, 29373u, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)))), -firstLeadingBit(i32(-1i) * -5772i), ~reverseBits(~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-855f, -1000f))));
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_2 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1493f))), 0i);
}

