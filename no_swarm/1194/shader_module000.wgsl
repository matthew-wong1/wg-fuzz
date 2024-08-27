struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(54291i);

var<private> global1: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_clamp_u32(firstTrailingBit(arg_1), ~(~(~arg_1)), arg_1) ^ u_input.b.x;
    global1 = vec2<i32>(5304i, _wgslsmith_mod_i32(55710i, -30995i));
    var var_1 = !(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))));
    global1 = _wgslsmith_div_vec2_i32(abs(firstTrailingBit(vec2<i32>(-2147483647i, global0.a)) & countOneBits(vec2<i32>(global1.x, global1.x))), vec2<i32>(firstTrailingBit(~1i), -35199i)) << (u_input.b.yy % vec2<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_mult_i32(~(_wgslsmith_sub_i32(global0.a, -2147483647i) >> ((11896u & arg_1) % 32u)), global0.a));
    return _wgslsmith_add_u32(~arg_1, arg_1) | firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.b.yxx, u_input.b.yzz));
}

fn func_2() -> u32 {
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(22834u, ~1u) >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a >> (94289u % 32u), abs(1u), func_3(488f, u_input.b.x, vec2<f32>(-672f, -597f))), ~vec4<u32>(u_input.b.x, 27323u, 5101u, 36702u)), abs(countOneBits(u_input.a >> (u_input.a % 32u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~u_input.a), func_3(303f, u_input.a, vec2<f32>(-1394f, 1097f)) << (6962u % 32u), 0u, ~min(1u, 33540u)), vec4<u32>((0u & u_input.a) | _wgslsmith_sub_u32(u_input.a, 0u), ~64568u, 1u, ~(~u_input.b.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = !(abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, arg_2.a, global0.a), ~vec3<i32>(-3602i, -1i, global0.a))) > -(~(-1i << (0u % 32u))));
    let var_1 = arg_1.x;
    var var_2 = arg_2;
    var var_3 = arg_2;
    var var_4 = arg_2;
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(arg_1 + -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(349f + _wgslsmith_div_f32(arg_1, arg_1)))))));
    let var_1 = all(!vec3<bool>(false, !all(vec4<bool>(true, true, false, true)), true));
    global0 = func_4(vec2<u32>(arg_0, _wgslsmith_mod_u32(1u, countOneBits(~9580u))), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, func_2()), firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x))), Struct_1(0i), ~vec3<u32>(~(~u_input.a), u_input.a, 25030u));
    let var_2 = countOneBits(~(_wgslsmith_mod_i32(1i, ~global1.x) >> ((_wgslsmith_add_u32(u_input.b.x, u_input.a) >> (arg_0 % 32u)) % 32u)));
    let var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.b.yw, vec2<u32>(arg_0, 0u)), vec2<u32>(firstLeadingBit(arg_0), _wgslsmith_div_u32(0u, 18028u)));
    return ~vec2<i32>(_wgslsmith_clamp_i32(global0.a, -(i32(-1i) * -1i), max(~global1.x, global1.x & 9158i)), -31471i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(firstLeadingBit(~(vec2<i32>(30036i, 2147483647i) ^ vec2<i32>(2147483647i, global0.a))), _wgslsmith_mod_vec2_i32(func_1(max(0u, 1u), _wgslsmith_f_op_f32(ceil(119f))), abs(firstLeadingBit(vec2<i32>(global1.x, -44054i))))));
    let x = u_input.a;
    s_output = StorageBuffer(~((min(vec4<i32>(global1.x, -1i, 60068i, global1.x), vec4<i32>(var_0.a, global0.a, 16575i, global1.x)) | _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, global0.a, global1.x, global1.x), vec4<i32>(1i, global0.a, global1.x, global1.x))) >> (vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 1u), vec4<u32>(36400u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.zw), u_input.b.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(54579i, 19882i, -37098i, global1.x)), ~(-vec4<i32>(var_0.a, 2147483647i, var_0.a, -2147483647i))) << (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(6594u, 4294967295u, 4294967295u, u_input.b.x), u_input.b)), ~(~29765u), u_input.b.x, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-308f, 1527f, -777f, 402f), vec4<f32>(-125f, 2019f, -673f, -2884f), true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-137f, 550f, -1000f, -496f) * vec4<f32>(-817f, -1315f, -721f, -584f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -851f))))), vec3<i32>(select(-29958i, -(global0.a | 2616i), true), ~((1i << (u_input.b.x % 32u)) | var_0.a), -_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, var_0.a), vec4<i32>(1i, -32261i, global1.x, global1.x))));
}

