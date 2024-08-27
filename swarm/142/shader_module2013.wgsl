struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = -u_input.d;
    var var_1 = Struct_2(vec2<f32>(369f, _wgslsmith_f_op_f32(trunc(-973f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-553f, 1372f, 317f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 118f, var_1.a.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.x, -749f, var_1.a.x), vec3<f32>(var_1.a.x, var_1.a.x, 127f))) * vec3<f32>(1025f, var_1.a.x, var_1.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, var_1.a.x, -988f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1039f, var_1.a.x) + vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))))))));
    let var_3 = 5820u;
    let var_4 = Struct_1(i32(-1i) * -6611i);
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_2.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.x - 562f), var_2.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -788f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_2.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-457f, var_2.x) * var_2.xx))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1257f, -1000f) - vec2<f32>(var_1.a.x, var_2.x))))))));
}

fn func_2() -> u32 {
    global0 = -u_input.c;
    var var_0 = -u_input.d.x | -_wgslsmith_div_i32(~(0i | u_input.d.x), -1i);
    var var_1 = Struct_1(_wgslsmith_div_i32(~(~select(u_input.c, -1i, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.d, reverseBits(~vec3<i32>(-2147483647i, -45857i, u_input.c)))));
    var_1 = Struct_1(10499i);
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-946f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 677f)) * 957f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + vec2<f32>(-503f, _wgslsmith_div_f32(253f, 1308f))))));
    return ~firstLeadingBit(~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.e, 4294967295u))) >> (80417u % 32u);
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(countOneBits(firstTrailingBit(u_input.b))), vec2<u32>(~17477u, u_input.a));
    global0 = _wgslsmith_mult_i32(abs(-max(u_input.c, u_input.d.x) & ~_wgslsmith_mod_i32(u_input.d.x, -8547i)), u_input.c);
    global0 = 1i;
    var var_1 = Struct_1(u_input.d.x);
    var_1 = Struct_1(countOneBits(u_input.c));
    return Struct_1(u_input.d.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = func_4(arg_0.x, ~vec2<u32>(40599u, func_2()), u_input.e, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.xx)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1715f))))));
    global0 = -2147483647i;
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.e, ~(~u_input.a >> (u_input.e % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.e, 4294967295u, 1u, 68949u), vec4<u32>(8133u, u_input.e, 14976u, u_input.a), true), vec4<u32>(4294967295u, 20305u, 29379u, u_input.a)), ~(~vec4<u32>(4294967295u, u_input.e, 5904u, 4294967295u)))), ~(17168u | abs(~u_input.e)));
    var var_2 = var_0;
    let var_3 = _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a, u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)))), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.b.x, 1u, u_input.e))), vec3<u32>(20639u, 43561u, 83964u), _wgslsmith_clamp_vec3_u32(vec3<u32>(36170u, 56954u, 4294967295u), firstTrailingBit(vec3<u32>(30530u, u_input.b.x, u_input.e)), ~vec3<u32>(29103u, u_input.e, u_input.b.x))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(10551u, 1u, u_input.e), vec3<u32>(1u, 1u, 1u))), ~((vec3<u32>(0u, u_input.b.x, u_input.e) << (vec3<u32>(1u, 22687u, u_input.b.x) % vec3<u32>(32u))) & vec3<u32>(4294967295u, 0u, 5108u))));
    return select(!(!(!(!vec3<bool>(false, arg_1.x, true)))), vec3<bool>(arg_1.x, true, all(select(vec4<bool>(arg_1.x, false, false, arg_1.x), select(vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), !vec4<bool>(arg_1.x, true, false, arg_1.x)))), !vec3<bool>(false, select(arg_1.x, true, !arg_1.x), !arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(~(-56255i));
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-284f + 699f) + _wgslsmith_div_f32(476f, -114f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f))));
    let var_1 = -9822i;
    global0 = firstLeadingBit(u_input.d.x);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.a, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, 1000f), var_0.a))) + var_0.a) - vec2<f32>(-1610f, _wgslsmith_f_op_f32(round(var_0.a.x)))));
    let var_3 = select(vec4<bool>(false, any(vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true)), true, any(func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.x, var_0.a.x, -930f, var_0.a.x))), vec2<bool>(true, false)))), vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))), true, true), select(vec4<bool>(true, true, !(var_2.a.x < -191f), _wgslsmith_f_op_f32(-var_0.a.x) < _wgslsmith_f_op_f32(f32(-1f) * -1179f)), vec4<bool>(false, u_input.a <= firstLeadingBit(0u), select(any(vec3<bool>(true, false, false)), true, true), !all(vec4<bool>(false, true, false, true))), vec4<bool>(var_1 < var_1, _wgslsmith_f_op_f32(max(754f, var_0.a.x)) >= 1f, _wgslsmith_f_op_f32(-var_2.a.x) == var_0.a.x, u_input.d.x > -u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(14402i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-572f, 1262f, -1180f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, -413f, var_0.a.x))))))), func_2());
}

