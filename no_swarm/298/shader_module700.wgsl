struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(28420u, 4294967295u);

var<private> global1: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(101f, -126f, -1000f), vec3<f32>(-706f, -970f, 363f), vec3<f32>(748f, 1726f, -332f), vec3<f32>(-169f, 720f, 1544f), vec3<f32>(-233f, -520f, -2418f), vec3<f32>(438f, 677f, 154f), vec3<f32>(1556f, -768f, -150f), vec3<f32>(189f, 1939f, -933f), vec3<f32>(-238f, 268f, -405f), vec3<f32>(1106f, -783f, -1809f), vec3<f32>(843f, 2250f, -774f), vec3<f32>(1390f, 964f, -300f), vec3<f32>(980f, -1394f, -1000f), vec3<f32>(817f, -1252f, 442f), vec3<f32>(1000f, -2425f, -1346f), vec3<f32>(-442f, -750f, 1000f), vec3<f32>(-792f, -203f, -1309f), vec3<f32>(645f, 698f, 512f), vec3<f32>(1000f, 633f, 138f), vec3<f32>(1059f, -1061f, 1000f), vec3<f32>(-1524f, -319f, 1046f), vec3<f32>(-158f, -1690f, -1000f), vec3<f32>(-295f, -936f, 650f), vec3<f32>(336f, -1236f, 1000f), vec3<f32>(1278f, -453f, -528f), vec3<f32>(-247f, -1061f, 1333f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(select(~71601u | u_input.a, global0.x, true), ~u_input.a | _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, 15087u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, global0.x), vec2<u32>(global0.x, 0u), vec2<u32>(global0.x, u_input.a)))), ~((~vec2<u32>(global0.x, u_input.a) & vec2<u32>(global0.x, u_input.a)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(316u, global0.x) ^ vec2<u32>(u_input.a, 46471u), ~vec2<u32>(45755u, u_input.a)) % vec2<u32>(32u))));
    var var_0 = countOneBits(min(firstLeadingBit(~vec2<u32>(u_input.a, u_input.a)), firstLeadingBit(vec2<u32>(15794u, 0u)) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, global0.x), vec2<u32>(global0.x, u_input.a)) % vec2<u32>(32u))));
    global0 = ~firstTrailingBit(countOneBits(max(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, var_0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, global0.x), vec2<u32>(4294967295u, global0.x), vec2<u32>(global0.x, 8153u)))));
    global1 = array<vec3<f32>, 26>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1140f - -554f)))));
    return vec4<u32>(4294967295u, ~abs(10542u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(81844u, var_0.x, u_input.a)), firstTrailingBit(vec3<u32>(4294967295u, 55404u, u_input.a))), ~(~9389u)) | 23831u, max(countOneBits(_wgslsmith_mult_u32(abs(4294967295u), 1u)), global0.x));
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<f32>, 26>();
    let var_0 = 46795u;
    global1 = array<vec3<f32>, 26>();
    var var_1 = Struct_2(25692u, ~((~vec4<u32>(0u, 109208u, 29415u, 31728u) & ~vec4<u32>(var_0, 18889u, var_0, u_input.a)) >> ((func_3(u_input.b, Struct_1(vec2<f32>(-2081f, -1982f))) << (vec4<u32>(u_input.a, global0.x, 1u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-473f, -1000f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(-436f - 822f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1596f))))), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -728f))) - -386f)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(298f, var_1.c), vec2<f32>(-1000f, 2215f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, -1271f) * vec2<f32>(var_1.c, var_1.e)) - vec2<f32>(var_1.c, var_1.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-372f, 385f), vec2<f32>(-495f, -1000f))), select(select(var_1.d, vec2<bool>(false, false), var_1.d), vec2<bool>(false, true), true))));
}

fn func_1(arg_0: bool) -> bool {
    global1 = array<vec3<f32>, 26>();
    var var_0 = vec4<f32>(339f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(885f * _wgslsmith_f_op_f32(f32(-1f) * -1501f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(512f + 1000f))))), -558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-730f, -422f, arg_0)) + _wgslsmith_f_op_f32(-503f * 1246f)))));
    var var_1 = u_input.d;
    var var_2 = func_2();
    let var_3 = Struct_2(4294967295u, vec4<u32>(global0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, 0u), firstLeadingBit(vec2<u32>(72952u, global0.x) ^ vec2<u32>(15842u, u_input.a))), func_3(var_1.x, func_2()).x, ~global0.x), 148f, !(!select(vec2<bool>(true, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), arg_0), any(vec3<bool>(true, true, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1253f)))));
    return _wgslsmith_mod_u32(13234u << (func_3(_wgslsmith_mod_i32(var_1.x, var_1.x), Struct_1(var_2.a)).x % 32u), ~reverseBits(1u) ^ _wgslsmith_dot_vec4_u32(~var_3.b, vec4<u32>(4294967295u, 1u, 0u, global0.x))) != 90329u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    var var_1 = false;
    var_1 = !all(vec3<bool>(all(vec3<bool>(true, true, true)), func_1(true), func_1(true)));
    let var_2 = u_input.c;
    var var_3 = var_2;
    var var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(global0.x, 24959u), vec2<i32>(var_2, -22050i), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, u_input.a)), ~_wgslsmith_clamp_vec2_u32(min(vec2<u32>(global0.x, 1u), vec2<u32>(u_input.a, global0.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(30696u, u_input.a), vec2<u32>(global0.x, 16389u)), vec2<u32>(u_input.a, global0.x) & vec2<u32>(32322u, 1u))), vec2<u32>(~(4294967295u & countOneBits(u_input.a)), select(global0.x << (u_input.a % 32u), ~(~50206u), true)), abs(7614i));
}

