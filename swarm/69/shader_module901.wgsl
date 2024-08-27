struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(vec3<f32>(1202f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1762f - -871f), -1103f))), -1520f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1065f) - 541f)), countOneBits(countOneBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, -5017i, u_input.a.x, u_input.a.x), ~vec4<i32>(-6067i, 20822i, -2147483647i, u_input.a.x)))));
    var var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, -u_input.a.x < var_0.c.x, true), select(false, true, 0i == ~u_input.a.x)), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), true), true);
    let var_2 = u_input.a.x < 1i;
    var var_3 = -_wgslsmith_sub_i32(~(-(~var_0.c.x)), abs(u_input.a.x));
    var_3 = i32(-1i) * -9193i;
    return u_input.b;
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_1(~vec3<u32>(u_input.b, func_3(Struct_3(Struct_1(vec3<u32>(u_input.b, u_input.b, 1u), u_input.b), u_input.b), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), u_input.b), Struct_3(Struct_1(vec3<u32>(u_input.b, u_input.b, 1u), 0u), 18725u), Struct_1(vec3<u32>(0u, u_input.b, 1u), u_input.b)), ~max(23969u, 0u)), 98372u);
    var var_1 = Struct_1(_wgslsmith_add_vec3_u32(var_0.a, abs(select(vec3<u32>(var_0.b, 27015u, 21707u) & var_0.a, vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<bool>(true, false, true)))), 0u);
    var_0 = Struct_1(~(~var_0.a), countOneBits(4294967295u));
    let var_2 = arg_0;
    var var_3 = Struct_1(var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, u_input.b, u_input.b, _wgslsmith_dot_vec2_u32(var_1.a.xy, vec2<u32>(u_input.b, u_input.b))), _wgslsmith_clamp_vec4_u32(vec4<u32>(45583u, 0u, 0u, var_0.a.x) & vec4<u32>(var_0.b, 53561u, var_0.b, 0u), min(vec4<u32>(11441u, var_1.a.x, 0u, var_0.a.x), vec4<u32>(18297u, var_1.a.x, var_0.a.x, var_1.b)), ~vec4<u32>(0u, 0u, 89629u, var_0.b))) & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~var_1.a, ~vec3<u32>(var_0.a.x, var_0.b, u_input.b)), abs(abs(4294967295u))));
    return !vec2<bool>(!(all(vec3<bool>(true, true, true)) & true), !all(vec2<bool>(true, false)));
}

fn func_1(arg_0: vec4<i32>) -> vec4<u32> {
    global0 = array<vec2<i32>, 18>();
    global0 = array<vec2<i32>, 18>();
    var var_0 = func_2(Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -547f), -833f, _wgslsmith_f_op_f32(f32(-1f) * -1790f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1074f, -764f, -939f) * vec3<f32>(396f, 617f, 978f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -975f), 532f))), arg_0));
    let var_1 = 0i;
    var_0 = vec2<bool>(var_0.x, !select(!(var_0.x & false), !(true && var_0.x), var_0.x));
    return _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) | vec4<u32>(~17632u, _wgslsmith_clamp_u32(0u, u_input.b, u_input.b), ~60607u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 0u)))), select(select(vec4<u32>(u_input.b & u_input.b, _wgslsmith_sub_u32(1u, 1u), ~u_input.b, _wgslsmith_mult_u32(u_input.b, 0u)), firstLeadingBit(~vec4<u32>(u_input.b, 39586u, u_input.b, 4294967295u)), vec4<bool>(false, select(var_0.x, false, false), true, false)), ~max(abs(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)), countOneBits(vec4<u32>(u_input.b, 0u, 4294967295u, 18975u))), !var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(reverseBits(select(func_1(-vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.b, 1u, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), func_2(Struct_2(vec3<f32>(-835f, -1662f, -1019f), vec2<f32>(1000f, -149f), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i))).x && any(vec3<bool>(false, false, false)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1105f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-524f)))), 1046f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1153f, 949f, -876f, 314f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2452f, _wgslsmith_f_op_f32(f32(-1f) * -1120f), -358f, -221f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-155f, 136f, 694f, -1043f)))))));
    global0 = array<vec2<i32>, 18>();
    global0 = array<vec2<i32>, 18>();
    var var_2 = true;
    global0 = array<vec2<i32>, 18>();
    var var_3 = _wgslsmith_f_op_f32(-var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true))))), u_input.a.yy ^ reverseBits(vec2<i32>(u_input.a.x, ~u_input.a.x)), ~(~(~u_input.b)) << (1u % 32u));
}

