struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> u32 {
    var var_0 = firstTrailingBit(abs(max(~(~vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(61264u, 4294967295u))));
    let var_1 = Struct_4(firstLeadingBit(-2147483647i), Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_1.yxx, select(u_input.a.xwy, vec3<i32>(u_input.a.x, 2147483647i, -34843i), true)), -1i, u_input.a.x, arg_1.x)));
    let var_2 = firstLeadingBit(vec2<i32>(arg_1.x, -_wgslsmith_mult_i32(0i ^ var_1.a, _wgslsmith_mult_i32(u_input.a.x, -34064i))));
    let var_3 = true;
    global0 = select(!select(vec3<bool>(true, false, true), !select(vec3<bool>(false, var_3, var_3), vec3<bool>(false, var_3, false), false), select(!vec3<bool>(var_3, false, global0.x), vec3<bool>(true, global0.x, true), select(vec3<bool>(global0.x, var_3, false), vec3<bool>(arg_0, arg_0, true), true))), !(!vec3<bool>(any(global0.yx), arg_0, true)), select(select(select(!vec3<bool>(global0.x, global0.x, var_3), vec3<bool>(true, var_3, global0.x), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, global0.x), vec3<bool>(true, false, true), var_3), vec3<bool>(true, true, true)), !arg_0), select(!select(vec3<bool>(var_3, arg_0, arg_0), vec3<bool>(false, false, global0.x), vec3<bool>(true, global0.x, false)), select(!vec3<bool>(global0.x, true, var_3), select(vec3<bool>(true, false, global0.x), vec3<bool>(var_3, var_3, false), false), !vec3<bool>(false, var_3, false)), true), select(vec3<bool>(true || arg_0, any(global0.zy), any(vec4<bool>(false, var_3, var_3, arg_0))), vec3<bool>(true, var_3, var_3), vec3<bool>(all(vec4<bool>(true, arg_0, false, false)), !global0.x, !arg_0))));
    return firstTrailingBit(0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_sub_i32(-18590i, ((14762i >> (0u % 32u)) << (~arg_0.a.x % 32u)) << (select(countOneBits(arg_1.x), 1u, global0.x) % 32u)), arg_0.d);
    let var_1 = abs(~vec3<u32>(func_3(true, u_input.a), 4294967295u, arg_0.a.x));
    var var_2 = true;
    var_2 = global0.x;
    global0 = vec3<bool>(!any(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, true, true), vec3<bool>(true, true, global0.x))), 1i > (477i << (~arg_1.x % 32u)), !(!(!all(vec3<bool>(true, true, global0.x)))));
    return var_0;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = vec2<f32>(-886f, -394f);
    let var_1 = reverseBits(9127u);
    var var_2 = vec4<bool>(!(!all(vec2<bool>(global0.x, global0.x)) | false), _wgslsmith_f_op_f32(round(var_0.x)) <= -232f, global0.x, true);
    return select(!vec4<bool>(false, max(arg_0.b.a.x, u_input.a.x) <= arg_1.a, var_2.x, any(!var_2.wy)), !(!vec4<bool>(any(vec3<bool>(false, var_2.x, var_2.x)), var_2.x, global0.x | var_2.x, true)), all(!vec4<bool>(!var_2.x, global0.x && true, global0.x, true)));
}

fn func_1() -> Struct_4 {
    let var_0 = ~max(_wgslsmith_mult_u32(1u, ~countOneBits(37711u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 15456u), vec4<u32>(6002u, 54905u, 1u, 5511u)), ~30244u, 1u));
    var var_1 = ~firstTrailingBit(vec4<u32>(var_0 << (~4294967295u % 32u), 0u, 1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0, var_0, var_0), var_0)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1160f * 987f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - -807f));
    let var_3 = ~(~select(abs(vec4<u32>(32640u, var_0, var_1.x, 8480u)), ~vec4<u32>(1u, 0u, 0u, 9292u), func_4(Struct_4(-44906i, Struct_1(u_input.a)), func_2(Struct_2(var_1.zx, false, vec3<f32>(1270f, 506f, -141f), Struct_1(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -6114i)), 2147483647i), vec4<u32>(4294967295u, 52641u, 33245u, var_1.x)), vec2<i32>(u_input.a.x, u_input.a.x))));
    var var_4 = var_3 >> (abs(select(~countOneBits(var_3), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_3, vec4<u32>(77741u, var_1.x, 12421u, 4294967295u)), vec4<u32>(var_0, 17076u, 43816u, var_3.x)), select(!vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, true, true, true)))) % vec4<u32>(32u));
    return func_2(Struct_2(select(~(~vec2<u32>(var_1.x, var_1.x)), var_1.xw, global0.zy), var_1.x >= var_1.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -335f), 929f, -680f), Struct_1(~(~u_input.a)), u_input.a.x), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_4.x, _wgslsmith_dot_vec3_u32(var_4.yzz, var_4.zwx), ~var_3.x), vec4<u32>(var_3.x, min(var_0, 77375u), 1u | var_4.x, ~var_3.x)), vec4<u32>(var_4.x, 1u, ~(~var_0), select(1u, var_3.x ^ 4294967295u, any(global0.yx)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_2(Struct_2(vec2<u32>(41712u, ~0u), global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2899f, -625f, 1436f) + vec3<f32>(-189f, -1000f, -1711f)))), func_1().b, _wgslsmith_dot_vec4_i32(func_1().b.a, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.a.x, u_input.a.x, u_input.a.x, 9277i), var_0.b.a) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(38820i, -73836i, u_input.a.x, u_input.a.x)))), max(_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(127113u, 39246u, 0u, 17277u)), vec4<u32>(1u, _wgslsmith_div_u32(22759u, 16965u), abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 13649u), vec2<u32>(4294967295u, 0u)))), select(~vec4<u32>(1u, 71924u, 11998u, 28190u), ~vec4<u32>(33624u, 0u, 0u, 14331u), select(all(vec3<bool>(false, true, global0.x)), true, u_input.a.x >= var_0.a)))).b;
    var var_2 = Struct_2(vec2<u32>(1u, 1u), !global0.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(-471f, -229f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2349f, -510f))), 401f))), func_1().b, var_0.a);
    let var_3 = Struct_2(_wgslsmith_sub_vec2_u32(var_2.a, _wgslsmith_div_vec2_u32(~vec2<u32>(var_2.a.x, 5883u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 49594u), var_2.a))) & vec2<u32>(_wgslsmith_mult_u32(var_2.a.x & 80982u, 45403u), var_2.a.x >> (abs(40972u) % 32u)), true, _wgslsmith_f_op_vec3_f32(-var_2.c), func_1().b, ~54350i ^ _wgslsmith_add_i32(u_input.a.x, var_1.a.x));
    var var_4 = u_input.a.x | (abs(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i, var_0.a), select(-1i, -9020i, global0.x), -17002i ^ var_0.a)) | var_3.d.a.x);
    var_2 = var_3;
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-6478i, _wgslsmith_sub_i32(-var_0.b.a.x, i32(-1i) * -(i32(-1i) * -1i)));
}

