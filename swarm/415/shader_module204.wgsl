struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = Struct_1(false, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(344f, 324f, -839f), vec3<f32>(-1232f, 1948f, 1000f), true)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(557f, -447f, -1209f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, -183f, -1849f)) * vec3<f32>(1771f, -1000f, 342f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1547f, 1211f, -754f), vec3<f32>(-644f, 600f, 1195f))))))));
    let var_1 = arg_0;
    let var_2 = Struct_2(all(select(!vec2<bool>(var_0.a, false), select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a)), true | all(vec2<bool>(false, var_0.a)))));
    let var_3 = Struct_3(var_1.a);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)));
    return vec3<i32>(u_input.c, u_input.c, ~u_input.c) ^ ~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2939i, -2147483647i << (var_1.a % 32u)), max(vec3<i32>(u_input.c, u_input.c, u_input.c) & vec3<i32>(-2147483647i, 0i, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(17776i, -35454i, u_input.c), vec3<i32>(2147483647i, u_input.c, u_input.c))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = max(u_input.c, arg_1.x);
    let var_1 = Struct_2(true);
    let var_2 = var_0;
    var var_3 = countOneBits((vec3<i32>(1i, _wgslsmith_add_i32(0i, arg_1.x), var_0) ^ func_3(Struct_3(12462u))) << (min(~reverseBits(u_input.d), vec3<u32>(u_input.a.x, 1u, 58162u) & _wgslsmith_mult_vec3_u32(u_input.d, u_input.d)) % vec3<u32>(32u)));
    var var_4 = vec3<i32>(~(-(firstTrailingBit(arg_1.x) ^ var_3.x)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, 17450i), _wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_2), vec2<i32>(var_3.x, -1813i)), any(select(vec2<bool>(true, arg_0.x), arg_0, arg_0.x))), firstLeadingBit(func_3(Struct_3(u_input.d.x)).zx)), 70760i);
    return Struct_3(abs(u_input.b.x) << (_wgslsmith_dot_vec4_u32(~u_input.a, max(~vec4<u32>(14898u, 0u, 20133u, u_input.a.x), ~u_input.a)) % 32u));
}

fn func_1() -> u32 {
    var var_0 = func_2(vec2<bool>(false, true), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-(vec3<i32>(u_input.c, u_input.c, 25707i) | vec3<i32>(u_input.c, -1444i, u_input.c)), ~vec3<i32>(u_input.c, u_input.c, -60123i)), vec3<i32>(-1i) * -vec3<i32>(66443i, -14180i, u_input.c)));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1107f, -320f, -1226f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-587f, -1000f, 362f))), vec3<f32>(-1251f, 1187f, 2405f))))))));
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -2343f)), vec3<f32>(var_1.x, var_1.x, -136f))) * _wgslsmith_f_op_vec3_f32(floor(var_1))) + var_1));
    var var_3 = Struct_2(false);
    var var_4 = select(select(select(select(select(vec2<bool>(var_3.a, true), vec2<bool>(var_2.a, var_3.a), false), !vec2<bool>(var_3.a, var_2.a), !vec2<bool>(var_3.a, false)), vec2<bool>(var_2.a, any(vec2<bool>(var_2.a, true))), !select(vec2<bool>(true, var_2.a), vec2<bool>(var_3.a, true), vec2<bool>(true, true))), !vec2<bool>(var_3.a, var_3.a || false), select(select(!vec2<bool>(var_3.a, false), select(vec2<bool>(var_2.a, false), vec2<bool>(var_3.a, false), true), vec2<bool>(var_3.a, var_2.a)), select(vec2<bool>(var_3.a, var_2.a), !vec2<bool>(var_2.a, false), !var_3.a), true)), !select(!(!vec2<bool>(var_2.a, var_2.a)), !(!vec2<bool>(var_2.a, true)), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(var_3.a, var_2.a), vec2<bool>(true, var_3.a)), !vec2<bool>(var_3.a, var_2.a)), var_3.a));
    return ~(~func_2(vec2<bool>(false, 0u != u_input.b.x), vec3<i32>(u_input.c, 8353i, -2147483647i) | -vec3<i32>(u_input.c, u_input.c, 11922i)).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b & vec2<u32>(u_input.d.x, ~(~51381u));
    let var_1 = u_input.c;
    let var_2 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(var_0.x, 0u), _wgslsmith_clamp_u32(0u, ~u_input.d.x, var_0.x << (19708u % 32u))), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(vec2<u32>(42145u & var_0.x, 4294967295u), vec2<u32>(var_2.a, abs(u_input.a.x)), ~var_0), min(vec4<u32>(select(~var_2.a, 3223u, true), 0u, ~(~4294967295u), _wgslsmith_div_u32(var_2.a, min(var_2.a, var_0.x))), ~(~u_input.a & (u_input.a | u_input.a))), -645f, reverseBits(vec3<u32>(~49964u, ~60188u, var_0.x) | (_wgslsmith_mult_vec3_u32(u_input.a.zxw, vec3<u32>(var_0.x, var_2.a, 1u)) | ~u_input.a.xyw)), vec4<f32>(1692f, 1f, _wgslsmith_f_op_f32(min(340f, 3052f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(250f * 516f) - -858f))));
}

