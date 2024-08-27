struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = ~49415i;
    var var_1 = u_input.a;
    var var_2 = vec2<bool>(!any(select(!vec3<bool>(true, arg_1.e.x, arg_0), vec3<bool>(true, true, true), !vec3<bool>(arg_0, false, arg_0))), all(select(select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_1.e.x, arg_1.e.x, true), arg_0), select(vec3<bool>(true, arg_0, arg_1.e.x), vec3<bool>(false, false, arg_1.e.x), vec3<bool>(false, arg_0, false)), true), vec3<bool>(true, true, false), !select(vec3<bool>(false, false, true), vec3<bool>(arg_1.e.x, true, arg_1.e.x), vec3<bool>(false, arg_0, true)))));
    var_0 = arg_1.c;
    global0 = false;
    return u_input.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_1 {
    global0 = false || ((i32(-1i) * -2147483647i) >= arg_0.x);
    var var_0 = arg_1;
    let var_1 = Struct_3(Struct_1(20562u << (func_3(var_0.a.x, Struct_1(4294967295u, -1983f, arg_0.x, 1820f, var_0.a.xz), _wgslsmith_f_op_f32(sign(1757f)), abs(7210u)) % 32u), _wgslsmith_f_op_f32(exp2(1f)), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1117f), 1f), arg_1.a.xy), Struct_2(select(!select(var_0.a, var_0.a, arg_1.a), var_0.a, select(!var_0.a, !var_0.a, arg_1.a.x)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(22531u, var_0.b.x, u_input.a.x) & var_0.b), var_0.b)), firstTrailingBit(arg_0.x));
    var_0 = arg_1;
    var_0 = var_1.b;
    return Struct_1(_wgslsmith_dot_vec2_u32(firstTrailingBit(var_0.b.yz), ~(~abs(u_input.a))), var_1.a.d, _wgslsmith_add_i32(var_1.c, ~(var_1.a.c & -60400i)), 1327f, !vec2<bool>(arg_1.a.x, false));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_3(func_2(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-70040i, 1i), vec2<i32>(arg_0.c, -47533i)), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, arg_0.c, -48323i, arg_0.c), vec4<i32>(2147483647i, arg_0.c, -806i, -2768i)), arg_0.c) ^ (-vec4<i32>(-1i, arg_0.c, arg_0.c, arg_0.c) << (vec4<u32>(u_input.a.x, 1u, 1u, arg_0.a) % vec4<u32>(32u))), Struct_2(vec3<bool>(any(arg_0.e), !arg_0.e.x, u_input.a.x > 61062u), ~vec3<u32>(4294967295u, 0u, arg_0.a))), Struct_2(vec3<bool>(true & (true & arg_0.e.x), all(vec4<bool>(arg_0.e.x, true, false, false)), all(!vec3<bool>(false, true, arg_0.e.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 3472u, 0u, 65429u), vec4<u32>(u_input.a.x, 18894u, arg_0.a, u_input.a.x)), _wgslsmith_sub_u32(arg_0.a, arg_0.a), func_3(true, arg_0, arg_0.b, 4294967295u)) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, 1u), vec3<u32>(1u, 31203u, u_input.a.x)), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 15306u, 4294967295u), vec4<u32>(u_input.a.x, arg_0.a, u_input.a.x, arg_0.a))) % vec3<u32>(32u))), _wgslsmith_clamp_i32(arg_0.c, 2147483647i, _wgslsmith_mod_i32(-32751i, -24518i)));
    var var_1 = -1000f;
    global0 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2393f, _wgslsmith_f_op_f32(-var_0.a.d), _wgslsmith_div_f32(-1000f, 1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b)) + var_0.a.d), -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.d, -822f, arg_0.d, 1095f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1856f, arg_0.b, 796f, -865f) - vec4<f32>(arg_0.d, var_0.a.b, var_0.a.b, 206f))))) + vec4<f32>(560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(938f * -1223f), _wgslsmith_f_op_f32(step(-831f, arg_0.b))), -379f)), !select(!vec4<bool>(false, true, false, var_0.a.e.x), !(!vec4<bool>(true, true, arg_0.e.x, false)), vec4<bool>(true, true, any(vec4<bool>(var_0.b.a.x, var_0.b.a.x, false, var_0.a.e.x)), all(var_0.b.a)))));
    var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(275f, 534f, 336f, -2040f)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, arg_0.d, var_0.a.d, 260f) - vec4<f32>(126f, 188f, -241f, var_2.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_0.a.b, 805f, -948f), vec4<f32>(1832f, 117f, -343f, 989f), false))) - vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(arg_0.b - -1000f), var_2.x, arg_0.d)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -274f, -416f, -556f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-497f, -697f, -314f, 401f)), true))))), !all(vec3<bool>(arg_0.e.x, select(arg_0.e.x, false, false), arg_0.e.x == false))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = -2147483647i;
    global0 = !(-58358i <= var_0);
    var var_1 = _wgslsmith_sub_i32(2599i, 0i);
    var_1 = var_0;
    global0 = 729f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(0u, -167f, var_0, 768f, vec2<bool>(false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -674f)), _wgslsmith_f_op_f32(f32(-1f) * -1695f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -534f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-582f, 1063f)))), 638f);
}

