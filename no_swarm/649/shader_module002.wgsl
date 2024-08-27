struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(373f, -1128f, -618f), vec3<f32>(298f, -1428f, 1529f), vec3<f32>(-1564f, -965f, 712f), vec3<f32>(-425f, 1117f, -780f), vec3<f32>(508f, -966f, -130f), vec3<f32>(258f, 585f, -1000f), vec3<f32>(556f, -250f, 2525f), vec3<f32>(181f, -126f, -740f), vec3<f32>(1373f, -142f, 194f), vec3<f32>(712f, 747f, -2094f), vec3<f32>(369f, -1105f, -633f), vec3<f32>(-119f, -520f, -1800f), vec3<f32>(-689f, 650f, 703f), vec3<f32>(198f, -776f, 1291f), vec3<f32>(1026f, 895f, -438f), vec3<f32>(-1227f, 1070f, 960f), vec3<f32>(-828f, -1257f, -1517f), vec3<f32>(2127f, 157f, -279f), vec3<f32>(341f, 2528f, -1279f), vec3<f32>(-107f, 1038f, -302f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = ~firstTrailingBit(firstLeadingBit(~vec4<u32>(0u, 1u, arg_0.a, arg_2.d.x) & vec4<u32>(1u, arg_2.d.x, 34495u, 0u)));
    global0 = array<vec3<f32>, 20>();
    let var_1 = true;
    global0 = array<vec3<f32>, 20>();
    let var_2 = arg_2.a;
    return arg_2.c;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> u32 {
    var var_0 = Struct_1(~0u, u_input.c.ywy, arg_0, vec3<u32>(4294967295u, ~(~(~u_input.b.x)), 64909u));
    var var_1 = !(!(!vec3<bool>(true, true, arg_2.x)));
    let var_2 = _wgslsmith_clamp_i32(firstLeadingBit(1i), 73438i, 1i);
    let var_3 = Struct_1(34787u, firstLeadingBit(vec3<i32>(countOneBits(-6247i), -9027i << (u_input.b.x % 32u), arg_1.x)), -1928f, vec3<u32>(4294967295u, ~_wgslsmith_sub_u32(var_0.d.x & 4294967295u, var_0.d.x & u_input.b.x), u_input.b.x));
    var var_4 = !vec2<bool>(max(_wgslsmith_mult_i32(51830i, 33664i), -2147483647i) > _wgslsmith_sub_i32(-1i, var_3.b.x), true);
    return _wgslsmith_mod_u32(u_input.b.x, 4294967295u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = arg_1.x;
    var_0 = false;
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    let var_1 = Struct_1(~abs(1u), _wgslsmith_div_vec3_i32(firstTrailingBit(~u_input.c.wyz), u_input.c.wyw) << (vec3<u32>(_wgslsmith_clamp_u32(~15198u, ~arg_0.x, ~arg_0.x), func_4(_wgslsmith_f_op_f32(func_3(Struct_1(3635u, vec3<i32>(u_input.a, u_input.c.x, u_input.c.x), -942f, u_input.b), arg_1.wwz, Struct_1(0u, u_input.c.wxz, 368f, vec3<u32>(0u, arg_0.x, u_input.b.x)))), abs(u_input.c.wx), !vec2<bool>(arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, 987f, 271f, 423f))), u_input.b.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-711f - _wgslsmith_f_op_f32(f32(-1f) * -160f)), 311f, all(select(arg_1, vec4<bool>(true, arg_1.x, arg_1.x, true), arg_1)))) * _wgslsmith_f_op_f32(-360f + -2003f)), _wgslsmith_mod_vec3_u32(~select(~vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, arg_0.x), false), vec3<u32>(0u, firstLeadingBit(79908u), ~1u)));
    return 792f;
}

fn func_1(arg_0: i32) -> vec4<f32> {
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    var var_0 = true;
    var var_1 = Struct_1(4294967295u, u_input.c.xxy, _wgslsmith_f_op_f32(func_2(vec2<u32>(countOneBits(~4294967295u), u_input.b.x), !vec4<bool>(u_input.b.x <= 43964u, true, true, false))), u_input.b);
    var var_2 = !(!select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), true), vec4<bool>(true, true, -534f <= var_1.c, true), vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 2434f, -319f, var_1.c)), _wgslsmith_div_vec4_f32(vec4<f32>(-2305f, var_1.c, -712f, var_1.c), vec4<f32>(var_1.c, -791f, var_1.c, var_1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c, var_1.c, 1000f, var_1.c))))) + _wgslsmith_div_vec4_f32(vec4<f32>(-669f, 813f, _wgslsmith_f_op_f32(f32(-1f) * -2180f), _wgslsmith_div_f32(-644f, 1742f)), vec4<f32>(177f, _wgslsmith_f_op_f32(-var_1.c), 211f, 696f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.b.xx, vec4<bool>(var_2.x, var_2.x, true, true))) * -226f), _wgslsmith_f_op_f32(var_1.c + var_1.c), _wgslsmith_f_op_f32(max(-940f, -248f)), -2278f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 20>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 2539f, _wgslsmith_f_op_f32(f32(-1f) * -486f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1573f, -1828f, -942f, -1759f), _wgslsmith_f_op_vec4_f32(func_1(-10310i))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1137f, 1104f, -924f, -1000f))) * vec4<f32>(-777f, -1191f, -336f, -864f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-671f, 135f, 1134f, -1016f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, 1000f, -1103f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 710f, -786f, 734f) + vec4<f32>(293f, var_0.x, var_0.x, -609f)))))));
    let var_1 = abs(-_wgslsmith_sub_i32(-u_input.c.x, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(1u, abs(~u_input.b.x) | ((1u ^ u_input.b.x) & 23171u)));
}

