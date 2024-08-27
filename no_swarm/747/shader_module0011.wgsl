struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1420f;

var<private> global1: array<vec4<i32>, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = arg_0.xxy;
    global1 = array<vec4<i32>, 29>();
    global1 = array<vec4<i32>, 29>();
    var_0 = arg_0.yyy;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(185f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1116f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1446f))));
    return all(vec3<bool>(false, (_wgslsmith_sub_u32(var_0.x, 1u) | u_input.c.x) == (~33171u & arg_0.x), all(vec3<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, false)), true))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = !vec4<bool>(all(arg_1.xy), false, func_3(u_input.c | reverseBits(u_input.c)), false);
    global1 = array<vec4<i32>, 29>();
    var var_1 = Struct_3(u_input.d, select(vec3<bool>(!(true & var_0.x), all(var_0.yzy), true), vec3<bool>(true, !(!arg_1.x), false), !select(true, false, true)));
    var var_2 = false;
    global0 = 1f;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, 515f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1566f, -1000f), vec2<f32>(-474f, 1000f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1053f, 979f) - vec2<f32>(1576f, 1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-511f, 936f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1351f, -1196f))))), var_1.a, arg_2.x == _wgslsmith_mult_i32(2147483647i, 1i), 799f, true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_4(u_input.b);
    var var_1 = arg_0;
    let var_2 = -u_input.e.x;
    global0 = 799f;
    let var_3 = 4294967295u;
    return Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, firstLeadingBit(var_2), firstTrailingBit(395i)) | vec3<i32>(countOneBits(2147483647i), 1i, var_0.a >> (62178u % 32u)), -u_input.e.zww));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_4) -> vec3<f32> {
    var var_0 = Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, -145f, 1f))))));
    return _wgslsmith_f_op_vec3_f32(-var_0.b);
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_div_i32(u_input.b, _wgslsmith_mod_i32(-31444i & func_4(Struct_3(u_input.c.x, vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), func_2(arg_1.b.x, vec4<bool>(false, false, arg_1.b.x, false), vec3<i32>(u_input.b, u_input.b, u_input.e.x))).a, u_input.b));
    var var_1 = func_2(any(vec4<bool>(!arg_1.b.x, false, any(!arg_1.b.xz), any(!arg_1.b))), vec4<bool>(arg_1.b.x, !(_wgslsmith_div_f32(1000f, arg_2.x) <= _wgslsmith_f_op_vec3_f32(func_5(vec3<f32>(arg_2.x, 389f, 467f), false, Struct_4(4222i))).x), arg_1.b.x, arg_1.b.x), vec3<i32>(-1i) * -countOneBits(~u_input.e.wwx));
    global1 = array<vec4<i32>, 29>();
    var var_2 = Struct_4(-2147483647i);
    global1 = array<vec4<i32>, 29>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-801f * var_1.a.x)));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1288f, 658f, 319f) + vec3<f32>(531f, -1721f, 497f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, 128f, arg_0))), true))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_0, arg_0), vec3<f32>(399f, arg_0, -706f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 1338f, -265f))))), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)))))));
    let var_1 = vec4<f32>(var_0.x, -861f, -1043f, _wgslsmith_f_op_f32(func_6(1u, Struct_3(1u, !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1210f, 458f, var_0.x))), false, func_4(Struct_3(u_input.d, vec3<bool>(false, true, false)), func_2(true, vec4<bool>(true, true, false, true), u_input.e.yyx)))))));
    let var_2 = all(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), any(vec4<bool>(true, false, false, false))));
    let var_3 = Struct_4(min(~countOneBits(7321i), 1i) >> (_wgslsmith_clamp_u32(u_input.d, ~u_input.d | u_input.a, 35736u) % 32u));
    let var_4 = ~(i32(-1i) * -26468i);
    return true || !func_3(~abs(vec4<u32>(u_input.a, u_input.d, 24531u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 29>();
    var var_0 = abs(vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(52042u, 4294967295u, u_input.c.x)), u_input.c.yzy), ~(~_wgslsmith_mod_u32(u_input.c.x, 17983u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(12544u, u_input.d, ~38764u), u_input.d), 68382u));
    var var_1 = vec2<f32>(402f, -186f);
    let var_2 = Struct_4(u_input.e.x);
    var var_3 = u_input.d;
    global1 = array<vec4<i32>, 29>();
    let var_4 = ~(-59275i);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(514f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 105f))))) - var_1.x);
    var var_5 = Struct_2(all(vec4<bool>(-11532i < _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(39319u, 29u)], u_input.e), all(vec3<bool>(true, true, true)), func_1(var_1.x), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(587f, var_1.x)) - 321f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(var_0.x, Struct_3(0u, vec3<bool>(false, false, true)), vec3<f32>(-507f, 1421f, 1354f))) - var_1.x), var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~var_2.a, firstLeadingBit(-1i), _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(var_4, var_2.a), u_input.e.xy), vec2<i32>(~6211i, var_2.a))));
}

