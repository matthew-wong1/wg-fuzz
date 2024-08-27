struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<f32>, 17>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = select(!vec3<bool>(arg_0, !all(vec3<bool>(arg_0, arg_0, arg_0)), arg_1.c), !(!select(!vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, arg_1.c), !vec3<bool>(arg_1.c, false, arg_1.c))), select(select(!vec3<bool>(arg_0, true, arg_1.c), !vec3<bool>(arg_0, arg_1.c, true), select(select(arg_0, arg_0, false), arg_0 && arg_0, arg_0)), vec3<bool>(1u >= select(arg_1.a, 4294967295u, arg_1.c), any(!vec4<bool>(arg_0, arg_1.c, arg_1.c, arg_0)), true), vec3<bool>(false, true, arg_1.c)));
    var var_1 = Struct_3(vec2<i32>(1i, arg_1.d) << (_wgslsmith_clamp_vec2_u32(reverseBits(u_input.c.zx), u_input.c.xy, abs(u_input.c.zx)) % vec2<u32>(32u)));
    let var_2 = Struct_2(1419i, !any(var_0.yx));
    let var_3 = 2147483647i;
    var var_4 = var_2.b;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, arg_1.b, 735f) + vec3<f32>(439f, 1070f, -147f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1496f, _wgslsmith_f_op_f32(exp2(arg_1.b)), _wgslsmith_f_op_f32(-arg_1.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b, -181f)), 1111f, arg_1.b)), select(vec3<bool>(var_0.x, arg_0, !all(var_0)), var_0, true)));
}

fn func_2(arg_0: bool) -> u32 {
    global1 = array<vec4<f32>, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_0, Struct_1(1u, 1f, !arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(2147483647i, -38010i)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(927f, 223f, -794f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1346f, 1000f, -1000f), vec3<f32>(2058f, 398f, 1000f), vec3<bool>(arg_0, true, true))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(497f, -822f)), _wgslsmith_f_op_f32(max(1530f, 1492f)), _wgslsmith_f_op_f32(sign(913f)))))));
    let var_1 = var_0.zx;
    global1 = array<vec4<f32>, 17>();
    var var_2 = abs((firstLeadingBit(max(vec4<u32>(u_input.a, u_input.a, 53398u, 50329u), vec4<u32>(0u, u_input.a, 74404u, 1u))) << (~(vec4<u32>(8761u, 4294967295u, u_input.a, u_input.c.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ firstTrailingBit(~(vec4<u32>(u_input.c.x, u_input.a, 1u, u_input.a) << (vec4<u32>(103288u, 4294967295u, 25823u, u_input.a) % vec4<u32>(32u)))));
    return u_input.a;
}

fn func_1() -> bool {
    global0 = func_2(true) == _wgslsmith_add_u32(~64357u, reverseBits(u_input.c.x));
    var var_0 = Struct_3(abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, -1i)) | reverseBits(vec2<i32>(-2147483647i, u_input.b)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, u_input.b)) | _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 49529i)), ~select(vec2<i32>(u_input.b, 1i), vec2<i32>(36878i, u_input.b), vec2<bool>(false, false)))));
    global1 = array<vec4<f32>, 17>();
    var var_1 = countOneBits(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 0u, 789u, 66428u), vec4<u32>(u_input.c.x, 0u, 0u, 0u)) >> (min(vec4<u32>(40399u, 13613u, 0u, u_input.c.x), vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.a)) % vec4<u32>(32u))));
    global1 = array<vec4<f32>, 17>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec4<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1())), true, true));
    var var_0 = -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(abs(vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<i32>(u_input.b, 0i, u_input.b & 16615i)), _wgslsmith_sub_vec3_i32(~(vec3<i32>(u_input.b, u_input.b, 37654i) << (vec3<u32>(u_input.c.x, 0u, 67957u) % vec3<u32>(32u))), vec3<i32>(~u_input.b, ~u_input.b, -11582i)));
    let var_1 = _wgslsmith_div_i32(-2147483647i, ~(~(-(u_input.b & 0i))));
    var var_2 = select(u_input.c, ~firstLeadingBit(u_input.c), vec3<bool>(true, true, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false))));
    global0 = func_1();
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-667f * _wgslsmith_f_op_f32(f32(-1f) * -1421f)))), 526f));
    var var_5 = _wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(~var_1, reverseBits(1i), _wgslsmith_add_i32(2147483647i, var_1), ~37847i)), -_wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, -42625i, -1i, var_1), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, 1i, -2147483647i, var_1), vec4<i32>(-4015i, 0i, 2147483647i, 78774i), vec4<i32>(var_1, u_input.b, 1i, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(35554u, ~var_2.x, firstTrailingBit(18081u), _wgslsmith_sub_u32(29935u, u_input.c.x))), 42714u);
}

