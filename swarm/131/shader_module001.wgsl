struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = 936f;
    var var_1 = Struct_3(u_input.a);
    var_0 = -609f;
    var var_2 = Struct_2(Struct_1(797f, u_input.a.wz, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_1.a, var_1.a), _wgslsmith_dot_vec3_i32(u_input.a.zyy, vec3<i32>(u_input.a.x, var_1.a.x, var_1.a.x)))), 2147483647i, arg_1.a));
    let var_3 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(~(~0u), 1u), 52492u));
    return 21003u;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> Struct_4 {
    var var_0 = func_3(vec2<bool>(true, true), Struct_4(arg_1.x));
    let var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_2 = _wgslsmith_f_op_f32(739f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(619f * var_1)) - _wgslsmith_f_op_f32(floor(arg_1.x))))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f * _wgslsmith_f_op_f32(-1109f + arg_1.x))), u_input.a.zx, select(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<i32>(u_input.a.x, 0i, -87214i, arg_0.a.x), arg_0.a, vec4<bool>(arg_2, arg_2, arg_2, arg_2))), true), -min(arg_0.a.x, _wgslsmith_dot_vec3_i32(arg_0.a.xxy, vec3<i32>(-31623i, 0i, arg_0.a.x))), -430f));
    var var_4 = firstTrailingBit(firstTrailingBit(~(~vec2<u32>(1695u, 4294967295u))));
    return Struct_4(352f);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(875f * arg_0.a);
    global0 = arg_3.x;
    global0 = arg_3.x;
    global0 = _wgslsmith_mod_u32(max(arg_3.x, ~(~(44613u & arg_3.x))), ~43846u);
    global0 = arg_3.x;
    return !all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: f32) -> vec3<f32> {
    global0 = 0u;
    var var_0 = !vec3<bool>(!(!all(vec2<bool>(false, false))), ~_wgslsmith_dot_vec3_i32(u_input.a.wzy, vec3<i32>(34693i, 12601i, u_input.a.x)) <= _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 2147483647i), func_4(func_2(Struct_3(u_input.a), vec2<f32>(414f, 869f), true), Struct_1(-287f, vec2<i32>(-3617i, -2147483647i), -2147483647i, u_input.a.x, arg_0), vec4<f32>(1437f, arg_0, arg_0, 1342f), ~vec4<u32>(1u, 4294967295u, 0u, 3200u)) || (true | all(vec2<bool>(false, true))));
    var var_1 = Struct_1(-281f, vec2<i32>(u_input.a.x, -1i), max(1i, -(~u_input.a.x)), u_input.a.x, _wgslsmith_f_op_f32(min(1212f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 + 826f)), _wgslsmith_f_op_f32(ceil(arg_0)), var_0.x)))));
    let var_2 = firstLeadingBit(select(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 84581u, 50499u), vec4<u32>(4294967295u, 25534u, 0u, 56606u), vec4<u32>(50621u, 18799u, 42581u, 85300u))), vec4<u32>(109421u, firstLeadingBit(4294967295u), ~27924u, ~274u), true) & (~vec4<u32>(1u, 1u, 1u, 1u) & vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(35340u, 46366u, 40217u, 0u), vec4<u32>(1u, 4294967295u, 41498u, 1u)), 0u, _wgslsmith_mod_u32(0u, 36608u))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(arg_0 + var_1.e));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1691f, _wgslsmith_f_op_f32(f32(-1f) * -1405f), var_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, -706f, var_3.a) - vec3<f32>(arg_0, 442f, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, 622f, 844f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_1.a, arg_0)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-862f, var_3.a, 685f)), vec3<bool>(true, true, var_0.x))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-392f)), -193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - var_3.a) - arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 8900u;
    global0 = ~(~7246u);
    global0 = ~_wgslsmith_add_u32(0u, ~(~(~22865u)));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(max(-927f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(1759f, -452f), -1773f, _wgslsmith_f_op_f32(2392f * 848f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2025f, 275f, 1546f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(950f, 1146f, -832f)))), vec3<f32>(-1492f, -860f, -199f))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -401f, var_0.x, -1610f), vec4<f32>(-273f, var_0.x, 1347f, var_0.x), true))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 1518f), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1767f), _wgslsmith_f_op_f32(1328f * -602f)), vec4<f32>(-666f, _wgslsmith_f_op_f32(-1170f + 901f), 749f, _wgslsmith_f_op_f32(-var_0.x))))), Struct_2(Struct_1(var_0.x, vec2<i32>(69129i, ~(-31167i)), i32(-1i) * -1i, u_input.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(843f + var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-225f * _wgslsmith_f_op_f32(f32(-1f) * -1478f)) - var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c, var_1.b.a.a, -145f, 535f))));
}

