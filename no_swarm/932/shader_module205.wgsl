struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0;
    var var_1 = vec4<i32>(-1i) * -(vec4<i32>(~0i, u_input.a.x, u_input.a.x, abs(u_input.b)) ^ _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(45454i, -5761i, u_input.b, -60335i)), vec4<i32>(u_input.a.x, -22525i, 1i, u_input.a.x)));
    return ~(abs(reverseBits(0u)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 34158u), vec2<u32>(~52543u, ~72095u)) % 32u));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<i32>, 32>();
    let var_0 = u_input.a.x;
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(func_3(Struct_2(vec3<bool>(false, false, false), true)), _wgslsmith_add_u32(abs(1u), ~87865u), ~firstLeadingBit(0u), 1u) ^ vec4<u32>(39946u, _wgslsmith_div_u32(~0u, 44889u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(61582u, 59431u, 795u, 34892u), vec4<u32>(9014u, 0u, 0u, 53802u)), func_3(Struct_2(vec3<bool>(false, false, false), true)) | ~4294967295u), ~((~vec4<u32>(46649u, 4294967295u, 1u, 4294967295u) ^ select(vec4<u32>(0u, 0u, 4294967295u, 76609u), vec4<u32>(46756u, 0u, 10749u, 18511u), vec4<bool>(false, false, false, false))) << (~vec4<u32>(0u, 453u, 6041u, 55623u) % vec4<u32>(32u))));
    var_2 = vec4<u32>(55862u, var_2.x, ~var_2.x, 73898u);
    return Struct_1(-min(u_input.a, _wgslsmith_mult_vec4_i32(-u_input.a, u_input.a & u_input.a)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), all(vec3<bool>(true, false, false))), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -668f) - _wgslsmith_f_op_f32(468f - -720f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-962f, -1826f)), -589f)))), 32267u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1097f, 1000f)), -1920f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-657f, _wgslsmith_f_op_f32(f32(-1f) * -183f))) - 375f)));
}

fn func_1(arg_0: f32) -> f32 {
    global0 = array<vec2<i32>, 32>();
    var var_0 = func_2();
    var_0 = Struct_1(vec4<i32>(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, _wgslsmith_mod_i32(u_input.a.x, 8982i), u_input.c, _wgslsmith_sub_i32(u_input.c, u_input.c)), var_0.a), -19753i, max(firstLeadingBit(var_0.a.x), 1i)), vec3<bool>(true, !any(vec2<bool>(var_0.b.x, var_0.b.x)), var_0.b.x), var_0.e, 19997u, -1000f);
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32((_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, 36725i, u_input.a.x), u_input.a) | ~u_input.a) & (vec4<i32>(-1i) * -vec4<i32>(var_0.a.x, 30593i, 2147483647i, -1i)), u_input.a), !select(select(select(vec3<bool>(false, true, false), var_0.b, vec3<bool>(var_0.b.x, true, true)), var_0.b, !var_0.b), select(var_0.b, vec3<bool>(var_0.b.x, false, false), any(var_0.b)), vec3<bool>(var_0.b.x, true, !var_0.b.x)), var_0.c, var_0.d, arg_0);
    let var_2 = Struct_2(!var_0.b, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -664f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-471f - -435f))) + 1000f), _wgslsmith_f_op_f32(sign(253f))));
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = vec2<bool>((var_1.d & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30164u, var_1.d, 1u), vec3<u32>(1u, var_1.d, 5890u)), select(17978u, var_1.d, true))) != select(4294967295u, var_1.d << (~var_1.d % 32u), true && var_1.b.x), var_1.b.x);
    var_2 = var_1.b.zz;
    var_1 = Struct_1(vec4<i32>(-_wgslsmith_clamp_i32(var_1.a.x, -1i, -7058i) << (3334u % 32u), i32(-1i) * -_wgslsmith_add_i32(u_input.b, var_1.a.x), -u_input.c, var_1.a.x), vec3<bool>(!var_2.x, true & any(select(vec2<bool>(var_2.x, false), var_1.b.xz, var_1.b.zy)), true & (func_2().b.x && var_2.x)), _wgslsmith_f_op_f32(-981f - var_0.x), var_1.d >> (~_wgslsmith_mod_u32(var_1.d, ~0u) % 32u), _wgslsmith_f_op_f32(exp2(var_0.x)));
    var var_3 = func_2();
    var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_1.c, 18237i, ~var_1.d);
}

