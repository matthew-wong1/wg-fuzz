struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 74064u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    global0 = ~0u;
    let var_0 = u_input.a.yy;
    var var_1 = Struct_1(u_input.a.x, countOneBits(-select(~arg_0.x, arg_0.x, true)));
    global0 = (abs(~(29268u & var_0.x)) ^ ~(~_wgslsmith_mult_u32(u_input.a.x, 84553u))) << (4294967295u % 32u);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(300f, 174f, -345f), vec3<f32>(-102f, 151f, -152f), vec3<bool>(true, false, false))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1479f, 1143f, -695f), vec3<f32>(1615f, -853f, 1303f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-993f, 924f, -2279f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1194f, 627f, 187f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(349f, 1000f, -1000f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-138f, 156f, 2954f), vec3<f32>(1000f, -1379f, -555f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, -207f))), vec3<f32>(_wgslsmith_f_op_f32(abs(-914f)), _wgslsmith_f_op_f32(-941f * -358f), -541f)))));
    return var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> vec2<bool> {
    global0 = 8201u;
    global0 = max(36152u, _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_1.a, max(arg_1.a, 4294967295u) | 1u), u_input.a.x));
    var var_0 = true;
    var var_1 = ~4294967295u;
    let var_2 = Struct_2(Struct_1(arg_1.a, firstTrailingBit(max(-arg_1.b, 1i))), arg_0, reverseBits(~countOneBits(_wgslsmith_mult_u32(0u, 54508u))));
    return select(select(select(vec2<bool>(true, true), vec2<bool>(arg_3, false), vec2<bool>(false, false)), !(!vec2<bool>(arg_3, arg_3)), !select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_3), false), vec2<bool>(false, false), !vec2<bool>(arg_3, arg_3))), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(arg_3, false), select(vec2<bool>(true, false), vec2<bool>(true, arg_3), vec2<bool>(true, arg_3)))), arg_3), select(vec2<bool>(arg_3, !all(vec4<bool>(arg_3, false, arg_3, true))), !select(vec2<bool>(false, false), vec2<bool>(true, arg_3), all(vec4<bool>(arg_3, true, arg_3, true))), !vec2<bool>(arg_3 & arg_3, true)));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec4_i32(u_input.b, firstTrailingBit(-u_input.b));
    var var_1 = any(vec2<bool>(true, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_div_f32(566f, -656f), _wgslsmith_f_op_f32(sign(702f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1936f)), _wgslsmith_div_f32(-412f, 1584f), 1f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, 1000f, arg_0) * vec3<f32>(-2724f, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-725f, arg_0, arg_0)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, arg_0, arg_0)))))));
    global0 = u_input.a.x;
    let var_3 = Struct_1(~8855u, 0i);
    return func_4(var_3, Struct_1(func_3(vec4<i32>(var_0.x << (u_input.a.x % 32u), 1i, var_3.b << (u_input.a.x % 32u), _wgslsmith_mult_i32(13476i, var_0.x))), -var_0.x), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)), (-14729i <= u_input.b.x) && true);
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, firstTrailingBit(u_input.a.x)), select(vec2<u32>(~4294967295u, u_input.a.x), vec2<u32>(min(u_input.a.x, u_input.a.x), 4294967295u & u_input.a.x), arg_2.x)), ~(-51392i));
    global0 = ~(var_0.a >> (reverseBits(u_input.a.x) % 32u));
    var var_1 = !(!arg_0.x);
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_u32(4294967295u, countOneBits(~1u)), -var_0.b), Struct_1(~_wgslsmith_mod_u32(1u, u_input.a.x), -2147483647i), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, ~u_input.a.x, 4294967295u, 1u), firstTrailingBit(u_input.a) | u_input.a));
    let var_3 = Struct_1(~0u, ~firstTrailingBit(-1793i));
    return !vec2<bool>(!(all(arg_2.yx) | true), 4294967295u < _wgslsmith_sub_u32(~0u, ~u_input.a.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<u32>) -> u32 {
    let var_0 = select(vec2<bool>(false, any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), func_5(select(vec2<bool>(all(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, false, true))), !func_2(-1193f, 6164i), arg_1 != ~u_input.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1385f, 968f) + _wgslsmith_f_op_f32(-756f * -240f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-410f))))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, func_2(_wgslsmith_f_op_f32(select(771f, -472f, true)), -u_input.d).x)), all(vec3<bool>(true, false | any(vec2<bool>(false, true)), false)));
    let var_1 = Struct_2(Struct_1(90601u, u_input.c << (3706u % 32u)), Struct_1(~_wgslsmith_clamp_u32(62384u, ~4294967295u, ~51626u), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.d, u_input.d, u_input.d), u_input.b))), _wgslsmith_clamp_u32(~(~3171u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4976u, 94161u, 48124u, 0u)), arg_2), 19516u) & (u_input.a.x & ~(arg_2.x ^ 1u)));
    var var_2 = var_0;
    let var_3 = Struct_2(var_1.b, var_1.b, min(1u, 4294967295u));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-347f, 1000f, -1000f, 1728f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, 1426f, -397f, -340f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), -627f, _wgslsmith_f_op_f32(-235f + 703f), _wgslsmith_f_op_f32(floor(208f)))))));
    return max(~func_3(~u_input.b), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_u32(u_input.a.x, ~(~_wgslsmith_mod_u32(4294967295u, 4294967295u) | u_input.a.x));
    global0 = func_1(~(~(~vec2<u32>(0u, u_input.a.x))), u_input.a.x, vec4<u32>(~(~u_input.a.x), u_input.a.x, u_input.a.x, ~(~_wgslsmith_dot_vec3_u32(u_input.a.yyx, vec3<u32>(u_input.a.x, 1u, u_input.a.x)))));
    global0 = ~u_input.a.x;
    global0 = ~(~_wgslsmith_mod_u32(min(~54706u, abs(u_input.a.x)), ~4294967295u));
    global0 = 0u;
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_f32(774f, _wgslsmith_f_op_f32(min(2219f, _wgslsmith_f_op_f32(-1122f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(719f, -484f))))));
    let var_2 = Struct_1(abs(_wgslsmith_dot_vec4_u32(~u_input.a, ~u_input.a) & func_3(u_input.b)), -abs(_wgslsmith_dot_vec2_i32(-u_input.b.xx, vec2<i32>(7145i, u_input.d) | u_input.b.xz)));
    global0 = select(var_0, ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(30963u, 1u), _wgslsmith_mult_u32(8926u, var_0), ~1u) << (u_input.a.x % 32u), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(var_2.a), ~1u, reverseBits(~var_0)));
}

