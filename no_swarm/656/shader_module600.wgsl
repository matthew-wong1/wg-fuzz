struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = ~(~abs(u_input.b.x) & _wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_0.b, 17758u, arg_0.b, arg_0.d), ~vec4<u32>(1u, u_input.c, u_input.c, arg_0.b), !vec4<bool>(true, true, arg_0.a, false)), ~min(vec4<u32>(14807u, 4294967295u, arg_0.b, u_input.c), vec4<u32>(arg_0.d, 0u, u_input.d, arg_0.d))));
    var var_0 = arg_0;
    var var_1 = Struct_1(!var_0.a && select(false & any(vec4<bool>(true, false, var_0.c.x, var_0.c.x)), var_0.c.x, false), countOneBits(~(~28662u)) | var_0.b, vec4<bool>(all(var_0.c.wz), false, false, any(!vec2<bool>(arg_0.a, false))), ~(~2320u >> (_wgslsmith_mult_u32(u_input.c | arg_0.b, var_0.b) % 32u)), arg_0.e ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(-11592i, var_0.e.x), vec2<i32>(var_0.e.x, -36284i)));
    var_0 = arg_0;
    var var_2 = arg_0;
    return -587f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true, u_input.d, vec4<bool>(true, true, false, any(vec4<bool>(false, false, true, false))), ~u_input.d >> (~1u % 32u), vec2<i32>(-1i) * -vec2<i32>(1i, u_input.a)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1978f))));
    global0 = 481u;
    global0 = _wgslsmith_div_u32(1u, u_input.d);
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(-vec2<i32>(-24378i, u_input.a)), min(abs(~vec2<i32>(u_input.a, 0i)), max(vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, 1i), vec3<i32>(-22043i, u_input.a, 1i))), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-33730i, 1i))))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a) >> (vec2<u32>(35523u, u_input.b.x) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-16704i, u_input.a), vec2<i32>(25731i, u_input.a)), vec2<i32>(u_input.a, 1i))), max(countOneBits(vec2<i32>(-2147483647i, u_input.a)), abs(vec2<i32>(u_input.a, u_input.a))) << (firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 34933u), vec2<u32>(1u, 28052u))) % vec2<u32>(32u))));
    return Struct_1(false, 0u, vec4<bool>(false, true, !(~u_input.b.x < u_input.d), -682f >= _wgslsmith_f_op_f32(min(var_0, -2413f))), ~u_input.d, -(~(~vec2<i32>(-70721i, -37777i))) & (vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(u_input.a, u_input.a))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = arg_1;
    global0 = 4294967295u;
    let var_1 = any(vec3<bool>(arg_1.a, all(!select(var_0.c.xxw, vec3<bool>(var_0.a, var_0.c.x, var_0.a), arg_1.c.xyz)), all(!arg_1.c)));
    let var_2 = select(vec2<bool>(false, arg_1.a), !vec2<bool>(firstTrailingBit(0u) != _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b, 4294967295u), vec3<u32>(u_input.b.x, 0u, 1u)), var_0.a), select(arg_1.c.ww, !(!select(vec2<bool>(var_1, var_0.c.x), var_0.c.xz, true)), vec2<bool>(any(arg_1.c.wzy) & false, 0i < (-2147483647i << (arg_1.b % 32u)))));
    let var_3 = ~(~96834u);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(f32(-1f) * -2139f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-302f, _wgslsmith_f_op_f32(step(1072f, 137f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1357f, -854f), vec2<f32>(1937f, -721f))), vec2<bool>(!var_0.c.x, all(var_0.c))))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    global0 = _wgslsmith_mult_u32(arg_0, select(~(~(~6842u)), 1u, true));
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-226f, arg_1.x, arg_1.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) + vec3<f32>(arg_1.x, 359f, 1000f))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(select(arg_0, ~0u, all(arg_3.c.yyy)), func_2()));
    global0 = func_2().b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -211f) * vec2<f32>(arg_1.x, var_0.x)) * vec2<f32>(-944f, _wgslsmith_f_op_f32(var_1.x * var_0.x))))));
    return 6012u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(max(~u_input.b.x, ~83051u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 788u), vec2<u32>(4294967295u, u_input.d))), 0u);
    let var_0 = func_1(4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-742f))), _wgslsmith_div_f32(-1056f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -974f), -472f)))), any(vec4<bool>(true, true, true, true)), Struct_1(!all(vec2<bool>(true, true)) && true, u_input.b.x, !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))), _wgslsmith_sub_u32(u_input.d, u_input.c), ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 14882i), vec2<i32>(u_input.a, -51726i)))));
    let var_1 = vec3<f32>(1000f, _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_clamp_u32(var_0, ~49925u, select(~var_0, ~64827u, true)), func_2())).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -604f) - _wgslsmith_f_op_f32(max(421f, -2200f))), _wgslsmith_div_f32(517f, -536f))) * _wgslsmith_f_op_f32(1f - 354f)));
    var var_2 = vec4<u32>(u_input.b.x, ~max(4294967295u, func_1(0u, vec2<f32>(var_1.x, 433f), true, Struct_1(true, 13547u, vec4<bool>(false, false, true, true), 4272u, vec2<i32>(u_input.a, -15760i)))), abs(34202u), firstLeadingBit(48245u));
    let var_3 = func_2().c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1188f, var_1.x, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -576f, var_1.x, var_1.x), vec4<f32>(-1000f, var_1.x, -352f, -606f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(987f, var_1.x, var_1.x, var_1.x), vec4<f32>(412f, var_1.x, -373f, -2175f)))))), _wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(1812f, var_1.x, _wgslsmith_f_op_f32(var_1.x * 1316f))), 66996i, _wgslsmith_mod_u32(abs(u_input.c), 99125u ^ min(max(40781u, u_input.c), ~u_input.d)), var_2.yzy);
}

