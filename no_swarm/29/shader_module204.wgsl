struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(43762u, 55777u, 102843u);

var<private> global1: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = vec3<i32>(max(_wgslsmith_div_i32(select(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, -26334i), vec3<i32>(u_input.a, 0i, -1i)), true), -max(945i, 1i)), u_input.a), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-36015i, 27167i))), -55068i, (u_input.a << (global0.x % 32u)) | reverseBits(-1i)), -33828i, -34648i), reverseBits(2147483647i));
    global0 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(~37198u, 1u, 1u), vec3<u32>(697u, _wgslsmith_mod_u32(16138u, 7037u), min(2636u, global0.x))), ~(vec3<u32>(4294967295u, global0.x, global0.x) | vec3<u32>(30618u, 4294967295u, 4294967295u)) ^ firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 19683u, global0.x), vec3<u32>(66519u, 34571u, global0.x))), select(vec3<bool>(false, global0.x < 1u, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))) << (_wgslsmith_mult_vec3_u32(vec3<u32>((global0.x ^ global0.x) << (global0.x % 32u), abs(4294967295u), firstTrailingBit(_wgslsmith_sub_u32(0u, global0.x))), select(vec3<u32>(global0.x, global0.x, 0u) ^ (vec3<u32>(global0.x, global0.x, 1345u) ^ vec3<u32>(global0.x, global0.x, 0u)), select(~vec3<u32>(global0.x, 18975u, 47586u), abs(vec3<u32>(27652u, 4294967295u, global0.x)), true), vec3<bool>(true, true, true))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1799f - -927f), _wgslsmith_div_f32(-2528f, -141f)))), -340f, _wgslsmith_div_f32(-761f, _wgslsmith_f_op_f32(ceil(193f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(995f, -1000f, _wgslsmith_f_op_f32(max(1535f, -332f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(938f, -398f))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(700f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1250f - -844f)), _wgslsmith_f_op_f32(trunc(-1024f)), 390f))));
    var var_2 = select(!(!vec4<bool>(false, true, true, any(vec4<bool>(false, false, false, false)))), !vec4<bool>(global0.x != _wgslsmith_mod_u32(0u, 8228u), all(vec2<bool>(true, true)), (global0.x | global0.x) != 0u, !(var_1.x <= 1267f)), all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec2<bool>(true, true), vec2<bool>(global0.x > global0.x, true))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yz + _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(559f * -1213f)), vec2<f32>(-750f, -1193f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -405f) - _wgslsmith_f_op_f32(step(1120f, var_1.x))) + _wgslsmith_f_op_f32(sign(-1338f))), var_1.x));
    return reverseBits(vec3<u32>(global0.x, 29283u, 1u));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = arg_1;
    let var_1 = arg_0.x;
    let var_2 = 52498i;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-798f, -205f))))))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(floor(var_3)));
    return ~vec3<u32>(global0.x, min(1u, 81245u), _wgslsmith_div_u32(~global0.x, firstTrailingBit(global0.x))) | (vec3<u32>((global0.x << (global0.x % 32u)) & ~global0.x, _wgslsmith_mod_u32(global0.x, 66993u) >> (global0.x % 32u), ~1u) ^ func_3());
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(-984f, _wgslsmith_div_f32(-1435f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(387f, _wgslsmith_f_op_f32(1387f - 232f))))), all(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1043f - -1560f) * -359f)), _wgslsmith_div_f32(891f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -746f))))));
    var_1 = _wgslsmith_f_op_f32(-var_0);
    global0 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, global0.x | global0.x, global0.x) << (min(select(vec3<u32>(global0.x, global0.x, 1u), vec3<u32>(global0.x, global0.x, 4294967295u), vec3<bool>(false, false, false)), vec3<u32>(global0.x, 4294967295u, 0u)) % vec3<u32>(32u)), ~firstLeadingBit(vec3<u32>(global0.x, 4294967295u, global0.x)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), 1147f > var_0))), func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1598f)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_div_f32(1284f, var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + -482f)))), Struct_1(_wgslsmith_f_op_f32(-893f - _wgslsmith_f_op_f32(-var_0)))));
    var var_2 = _wgslsmith_f_op_f32(var_0 - 517f);
    return Struct_1(var_0);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_1();
    let var_1 = ~vec3<u32>(func_3().x, firstLeadingBit(abs(global0.x)), 5525u) ^ ~_wgslsmith_mod_vec3_u32(~(vec3<u32>(global0.x, global0.x, 52374u) << (vec3<u32>(global0.x, 33230u, global0.x) % vec3<u32>(32u))), ~func_2(vec3<f32>(var_0.a, -619f, -903f), Struct_1(-1258f)));
    var var_2 = true | (!(arg_0.a != _wgslsmith_f_op_f32(-282f + 1064f)) || (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.a, 32438i), -vec4<i32>(-1241i, -1i, u_input.a, u_input.a)) == 1i));
    var_0 = arg_0;
    var var_3 = vec2<i32>(_wgslsmith_sub_i32(u_input.a << (max(global0.x ^ 28816u, ~global0.x) % 32u), (_wgslsmith_clamp_i32(u_input.a, 25199i, -2147483647i) ^ ~1i) >> (1u % 32u)), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a) & (vec3<i32>(u_input.a, -2147483647i, 10374i) | vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a, ~6954i))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    var_0 = func_4(Struct_1(476f));
    let var_1 = vec4<i32>(u_input.a, -2147483647i ^ ~u_input.a, u_input.a, u_input.a);
    let var_2 = func_1();
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.a, var_0.a))))), select(all(vec4<bool>(true, true, true, true)), false, min(136353u, global0.x) >= firstTrailingBit(3200u)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.a)), 921f, _wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(725f * var_2.a)) - vec4<f32>(var_3.a, _wgslsmith_f_op_f32(839f - var_3.a), _wgslsmith_f_op_f32(max(165f, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -603f))))));
}

