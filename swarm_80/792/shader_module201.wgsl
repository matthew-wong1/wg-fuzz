struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_mod_i32(43653i, ~u_input.b);
    var_0 = -13981i;
    let var_1 = true;
    return _wgslsmith_add_vec3_u32(abs(vec3<u32>(select(min(arg_0, 17977u), u_input.a, arg_0 > 10074u), u_input.a, _wgslsmith_dot_vec2_u32(select(vec2<u32>(67211u, u_input.a), vec2<u32>(u_input.a, u_input.a), false), reverseBits(vec2<u32>(0u, arg_0))))), firstLeadingBit(~(firstTrailingBit(vec3<u32>(u_input.a, 1657u, arg_0)) | ~vec3<u32>(arg_0, 19735u, 43036u))));
}

fn func_2() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~abs(~1u), 27u)];
    let var_1 = _wgslsmith_div_u32(u_input.a, ~u_input.a);
    let var_2 = u_input.c.zwx;
    var var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(func_3(u_input.a, vec3<bool>(true, true, true)), vec3<u32>(_wgslsmith_clamp_u32(var_1, 4564u, u_input.a), _wgslsmith_mod_u32(var_1, 12498u), 4427u >> (1u % 32u))), 1u, 4294967295u) | func_3(var_1, select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true), true));
    var_3 = func_3(abs(4294967295u), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), vec3<bool>(true, false, true), true));
    return !(!(~2147483647i >= _wgslsmith_div_i32(13576i, u_input.b)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(64u, 27u)], -298f)) + 131f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(355f, -116f, arg_1.b)) - 114f), !any(arg_0)))), vec4<i32>(u_input.c.x ^ _wgslsmith_sub_i32(u_input.b, abs(5554i)), arg_1.d, -abs(~0i), -(u_input.b & _wgslsmith_dot_vec2_i32(u_input.c.zw, u_input.c.zy))));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    let var_1 = var_0.b.yy;
    return var_0;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = func_4(vec4<bool>(false, func_2(), true, firstLeadingBit(select(99884u, 16457u, true)) == _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.a), vec2<u32>(arg_0, arg_0) ^ vec2<u32>(u_input.a, 40269u))), Struct_1(true, true, u_input.a, -_wgslsmith_sub_i32(-1353i, -68942i)));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_1 = Struct_1(true, !func_2() || all(vec4<bool>(any(vec2<bool>(false, false)), true, u_input.b > -10941i, -29609i != u_input.c.x)), arg_0, _wgslsmith_dot_vec2_i32(~var_0.b.zy, ~_wgslsmith_mod_vec2_i32(-var_0.b.yy, -u_input.c.wz)));
    var var_2 = Struct_2(-1241f, vec4<i32>(var_1.d, 2147483647i, _wgslsmith_div_i32(var_0.b.x, ~var_1.d), var_1.d));
    return all(vec2<bool>(true & select(true, any(vec3<bool>(false, true, false)), true), !var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    var var_0 = vec3<bool>(select(true, !(!func_1(0u)), all(vec4<bool>(true, true, true, true))), all(vec2<bool>(true, true)) | true, any(vec3<bool>(any(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(max(101242u, u_input.a), 27u)] > global0[_wgslsmith_index_u32(min(84584u, 4294967295u), 27u)], !any(vec3<bool>(true, true, true)))));
    var_0 = !(!select(vec3<bool>(var_0.x, !var_0.x, !var_0.x), !(!vec3<bool>(var_0.x, var_0.x, true)), (u_input.b ^ u_input.b) < max(0i, u_input.c.x)));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    let var_1 = vec3<i32>(reverseBits(~u_input.b), abs(firstLeadingBit(-1i)), u_input.c.x);
    let var_2 = Struct_2(-605f, _wgslsmith_add_vec4_i32(u_input.c, u_input.c));
    var_0 = select(select(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, true, true), vec3<bool>(true, var_0.x, false)), !select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(var_0.x, true, !var_0.x)), vec3<bool>(var_0.x, all(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), any(var_0.zx)), select(select(vec3<bool>(false, true, true), vec3<bool>(var_0.x, true, var_0.x), true), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, false), var_0.x), !vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), true)), vec3<bool>(true, true, var_0.x), select(select(vec3<bool>(false, !var_0.x, any(vec3<bool>(var_0.x, var_0.x, true))), vec3<bool>(!var_0.x, false, true), !select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), true)), vec3<bool>(true || (u_input.a >= u_input.a), all(select(var_0.zy, vec2<bool>(true, false), var_0.yx)), func_2()), true));
    let x = u_input.a;
    s_output = StorageBuffer(45885u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(987f, 208f, global0[_wgslsmith_index_u32(0u, 27u)], -242f) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], 3434f, global0[_wgslsmith_index_u32(0u, 27u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1130f, -761f, 1885f, -1068f))))), i32(-1i) * -(~var_1.x << (_wgslsmith_clamp_u32(54025u, u_input.a, u_input.a) % 32u)), ~(-924i));
}

