struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_1, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global1 = array<Struct_1, 27>();
    return vec3<f32>(646f, _wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f), 184f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    var var_0 = !select(vec4<bool>(any(select(vec4<bool>(arg_1.c, false, arg_1.c, arg_1.c), vec4<bool>(true, false, arg_1.e.x, arg_1.c), arg_1.e.x)), true, true, true), vec4<bool>(any(!vec2<bool>(arg_1.e.x, true)), !all(vec2<bool>(false, false)), arg_1.e.x, all(!vec3<bool>(true, false, arg_1.e.x))), !select(vec4<bool>(arg_1.e.x, false, arg_1.e.x, arg_1.e.x), !vec4<bool>(true, false, arg_1.e.x, arg_1.e.x), select(vec4<bool>(arg_1.e.x, arg_1.c, arg_1.e.x, arg_1.c), vec4<bool>(true, arg_1.c, arg_1.e.x, true), arg_1.c)));
    var var_1 = select(var_0.xxw, select(vec3<bool>(!(arg_0.x != -1189f), arg_1.e.x, !any(vec4<bool>(true, false, true, var_0.x))), select(select(vec3<bool>(false, arg_1.c, arg_1.c), !vec3<bool>(arg_1.e.x, var_0.x, arg_1.e.x), u_input.e.x == arg_1.d.x), select(var_0.zyz, var_0.xxw, !var_0.zxy), !var_0.x), true), any(!arg_1.e));
    var var_2 = Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_mod_i32(firstLeadingBit(25766i), 6955i), arg_1.b, -(arg_1.a | 18322i)), u_input.c, !(!var_1.x), u_input.e, var_1.yx);
    return all(vec4<bool>(true, var_2.e.x, true, var_2.e.x));
}

fn func_2() -> bool {
    let var_0 = Struct_1(u_input.a, -u_input.b, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) && func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), Struct_1(-u_input.a, _wgslsmith_clamp_i32(u_input.b, 1i, u_input.a), all(vec3<bool>(true, true, true)), u_input.e << (u_input.e % vec4<u32>(32u)), vec2<bool>(true, false)), vec3<f32>(_wgslsmith_f_op_f32(338f - 1782f), _wgslsmith_f_op_f32(f32(-1f) * -140f), -2293f)), ~reverseBits(vec4<u32>(u_input.e.x, 0u, 4294967295u, u_input.d.x) | vec4<u32>(u_input.d.x, u_input.d.x, u_input.e.x, 8639u)) & u_input.e, vec2<bool>(all(vec2<bool>(1u > u_input.d.x, any(vec3<bool>(true, true, false)))), all(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_add_u32(1u, u_input.e.x) >> (6026u % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(795f, 248f, -949f, -830f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-251f, 1331f, _wgslsmith_f_op_f32(-1089f + 1360f), _wgslsmith_f_op_f32(abs(-1322f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1802f, -692f, 396f, -974f))))))));
    let var_3 = !select(select(vec4<bool>(any(vec4<bool>(false, true, true, true)), all(var_0.e), true, u_input.e.x != var_0.d.x), vec4<bool>(var_0.d.x <= 25028u, any(vec3<bool>(true, true, var_0.c)), true, !var_0.c), all(select(var_0.e, var_0.e, vec2<bool>(false, true)))), vec4<bool>(true || select(false, true, var_0.c), any(select(vec4<bool>(var_0.c, true, var_0.e.x, var_0.e.x), vec4<bool>(var_0.c, var_0.e.x, var_0.e.x, true), var_0.c)), !any(var_0.e), false), select(select(!vec4<bool>(false, false, var_0.e.x, false), !vec4<bool>(false, var_0.c, false, var_0.c), !vec4<bool>(true, var_0.e.x, var_0.c, var_0.e.x)), vec4<bool>(!var_0.e.x, any(vec2<bool>(false, true)), u_input.e.x >= u_input.d.x, var_0.c), var_0.e.x));
    global1 = array<Struct_1, 27>();
    return !var_0.e.x;
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 25>();
    var var_0 = Struct_1(-u_input.a << (_wgslsmith_mult_u32(u_input.e.x, u_input.e.x) % 32u), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 19458i, 2147483647i, u_input.b) ^ vec4<i32>(15434i, u_input.a, 16670i, u_input.b), vec4<i32>(13670i, u_input.c, -20896i, -1i))), false, u_input.e, select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(1i >= u_input.b, true), !func_2()), !select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true))));
    let var_1 = u_input.c >> (~46090u % 32u);
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(countOneBits(-43015i), max(0i, -1i), -2147483647i), -(reverseBits(vec3<i32>(var_1, -2147483647i, var_0.b)) | reverseBits(vec3<i32>(var_1, u_input.a, 38450i)))), ((var_0.b ^ countOneBits(var_1)) << (~abs(60227u) % 32u)) | abs(var_1), false, firstTrailingBit(~vec4<u32>(abs(31136u), var_0.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(25182u, 12917u, 51384u), var_0.d.xxx), 1u)), !vec2<bool>(func_4(vec3<f32>(-1294f, 3059f, 1024f), Struct_1(var_0.a, var_0.a, var_0.e.x, vec4<u32>(21081u, u_input.e.x, u_input.d.x, var_0.d.x), vec2<bool>(var_0.e.x, var_0.e.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1247f, 645f, -444f))), true));
    global1 = array<Struct_1, 27>();
    return 19330u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    var var_0 = _wgslsmith_clamp_u32(80774u, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(func_1(), 53019u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(25211u, u_input.e.x, u_input.d.x), ~22253u)), u_input.d.x & _wgslsmith_clamp_u32(abs(45628u), _wgslsmith_dot_vec3_u32(u_input.e.zzy, vec3<u32>(1u, 29343u, 78550u)), u_input.e.x)), u_input.e.x >> (~abs(_wgslsmith_add_u32(u_input.e.x, 53937u)) % 32u));
    let var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d.yx, vec2<u32>(u_input.e.x, 4294967295u)), 17270u ^ u_input.e.x), u_input.d.xx, _wgslsmith_mult_vec2_u32(vec2<u32>(55410u << (abs(u_input.e.x) % 32u), func_1()), ~((vec2<u32>(4294967295u, u_input.e.x) << (u_input.d.xz % vec2<u32>(32u))) ^ u_input.e.wx)));
    var_0 = firstLeadingBit(u_input.e.x);
    let var_2 = Struct_1(abs(-1i), 9373i, false, u_input.e, select(vec2<bool>(func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(288f, 1000f, -1658f))), global0[_wgslsmith_index_u32(~u_input.e.x, 25u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1573f, 505f, 521f))), u_input.c <= u_input.a), !vec2<bool>(any(vec4<bool>(false, false, true, false)), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(549f)), _wgslsmith_f_op_f32(-149f - 1517f))), _wgslsmith_f_op_f32(f32(-1f) * -2504f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-527f * -976f))), _wgslsmith_f_op_f32(ceil(-1000f))), ~abs(~(56158u >> (u_input.e.x % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, _wgslsmith_f_op_f32(f32(-1f) * -1208f), -614f))), ~select(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.b, 58353i, u_input.c), ~vec3<i32>(u_input.a, 30541i, 11631i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.a, 865i, u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.b, -8969i), vec3<i32>(0i, 0i, u_input.a))), vec3<bool>(all(vec4<bool>(true, var_2.c, false, var_2.c)), true, var_2.c)));
}

