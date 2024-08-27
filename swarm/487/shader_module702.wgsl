struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(63701u, vec2<f32>(-312f, 248f)), Struct_1(0u, vec2<f32>(-481f, 476f)), Struct_1(16943u, vec2<f32>(1568f, -495f)), Struct_1(42589u, vec2<f32>(-1393f, 713f)), Struct_1(55499u, vec2<f32>(-1337f, 318f)), Struct_1(20800u, vec2<f32>(-215f, -860f)), Struct_1(4294967295u, vec2<f32>(-987f, -346f)), Struct_1(1u, vec2<f32>(1565f, -1117f)), Struct_1(1u, vec2<f32>(-380f, 1537f)), Struct_1(0u, vec2<f32>(1000f, 743f)), Struct_1(65401u, vec2<f32>(-1610f, 192f)), Struct_1(1u, vec2<f32>(420f, 337f)), Struct_1(0u, vec2<f32>(-1000f, -2827f)), Struct_1(1u, vec2<f32>(-223f, -387f)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    var var_0 = vec4<u32>(arg_0.b.b, _wgslsmith_mod_u32(0u, countOneBits(reverseBits(~arg_1.a.a))), u_input.d.x, ~((arg_1.a.a >> (~0u % 32u)) >> (arg_0.b.b % 32u)));
    var var_1 = arg_0.b;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(~var_0.yxx, var_0.wzz), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.a.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.a.x))))))));
    var var_3 = !select(!select(vec2<bool>(true, arg_0.d.x), select(vec2<bool>(true, false), vec2<bool>(arg_0.d.x, arg_0.d.x), vec2<bool>(true, arg_0.d.x)), select(vec2<bool>(true, false), arg_0.d, false)), arg_0.d, arg_0.d.x);
    var var_4 = Struct_1(4294967295u, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-155f, -2138f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b * arg_0.a.yy))), vec2<f32>(_wgslsmith_f_op_f32(max(var_2.b.x, _wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.b.x, -516f), _wgslsmith_f_op_f32(min(-755f, -568f)), all(vec3<bool>(var_3.x, arg_0.d.x, var_3.x)))))));
    return 87536u;
}

fn func_2() -> Struct_4 {
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1249f)))), -437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(1264f * 1000f))))), Struct_3(31929i, _wgslsmith_mult_u32(u_input.d.x, ~reverseBits(u_input.d.x)), func_3(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(518f, 153f, 462f)), Struct_3(0i, u_input.d.x, 19004u), -558f, vec2<bool>(true, true)), Struct_2(Struct_1(1u, vec2<f32>(-435f, 110f))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a) >> (u_input.d % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1708f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1311f - -456f) + _wgslsmith_f_op_f32(trunc(-1186f))) * 808f)), vec2<bool>(u_input.d.x < 25164u, true));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> bool {
    var var_0 = func_2();
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(func_2().a - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(635f, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3, 311f, 174f))) - vec3<f32>(2710f, var_0.a.x, arg_3)))), Struct_3(-23776i, 56551u, ~arg_2), -413f, !(!var_0.d));
    var var_1 = vec4<i32>(u_input.c, select(reverseBits(~(24571i << (arg_1.b % 32u))), 2147483647i, !var_0.d.x), -(5144i & firstTrailingBit(37334i)), 1i);
    let var_2 = var_0.d;
    let var_3 = !vec4<bool>(select(!var_0.d.x, all(select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(false, var_2.x, false), true)), !var_0.d.x), all(func_2().d), true, min(var_1.x, 0i) == _wgslsmith_add_i32(var_0.b.a, -arg_1.a));
    return false;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-399f, arg_1)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -988f))), _wgslsmith_f_op_f32(-arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.b), reverseBits(u_input.a), _wgslsmith_div_i32(0i, -18205i)), firstLeadingBit(vec3<i32>(21311i, 2147483647i, u_input.c)), vec3<i32>(-30722i, u_input.b, 41091i & u_input.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(417f, _wgslsmith_f_op_f32(ceil(-1058f)), func_1(-263f, Struct_3(u_input.b, 43417u, u_input.d.x), 51871u, -1586f))), -612f, any(vec2<bool>(true, false)))))) * _wgslsmith_f_op_f32(f32(-1f) * -1770f));
    global0 = array<Struct_1, 14>();
    var var_1 = Struct_3(0i, ~_wgslsmith_mult_u32(~u_input.d.x, reverseBits(~4294967295u)), u_input.d.x);
    let var_2 = func_2().b;
    var_1 = Struct_3(~0i, firstLeadingBit(1u), _wgslsmith_mod_u32((4294967295u << (var_2.c % 32u)) | _wgslsmith_sub_u32(1u, u_input.d.x), _wgslsmith_add_u32(26159u | u_input.d.x, 21599u)) ^ abs(u_input.d.x));
    var var_3 = Struct_2(Struct_1(61610u, func_2().a.yy));
    let var_4 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(var_3.a.b.x + var_0), -340f, _wgslsmith_f_op_f32(floor(var_0))), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b.x)) - 355f)), vec2<bool>(!(!(var_2.a < 0i)), true && all(vec2<bool>(false, true))));
    let var_5 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstLeadingBit(~(~vec4<u32>(1u, u_input.d.x, u_input.d.x, 33896u)))));
}

