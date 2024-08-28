struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.a, firstLeadingBit(reverseBits(abs(u_input.a)) | select(u_input.a << (arg_1.zxw % vec3<u32>(32u)), -vec3<i32>(u_input.a.x, -1i, -2147483647i), true)));
    let var_1 = ~abs(~u_input.a);
    let var_2 = Struct_4(var_0);
    global0 = var_2;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -512f)), -569f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1019f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(258f)))), arg_0.x, arg_0.x)));
    return !vec4<bool>(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), true, all(vec3<bool>(false, true, any(vec2<bool>(true, false)))), select(~71434u > _wgslsmith_div_u32(arg_1.x, arg_1.x), true, false));
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    global0 = Struct_4(18772i);
    let var_0 = abs(vec4<i32>(global0.a, 0i, _wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-550i, -61772i, -17905i), u_input.a)), 1i), u_input.a.x));
    var var_1 = select(!select(vec4<bool>(true, true, arg_0.x, true), select(func_3(vec3<f32>(1118f, 1864f, -565f), vec4<u32>(39814u, 0u, 1u, 4294967295u), vec2<i32>(0i, 2147483647i)), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(false, arg_0.x, false, false), true), true), arg_0.x), vec4<bool>(true, arg_0.x, true, _wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -2147483647i, ~94247i) < _wgslsmith_clamp_i32(~global0.a, _wgslsmith_sub_i32(u_input.a.x, 1141i), var_0.x)), vec4<bool>(!(u_input.b <= -1i) & any(vec2<bool>(false, arg_0.x)), !(!func_3(vec3<f32>(-1299f, 1060f, -1349f), vec4<u32>(4294967295u, 87446u, 18414u, 85830u), vec2<i32>(0i, var_0.x)).x), !(select(25954u, 47218u, true) != _wgslsmith_dot_vec4_u32(vec4<u32>(59455u, 0u, 1u, 34488u), vec4<u32>(14423u, 79280u, 33941u, 0u))), all(arg_0.xz)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-403f + -2282f), 325f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(495f)))))), -1051f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f * 470f)), -914f) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(-233f))))), _wgslsmith_f_op_f32(ceil(-942f)), -574f, _wgslsmith_div_f32(-792f, 1918f)));
    let var_3 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~1u, 1u), _wgslsmith_mult_u32(firstLeadingBit(~64793u), 1613u));
    return Struct_3(21640i);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-644f, _wgslsmith_f_op_f32(ceil(1518f))), _wgslsmith_f_op_f32(trunc(-955f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1563f, 493f)) * 468f)) * vec3<f32>(771f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -602f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = _wgslsmith_div_u32(0u, 50018u);
    global0 = Struct_4(~_wgslsmith_div_i32(arg_0.a, global0.a));
    global0 = Struct_4(u_input.a.x);
    let var_2 = arg_0;
    return Struct_4(min(u_input.a.x, var_2.a));
}

fn func_1() -> i32 {
    global0 = Struct_4(global0.a);
    global0 = func_4(func_2(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !(46322i < global0.a))), vec3<bool>(true, any(vec4<bool>(false, false, true, any(vec4<bool>(true, true, true, false)))), true));
    global0 = Struct_4(-47567i);
    global0 = func_4(Struct_3(global0.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 33919u), vec3<u32>(4294967295u, 38961u, 4294967295u)) % 32u)), !select(select(func_3(vec3<f32>(1044f, -580f, 1000f), vec4<u32>(1u, 0u, 48516u, 4294967295u), vec2<i32>(-9334i, u_input.b)).xyz, vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), func_3(vec3<f32>(-222f, -877f, 1390f), vec4<u32>(0u, 23615u, 25707u, 1u), u_input.a.zx).zzy, true));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, 636f, 1259f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1896f, -585f, 1000f), vec3<f32>(265f, -1461f, -515f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1695f, 1000f, 1348f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-692f)), _wgslsmith_f_op_f32(-206f * 887f), _wgslsmith_f_op_f32(-951f + 492f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -446f, -1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2609f, 1220f, 194f)))))), u_input.a.xy, _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(5936i, firstLeadingBit(1i))), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, -63833i)), _wgslsmith_clamp_u32(19489u, 89540u, 0u));
    return abs(~(-5918i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1());
    var var_1 = !(all(select(vec2<bool>(true, true), func_3(vec3<f32>(-1248f, -876f, -475f), vec4<u32>(1u, 27901u, 1u, 25653u), vec2<i32>(u_input.a.x, u_input.a.x)).yy, all(vec4<bool>(false, false, false, false)))) || false);
    var var_2 = _wgslsmith_f_op_f32(abs(1775f));
    global0 = func_4(Struct_3(-11800i), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, false), true)));
    var var_3 = vec3<u32>(min(_wgslsmith_sub_u32(7406u, 1u), ~65239u) ^ select(_wgslsmith_div_u32(30892u, 33249u), ~4294967295u, any(vec2<bool>(true, false))), 0u, 3523u) >> (vec3<u32>(_wgslsmith_mult_u32(~4294967295u, ~firstTrailingBit(60360u)), 0u, abs(1u)) % vec3<u32>(32u));
    let var_4 = Struct_3(select(-2147483647i, -2147483647i, any(vec4<bool>(false, false, false, false)) & true) << (~(~(1u | var_3.x)) % 32u));
    var_2 = -516f;
    var var_5 = Struct_2(-u_input.a.zx, Struct_1(vec3<f32>(1107f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -705f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-999f)) - -1276f)), u_input.a.yz, max(firstLeadingBit(vec2<i32>(var_0.a, u_input.b)), -max(vec2<i32>(global0.a, 1i), vec2<i32>(u_input.a.x, 56552i))), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, var_3.x, 1u), vec3<u32>(3977u, var_3.x, var_3.x)), ~countOneBits(vec3<u32>(63240u, var_3.x, var_3.x)))), vec3<bool>(true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(-674f, -799f)))), 1f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_5.b.a.x)))), -1252f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-345f)), _wgslsmith_div_f32(var_5.d, _wgslsmith_f_op_f32(f32(-1f) * -1226f))), var_5.d), ~7599u ^ firstTrailingBit((var_5.b.d & 10833u) & 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_5.b.d, var_5.b.d), _wgslsmith_sub_u32(var_5.b.d, 23623u), 1u, ~101847u) ^ vec4<u32>(var_5.b.d | 0u, ~33095u, 0u, 1u), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(17443u, 4294967295u, var_5.b.d, 4294967295u), abs(vec4<u32>(1u, 43044u, 49924u, var_5.b.d))))));
}

