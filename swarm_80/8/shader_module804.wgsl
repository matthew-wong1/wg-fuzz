struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: bool = false;

var<private> global2: i32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(floor(-701f)), 1958f), _wgslsmith_f_op_vec3_f32(-arg_0.c))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), arg_2.x, _wgslsmith_f_op_f32(sign(arg_0.c.x))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + arg_2.x))), 557f, -679f));
    global2 = _wgslsmith_sub_i32(-1i, countOneBits(2147483647i));
    let var_1 = countOneBits(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(~arg_0.a, _wgslsmith_clamp_vec4_u32(arg_0.a, arg_0.a, vec4<u32>(45459u, u_input.c.x, u_input.c.x, u_input.c.x)))), arg_0.a.x));
    var var_2 = var_0.x;
    var var_3 = Struct_1(~(~arg_0.a), arg_0.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1120f, 1000f, -626f)))))), ~(var_1 << (abs(55884u) % 32u)), true & arg_0.b);
    return ~(-_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.d.zx, vec2<i32>(-10847i, 2147483647i)) << (~u_input.c.x % 32u), _wgslsmith_sub_i32(-22038i, firstTrailingBit(85341i))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: vec2<i32>) -> vec2<bool> {
    global2 = -39916i;
    let var_0 = func_3(Struct_1(vec4<u32>(~u_input.c.x, arg_2, arg_2, 19361u), !arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1367f * -494f), -268f, _wgslsmith_div_f32(559f, -395f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1078f, 438f, -509f), vec3<f32>(-429f, 111f, -1000f)))))), ~(~countOneBits(arg_2)), all(select(vec2<bool>(arg_1, arg_0), vec2<bool>(false, true), vec2<bool>(true, arg_0)))), ~_wgslsmith_dot_vec3_u32(select(max(u_input.c, u_input.c), vec3<u32>(13793u, arg_2, arg_2), !arg_1), vec3<u32>(~arg_2, u_input.c.x | 13264u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 11489u, arg_2)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(636f, 966f)))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(619f)), _wgslsmith_f_op_f32(f32(-1f) * -601f)))));
    global2 = ~_wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, arg_3.x, u_input.b.x), countOneBits(u_input.d), ~vec3<i32>(u_input.b.x, -33182i, var_0)), vec3<i32>(_wgslsmith_add_i32(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -27045i, -10538i), vec3<i32>(1i, -1i, 19036i))), -abs(1i), ~_wgslsmith_add_i32(var_0, -1186i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(671f, 1413f)), _wgslsmith_f_op_f32(min(1000f, 334f)), _wgslsmith_f_op_f32(min(-775f, -219f))))) + vec3<f32>(1000f, -346f, -1648f));
    global0 = array<Struct_1, 12>();
    return vec2<bool>(!(true & (false != any(vec2<bool>(false, arg_1)))), select(true, true, true));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    global1 = false;
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1366f)))));
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.zy) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1556f, var_0), arg_1.c.zx, arg_0)), _wgslsmith_f_op_vec2_f32(-arg_1.c.yy), func_2(arg_1.e, true, 1u, vec2<i32>(0i, 0i)))))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-883f, -969f))));
    global1 = false;
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), 236f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(797f, -929f, -627f) - vec3<f32>(-1720f, 1341f, -374f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1272f, 1324f, 293f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-119f, 707f, -772f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1360f, -2510f, 838f), vec3<f32>(-1241f, -463f, 146f))), vec3<bool>(true, true, true)))))), _wgslsmith_div_u32(6006u, ~_wgslsmith_div_u32(1u, 17076u) >> (u_input.c.x % 32u)), _wgslsmith_f_op_vec2_f32(func_1(!(!any(vec3<bool>(true, false, true))), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)), 25644u > min(u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), ~(4294967295u >> (u_input.c.x % 32u)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -232f) * -156f)))));
}

