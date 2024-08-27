struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    global0 = false;
    var var_0 = vec4<i32>(min(-1i, -u_input.a.x), 21906i, -2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(26757i, u_input.a.x, 2147483647i, 18071i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, -7633i) >> (vec4<u32>(4294967295u, 31811u, 39109u, 13832u) % vec4<u32>(32u)), arg_1.a | arg_1.a), vec4<i32>(_wgslsmith_add_i32(30769i, u_input.a.x), -1i, ~0i, u_input.a.x)), _wgslsmith_mult_i32(1i, i32(-1i) * -39829i)));
    var var_1 = -u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_1.b, -1044f, arg_1.b)), _wgslsmith_div_vec4_f32(vec4<f32>(-800f, arg_2, arg_2, arg_1.d.x), vec4<f32>(arg_0.x, 575f, arg_2, -1877f)), arg_1.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, arg_2) * vec4<f32>(-1090f, arg_1.d.x, arg_2, -348f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(349f, arg_0.x, 1093f, arg_2)))))));
    var_1 = ((firstTrailingBit(vec3<i32>(15330i, var_1.x, -72016i)) | max(var_0.wyx, vec3<i32>(var_1.x, var_1.x, -44677i))) & vec3<i32>(~_wgslsmith_dot_vec3_i32(var_0.wzx, u_input.a), firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, -1i)), u_input.a.x)) | var_0.xzy;
    return -1i;
}

fn func_2() -> f32 {
    let var_0 = vec2<i32>(-u_input.a.x, _wgslsmith_div_i32((i32(-1i) * -29541i) & ~u_input.a.x, -func_3(vec2<f32>(302f, 278f), Struct_1(true, 1000f, vec4<bool>(true, true, false, false), vec2<f32>(-1000f, -1000f)), -857f))) >> (vec2<u32>(reverseBits(select(1u, _wgslsmith_mult_u32(4294967295u, 1u), true)), _wgslsmith_sub_u32(4294967295u, 16808u)) % vec2<u32>(32u));
    global0 = var_0.x != -1i;
    let var_1 = Struct_2(Struct_1(all(vec4<bool>(select(true, true, true), true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-354f + -341f) * _wgslsmith_f_op_f32(f32(-1f) * -353f))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-769f, 802f), vec2<f32>(-763f, 1160f), true)) + vec2<f32>(534f, -485f)) + vec2<f32>(-175f, _wgslsmith_f_op_f32(ceil(-1008f))))), ~1u, vec2<u32>(72529u, 49095u));
    global0 = all(vec4<bool>(any(select(var_1.a.c.xy, !vec2<bool>(var_1.a.a, true), select(var_1.a.c.yy, vec2<bool>(true, var_1.a.c.x), vec2<bool>(false, true)))), true, var_1.a.c.x, true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b, -539f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.d.x), _wgslsmith_f_op_f32(-var_1.a.b))), _wgslsmith_div_f32(584f, var_1.a.b)) * vec4<f32>(322f, _wgslsmith_f_op_f32(var_1.a.b * 1064f), _wgslsmith_f_op_f32(-var_1.a.b), -1122f)));
    return 492f;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    global0 = false;
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 - -1509f))), -145f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), 177f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), arg_1)));
    global0 = abs(firstTrailingBit(~(~62617u))) == reverseBits(1u);
    global0 = !any(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, true, any(vec2<bool>(false, true)))));
    let var_1 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(-30036i, u_input.a.x), firstTrailingBit(u_input.a.yy)), ~u_input.a.zz >> (_wgslsmith_mult_vec2_u32(vec2<u32>(13260u, 0u), vec2<u32>(35113u, 0u)) % vec2<u32>(32u))), firstLeadingBit(u_input.a.x)), arg_1, Struct_2(Struct_1(all(vec4<bool>(false, true, true, false)), arg_1, vec4<bool>(true, true, true, select(false, true, false)), vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(19188u, 0u, 0u), abs(~vec3<u32>(27446u, 4294967295u, 4294967295u))), vec2<u32>(1u, 1u)), _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-(-43011i << (1u % 32u)), arg_0, _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_0, -16532i), 0i))));
    return var_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = func_1(-2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -265f));
    let var_1 = (vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(~vec2<i32>(15938i, u_input.a.x), -vec2<i32>(-1i, -2147483647i))) | vec2<i32>(4101i, ~(-_wgslsmith_div_i32(-3373i, -2147483647i)));
    var var_2 = countOneBits(_wgslsmith_add_u32(select(abs(4294967295u), ~(~19053u), !var_0.a & all(var_0.c.zxx)), 1992u));
    var var_3 = _wgslsmith_f_op_f32(sign(var_0.d.x));
    var_2 = reverseBits(1u);
    let var_4 = firstLeadingBit(_wgslsmith_mult_u32(firstTrailingBit(7206u) & 62120u, ~(_wgslsmith_clamp_u32(1u, 40187u, 6831u) >> (~4294967295u % 32u))));
    var var_5 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, _wgslsmith_div_f32(var_0.d.x, -428f), _wgslsmith_f_op_f32(abs(1379f)), 114f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, var_0.b, 1293f, var_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.b, 737f, 2007f))))))), vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-var_0.b), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-436f * _wgslsmith_f_op_f32(-1630f * var_0.d.x)))), true));
    var var_6 = reverseBits(~(~(vec4<u32>(var_4, 4294967295u, var_4, 102049u) | ~vec4<u32>(var_4, 134245u, var_4, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_mod_vec4_i32(vec4<i32>(49262i, 0i, 2147483647i, 0i), vec4<i32>(var_1.x, var_1.x, -1i, -1i)) ^ -vec4<i32>(-1856i, u_input.a.x, 0i, var_1.x), ~(-vec4<i32>(var_1.x, 15497i, 2420i, var_1.x))), var_1.x);
}

