struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec2<f32>) -> u32 {
    let var_0 = abs(abs(vec4<u32>(4319u, 1u, 82352u, 4294967295u)));
    var var_1 = 8542u;
    var var_2 = Struct_1(reverseBits(reverseBits(38758i)), -1i, 1i, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-460f, _wgslsmith_f_op_f32(step(2233f, arg_1)), 345f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.x, -1548f, -829f), vec3<f32>(arg_1, -1033f, arg_1))))))));
    var var_3 = Struct_2(var_0.x);
    let var_4 = Struct_1(select(_wgslsmith_add_i32(-3049i, abs(u_input.b)), -26705i, true), _wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(~var_2.b, -countOneBits(arg_0.x))), -firstTrailingBit(var_2.b), -473f, var_2.e);
    return ~var_3.a;
}

fn func_2() -> vec4<i32> {
    var var_0 = select(54211u, u_input.a.x, u_input.b != -29857i);
    let var_1 = Struct_2(func_3(vec4<i32>(-7020i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(64306i, u_input.b, u_input.b, -28275i), vec4<i32>(u_input.b, u_input.b, u_input.b, -10296i)), ~u_input.b & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 11253i, u_input.b, u_input.b), vec4<i32>(-1i, 45624i, 21396i, u_input.b)), u_input.b), 557f, vec3<bool>(true, !select(true, true, true), true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-358f, -650f)), -268f), _wgslsmith_div_f32(-1358f, _wgslsmith_f_op_f32(trunc(345f))))));
    return _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, u_input.b, 3615i, -2147483647i), reverseBits(-vec4<i32>(-1i, u_input.b, -34279i, -22695i))), vec4<i32>(-u_input.b, ~(u_input.b << (u_input.a.x % 32u)), _wgslsmith_sub_i32(firstLeadingBit(u_input.b), -1i), _wgslsmith_div_i32(u_input.b, -13862i)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = u_input.a.wx;
    let var_1 = 1u;
    var var_2 = -(max(_wgslsmith_add_vec4_i32(vec4<i32>(-31107i, -2147483647i, 21362i, u_input.b), vec4<i32>(arg_0.c, u_input.b, arg_0.b, arg_0.a)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_0.c, 0i, u_input.b), vec4<i32>(2147483647i, -2147483647i, 2121i, -21675i), vec4<i32>(arg_0.c, 11883i, 26494i, -29378i)), _wgslsmith_sub_vec4_i32(func_2(), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b))) | _wgslsmith_clamp_vec4_i32(func_2(), vec4<i32>(reverseBits(-61413i), 2147483647i, arg_0.c, _wgslsmith_mult_i32(0i, u_input.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-50322i, 0i, 1i, arg_0.b), vec4<i32>(-1i, 31008i, u_input.b, -4816i)), -vec4<i32>(arg_0.c, 18020i, -1i, u_input.b))));
    var_2 = reverseBits(abs(vec4<i32>(i32(-1i) * -22602i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -2147483647i, arg_0.c, -2147483647i) | vec4<i32>(-28603i, var_2.x, 15544i, -2147483647i), vec4<i32>(arg_0.a, -2147483647i, -13828i, u_input.b)), var_2.x)));
    var var_3 = Struct_2(~(~23820u));
    return ~(~abs(1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(18560u, func_1(Struct_1(48947i, 0i, u_input.b, -1191f, vec3<f32>(-784f, 263f, -212f)), 0u, true), 1u, func_3(vec4<i32>(u_input.b, 28113i, u_input.b, 1i), 173f, vec3<bool>(false, false, false), vec2<f32>(-1097f, -545f))), select(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), ~vec4<u32>(0u, 15659u, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, true)))), min(abs(0u), u_input.a.x));
    var var_1 = firstLeadingBit(min(~min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 2147483647i)), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-19372i, 2147483647i), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(31384i, -2147483647i)))) & vec2<i32>(_wgslsmith_mod_i32(u_input.b, -39908i), -8177i);
    var_1 = vec2<i32>(-1i) * -vec2<i32>(min(-u_input.b, u_input.b << (49059u % 32u)), ~var_1.x);
    var_0 = 14328u;
    var var_2 = Struct_2(~(~_wgslsmith_div_u32(max(1u, u_input.a.x), 4294967295u)));
    var var_3 = Struct_2(_wgslsmith_div_u32(~u_input.a.x, ~u_input.a.x) | _wgslsmith_div_u32(53037u >> (1u % 32u), 35799u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~vec3<i32>(-18320i, -2147483647i, max(var_1.x, min(0i, var_1.x))));
}

