struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(-47688i, -1i, 19082i, i32(-2147483648), -1i, -13240i, -27650i, 2147483647i, -17740i, -80923i, i32(-2147483648), 2147483647i, -74154i, 2147483647i, 43956i, -12919i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec2<f32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(83997u, _wgslsmith_mult_u32(u_input.b, u_input.c.x)), vec2<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), ~_wgslsmith_add_u32(1u, u_input.d))) | ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.c.x, 93960u), 1u), 16u)];
    var_0 = _wgslsmith_add_i32(u_input.a.x, _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(~u_input.a.zw, firstTrailingBit(u_input.a.zy)), -2147483647i));
    let var_1 = vec2<bool>(arg_0.x, any(arg_0.wzx));
    global0 = array<i32, 16>();
    let var_2 = all(arg_0.xzx) != any(!select(!vec3<bool>(false, arg_1.x, var_1.x), select(arg_0.zzx, arg_0.yzx, var_1.x), vec3<bool>(arg_1.x, arg_0.x, false)));
    return true;
}

fn func_2(arg_0: f32) -> bool {
    global0 = array<i32, 16>();
    let var_0 = Struct_1(0u, vec4<bool>(true, true, func_3(vec4<bool>(true, true, true, true), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(1601f, arg_0) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-924f, -1244f))))), true), abs(firstLeadingBit(firstTrailingBit(u_input.a.wxw))), vec3<bool>(!all(vec2<bool>(true, false)), 28585i < -u_input.a.x, !all(vec2<bool>(true, true))));
    global0 = array<i32, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -1191f), arg_0, 1812f))));
    let var_2 = 62539u;
    return var_0.b.x;
}

fn func_1(arg_0: vec3<u32>) -> vec2<bool> {
    return !select(vec2<bool>(func_2(_wgslsmith_f_op_f32(1650f - 896f)), all(vec2<bool>(false, false))), vec2<bool>(false, false), (arg_0.x << ((u_input.c.x | u_input.b) % 32u)) == _wgslsmith_clamp_u32(1u, countOneBits(0u), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-155f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(175f, 363f) - -1316f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-521f, 495f) * _wgslsmith_f_op_f32(sign(1357f)))));
    let var_1 = true;
    let var_2 = !(!func_1(u_input.e));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(216f, -1000f, -1332f))) + vec3<f32>(1f, 1f, 1f)));
    global0 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -429f)))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.zzy, vec3<i32>(-2147483647i, u_input.a.x, 2147483647i) << (vec3<u32>(0u, 90629u, u_input.c.x) % vec3<u32>(32u))), u_input.a.zwz) | _wgslsmith_div_vec3_i32(u_input.a.wzx, _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(49122u, 16u)], 2147483647i, u_input.a.x), vec3<i32>(34169i, -42760i, global0[_wgslsmith_index_u32(u_input.b, 16u)]))), u_input.a.zxx, _wgslsmith_mult_u32(u_input.c.x, 14373u));
}

