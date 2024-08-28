struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_4(u_input.c >= _wgslsmith_mult_i32(-_wgslsmith_add_i32(u_input.c, u_input.c), ~_wgslsmith_div_i32(1i, u_input.c)), Struct_3(max(64563u, u_input.d.x)));
    var var_1 = 1u | var_0.b.a;
    var_1 = min(firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(36286u, 1u, 4294967295u), countOneBits(vec3<u32>(var_0.b.a, 4294967295u, var_0.b.a))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(var_0.b.a, u_input.a)), var_0.b.a), 0u)), _wgslsmith_div_u32(var_0.b.a | (4294967295u | var_0.b.a), var_0.b.a));
    var_1 = _wgslsmith_div_u32(15246u, 505u);
    var_1 = _wgslsmith_sub_u32(var_0.b.a, var_0.b.a);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f))), _wgslsmith_f_op_f32(1430f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -196f), _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(719f - -345f)), -1000f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, -268f)), 721f, _wgslsmith_f_op_f32(step(-467f, -1098f)), -817f) - vec4<f32>(1975f, 951f, _wgslsmith_f_op_f32(1000f + 1327f), 1f))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(720f, 770f, -1023f, -1107f))) - _wgslsmith_f_op_vec4_f32(func_3()))), select(u_input.d, u_input.d | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 75489u), vec2<u32>(u_input.a, u_input.d.x)), all(vec2<bool>(true, true)))), vec4<i32>(select(_wgslsmith_mod_i32(-21063i, arg_0), arg_0, ~4294967295u != u_input.a), u_input.b, -(~_wgslsmith_clamp_i32(u_input.c, arg_0, u_input.c)), arg_0 >> (u_input.a % 32u)), u_input.a, u_input.d.x, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-345f, -358f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-366f, -2326f))))), 698f, _wgslsmith_f_op_f32(-597f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1281f, 248f))))));
    let var_1 = u_input.a;
    return var_0.a;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(select(-_wgslsmith_div_i32(u_input.b, u_input.c) | 0i, ~(-u_input.c) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -8284i, 1i, u_input.c), vec4<i32>(0i, 0i, u_input.c, -1i)), !any(vec3<bool>(false, true, false))));
    let var_1 = max(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(-4027i, u_input.b), 1i)), _wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(u_input.c, u_input.b)), firstTrailingBit(vec2<i32>(u_input.b, -1i)))), min(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, -29723i), abs(vec2<i32>(u_input.b, -2147483647i)), vec2<i32>(-2147483647i, u_input.b)), firstLeadingBit(-vec2<i32>(u_input.c, u_input.c)), min(-vec2<i32>(u_input.b, 1i), min(vec2<i32>(62172i, u_input.b), vec2<i32>(u_input.b, u_input.b)))), vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(-66587i, u_input.b))));
    var var_2 = -489f;
    var_2 = _wgslsmith_f_op_f32(-var_0.b.x);
    let var_3 = var_0.c.x;
    return Struct_2(func_2(-7497i), ~vec4<i32>(u_input.c, firstLeadingBit(-97151i), 41026i, u_input.b) >> ((_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(var_3, var_0.c.x, 0u, var_3)), _wgslsmith_clamp_vec4_u32(vec4<u32>(49878u, 1u, 48377u, var_3), vec4<u32>(var_3, u_input.d.x, var_0.c.x, u_input.a), vec4<u32>(u_input.d.x, var_3, 29991u, 20303u))) << (~vec4<u32>(21664u, 21289u, 4294967295u, 73830u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~var_3, var_3 >> (4294967295u % 32u)) | ~countOneBits(1u), var_3), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3, 0u, var_3, ~var_0.c.x), reverseBits(reverseBits(abs(vec4<u32>(40589u, 4294967295u, var_3, var_0.c.x))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.b.x, -975f)))), var_0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1570f), 928f, _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)) * vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -31143i;
    var_0 = countOneBits(u_input.c);
    var var_1 = func_1();
    var_0 = -36124i;
    var var_2 = Struct_5(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-68432i, -1i, var_1.b.x, var_1.b.x)) ^ _wgslsmith_mod_vec4_i32(var_1.b << (vec4<u32>(u_input.d.x, 0u, 48937u, 31606u) % vec4<u32>(32u)), vec4<i32>(var_1.b.x, u_input.c, 1i, var_1.b.x)), var_1.b));
    var_1 = Struct_2(func_1().a, func_1().b, min(_wgslsmith_mult_u32(firstTrailingBit(1u), var_1.a.c.x), u_input.d.x), ~var_1.d, var_1.e);
    var var_3 = ~(~_wgslsmith_clamp_u32(~0u, ~var_1.a.c.x, _wgslsmith_div_u32(0u, u_input.d.x))) & ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.yyx, var_2.a.x, -abs(var_2.a.x));
}

