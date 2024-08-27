struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec4<bool> {
    var var_0 = 0u;
    let var_1 = Struct_2(vec2<i32>(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_sub_i32(~2147483647i, _wgslsmith_div_i32(u_input.b, 2147483647i)), 1i), u_input.b));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1263f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), -1000f, var_2) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(327f, -962f, -789f) - vec3<f32>(var_2, var_2, 129f)) * vec3<f32>(var_2, var_2, var_2)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-365f, var_2, -621f), vec3<f32>(var_2, var_2, -656f), false)))))));
    var_0 = 4294967295u;
    return vec4<bool>(!(((global0.x << (u_input.a.x % 32u)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(15593i, u_input.b, var_1.a.x, -21915i), vec4<i32>(u_input.b, var_1.a.x, global0.x, -1i))) < u_input.b), !all(vec4<bool>(true, true, true, true)), !(!any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false))), ~4294967295u > _wgslsmith_mult_u32(_wgslsmith_add_u32(~55331u, ~u_input.a.x), ~(~0u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    global0 = select(vec3<i32>(27661i, _wgslsmith_add_i32(select(min(2147483647i, arg_1.a.x), select(-2147483647i, arg_2.b, arg_2.a.x), true), abs(arg_2.b)), -11182i), firstLeadingBit(select(_wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_0, u_input.b), vec3<i32>(u_input.b, 0i, global0.x)) | vec3<i32>(arg_0, arg_2.b, -759i), vec3<i32>(arg_2.b, 2796i, arg_1.a.x) & firstTrailingBit(vec3<i32>(global0.x, arg_0, arg_0)), !vec3<bool>(arg_2.a.x, true, arg_2.a.x))), !(!func_2().zyy));
    let var_0 = arg_1;
    let var_1 = ~min(~(~(vec2<u32>(u_input.a.x, 1u) & vec2<u32>(u_input.a.x, 0u))), u_input.a);
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.c.x)))));
    return func_2();
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: u32) -> u32 {
    let var_0 = -177f;
    let var_1 = !all(func_2());
    global0 = vec3<i32>(global0.x, 2147483647i, -12568i);
    var var_2 = !select(vec4<bool>(true, true, false, all(vec3<bool>(false, true, false))), select(!select(vec4<bool>(false, true, false, var_1), vec4<bool>(true, arg_2.a, true, false), vec4<bool>(false, arg_2.a, arg_2.a, arg_2.a)), !select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(false, arg_2.a, false, true), vec4<bool>(arg_2.a, var_1, arg_2.a, false)), select(func_3(-14390i, Struct_2(vec2<i32>(75754i, 2147483647i)), Struct_1(vec4<bool>(true, arg_2.a, var_1, true), global0.x, vec3<f32>(-155f, var_0, var_0), arg_1.xw)), !vec4<bool>(arg_2.a, false, false, arg_2.a), true)), vec4<bool>(true, var_1, true, true & arg_2.a));
    var_2 = !vec4<bool>(!var_2.x, arg_0.x < ~2147483647i, true, false);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-574f, 1134f), -1000f, 826f))));
    let var_1 = Struct_1(vec4<bool>(1u < ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 89427u), u_input.a), false, all(vec4<bool>(true, true, true, u_input.a.x > u_input.a.x)), abs(func_1(vec2<i32>(37784i, 391i), vec4<u32>(37901u, 40842u, u_input.a.x, 59101u), Struct_3(true), u_input.a.x)) > 4294967295u), _wgslsmith_dot_vec2_i32(~(-(global0.xz << (vec2<u32>(u_input.a.x, 18124u) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(global0.zx, vec2<i32>(_wgslsmith_sub_i32(global0.x, 40505i), u_input.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -740f, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 408f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-419f, var_0.x, 1000f))), 1i == _wgslsmith_dot_vec2_i32(global0.yy, global0.zy))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))), vec2<u32>(countOneBits(4294967295u) << (u_input.a.x % 32u), 29353u));
    var var_2 = !any(func_3(21846i, Struct_2(-vec2<i32>(u_input.b, global0.x)), var_1).zxx);
    global0 = vec3<i32>(firstTrailingBit(max(i32(-1i) * -var_1.b, ~max(-44453i, var_1.b))), ~2147483647i, min(-2147483647i, -1i));
    let var_3 = vec2<i32>(1i, _wgslsmith_sub_i32(var_1.b & _wgslsmith_mod_i32(u_input.b, u_input.b | 2147483647i), ~_wgslsmith_dot_vec2_i32(reverseBits(global0.yy), -global0.xy)));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(-1i) * -vec4<i32>(33871i, -26363i, 10620i, u_input.b)) | vec4<i32>(var_3.x, ~min(var_3.x, 0i), var_1.b, _wgslsmith_mult_i32(-38830i, u_input.b) >> (var_1.d.x % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-346f, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1291f), _wgslsmith_f_op_f32(max(var_1.c.x, var_1.c.x))), -1003f, -1947f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.c.x, var_0.x, -994f, 309f), vec4<f32>(-459f, -951f, var_1.c.x, 872f)))) + vec4<f32>(-1431f, _wgslsmith_f_op_f32(-var_0.x), 883f, 1000f))), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(787f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.x, -1312f, true)) - var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_0.x) + var_0.x)), select(max(u_input.a.x, _wgslsmith_sub_u32(var_1.d.x, 0u)), var_1.d.x, true) & abs(~firstTrailingBit(1u)));
}

