struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> bool {
    global0 = array<Struct_3, 18>();
    return arg_1 && ((!arg_1 && arg_1) & !(arg_1 != true));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_5(vec2<i32>(arg_1.x, arg_0), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-129f, -1000f, 2351f), vec3<f32>(649f, -1453f, 261f)))) - vec3<f32>(_wgslsmith_f_op_f32(sign(-897f)), -293f, 761f)), vec2<f32>(-2783f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(-1499f, -1538f, false))))), ~(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 11981u, 1u, 42219u), vec4<u32>(15587u, 49824u, 4294967295u, 34496u)))));
    let var_1 = Struct_5(vec2<i32>(-2147483647i, ~(~u_input.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.b.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b.a, var_0.b.a))), _wgslsmith_f_op_vec2_f32(var_0.b.b + vec2<f32>(var_0.b.b.x, -867f))), 24095u);
    global1 = true;
    global0 = array<Struct_3, 18>();
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f + _wgslsmith_f_op_f32(floor(var_1.b.b.x)))), var_1.b.a.x));
    return ~firstTrailingBit(1u >> (1u % 32u)) & ~(~var_0.c ^ (firstLeadingBit(0u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0.c), vec3<u32>(var_0.c, var_1.c, 1u)) % 32u)));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = 0i;
    var var_1 = true;
    var var_2 = select(vec3<u32>(func_3(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0, var_0, -48151i, u_input.b), u_input.c, vec4<bool>(true, false, true, arg_0)), firstLeadingBit(vec4<i32>(0i, -2147483647i, u_input.a.x, 24974i))), firstTrailingBit(vec2<i32>(-8731i, u_input.a.x))), ~abs(~43540u), abs(~46604u)), abs(~(~(~vec3<u32>(118136u, 60144u, 30313u)))), !select(select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(false, true, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0)), !vec3<bool>(false, arg_0, arg_0)), !(!vec3<bool>(arg_0, arg_0, false)), !select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0))));
    var_1 = true;
    let var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-451f, -1462f, 756f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -709f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1251f, -815f), vec3<f32>(-1970f, 151f, 1320f), true)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-520f, -1749f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, 1000f)), vec2<bool>(true, arg_0))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-107f, 1819f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -391f)))))))));
    return _wgslsmith_dot_vec2_u32(var_2.yx, ~((var_2.zx & var_2.xx) >> ((select(var_2.yy, vec2<u32>(var_2.x, var_2.x), vec2<bool>(true, false)) ^ firstTrailingBit(var_2.xz)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !all(!vec4<bool>(true, true, any(vec3<bool>(true, false, true)), 2147483647i < u_input.a.x));
    var var_0 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(181f, -785f, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f * -1494f)))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -999f), _wgslsmith_f_op_f32(select(var_0.x, 577f, func_1(vec2<u32>(46946u, 7416u), false, vec2<u32>(1u, 13801u), 57391u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f) - var_0.x))), _wgslsmith_sub_u32((1u >> (func_2(true) % 32u)) >> (1u % 32u), ~(~(~1u))));
    var var_2 = select(!vec3<bool>(true & (var_1.a.x <= 1639f), true | (var_1.a.x < -1482f), false), select(vec3<bool>(true, any(vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, true)), !all(vec3<bool>(true, true, false)), true)), !vec3<bool>(max(var_1.b, 83976u) <= ~1u, false, !(u_input.b != -10273i)));
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-var_1.a), ~_wgslsmith_mod_u32(var_1.b, max(48847u, 49238u)) ^ var_1.b);
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1492f, -771f, var_1.a.x))) + vec3<f32>(1469f, var_1.a.x, _wgslsmith_f_op_f32(-1000f * -1634f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1739f, 401f, var_1.a.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1049f, var_0.x) - vec3<f32>(var_0.x, var_1.a.x, var_0.x)))))), _wgslsmith_dot_vec4_u32(firstLeadingBit(max(_wgslsmith_div_vec4_u32(vec4<u32>(14741u, 22899u, var_1.b, 27698u), vec4<u32>(var_1.b, 4294967295u, 33004u, 4294967295u)), ~vec4<u32>(var_1.b, var_1.b, 16324u, var_1.b))), firstTrailingBit(vec4<u32>(abs(82445u), var_1.b | var_1.b, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(20064u, var_1.b), vec2<u32>(var_1.b, 0u))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(878f)) - var_1.a.x)), _wgslsmith_f_op_f32(round(-1117f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(371f, var_0.x))))))));
    var var_4 = -1404f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(var_1.b, var_1.b), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.b, _wgslsmith_mod_u32(1u, var_1.b), var_1.b, 1u), vec4<u32>(var_1.b | var_1.b, ~46426u, 1u, _wgslsmith_add_u32(var_1.b, var_1.b))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19125u, var_1.b) | vec2<u32>(var_1.b, 55021u), firstTrailingBit(vec2<u32>(var_1.b, var_1.b))), reverseBits(select(4294967295u, 3633u, false))), ~(var_1.b & var_1.b)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32((vec2<u32>(1u, var_1.b) >> (vec2<u32>(var_1.b, 524u) % vec2<u32>(32u))) & (vec2<u32>(var_1.b, var_1.b) | vec2<u32>(1u, var_1.b)), ~vec2<u32>(0u, 1u)), ~(max(vec2<u32>(1u, 0u), vec2<u32>(0u, 170187u)) & select(vec2<u32>(55750u, 0u), vec2<u32>(var_1.b, 1u), var_2.zy))), vec2<u32>(var_1.b, ~(var_1.b >> (~13272u % 32u))));
}

