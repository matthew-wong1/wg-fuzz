struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    global0 = true;
    let var_0 = Struct_1(-19631i, vec2<u32>(firstTrailingBit(u_input.a.x), max(~(~u_input.b.x), min(_wgslsmith_clamp_u32(arg_3.a, 1u, u_input.a.x), _wgslsmith_mult_u32(arg_3.b.x, 1u)))), ~(34496i << (_wgslsmith_div_u32(arg_3.a, ~4294967295u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_3.c.zxy)) - vec3<f32>(-1132f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1151f)))));
    global0 = !arg_0.x;
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(-firstLeadingBit(vec2<i32>(-46814i, -2147483647i))), max(abs(vec2<i32>(1i, 61562i)) >> (~vec2<u32>(u_input.b.x, u_input.a.x) % vec2<u32>(32u)), firstLeadingBit(arg_2) ^ ~arg_2)), arg_2);
    return arg_2.x;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(17706i, u_input.b.zy, 12042i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(514f - 351f), 801f, _wgslsmith_f_op_f32(-567f * -869f))) - vec3<f32>(-1565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1458f) + _wgslsmith_f_op_f32(f32(-1f) * -860f)), _wgslsmith_f_op_f32(-1497f * _wgslsmith_f_op_f32(980f - -861f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f + -164f) + _wgslsmith_f_op_f32(-529f * -1701f))), 1603f, -1219f));
    let var_2 = ~31303u;
    let var_3 = _wgslsmith_f_op_f32(sign(502f));
    var var_4 = Struct_1(-_wgslsmith_mod_i32(-268i & var_0.c, max(countOneBits(21214i), ~(-24099i))), ~vec2<u32>(~1u, ~var_0.b.x), abs(-func_3(vec3<bool>(false, true, true), _wgslsmith_f_op_f32(f32(-1f) * -307f), select(vec2<i32>(var_0.a, var_0.c), vec2<i32>(var_0.a, var_0.a), vec2<bool>(true, false)), Struct_2(52149u, var_0.b, vec4<f32>(-857f, 519f, -125f, var_1.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(floor(var_1.x)), var_0.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 517f, 333f)))))));
    return vec4<bool>(var_4.b.x >= 3504u, true, any(select(vec3<bool>(true, false, any(vec2<bool>(true, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), select(true, false, true)), vec3<bool>(true, true, true))), all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))) && true);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    global0 = arg_0;
    global0 = arg_0;
    let var_0 = ~0u;
    var var_1 = arg_2.d.x;
    var var_2 = select(arg_1, arg_1, arg_1);
    return firstLeadingBit(26368u);
}

fn func_1() -> vec4<bool> {
    global0 = false;
    let var_0 = Struct_2(~u_input.a.x, vec2<u32>(53803u, func_4(false, func_2(), Struct_1(_wgslsmith_clamp_i32(76068i, 2147483647i, 49337i), ~u_input.a.yz, select(2147483647i, 64105i, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2137f, 1986f, 1653f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(229f, 1392f, 116f, 716f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-409f, -1537f, -1848f, -1000f)))));
    let var_1 = Struct_2(~21583u, select(firstLeadingBit(_wgslsmith_sub_vec2_u32(~var_0.b, var_0.b)), min(var_0.b, u_input.b.yy), vec2<bool>(_wgslsmith_f_op_f32(floor(var_0.c.x)) != 402f, true)), var_0.c);
    global0 = !any(select(vec4<bool>(false, func_2().x, all(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), !(var_1.c.x <= 436f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(floor(155f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_1.c.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.c.wx))), var_0.c.xy)));
    return !vec4<bool>(select(true, func_2().x, any(vec4<bool>(true, true, false, true))) || (_wgslsmith_f_op_f32(step(var_0.c.x, 2212f)) <= _wgslsmith_f_op_f32(trunc(var_2.x))), true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_div_u32(_wgslsmith_mult_u32(3710u, 68372u), 1u)) | ~4294967295u, ~u_input.a.yy);
}

