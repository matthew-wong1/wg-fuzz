struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(1000f, Struct_1(39099u), true, vec4<f32>(-811f, 1939f, -104f, -219f)), Struct_2(522f, Struct_1(14032u), false, vec4<f32>(-967f, 635f, 655f, 3370f)), Struct_2(926f, Struct_1(4294967295u), true, vec4<f32>(1314f, -882f, 198f, -120f)), Struct_2(1258f, Struct_1(0u), true, vec4<f32>(-114f, 158f, 113f, 446f)), Struct_2(2533f, Struct_1(4294967295u), true, vec4<f32>(-904f, 1315f, -582f, -1391f)), Struct_2(-841f, Struct_1(19066u), true, vec4<f32>(-1065f, -745f, 408f, -826f)), Struct_2(1064f, Struct_1(26973u), false, vec4<f32>(1000f, -642f, 710f, -707f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> Struct_2 {
    let var_0 = 67450u;
    var var_1 = !vec3<bool>(false || (~var_0 < min(var_0, 4294967295u)), _wgslsmith_mult_i32(u_input.c.x, -2147483647i) != reverseBits(countOneBits(20962i)), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true))));
    global0 = array<Struct_2, 7>();
    var var_2 = Struct_1(firstTrailingBit(4786u));
    return Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(852f + 1365f)))))), Struct_1(var_0), all(var_1.zz), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1118f, -655f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-133f * -373f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-383f, -770f) - _wgslsmith_f_op_f32(f32(-1f) * -2453f)), 389f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(1000f, -712f)), _wgslsmith_f_op_f32(-321f + 101f), -1088f) + vec4<f32>(-250f, _wgslsmith_f_op_f32(max(1000f, -791f)), _wgslsmith_f_op_f32(abs(-1887f)), _wgslsmith_f_op_f32(abs(-314f))))));
}

fn func_3() -> i32 {
    global0 = array<Struct_2, 7>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -548f), func_1().b, !(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) >= _wgslsmith_dot_vec4_u32(~vec4<u32>(11327u, 50270u, 5008u, 11243u), vec4<u32>(1u, 1u, 1u, 1u))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - 205f), _wgslsmith_f_op_f32(-526f + 841f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(221f * -196f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(3072f)), _wgslsmith_f_op_f32(1000f * 469f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-527f - -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1396f)), func_1().a)), 1149f));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 2402f, -2050f) - vec3<f32>(var_0.d.x, var_0.a, 400f)) - vec3<f32>(var_0.d.x, var_0.d.x, var_0.a)))))));
    global0 = array<Struct_2, 7>();
    var var_2 = true;
    return -2147483647i;
}

fn func_2(arg_0: u32, arg_1: bool) -> vec2<f32> {
    var var_0 = true;
    var var_1 = (func_3() >> (_wgslsmith_sub_u32(arg_0, arg_0) % 32u)) ^ -_wgslsmith_mod_i32(firstLeadingBit(~0i), u_input.b.x);
    var var_2 = countOneBits(select(~(_wgslsmith_add_i32(u_input.c.x, u_input.c.x) ^ u_input.c.x), -27991i, select(all(!vec3<bool>(true, arg_1, true)), any(!vec4<bool>(false, arg_1, arg_1, true)), false)));
    let var_3 = func_1().b;
    let var_4 = func_1();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a, var_4.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(~0u));
    let var_1 = func_1();
    var_0 = var_1.b;
    global0 = array<Struct_2, 7>();
    var var_2 = var_1.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(378f, var_1.d.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, var_1.d.x) + var_1.d.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.d.xw)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 1931f))))) * _wgslsmith_f_op_vec2_f32(-var_1.d.yz))) + _wgslsmith_f_op_vec2_f32(var_1.d.wy + _wgslsmith_f_op_vec2_f32(func_2(~(0u << (var_0.a % 32u)), all(!vec4<bool>(false, true, var_1.c, true))))));
    let var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a.x), vec4<i32>(36133i, ~(-reverseBits(u_input.b.x)), u_input.a.x, firstTrailingBit(8421i)), var_1.b.a);
}

