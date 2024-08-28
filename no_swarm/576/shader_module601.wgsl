struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(30048u, 1u, 0u, 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_3(Struct_2(~9793i), Struct_1(arg_0.a), 89810u);
    global0 = vec4<u32>(1u, countOneBits(_wgslsmith_div_u32(reverseBits(4294967295u), abs(firstLeadingBit(10351u)))), global0.x, 1u);
    let var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(min(vec3<i32>(var_0.a.a, var_0.a.a, 0i) | vec3<i32>(u_input.b, var_0.a.a, 1i), vec3<i32>(u_input.b, 16163i, var_0.a.a) | vec3<i32>(45873i, -2147483647i, -2147483647i)), ~(~vec3<i32>(u_input.b, var_0.a.a, u_input.b)))), var_0.b, var_0.c);
    return u_input.a.x;
}

fn func_2() -> vec2<bool> {
    let var_0 = ~(~_wgslsmith_div_vec3_i32(firstLeadingBit(select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, true, false))), vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, u_input.b)));
    global0 = vec4<u32>(_wgslsmith_clamp_u32((~9935u | global0.x) << (1u % 32u), ~func_3(Struct_1(true)), _wgslsmith_sub_u32(44217u, u_input.a.x)), 4294967295u, u_input.a.x, 0u);
    var var_1 = _wgslsmith_f_op_f32(-870f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -524f))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1651f))), _wgslsmith_f_op_f32(f32(-1f) * -484f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-352f))));
    var var_2 = select(true, any(vec2<bool>(all(vec4<bool>(true, false, true, true)) | true, false)), any(vec4<bool>(true, false, true, true)));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = true;
    var var_1 = ~min(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c, global0.x, 24280u, 0u), ~vec4<u32>(86014u, global0.x, arg_1.c, arg_1.c)), vec4<u32>(_wgslsmith_add_u32(arg_1.c, global0.x), _wgslsmith_mult_u32(global0.x, arg_1.c), 1u, _wgslsmith_clamp_u32(1u, arg_1.c, u_input.a.x))), ~(~arg_1.c));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, 242f, var_0)), -795f)) + -203f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f + 407f)))))));
    var_1 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c, arg_1.c, u_input.a.x, global0.x), vec4<u32>(global0.x, arg_1.c, 0u, 4294967295u)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 33040u, 95364u, 41393u), vec4<u32>(u_input.a.x, 20805u, 0u, 16614u)), vec4<u32>(18131u, u_input.a.x, u_input.a.x, arg_1.c)))), vec4<u32>(abs(1u) >> (arg_1.c % 32u), firstLeadingBit(min(0u, u_input.a.x)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(select(14774u, 4294967295u, arg_1.b.a), _wgslsmith_dot_vec3_u32(global0.xyy, vec3<u32>(53390u, global0.x, 0u)), reverseBits(5257u)), ~(~4294967295u)), global0.x));
    let var_3 = arg_1;
    return -(-11160i >> (1u % 32u));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), 1u), vec4<u32>(4294967295u, u_input.a.x, 0u, 0u) | ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(42487u, 65822u, 0u, u_input.a.x), ~vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u), vec4<u32>(u_input.a.x, global0.x, u_input.a.x, global0.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, global0.x, u_input.a.x, u_input.a.x) | vec4<u32>(1u, 37919u, 4294967295u, 7720u), vec4<u32>(47866u, global0.x, u_input.a.x, 16046u)) ^ vec4<u32>(~18094u, u_input.a.x, reverseBits(~67261u), 0u));
    let var_0 = Struct_1(all(vec2<bool>(!all(vec4<bool>(false, false, true, true)), !all(vec2<bool>(true, true)))));
    var var_1 = Struct_2(func_4(select(select(select(vec2<bool>(false, var_0.a), vec2<bool>(false, false), false), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false)), select(vec2<bool>(true, false), vec2<bool>(false, var_0.a), false)), func_2(), !select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, var_0.a), var_0.a)), Struct_3(Struct_2(_wgslsmith_div_i32(u_input.b, u_input.b)), Struct_1(true), u_input.a.x)));
    var_1 = Struct_2(-1i);
    let var_2 = var_0;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -406f)), 1000f));
}

