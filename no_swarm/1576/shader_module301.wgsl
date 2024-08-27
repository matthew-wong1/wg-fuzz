struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(1i, 36003i, -27838i, 11881i), vec4<f32>(1419f, 175f, 180f, -377f), -1468f, vec2<i32>(-4664i, i32(-2147483648)), vec2<i32>(1i, 0i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x, 27u)];
    let var_1 = u_input.c;
    let var_2 = !(!select(select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), !vec4<bool>(arg_1.x, true, true, arg_1.x), all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))), vec4<bool>(false, arg_1.x, true, false), select(!arg_1.x, true, false | arg_1.x)));
    global1 = Struct_1(~vec4<i32>(u_input.a.x, reverseBits(i32(-1i) * -2147483647i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_1, 21683i), 15i >> (1u % 32u)), i32(-1i) * -var_0.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -2222f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1152f - -1208f) - var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f) + global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c)))), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.c), -611f), select(-firstTrailingBit(u_input.a.zy), global1.a.zx, any(select(vec2<bool>(var_2.x, false), select(vec2<bool>(false, arg_1.x), vec2<bool>(var_2.x, var_2.x), true), var_2.xx))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, countOneBits(-1i)), vec2<i32>(var_0.d.x, 1i), ~global1.a.wz));
    return ~(arg_0.x & abs(_wgslsmith_mod_u32(1u, u_input.b)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: bool) -> f32 {
    global0 = array<Struct_1, 27>();
    var var_0 = !vec4<bool>(!arg_3 & arg_3, all(vec3<bool>(arg_3 & arg_3, select(arg_3, true, false), true)), true, any(vec2<bool>(true, any(vec3<bool>(true, arg_3, true)))));
    global1 = global0[_wgslsmith_index_u32(~arg_0.x, 27u)];
    var_0 = vec4<bool>(any(select(!vec4<bool>(arg_3, true, arg_3, arg_3), select(vec4<bool>(true, true, arg_3, true), vec4<bool>(arg_3, var_0.x, false, var_0.x), false), select(vec4<bool>(false, true, arg_3, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(arg_3, false, arg_3, arg_3)))) | ((~arg_0.x << (102084u % 32u)) <= func_2(~vec4<u32>(1u, arg_0.x, arg_0.x, 0u), vec3<bool>(false, true, arg_3))), var_0.x, arg_1.c >= 781f, true);
    let var_1 = var_0.x;
    return 345f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-global1.a.zwy, _wgslsmith_sub_vec3_i32(global1.a.zyy, vec3<i32>(global1.a.x, u_input.a.x, 8923i)), vec3<i32>(1i, u_input.c, u_input.c)), vec3<i32>(-34391i, u_input.a.x, -31157i)) | abs(u_input.a.yyy), ~abs(_wgslsmith_mod_vec3_i32(-global1.a.wyw, _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global1.e.x, -19457i), vec3<i32>(global1.a.x, u_input.a.x, 2147483647i)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-global1.b.yxw);
    var var_2 = -1532f;
    global0 = array<Struct_1, 27>();
    let var_3 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global1.c)), global1.c, _wgslsmith_f_op_f32(f32(-1f) * -423f))), _wgslsmith_f_op_f32(func_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), countOneBits(vec2<u32>(104179u, 1u))), _wgslsmith_mod_u32(u_input.b, abs(u_input.b)), u_input.b), global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_div_u32(4294967295u, 57638u)), 27u)], global1.a.yzz, !select(true, false, u_input.a.x != -11261i))), global1.a.xx, ~(vec2<i32>(18107i, ~0i) & firstTrailingBit(vec2<i32>(global1.a.x, u_input.a.x) | global1.d)));
    let var_4 = var_3;
    global1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 40877u))), select(firstTrailingBit(vec2<u32>(u_input.b, 75377u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(0u, u_input.b)), vec2<bool>(true, true))));
}

