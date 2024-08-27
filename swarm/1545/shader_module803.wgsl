struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    return false;
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = ~vec3<u32>(reverseBits(~_wgslsmith_div_u32(u_input.a, u_input.a)), u_input.a, abs(~min(1u, u_input.a)));
    var var_1 = Struct_2(firstLeadingBit(countOneBits(_wgslsmith_add_vec4_u32(select(vec4<u32>(1u, 418u, u_input.a, u_input.a), vec4<u32>(var_0.x, 12844u, 2612u, 32952u), vec4<bool>(false, false, false, true)), ~vec4<u32>(u_input.a, 4294967295u, var_0.x, 7462u)))), select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true)), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, false, true), all(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), true), max(vec4<i32>(abs(_wgslsmith_mult_i32(2147483647i, arg_0.x)), arg_0.x, ~arg_0.x, u_input.b), vec4<i32>(-16956i, u_input.d, select(u_input.c.x, max(arg_0.x, u_input.c.x), u_input.b <= 12938i), u_input.c.x)));
    let var_2 = Struct_2(~_wgslsmith_clamp_vec4_u32(vec4<u32>(11135u, 7383u, var_0.x ^ 4294967295u, reverseBits(var_1.a.x)), var_1.a, ~var_1.a), vec4<bool>(true, all(var_1.b.yy), true, !var_1.b.x), -_wgslsmith_add_vec4_i32(-var_1.c, vec4<i32>(min(arg_0.x, u_input.c.x), _wgslsmith_div_i32(arg_0.x, arg_0.x), -10208i, -u_input.b)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(429f)), _wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(317f + -725f))));
    let var_4 = var_2.c;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_1.a.x), vec3<u32>(var_0.x, var_0.x, var_2.a.x)) & firstTrailingBit(var_1.a.x), firstLeadingBit(~u_input.a), var_0.x, _wgslsmith_mult_u32(var_1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, u_input.a, var_0.x), var_2.a.xzx))), _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(var_2.a, var_2.a), vec4<u32>(_wgslsmith_add_u32(var_2.a.x, 16202u), 106303u, reverseBits(var_1.a.x), var_1.a.x))), var_2.a);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(func_3(vec2<i32>(u_input.d, u_input.d)), 4294967295u, u_input.a), select(~select(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(0u, 4294967295u, u_input.a), vec3<bool>(true, true, true)), vec3<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), 4294967295u), vec3<bool>(true, true, false))));
    var var_1 = u_input.a;
    let var_2 = Struct_2(_wgslsmith_mult_vec4_u32(abs(min(vec4<u32>(0u, 0u, var_0.a.x, var_0.a.x), ~vec4<u32>(var_0.a.x, u_input.a, 0u, var_0.a.x))), vec4<u32>(~(var_0.a.x << (21679u % 32u)), var_0.a.x, ~(~u_input.a), _wgslsmith_add_u32(abs(4294967295u), ~var_0.a.x))), select(vec4<bool>(false, true, !any(vec4<bool>(true, false, false, false)), false), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, false, false)), any(vec3<bool>(true, select(false, true, true), true))), _wgslsmith_add_vec4_i32(abs(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, -16780i, 20706i), vec4<i32>(42041i, -2147483647i, 2147483647i, 2147483647i)))), vec4<i32>(55986i, abs(i32(-1i) * -21097i), countOneBits(_wgslsmith_add_i32(u_input.b, u_input.c.x)), ~56450i)));
    let var_3 = var_0;
    var_1 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u ^ firstTrailingBit(var_0.a.x), 1u)), firstTrailingBit(~firstLeadingBit(var_2.a.wz)));
    return -1122f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 1388u, _wgslsmith_div_u32(72052u, 20575u), 1u), vec4<u32>(1u, ~1u, 29614u, 6114u)), vec4<bool>(select(any(vec4<bool>(false, true, false, true)), func_1(Struct_1(vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<bool>(false, true, false)), true) || true, true, true, false), ~vec4<i32>(59634i, _wgslsmith_div_i32(1i, u_input.b), 1i, -11499i));
    var var_1 = -484f;
    var_1 = _wgslsmith_f_op_f32(func_2());
    var var_2 = 1013f;
    var_2 = 2212f;
    let var_3 = var_0.c.wx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1322f, -110f, -889f, -1000f)), vec4<f32>(451f, -227f, 388f, 576f), !var_0.b)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-735f, 392f, -1000f, 2045f), vec4<f32>(-1708f, -110f, 567f, 564f))), vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(round(-2647f)), -1000f, _wgslsmith_f_op_f32(func_2())))))));
}

