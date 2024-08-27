struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec2<i32>(i32(-2147483648), -1i)), Struct_3(vec2<i32>(-1i, 2147483647i)), Struct_3(vec2<i32>(0i, i32(-2147483648))), Struct_3(vec2<i32>(2147483647i, 42797i)), Struct_3(vec2<i32>(-1i, 2147483647i)), Struct_3(vec2<i32>(25607i, i32(-2147483648))), Struct_3(vec2<i32>(2147483647i, -11210i)), Struct_3(vec2<i32>(-1i, -1i)), Struct_3(vec2<i32>(0i, 14392i)), Struct_3(vec2<i32>(-19288i, -2144i)), Struct_3(vec2<i32>(61851i, 23144i)), Struct_3(vec2<i32>(1i, i32(-2147483648))), Struct_3(vec2<i32>(-16811i, 31821i)), Struct_3(vec2<i32>(-42847i, -1i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -3534f), vec2<u32>(u_input.a & ~_wgslsmith_dot_vec2_u32(vec2<u32>(10988u, u_input.b), vec2<u32>(u_input.b, 69955u)), u_input.a));
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1041f, var_0.a) - vec2<f32>(-749f, var_0.a)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 942f) - vec2<f32>(var_0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 781f) - vec2<f32>(var_0.a, -381f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2349f, -478f) + vec2<f32>(605f, 300f)))) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1310f - var_0.a), _wgslsmith_div_f32(var_0.a, 790f))), var_0.a)));
    global0 = array<Struct_3, 14>();
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(1000f, -1541f)), _wgslsmith_f_op_f32(var_0.a + var_2.x));
    return ~2147483647i;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = ~vec4<i32>(~(-(~arg_0)), 2147483647i, firstLeadingBit(-(~0i)), 1001i);
    global0 = array<Struct_3, 14>();
    let var_1 = arg_1;
    global0 = array<Struct_3, 14>();
    let var_2 = func_3();
    return 107691u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> vec2<f32> {
    var var_0 = arg_1.a.x;
    global0 = array<Struct_3, 14>();
    let var_1 = -min(~vec3<i32>(min(arg_1.a.x, arg_1.a.x), -arg_1.a.x, -arg_1.a.x), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.a.x, arg_1.a.x, 0i), reverseBits(vec3<i32>(arg_1.a.x, 1i, arg_1.a.x)))));
    let var_2 = firstTrailingBit(~vec4<u32>(31617u, 1u, _wgslsmith_sub_u32(~u_input.a, 4294967295u), 59078u));
    var_0 = ~arg_1.a.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)), select(vec2<bool>(arg_2, arg_3), vec2<bool>(arg_3, true), arg_3))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(270f, 1001f), vec2<f32>(-1386f, -2043f))) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(arg_0.a, 305f))), !(!vec2<bool>(true, arg_2)))))));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_4) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c) - _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(-arg_3.b.x))), arg_1 & 10770i, arg_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1248f * arg_2.x) * arg_2.x), 807f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(-arg_3.d.x)), arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.x * 603f)), _wgslsmith_f_op_f32(arg_2.x - -576f))));
    global0 = array<Struct_3, 14>();
    var var_1 = Struct_2(_wgslsmith_div_f32(var_0.d.x, 952f), vec2<u32>(~u_input.a, 23514u));
    var_1 = Struct_2(var_1.a, ~vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, 8055u, 4294967295u), vec3<u32>(var_1.b.x, var_1.b.x, 17941u), vec3<bool>(false, false, true)), countOneBits(vec3<u32>(69282u, u_input.b, 8932u))), 61172u));
    let var_2 = Struct_2(-313f, ~(~firstLeadingBit(firstLeadingBit(vec2<u32>(var_1.b.x, var_1.b.x)))));
    return -14871i;
}

fn func_1(arg_0: i32) -> vec2<i32> {
    global0 = array<Struct_3, 14>();
    var var_0 = 7305u;
    var_0 = _wgslsmith_mult_u32(17288u, 1u);
    let var_1 = vec2<bool>(false, false);
    var var_2 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, -48349i, arg_0, arg_0), vec4<i32>(0i, arg_0, 2147483647i, -55725i) | vec4<i32>(-1i, arg_0, arg_0, -9596i)), ~2147483647i, 1i), vec4<i32>(arg_0, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 42527i), vec2<i32>(-2147483647i, 1i)), arg_0), ~arg_0 & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, 0i)), arg_0));
    return vec2<i32>(select(func_5(Struct_3(-vec2<i32>(0i, -29428i)), 12165i, _wgslsmith_f_op_vec2_f32(func_4(Struct_2(-784f, vec2<u32>(u_input.b, 4294967295u)), global0[_wgslsmith_index_u32(func_2(-27275i, Struct_2(1410f, vec2<u32>(u_input.a, 52570u))), 14u)], var_1.x, var_1.x | true)), Struct_4(_wgslsmith_f_op_f32(-1320f - -397f), _wgslsmith_f_op_vec2_f32(func_4(Struct_2(924f, vec2<u32>(0u, u_input.b)), Struct_3(vec2<i32>(1i, arg_0)), false, true)), -1324f, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-320f, -1959f))))), 1i, true), _wgslsmith_div_i32(~arg_0, abs(countOneBits(-arg_0))));
}

fn func_6(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = false;
    var var_1 = Struct_4(-1000f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-773f - -946f) + _wgslsmith_f_op_f32(sign(-301f))), 432f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(695f, vec2<u32>(u_input.a, 4294967295u)), global0[_wgslsmith_index_u32(u_input.b, 14u)], any(vec2<bool>(false, false)), -23353i == arg_0.a.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(135f, -1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2235f, -1041f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(select(-1298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2388f) - -481f), all(vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -675f) + _wgslsmith_f_op_f32(-727f + 1184f)), _wgslsmith_f_op_f32(-1052f + 600f)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(1636f - var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(var_1.b.x * var_1.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    var var_0 = Struct_1(182f, -28674i, -vec2<i32>(-26595i, abs(0i) >> (abs(1u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(Struct_3(func_1(-2147483647i))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2093f) + -568f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-545f, -2433f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-352f)), 1458f)))));
    var var_1 = !any(vec2<bool>(!all(vec4<bool>(false, false, true, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))));
    let var_2 = 0i <= ~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.b, var_0.b), vec3<i32>(var_0.b, -27876i, -3269i)) << (27344u % 32u));
    let var_3 = var_0.d.zx;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(33880u), vec3<u32>(u_input.b, reverseBits(_wgslsmith_div_u32(func_2(-87221i, Struct_2(-786f, vec2<u32>(u_input.a, u_input.b))), 23200u)), u_input.a | 36073u));
}

