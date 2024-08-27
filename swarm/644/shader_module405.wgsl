struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<u32>, 3>;

var<private> global3: array<vec3<f32>, 21>;

var<private> global4: vec3<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_5, arg_1: bool) -> f32 {
    var var_0 = arg_0.c;
    let var_1 = select(u_input.b, vec4<u32>(1u, u_input.a, ~_wgslsmith_add_u32(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, arg_0.d.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, 48100u, 39484u, 20679u), u_input.b), abs(_wgslsmith_div_u32(92068u, u_input.a)))), arg_0.b);
    var var_2 = arg_1 || arg_0.c.b;
    var_2 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.yxz, arg_0.d), vec3<u32>(0u, 3053u, arg_0.d.x)), 4294967295u) >= ~var_1.x;
    let var_3 = max(~var_1, var_1);
    return global1.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_2 {
    global2 = array<vec3<u32>, 3>();
    let var_0 = false;
    var var_1 = Struct_5(firstLeadingBit(-((vec4<i32>(u_input.c.x, global4.x, global4.x, 1i) | vec4<i32>(-41155i, global0.x, global4.x, 33242i)) & vec4<i32>(u_input.c.x, global0.x, -14911i, u_input.c.x))), vec4<bool>(!(false && !arg_0.x), true & (_wgslsmith_f_op_f32(min(-138f, global1.x)) < _wgslsmith_f_op_f32(abs(global1.x))), true, true), Struct_3(!(!(!arg_0)), all(arg_1.yz)), _wgslsmith_mod_vec3_u32(u_input.b.wyy, ~(~min(vec3<u32>(4294967295u, 26259u, u_input.b.x), vec3<u32>(u_input.b.x, 2454u, 160u)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_div_f32(global1.x, global1.x)) + _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))), -1677f))));
    let var_3 = u_input.b;
    return Struct_2(vec2<f32>(global1.x, 756f));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_sub_u32(u_input.b.x, firstTrailingBit(4294967295u));
    let var_1 = firstTrailingBit(countOneBits(_wgslsmith_div_vec4_u32(countOneBits(abs(u_input.b)), vec4<u32>(u_input.b.x, u_input.b.x, 19672u, var_0) << (vec4<u32>(11116u, var_0, 2656u, 0u) % vec4<u32>(32u)))));
    let var_2 = Struct_1(~abs(global2[_wgslsmith_index_u32(50648u, 3u)] ^ max(var_1.yzw, vec3<u32>(u_input.b.x, 60375u, 1u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 403f) - vec4<f32>(235f, global1.x, 1048f, -179f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2454f, global1.x, -783f, 351f) * vec4<f32>(global1.x, global1.x, global1.x, 1208f)))))));
    global4 = u_input.c;
    global0 = select(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, global4.x, global0.x) & vec4<i32>(global4.x, arg_0, -45260i, arg_0), ~vec4<i32>(global4.x, -44918i, 1i, global0.x))), abs(~abs(firstTrailingBit(vec4<i32>(-1i, global4.x, 5542i, u_input.c.x)))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), u_input.c.x == -2542i), !all(vec4<bool>(true, false, true, false)) | false));
    return ~4600u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(vec2<bool>(true, any(vec4<bool>(all(vec3<bool>(false, true, true)), true, global1.x > -899f, true))), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_5(vec4<i32>(global4.x, global4.x, global0.x, -21369i), vec4<bool>(true, false, false, true), Struct_3(vec2<bool>(false, false), false), global2[_wgslsmith_index_u32(u_input.a, 3u)]), false))) >= -214f, false, false));
    let var_1 = vec4<u32>(~abs(firstTrailingBit(min(u_input.b.x, 4294967295u))), 0u, min(_wgslsmith_sub_u32(u_input.b.x, func_3(global4.x)) & u_input.a, ~reverseBits(~4294967295u)), firstTrailingBit(~u_input.a & 50417u) | u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_u32(reverseBits(select(u_input.b.x, var_1.x, true)), u_input.a)), var_0.a, vec2<u32>(var_1.x, select(firstTrailingBit(~26404u), ~abs(var_1.x), any(vec2<bool>(false, true)))), select(vec4<i32>(abs(1i), 25892i, 29917i, -17063i), ~(~max(vec4<i32>(-92425i, -19587i, 42039i, global4.x), vec4<i32>(2147483647i, global0.x, global0.x, -2147483647i))), true));
}

