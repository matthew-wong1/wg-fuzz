struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(334f, -587f, 413f), vec2<f32>(125f, -939f), 32942u, vec2<u32>(36756u, 415u));

var<private> global1: array<i32, 27> = array<i32, 27>(0i, 1140i, -526i, -7630i, 2147483647i, -28994i, -46037i, 43739i, 21500i, -1i, -587i, 1i, -68212i, -1i, -27348i, 2147483647i, -6135i, 1i, -128i, -97710i, 2147483647i, 0i, 49348i, -50716i, 1i, i32(-2147483648), -1i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = Struct_3(firstLeadingBit(_wgslsmith_div_vec3_u32(~(~vec3<u32>(0u, 4294967295u, 46687u)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, global0.a.x, u_input.b), vec3<u32>(4599u, global0.a.x, 4294967295u)), vec3<u32>(u_input.b, 20719u, u_input.b) & vec3<u32>(u_input.b, 58914u, 1u)))), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global0.c.x));
    let var_1 = -(~1i);
    var var_2 = var_0.a.zz;
    var_2 = abs(~(~vec2<u32>(11768u, var_2.x)) | reverseBits(global0.e)) ^ (var_0.a.zx & vec2<u32>(0u, ~var_2.x));
    var_2 = ~select(max(_wgslsmith_mult_vec2_u32(global0.e, global0.a), vec2<u32>(var_2.x, 0u)) | vec2<u32>(~95516u, 64320u), vec2<u32>(global0.a.x, ~(~u_input.b)), true);
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b | 28153u, _wgslsmith_mod_u32(var_0.a.x, global0.e.x), global0.e.x), vec4<u32>(_wgslsmith_div_u32(16150u, 54558u), 0u, 76124u << (var_2.x % 32u), 27830u)), ~vec4<u32>(var_2.x, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 1u), var_0.a.xz), var_2.x));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> vec2<u32> {
    global0 = Struct_1(vec2<u32>(~func_2(global0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<i32>(1i, u_input.c, u_input.c)), any(vec3<bool>(true, arg_1, arg_1)), _wgslsmith_div_f32(145f, 511f)), 1u), _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1994f, -1417f, 417f), vec3<f32>(global0.c.x, global0.c.x, 774f)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(global0.b.x)), -652f), global0.b.xy)))), global0.a.x, arg_0.yy);
    global0 = Struct_1(vec2<u32>(u_input.b, arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(221f + _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.c.x, global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(794f + -331f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2043f, global0.b.x)))), vec2<f32>(-1106f, _wgslsmith_f_op_f32(select(-448f, 338f, arg_1))))), global0.b.zx), global0.d, max(~firstTrailingBit(min(arg_0.xx, arg_0.zz)), firstTrailingBit(global0.a)));
    let var_0 = global1[_wgslsmith_index_u32(((_wgslsmith_add_u32(_wgslsmith_sub_u32(6096u, 0u), _wgslsmith_sub_u32(4294967295u, global0.d)) & 4294967295u) ^ arg_0.x) | global0.d, 27u)];
    global0 = Struct_1(~max(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 2629u), vec2<u32>(u_input.b, 44195u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 42676u), vec2<u32>(u_input.b, arg_0.x) | vec2<u32>(1u, global0.a.x))), _wgslsmith_div_vec3_f32(global0.b, global0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.b.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(876f, global0.c.x)), vec2<bool>(true, false))) - vec2<f32>(-1000f, _wgslsmith_f_op_f32(round(global0.b.x))))), u_input.b, global0.a);
    var var_1 = u_input.b;
    return ~vec2<u32>(1u, _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, global0.a.x)), reverseBits(global0.a.x))));
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-1383f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * -875f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + global0.c.x), -846f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), arg_0)))));
    var var_1 = Struct_1(vec2<u32>(((0u ^ global0.d) | min(1u, 21319u)) & _wgslsmith_div_u32(func_2(-673f, -12630i, arg_1, arg_0), ~global0.d), 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.b), global0.b))), global0.c, ~35991u, ~vec2<u32>(u_input.b, _wgslsmith_mod_u32(global0.d & 0u, _wgslsmith_mod_u32(30020u, 21000u))));
    global0 = Struct_1(~global0.e, _wgslsmith_f_op_vec3_f32(ceil(var_1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(floor(1656f)))), 31085u, select(abs(~select(global0.e, global0.a, vec2<bool>(arg_1, false))), vec2<u32>(4294967295u, abs(u_input.b)), true));
    global1 = array<i32, 27>();
    var_1 = Struct_1(_wgslsmith_sub_vec2_u32(~global0.a, func_3(~vec3<u32>(global0.e.x, global0.d, u_input.b) & _wgslsmith_add_vec3_u32(vec3<u32>(0u, 39440u, 4294967295u), vec3<u32>(var_1.a.x, 0u, 0u)), true)), global0.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(171f - _wgslsmith_f_op_f32(821f + arg_0)), var_0))), _wgslsmith_div_u32(var_1.a.x, ~((u_input.b & u_input.b) >> (16004u % 32u))), vec2<u32>(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_1.e.x, global0.d)), reverseBits(var_1.a)), _wgslsmith_add_u32(u_input.b, abs(firstLeadingBit(var_1.a.x)))));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.x;
    let var_1 = Struct_1(~abs(vec2<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(global0.e, global0.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(453f, global0.b.x, global0.c.x) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.c.x, 225f, global0.b.x)))), vec3<f32>(560f, -423f, _wgslsmith_f_op_f32(floor(-928f)))))), global0.c, u_input.b, vec2<u32>(global0.e.x, global0.e.x));
    var var_2 = false;
    let var_3 = ~(-1i);
    var var_4 = !vec4<bool>(any(vec4<bool>(false, any(vec3<bool>(false, false, true)), false, false)), true, true, ~(global0.d & u_input.b) > (~u_input.b << (_wgslsmith_clamp_u32(var_1.a.x, 0u, 0u) % 32u)));
    global0 = Struct_1(var_1.e, var_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(-470f, global0.b.x)), !var_4.x)), var_1.c.x)), var_1.d, ~vec2<u32>(firstLeadingBit(u_input.b | u_input.b), abs(16938u ^ u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(-countOneBits(vec4<i32>(u_input.c, -32203i, u_input.a, u_input.c)), vec4<i32>(-11054i, firstTrailingBit(u_input.c), 17903i, -8629i)), -_wgslsmith_clamp_i32(~6548i, -24592i, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, var_1.e.x, 42284u), vec4<u32>(global0.e.x, global0.d, u_input.b, u_input.b)), 27u)]));
}

