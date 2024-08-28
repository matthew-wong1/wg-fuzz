struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1063f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1070f * arg_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1782f, arg_0, 1289f, arg_0)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(627f, -437f, 2342f, -2297f), _wgslsmith_f_op_vec4_f32(vec4<f32>(2429f, arg_0, 1214f, arg_0) + vec4<f32>(-347f, arg_0, -1613f, arg_0)), vec4<bool>(false, true, false, false)))))));
    let var_1 = ~(~u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(852f, 1919f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-343f, -585f) - var_0.zz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(578f, 1106f) - _wgslsmith_f_op_vec2_f32(var_0.zz + var_0.yz)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))) + var_0.yx) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0))))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(221f, _wgslsmith_div_f32(var_0.x, -179f))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(384f)))) - -571f) + var_2.x);
    var var_4 = u_input.b.x;
    return min(vec4<u32>(~(~var_1), 28445u, 1u, ~reverseBits(u_input.a.x)), vec4<u32>(~(var_1 | var_1), 4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 36770u, 1u), vec3<u32>(40540u, 43595u, u_input.a.x)), ~0u), ~0u & var_1)) >> (reverseBits(firstLeadingBit(vec4<u32>(35493u, _wgslsmith_add_u32(67355u, 1u), _wgslsmith_add_u32(var_1, 0u), _wgslsmith_sub_u32(u_input.a.x, 4294967295u)))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(reverseBits(0u), ~countOneBits(0u)), _wgslsmith_dot_vec2_u32(select(firstLeadingBit(vec2<u32>(0u, u_input.a.x) | vec2<u32>(0u, 1u)), abs(~u_input.a), false), arg_1.xz));
    let var_1 = select(min(_wgslsmith_sub_vec4_u32(~vec4<u32>(47215u, u_input.a.x, u_input.a.x, arg_1.x), ~vec4<u32>(12340u, 19666u, arg_0.x, arg_0.x)), max(~(vec4<u32>(u_input.a.x, 35057u, arg_1.x, 35162u) >> (vec4<u32>(arg_0.x, 49008u, 61212u, 1u) % vec4<u32>(32u))), ~(vec4<u32>(26908u, arg_0.x, 100840u, arg_1.x) >> (vec4<u32>(u_input.a.x, 28245u, 47232u, 61289u) % vec4<u32>(32u))))), func_3(1815f) >> (vec4<u32>(min(~13991u, _wgslsmith_mult_u32(arg_0.x, arg_1.x)), arg_1.x ^ ~u_input.a.x, ~1u & firstTrailingBit(arg_0.x), arg_1.x >> ((arg_1.x & 1783u) % 32u)) % vec4<u32>(32u)), !vec4<bool>(!all(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), ~18662u < abs(u_input.a.x), false));
    var var_2 = Struct_2(31570u, vec3<u32>(~(~10492u) >> (_wgslsmith_sub_u32(~arg_1.x, min(64240u, 1u)) % 32u), 4294967295u, arg_0.x), arg_2.x, Struct_1(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1198f + -1201f), -2058f))), firstTrailingBit(vec4<i32>(1i, _wgslsmith_div_i32(2147483647i, 11762i), u_input.b.x << (u_input.a.x % 32u), min(-24825i, 0i)))));
    let var_3 = Struct_4(vec2<u32>(u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 51766u, 17854u), vec3<u32>(24738u, 5975u, var_1.x) ^ var_2.b) % 32u), ~_wgslsmith_mult_u32(14953u, 18711u)), u_input.b.xyw, vec2<i32>(_wgslsmith_dot_vec3_i32(min(var_2.d.c.zwx, var_2.d.c.zyw), firstTrailingBit(u_input.b.zyw)), 0i));
    let var_4 = Struct_1(var_2.d.a, -311f, min(vec4<i32>(max(var_3.c.x, _wgslsmith_add_i32(var_3.c.x, var_3.b.x)), abs(~9428i), -43665i ^ u_input.b.x, _wgslsmith_dot_vec2_i32(var_2.d.c.zw, u_input.b.yx & vec2<i32>(-1i, 37271i))), var_2.d.c));
    return ~35808u;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> Struct_4 {
    let var_0 = u_input.b.x;
    let var_1 = Struct_2(~arg_0.x, arg_0, ~_wgslsmith_add_i32(countOneBits(u_input.b.x) << (func_2(vec2<u32>(arg_0.x, arg_0.x), vec3<u32>(61682u, arg_0.x, arg_0.x), vec2<i32>(u_input.b.x, var_0)) % 32u), var_0), Struct_1(vec4<bool>(false, false, true, false), _wgslsmith_f_op_f32(sign(1844f)), vec4<i32>((-101i ^ u_input.b.x) >> (select(arg_0.x, arg_0.x, false) % 32u), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-87381i, 17866i, u_input.b.x, 2147483647i), vec4<i32>(-15505i, -43299i, 12461i, u_input.b.x))), 0i, u_input.b.x)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1312f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.b, arg_1))))) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 * -1278f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 + 696f), -835f, var_1.d.a.x || true)))), ~vec4<u32>(_wgslsmith_sub_u32(var_1.a, ~arg_0.x), reverseBits(1u), var_1.a, arg_0.x));
    var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1057f, _wgslsmith_f_op_f32(f32(-1f) * -504f)))), var_2.b);
    return Struct_4(~vec2<u32>(10184u, var_2.b.x), -u_input.b.xwx, _wgslsmith_mult_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(~vec2<i32>(1i, -1i), _wgslsmith_clamp_vec2_i32(u_input.b.wx, u_input.b.yz, var_1.d.c.ww))), vec2<i32>(-var_0, ~firstTrailingBit(u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    var var_1 = -u_input.b;
    var_0 = ~_wgslsmith_mult_u32(min(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(86351u, u_input.a.x, 59670u, u_input.a.x), ~vec4<u32>(u_input.a.x, 58692u, 1u, 0u))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(4294967295u, 4294967295u, u_input.a.x))));
    let var_2 = func_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(421f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-679f, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -213f)));
    var var_3 = 363f;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -703f))), -245f, 510f)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(u_input.b.x ^ _wgslsmith_mod_i32(59644i, -20360i), ~var_2.b.x, i32(-1i) * -u_input.b.x, u_input.b.x), ~u_input.b, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)))), min(~_wgslsmith_mod_u32(var_2.a.x, ~var_2.a.x), 43650u), ~(~(~(~u_input.a.x))));
}

