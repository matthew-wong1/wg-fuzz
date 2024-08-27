struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = arg_0;
    var var_1 = ~1u;
    var var_2 = ~(~firstLeadingBit(-_wgslsmith_clamp_i32(2339i, 2147483647i, 37389i)));
    var var_3 = vec4<u32>(1u, _wgslsmith_div_u32(~1u, firstTrailingBit(~22912u)), ~_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(arg_1, 566u)), vec2<u32>(1u, arg_1)), min(28653u, ~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_1), vec2<u32>(u_input.a, u_input.a)))));
    let var_4 = false;
    return arg_0.a;
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = !any(select(vec3<bool>(!arg_0.a.a, arg_0.a.a, true), vec3<bool>(arg_0.a.a, all(vec4<bool>(arg_0.a.a, false, true, arg_0.a.a)), !arg_0.a.a), !vec3<bool>(false, arg_0.a.a, true)));
    var_0 = arg_0.a.a;
    let var_1 = arg_0;
    var_0 = var_1.a.a;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_div_f32(339f, 570f)), u_input.a)))));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(940f)) - -635f);
    var var_1 = arg_2.a;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2130f))), var_0);
    let var_3 = func_2(Struct_2(arg_0));
    let var_4 = var_3;
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(1000f, var_2)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-538f, -787f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(667f, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a - var_4.a))))), 125f);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - -427f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f - arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1743f), _wgslsmith_f_op_f32(select(arg_0.x, 276f, arg_2.a))))));
    let var_1 = func_2(Struct_2(arg_2));
    var var_2 = max(reverseBits(~abs(arg_3.x)) ^ (_wgslsmith_mod_i32(_wgslsmith_div_i32(-43007i, 1i), -16128i) | (countOneBits(52381i) & (arg_3.x ^ 2147483647i))), select(-(_wgslsmith_mult_i32(arg_3.x, -20295i) & 0i), firstTrailingBit(~arg_2.d.x | (i32(-1i) * -5685i)), select(arg_2.a, true && all(vec4<bool>(true, false, arg_2.a, true)), !(arg_3.x < arg_2.c))));
    var_2 = arg_2.d.x;
    var_2 = _wgslsmith_sub_i32(1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-9744i, -6930i), vec2<i32>(arg_2.d.x, arg_3.x) >> (arg_1 % vec2<u32>(32u))) | ~_wgslsmith_mod_i32(arg_2.d.x, 1i)));
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    var var_0 = vec3<u32>(~arg_3, ~(~(~4294967295u)) ^ (((57168u >> (arg_3 % 32u)) & u_input.a) & u_input.a), 18290u);
    var_0 = vec3<u32>(0u, ~(~(~(~arg_3))), 5671u);
    var var_1 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - arg_0.a)));
    let var_2 = -func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(428f, -966f, arg_0.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, arg_0.a, -761f))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), abs(var_0.yz), vec2<u32>(u_input.a, 2511u)), arg_2, _wgslsmith_mult_vec2_i32(arg_1.a.d, arg_2.d | -vec2<i32>(-18538i, 0i))).b.x;
    var var_3 = -26029i >> (_wgslsmith_mult_u32(42391u, reverseBits(u_input.a)) % 32u);
    return Struct_3(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(_wgslsmith_f_op_f32(round(-783f))), Struct_2(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-730f, 988f, 1064f)), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(true, vec2<i32>(2147483647i, 13970i), -65402i, vec2<i32>(2147483647i, -2147483647i)), vec4<f32>(2092f, 1115f, 350f, -646f), Struct_2(Struct_1(false, vec2<i32>(-32186i, -14575i), 1695i, vec2<i32>(-1320i, 1i)))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(18499u, u_input.a), vec2<u32>(1u, 0u), vec2<u32>(49794u, 0u)) << (~vec2<u32>(9349u, 26864u) % vec2<u32>(32u)), Struct_1(true, vec2<i32>(-1i, 1i), ~32766i, ~vec2<i32>(2147483647i, -12716i)), ~vec2<i32>(12865i, 23723i))), Struct_1(all(vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(47060i, 31583i))), ~(-2147483647i), max(countOneBits(-vec2<i32>(-27839i, 32101i)), -vec2<i32>(0i, -1i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), u_input.a);
    let var_1 = Struct_2(Struct_1(false, _wgslsmith_mod_vec2_i32(vec2<i32>(32090i, -62959i), func_4(vec3<f32>(-163f, var_0.a, -1000f), vec2<u32>(67274u, 1u), Struct_1(false, vec2<i32>(0i, -16603i), -1i, vec2<i32>(-12702i, -21385i)), vec2<i32>(1i, -1i)).d) | vec2<i32>(2147483647i, _wgslsmith_clamp_i32(-36643i, -9595i, -1i)), -reverseBits(0i), _wgslsmith_add_vec2_i32(~vec2<i32>(0i, -1i), abs(vec2<i32>(1i, 1i)))));
    var var_2 = func_5(func_2(Struct_2(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a), vec3<f32>(-111f, -755f, 472f)), ~vec2<u32>(51648u, u_input.a), func_4(vec3<f32>(1470f, -1750f, -510f), vec2<u32>(53204u, u_input.a), Struct_1(true, vec2<i32>(var_1.a.c, var_1.a.d.x), var_1.a.b.x, var_1.a.b), vec2<i32>(-32187i, -40715i)), vec2<i32>(-1i, 0i)))), Struct_2(var_1.a), Struct_1(true, select(_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_1.a.b.x), ~vec2<i32>(var_1.a.b.x, var_1.a.b.x)), -vec2<i32>(2147483647i, var_1.a.d.x), select(vec2<bool>(true, true), select(vec2<bool>(false, var_1.a.a), vec2<bool>(false, false), var_1.a.a), vec2<bool>(true, true))), var_1.a.b.x, min(-reverseBits(vec2<i32>(var_1.a.c, 1i)), _wgslsmith_sub_vec2_i32(~var_1.a.d, var_1.a.d))), u_input.a);
    let var_3 = func_2(Struct_2(Struct_1(var_1.a.a, var_1.a.d, 2147483647i, var_1.a.d)));
    let var_4 = Struct_1(false, -var_1.a.b, var_1.a.c, vec2<i32>(_wgslsmith_div_i32(var_1.a.b.x ^ 0i, 1i) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 25862u), vec3<u32>(u_input.a, 4294967295u, 4294967295u))) % 32u), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)), ~var_1.a.b.x, abs(31882u));
}

