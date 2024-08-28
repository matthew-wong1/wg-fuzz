struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(575f, -2271f);

var<private> global1: vec4<i32> = vec4<i32>(24741i, 51172i, -32672i, 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1() -> i32 {
    global1 = u_input.a;
    var var_0 = false;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1338f, global0.x))), vec2<f32>(-1276f, -374f))) + vec2<f32>(-647f, global0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1547f + global0.x)))));
    return u_input.a.x;
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = Struct_2(Struct_1(u_input.b.yww), global1.x);
    let var_1 = Struct_2(var_0.a, 0i << (u_input.b.x % 32u));
    var var_2 = Struct_1(var_0.a.a);
    var var_3 = var_1.a;
    let var_4 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.a.a.x, arg_0.x), var_1.a.a), vec3<u32>(31176u, var_1.a.a.x, 50859u) & vec3<u32>(var_3.a.x, var_2.a.x, 67640u)), ~vec3<u32>(var_1.a.a.x, 1u, arg_0.x), vec3<u32>(max(1u, 45386u), firstLeadingBit(var_2.a.x), abs(79855u))) ^ ~abs(~var_0.a.a));
    return -2631i;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    global1 = vec4<i32>(-2147483647i, -2147483647i, ~func_3(~(~arg_1.a.yz)), -1i);
    global1 = countOneBits(vec4<i32>(countOneBits(u_input.a.x >> (6574u % 32u)), -1i, -2147483647i, 2147483647i));
    global1 = -u_input.a;
    var var_0 = max(arg_3.a.a, ~arg_3.a.a);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 130f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1513f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x))))));
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = ~vec3<u32>(arg_1, arg_3.a.a.x, u_input.b.x);
    let var_1 = -41164i;
    let var_2 = -1250f;
    global1 = _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_mod_i32((6223i | arg_3.b) ^ 1i, arg_3.b | ~global1.x), 15626i, arg_2, u_input.a.x));
    let var_3 = Struct_1(_wgslsmith_clamp_vec3_u32(func_2(firstTrailingBit(~global1.zxx), Struct_1(vec3<u32>(var_0.x, 55948u, 63365u)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(arg_3.a, _wgslsmith_mod_i32(var_1, 2147483647i))).a, _wgslsmith_mult_vec3_u32(u_input.b.yzy, abs(~var_0)), vec3<u32>(func_2(vec3<i32>(arg_2, global1.x, 7318i), Struct_1(arg_3.a.a), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<u32>(arg_1, 0u, u_input.b.x)), u_input.a.x)).a.x, ~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(12737u, 4294967295u, arg_1, 1u)), var_0.x)));
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x)), -1794f), u_input.b.x, func_1(), Struct_2(func_2(vec3<i32>(u_input.a.x, 34859i, -1i), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), vec2<bool>(true, true), Struct_2(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), -46755i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -7208i) | vec2<i32>(u_input.a.x, 1i), u_input.a.ww))), u_input.a.x);
    let var_1 = Struct_2(var_0.a, -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(countOneBits(u_input.a), vec4<i32>(2147483647i, 1500i, u_input.a.x, -2147483647i) ^ vec4<i32>(2147483647i, u_input.a.x, global1.x, global1.x)), var_0.b));
    let var_2 = u_input.a;
    let var_3 = var_1.a;
    var var_4 = -360f;
    var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_0.a.a.x, 37742u, 5759u), vec3<u32>(var_3.a.x, var_1.a.a.x, 0u), vec3<bool>(true, true, true)), var_0.a.a)), ~var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_i32(func_1(), ~var_2.x) | ~(var_0.b >> (1u % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(730f, global0.x) + vec2<f32>(-2179f, global0.x)))))));
}

