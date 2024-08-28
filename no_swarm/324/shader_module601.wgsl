struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: Struct_3,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = abs(vec2<u32>(~76816u, 0u));
    global0 = ~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(23651u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, var_0.x, 5354u), false) | vec4<u32>(var_0.x, ~1u, u_input.a | 4294967295u, 19332u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.a, u_input.a), ~vec4<u32>(0u, u_input.a, 11850u, 0u)));
    global0 = _wgslsmith_div_u32(u_input.a, _wgslsmith_sub_u32(16762u, ~_wgslsmith_div_u32(~u_input.a, 4294967295u)));
    let var_1 = ~(1i << (~(_wgslsmith_clamp_u32(var_0.x, var_0.x, 66724u) >> (var_0.x % 32u)) % 32u));
    let var_2 = max(vec4<i32>(~_wgslsmith_mult_i32(0i, 0i), countOneBits(47253i), 1i, ~u_input.b.x & 1i) & -min(vec4<i32>(u_input.b.x, u_input.b.x, 2564i, 36095i), vec4<i32>(u_input.b.x, u_input.b.x, var_1, -1i)), ~(abs(reverseBits(vec4<i32>(0i, 22397i, var_1, u_input.b.x))) ^ vec4<i32>(-68809i, var_1, firstTrailingBit(var_1), i32(-1i) * -2147483647i)));
    return !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(397f, _wgslsmith_f_op_f32(floor(-256f)))), _wgslsmith_f_op_f32(floor(-1038f))) > _wgslsmith_f_op_f32(-1f));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    global0 = ~_wgslsmith_mod_u32(~1u, u_input.a);
    global0 = u_input.a;
    var var_0 = Struct_4(func_3() && true, arg_0);
    let var_1 = vec2<bool>(!(!(!var_0.b.c)), true);
    var var_2 = abs(u_input.b.zx);
    return vec4<bool>(all(var_1), true, !all(select(select(vec3<bool>(false, true, arg_0.a), vec3<bool>(false, arg_0.c, var_1.x), vec3<bool>(true, true, false)), !vec3<bool>(true, false, var_1.x), !var_1.x)), !var_1.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<i32>) -> f32 {
    global0 = max(~countOneBits(4294967295u), arg_0.x);
    var var_0 = Struct_4(!arg_1.b.c, Struct_1(-(2147483647i >> (u_input.a % 32u)) > -71375i, 128f, any(!(!vec4<bool>(true, arg_1.b.a, true, false))), arg_1.b.d));
    var_0 = arg_1;
    var var_1 = var_0.b.a;
    let var_2 = select(func_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(427f, arg_1.b.b))), !any(vec4<bool>(false, var_0.a, var_0.b.c, var_0.a)), firstLeadingBit(arg_1.b.d << (1u % 32u)))), vec4<bool>(true, func_2(var_0.b).x, arg_1.a, var_0.b.c), !all(vec2<bool>(any(vec4<bool>(arg_1.a, var_0.a, true, false)), true)));
    return _wgslsmith_f_op_f32(arg_1.b.b + _wgslsmith_f_op_f32(-var_0.b.b));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    global0 = ~1u;
    global0 = ~(~(u_input.a << (40252u % 32u)));
    global0 = ~u_input.a;
    return select(min((firstTrailingBit(vec2<u32>(1u, 4294967295u)) | (vec2<u32>(u_input.a, 8242u) << (vec2<u32>(42272u, u_input.a) % vec2<u32>(32u)))) | _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, 0u)), vec2<u32>(54350u, u_input.a)), firstLeadingBit(~vec2<u32>(u_input.a, u_input.a) << (abs(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))), ~select(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 49055u), vec2<u32>(u_input.a, 4294967295u))), ~vec2<u32>(0u, u_input.a), true), select(!(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_1, true), vec2<bool>(false, true))), vec2<bool>(!any(vec4<bool>(arg_2, true, true, arg_3.c)), arg_3.a && select(false, arg_3.c, arg_2)), !select(!vec2<bool>(arg_3.c, false), vec2<bool>(true, arg_3.a), any(vec4<bool>(arg_2, arg_2, false, arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(select(vec2<u32>(1u, ~55322u | (0u | u_input.a)), reverseBits(func_4(_wgslsmith_f_op_f32(func_1(vec4<u32>(1u, u_input.a, u_input.a, 47506u), Struct_4(false, Struct_1(true, -352f, false, 16046i)), vec3<i32>(2147483647i, u_input.b.x, -2147483647i))), any(vec2<bool>(false, false)), u_input.a >= u_input.a, Struct_1(true, 268f, true, -35300i))), !(_wgslsmith_f_op_f32(floor(2395f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1540f))));
    global0 = ~_wgslsmith_clamp_u32(3804u, 3176u, 4294967295u);
    var var_1 = ~(~countOneBits(countOneBits(vec4<u32>(38587u, 24198u, var_0.x, u_input.a))));
    var_1 = firstLeadingBit(vec4<u32>(~var_0.x, _wgslsmith_mult_u32(4294967295u, countOneBits(min(u_input.a, var_0.x))), var_1.x, u_input.a >> (~u_input.a % 32u)));
    let var_2 = min(reverseBits(~_wgslsmith_sub_vec2_i32(u_input.b.xy, u_input.b.xx) | _wgslsmith_sub_vec2_i32(u_input.b.yx, _wgslsmith_mod_vec2_i32(u_input.b.xz, u_input.b.zz))), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, -27057i)), countOneBits(u_input.b.yz)));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1079f, 1421f) * _wgslsmith_f_op_f32(f32(-1f) * -827f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(299f, 1009f)), 838f, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -158f) + -667f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1642f, -755f, -1262f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1322f, 514f, -205f) - vec3<f32>(337f, 260f, 1075f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(36260u & ~max(u_input.a, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.zy) * vec2<f32>(-115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(744f, -742f))))), abs(vec2<i32>(_wgslsmith_add_i32(u_input.b.x >> (var_1.x % 32u), var_2.x), (i32(-1i) * -2147483647i) >> (u_input.a % 32u))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-125f + -2069f)), -8527i);
}