fn func_5(arg_0: f32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = abs(~select(select(vec4<u32>(global0.x, 74471u, 4294967295u, 0u), vec4<u32>(u_input.a.x, global0.x, global0.x, 45948u), vec4<bool>(arg_1.x, true, false, arg_1.x)), max(vec4<u32>(u_input.a.x, global0.x, 3929u, 6279u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u)), vec4<bool>(true, arg_1.x, false, arg_1.x)) | ~(~(vec4<u32>(u_input.a.x, global0.x, u_input.a.x, 24837u) << (vec4<u32>(1u, global0.x, 0u, 1u) % vec4<u32>(32u)))));
    var var_1 = Struct_2(u_input.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0)), arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(arg_0))), -2732f)));
    var_1 = Struct_2(var_1.a);
    var var_3 = _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(var_1.a, u_input.b, abs(u_input.b) >> (_wgslsmith_mult_u32(47575u, var_0.x) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-23470i, u_input.b, 0i, u_input.b), vec4<i32>(var_1.a, var_1.a, -2147483647i, u_input.b)), ~vec4<i32>(28242i, -2147483647i, -21707i, var_1.a)))), min(_wgslsmith_mult_vec4_i32(max(vec4<i32>(1i, 1i, -42070i, -2147483647i), vec4<i32>(var_1.a, var_1.a, 17788i, -1i)) << (firstTrailingBit(vec4<u32>(u_input.a.x, 4294967295u, global0.x, 4294967295u)) % vec4<u32>(32u)), ~(vec4<i32>(var_1.a, 0i, 15153i, 11937i) << (vec4<u32>(global0.x, 1u, 3504u, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(-51313i, u_input.b, ~var_1.a, -6604i)));
    return Struct_3(Struct_2(-u_input.b), Struct_1(true), 8330u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(u_input.a.x, ~0u, ~global0.x, 50899u);
    let var_0 = Struct_1(true);
    global0 = ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(63025u, u_input.a.x, u_input.a.x, 0u) ^ vec4<u32>(u_input.a.x, global0.x, 21352u, 4294967295u), vec4<u32>(u_input.a.x, 6247u, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 40860u)), _wgslsmith_add_u32(reverseBits(global0.x), 1u), global0.x, u_input.a.x));
    var var_1 = func_5(_wgslsmith_f_op_f32(func_1()), select(select(vec2<bool>(true, true), vec2<bool>(func_2().x, all(vec3<bool>(var_0.a, false, false))), 0i == u_input.b), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(var_0.a, true, var_0.a)), false), vec2<bool>(!var_0.a, 74117u != u_input.a.x)), 4740u >= _wgslsmith_clamp_u32(global0.x, 22370u, ~u_input.a.x)));
    var var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1561f + -975f))) + 621f), !(!func_2())).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(387f)), select(-vec2<i32>(min(var_1.a.a, var_2.a), 2147483647i), select(vec2<i32>(-22123i, -var_1.a.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(var_1.a.a, var_2.a)) & vec2<i32>(var_2.a, 0i), false), vec2<bool>(all(vec3<bool>(false, var_0.a, var_0.a)), any(select(vec3<bool>(var_1.b.a, false, var_0.a), vec3<bool>(var_0.a, var_1.b.a, var_1.b.a), var_1.b.a)))), vec3<i32>(~(-(~var_1.a.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -41199i, _wgslsmith_mod_i32(u_input.b, 9475i), ~4831i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.a, var_2.a, -14657i), vec4<i32>(21525i, 28191i, -1i, u_input.b))), ~vec4<i32>(58788i, 39805i, -2335i, -27640i) >> (vec4<u32>(var_1.c, 18996u, global0.x, global0.x) % vec4<u32>(32u))), -var_1.a.a), func_3(var_1.b));
}

