struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32> = vec3<f32>(1525f, 1265f, -751f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), any(vec4<bool>(false, false, false, false))), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), true)), vec4<u32>(u_input.a, 43316u, u_input.b ^ u_input.a, max(~36747u, ~u_input.a >> (abs(u_input.a) % 32u))), select(~select(vec2<u32>(u_input.b, u_input.a), ~vec2<u32>(0u, u_input.a), true), vec2<u32>(_wgslsmith_add_u32(select(39053u, 13649u, true), 0u), 99136u), false), !((_wgslsmith_sub_u32(4294967295u, u_input.a) ^ 61120u) == u_input.b));
    let var_1 = !all(vec2<bool>(var_0.d, var_0.d));
    let var_2 = Struct_1(!(!any(select(vec2<bool>(var_1, false), vec2<bool>(var_1, false), vec2<bool>(var_1, var_1)))), vec4<u32>(var_0.c.x, var_0.c.x, 35780u >> (1u % 32u), var_0.c.x) & _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b, var_0.c.x, u_input.b, 1u) & var_0.b, ~var_0.b), ~var_0.b), ~var_0.b.xw, var_1);
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, 450f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(731f + global1.x) - _wgslsmith_f_op_f32(select(-1000f, -1194f, var_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1281f + _wgslsmith_f_op_f32(-global1.x)))) + _wgslsmith_f_op_f32(-2462f - global1.x));
    return firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(-firstTrailingBit(1i), _wgslsmith_mod_i32(-7588i, 36624i)), select(1i >> (var_2.c.x % 32u), 0i, false) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), ~vec2<i32>(-6189i, 42116i))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> u32 {
    return ~u_input.a;
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = func_4(_wgslsmith_div_i32(~reverseBits(1i), func_3()), Struct_1(false, ~(~(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) & vec4<u32>(u_input.a, 0u, u_input.b, u_input.b))), firstLeadingBit(~select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(39856u, 4050u), false)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))) | (firstTrailingBit(0i) != select(-2147483647i, 21435i, false))));
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(0i, 1i), firstTrailingBit(-2147483647i)), _wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(86339i, 30085i), vec2<i32>(0i, 0i))), vec2<i32>(1i, 1i))));
    let var_2 = _wgslsmith_div_u32(countOneBits(4294967295u), var_0);
    global0 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(928f * 363f)));
    global0 = 1449f;
    return _wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 1u), reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0, var_2) >> (vec2<u32>(7153u, 1u) % vec2<u32>(32u)), vec2<u32>(countOneBits(var_0), var_2), select(vec2<u32>(var_0, 19876u), vec2<u32>(var_0, 0u), false) & abs(vec2<u32>(var_2, var_2)))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec3<f32> {
    let var_0 = func_2(global1.x);
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-65972i, _wgslsmith_add_i32(~18164i, 2147483647i), -1i), abs(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(27828i, 29654i, -2147483647i)), ~vec3<i32>(-28360i, -26520i, 1i))) ^ max(reverseBits(-vec3<i32>(-2147483647i, 0i, -21416i)), firstLeadingBit(vec3<i32>(0i, -45453i, -2147483647i))));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -firstLeadingBit(-5946i), _wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(2147483647i, -32947i, -62422i)), _wgslsmith_mod_i32(21917i, 14217i) | func_3()), max(_wgslsmith_div_vec4_i32(-vec4<i32>(-48842i, 57239i, -2147483647i, 2147483647i), select(vec4<i32>(-1i, 60828i, 10422i, 1i), vec4<i32>(-2147483647i, 8777i, -71697i, -2147483647i), true)), vec4<i32>(~1i, select(43528i, -2147483647i, true), _wgslsmith_dot_vec2_i32(vec2<i32>(-43679i, 1i), vec2<i32>(1i, 29970i)), -1i))), 6697i, i32(-1i) * -(~(-13034i)), 1i);
    let var_3 = true;
    let var_4 = Struct_1(false, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 53593u), vec4<u32>(var_0.x, 34260u, var_0.x, var_0.x) << (vec4<u32>(6606u, u_input.b, var_0.x, u_input.a) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, 1u, 12202u) | vec4<u32>(var_0.x, 0u, u_input.a, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 1u, 0u, var_0.x), vec4<u32>(6445u, 1585u, var_0.x, var_0.x)))), ~vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 1u, var_0.x), u_input.b, _wgslsmith_add_u32(var_0.x, 1u), 9418u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(121827u, _wgslsmith_div_u32(u_input.b, 10670u)), var_0), all(vec3<bool>(~var_2.x >= var_2.x, !var_3, true)));
    return _wgslsmith_f_op_vec3_f32(abs(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(func_1(any(!vec3<bool>(select(true, true, true), true, select(true, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1384f, 2783f, 264f) * vec3<f32>(global1.x, 655f, global1.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, 1572f), vec3<f32>(2262f, global1.x, global1.x)))))));
    let var_0 = ~(~1u);
    let var_1 = Struct_1(false, vec4<u32>(var_0, ~min(0u, firstTrailingBit(var_0)), var_0, _wgslsmith_sub_u32(27598u, _wgslsmith_mod_u32(u_input.b, 1u))), ~(~select(~vec2<u32>(81398u, u_input.b), vec2<u32>(28521u, 26817u) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<bool>(false, true))), !select(true, true | (global1.x != global1.x), true));
    var var_2 = var_1.d;
    let var_3 = vec3<u32>(~(~(~var_0)), ~select(var_0, 24713u, any(vec2<bool>(true, true))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x * global1.x))), 919f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x * 173f), 611f, all(vec4<bool>(var_1.d, false, var_1.a, false)))))));
}

