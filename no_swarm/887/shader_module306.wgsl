struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: u32 = 38103u;

var<private> global2: array<vec3<u32>, 3>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>) -> f32 {
    global2 = array<vec3<u32>, 3>();
    global1 = ~arg_0.a.x;
    global0 = array<vec3<bool>, 18>();
    let var_0 = Struct_1(firstTrailingBit(countOneBits(~min(vec3<u32>(u_input.d, 1u, 74169u), global2[_wgslsmith_index_u32(arg_0.a.x, 3u)]))), u_input.c);
    global1 = arg_0.a.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -931f);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global0 = array<vec3<bool>, 18>();
    var var_0 = Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 89085u, u_input.d), abs(vec4<u32>(1u, u_input.d, 4294967295u, 19011u))), firstLeadingBit(_wgslsmith_div_u32(abs(22696u), _wgslsmith_mod_u32(0u, u_input.d))), ~abs(u_input.d) << (u_input.d % 32u)), vec2<i32>(abs(_wgslsmith_mod_i32(1i, u_input.a.x)) & 1i, ~u_input.b.x));
    global1 = u_input.d;
    global1 = ~var_0.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(0u, 61038u, 1u), vec2<i32>(754i, var_0.b.x)), vec4<f32>(-237f, -266f, 878f, arg_0.x), vec2<i32>(u_input.a.x, var_0.b.x))), _wgslsmith_f_op_f32(1463f * arg_0.x)), -1000f)))));
    return Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 0u, var_0.a.x, 48305u), vec4<u32>(reverseBits(1u), var_0.a.x, 132362u, 1836u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.d, countOneBits(var_0.a.x)), ~countOneBits(8382u), 30620u), select(_wgslsmith_dot_vec2_u32(var_0.a.xx, reverseBits(var_0.a.yy)), _wgslsmith_div_u32(reverseBits(var_0.a.x), select(27518u, 25637u, false)), false)), vec2<i32>(-4455i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.b.x), -u_input.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = vec4<u32>(~select(_wgslsmith_clamp_u32(arg_2.a.x, 0u, 1u), ~1u, false), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(147f, -433f) - vec2<f32>(-990f, 719f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(812f, -811f)))).a.x, (1763u | (1u >> (arg_0.a.x % 32u))) >> (~(~52538u) % 32u), arg_1.a.x) | ~(~min(~vec4<u32>(u_input.d, arg_0.a.x, u_input.d, u_input.d), vec4<u32>(0u, 4294967295u, arg_2.a.x, u_input.d)));
    global1 = _wgslsmith_clamp_u32(~var_0.x, arg_0.a.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.d, arg_1.a.x, arg_2.a.x), vec4<u32>(arg_0.a.x, 0u, var_0.x, 0u)), u_input.d >> (~arg_1.a.x % 32u)), arg_2.a.x));
    global1 = _wgslsmith_div_u32(1u, 4294967295u);
    let var_1 = abs(_wgslsmith_add_u32(60238u >> (min(_wgslsmith_clamp_u32(41050u, 1u, arg_2.a.x), 3033u) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, 4964u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.x, 1u), vec3<u32>(arg_1.a.x, arg_1.a.x, arg_2.a.x))), vec3<u32>(1u << (var_0.x % 32u), ~23176u, 1u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-883f, 990f, -215f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1062f, 882f, -934f)))) * vec3<f32>(_wgslsmith_f_op_f32(floor(-1885f)), 1000f, -901f))));
    return _wgslsmith_dot_vec2_u32((countOneBits(arg_2.a.xz) & arg_0.a.xz) | ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 33150u), ~vec2<u32>(var_0.x, 37339u)), ~(~((vec2<u32>(4294967295u, 1u) & vec2<u32>(59293u, arg_0.a.x)) | vec2<u32>(4905u, var_1))));
}

fn func_5(arg_0: u32, arg_1: bool) -> u32 {
    global1 = countOneBits(4404u);
    var var_0 = _wgslsmith_add_i32(reverseBits(1i), 1545i);
    let var_1 = (vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(21928u, 0u, 0u, arg_0), vec4<u32>(u_input.d, arg_0, 34085u, 0u)), u_input.d, min(u_input.d, u_input.d << (arg_0 % 32u))) ^ global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_0, _wgslsmith_add_u32(1u, 0u)), 3u)]) & vec3<u32>(arg_0, arg_0, max(149489u, 92242u));
    let var_2 = Struct_1(vec3<u32>(25911u, _wgslsmith_dot_vec3_u32(vec3<u32>(~24610u, 0u, u_input.d), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, 0u), 3u)]), var_1.x), u_input.c);
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_add_u32(arg_0, ~(~var_1.x)), ~4294967295u, u_input.d), ~vec2<i32>(31846i, max(9008i, _wgslsmith_add_i32(var_2.b.x, u_input.b.x))));
    return var_3.a.x;
}

fn func_1(arg_0: vec4<f32>) -> vec3<u32> {
    let var_0 = true;
    let var_1 = arg_0.x;
    global0 = array<vec3<bool>, 18>();
    global1 = select(_wgslsmith_clamp_u32(~u_input.d, abs(27407u), _wgslsmith_mult_u32(1u, 36409u)), _wgslsmith_add_u32(~u_input.d, func_5(func_4(func_2(vec2<f32>(var_1, arg_0.x)), Struct_1(vec3<u32>(1u, u_input.d, 4294967295u), vec2<i32>(u_input.a.x, u_input.b.x)), func_2(vec2<f32>(arg_0.x, arg_0.x))), 34336u > ~u_input.d)), var_0);
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xx)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2186f, arg_0.x)))))));
    return vec3<u32>(~(~24118u), _wgslsmith_mult_u32(~1u, u_input.d), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 18>();
    var var_0 = _wgslsmith_mod_vec3_u32(((vec3<u32>(u_input.d, 1u, u_input.d) & (global2[_wgslsmith_index_u32(u_input.d, 3u)] << (global2[_wgslsmith_index_u32(u_input.d, 3u)] % vec3<u32>(32u)))) ^ (vec3<u32>(u_input.d, u_input.d, 41111u) ^ func_1(vec4<f32>(1000f, -376f, -1142f, -850f)))) >> (global2[_wgslsmith_index_u32(u_input.d, 3u)] % vec3<u32>(32u)), ~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, func_5(4294967295u, all(vec4<bool>(true, false, false, true)))), 3u)]);
    var var_1 = !vec2<bool>(false, all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true))));
    var_1 = vec2<bool>(!all(vec3<bool>(all(vec2<bool>(false, var_1.x)), false, true)), !select(all(vec2<bool>(var_1.x, var_1.x)), any(vec2<bool>(true, true)), var_1.x));
    var_0 = vec3<u32>(firstTrailingBit(1u), max(var_0.x, ~4294967295u), 0u);
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(307f * -128f), _wgslsmith_f_op_f32(f32(-1f) * -1434f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(245f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1042f, -793f), vec2<f32>(-300f, -2061f))))))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-989f - -1059f) * -413f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f + -1023f) + -172f)))));
    let var_4 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-188f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * var_3.x) * _wgslsmith_f_op_f32(-var_3.x))), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-u_input.a.wyz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, -121f, -719f), vec3<f32>(2466f, -2103f, -133f), false)))))), 633f);
}

