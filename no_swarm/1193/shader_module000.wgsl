struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(72073u), Struct_1(1u), Struct_1(9245u)), Struct_2(Struct_1(1u), Struct_1(4294967295u), Struct_1(0u)), Struct_2(Struct_1(62317u), Struct_1(0u), Struct_1(1u)));

var<private> global1: u32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<f32>) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.e.x, 3u)];
    var var_1 = any(vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))), _wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(0u, 38701u)) <= u_input.e.x, any(vec2<bool>(true, true)))) | all(vec3<bool>(true, 39212u == var_0.b.a, !all(vec4<bool>(true, true, false, true))));
    global0 = array<Struct_2, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 1081f)), arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-1456f * -853f)), _wgslsmith_f_op_f32(floor(835f)), arg_0.x)));
    global0 = array<Struct_2, 3>();
    return !vec4<bool>(all(vec2<bool>(true, true)), any(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), true)), !any(vec4<bool>(false, true, false, true)), 4294967295u >= max(u_input.e.x >> (4294967295u % 32u), 31260u));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>) -> u32 {
    return u_input.e.x;
}

fn func_2(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(u_input.e, ~(~vec3<u32>(0u, u_input.e.x, 0u)))), vec3<u32>(u_input.e.x, 4294967295u, ~_wgslsmith_sub_u32(~arg_1, ~u_input.e.x)));
    var var_1 = select(!select(vec2<bool>(u_input.c < 0i, arg_0 >= 40240i), vec2<bool>(true, true), true), vec2<bool>(true, ~_wgslsmith_add_u32(u_input.e.x, arg_1) > ~1u), all(vec3<bool>(true, true, true)));
    global1 = ~(~var_0.x);
    return _wgslsmith_add_u32(var_0.x, func_4(u_input.d.wx, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(1221f, -1071f), vec2<f32>(-1214f, -126f)))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    var var_0 = vec2<i32>(u_input.d.x, 1i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-782f)));
    return global0[_wgslsmith_index_u32(abs(~(~u_input.e.x)), 3u)];
}

fn func_1() -> f32 {
    let var_0 = !vec3<bool>(false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)) | (max(-2147483647i, u_input.b) != firstLeadingBit(23351i)), true && (false | all(vec4<bool>(true, false, false, false))));
    let var_1 = select(!var_0, !select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, !var_0.x), var_0), !(!vec3<bool>(true, true, false | var_0.x)));
    var var_2 = func_5(-1807f, Struct_1(_wgslsmith_add_u32(~func_2(25233i, u_input.e.x), 0u)), select(firstLeadingBit(-u_input.b) | u_input.d.x, _wgslsmith_dot_vec3_i32(select(u_input.d.zzy, vec3<i32>(44803i, u_input.d.x, 1i), !var_1), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, -67879i, -1i), _wgslsmith_mult_vec3_i32(u_input.d.zyz, vec3<i32>(u_input.a.x, u_input.c, -2147483647i)))), !(u_input.a.x >= ~u_input.a.x)));
    global0 = array<Struct_2, 3>();
    let var_3 = -(vec2<i32>(~(1i & u_input.b), u_input.a.x) << (vec2<u32>(u_input.e.x, _wgslsmith_sub_u32(var_2.c.a, var_2.c.a)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(abs(339f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -398f), 1917f)), _wgslsmith_f_op_f32(func_1())), 181f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -988f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1074f)))))));
    let var_1 = max(~_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.e.x, ~u_input.e.x, _wgslsmith_add_u32(u_input.e.x, u_input.e.x), _wgslsmith_sub_u32(u_input.e.x, 21547u)), vec4<u32>(0u, u_input.e.x, u_input.e.x, reverseBits(u_input.e.x))), vec4<u32>(4294967295u, _wgslsmith_sub_u32(56918u, _wgslsmith_div_u32(4093u, 4294967295u)), 50001u, 1u << (~(u_input.e.x & 46640u) % 32u)));
    var var_2 = Struct_1(u_input.e.x);
    var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(445f + var_0.x) + -1752f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-775f)))), func_5(696f, Struct_1(4294967295u), firstTrailingBit((0i >> (var_1.x % 32u)) >> (u_input.e.x % 32u))).a, u_input.c).a;
    var_2 = Struct_1(~40376u);
    let var_3 = var_0.ww;
    global1 = ~24561u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, min(firstLeadingBit(var_1), vec4<u32>(~var_1.x, 1u, ~var_1.x, _wgslsmith_dot_vec4_u32(var_1, var_1)) & ~vec4<u32>(1u, var_2.a, 1u, var_2.a)), _wgslsmith_f_op_vec3_f32(-var_0.yyy), u_input.d.xwy, 1i);
}

