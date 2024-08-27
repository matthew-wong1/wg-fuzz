struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = max(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 73813u, 32935u), vec3<u32>(1u, 35301u, 52229u)), vec3<u32>(19978u, 63354u, 4294967295u)), ~reverseBits(1u)) >> (max(vec2<u32>(~71087u, 69881u), vec2<u32>(1u, 1u)) % vec2<u32>(32u)), vec2<u32>(~59641u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 5528u) & firstTrailingBit(vec2<u32>(6457u, 0u)), abs(vec2<u32>(0u, 61036u)))));
    global0 = !(!(!(any(vec3<bool>(true, true, false)) && all(vec3<bool>(false, false, true)))));
    let var_1 = arg_0;
    var var_2 = Struct_3(vec2<bool>(false, (true && all(vec4<bool>(true, false, false, false))) && any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))), var_1, Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(~1i, _wgslsmith_mod_i32(2147483647i, -20270i), var_1.b), vec3<i32>(-2147483647i, 30135i, -9386i) << (~vec3<u32>(var_0.x, 132597u, var_0.x) % vec3<u32>(32u))), _wgslsmith_sub_i32(u_input.a & firstTrailingBit(arg_0.b), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, var_1.b, 73824i)), u_input.b.xwx)), firstTrailingBit(-661i)));
    let var_3 = min((~_wgslsmith_div_i32(-1i, arg_0.c) << (abs(var_0.x) % 32u)) ^ var_1.b, reverseBits(41138i));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f), -1329f), -347f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-742f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 188f) + _wgslsmith_f_op_f32(trunc(240f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2012f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-408f * _wgslsmith_f_op_f32(f32(-1f) * -1179f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(752f - -1000f), 1537f)))));
}

fn func_2() -> u32 {
    global0 = _wgslsmith_dot_vec4_u32(max(~vec4<u32>(1u, 17035u, 0u, 4294967295u), ~(~vec4<u32>(4294967295u, 5755u, 74054u, 45949u))), abs(firstLeadingBit(vec4<u32>(12966u, 4294967295u, 4294967295u, 1u)))) == (~(~_wgslsmith_mult_u32(26413u, 39954u)) ^ ~_wgslsmith_clamp_u32(0u >> (1u % 32u), 47975u, 17613u));
    var var_0 = vec3<f32>(-1430f, 866f, _wgslsmith_f_op_f32(-1f));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1322f, _wgslsmith_f_op_f32(min(-511f, 586f)), _wgslsmith_f_op_f32(trunc(-654f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(u_input.b.xwy, 10171i, u_input.a))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -372f, var_0.x), vec3<f32>(-1000f, var_0.x, 689f), vec3<bool>(false, true, true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -545f, var_0.x) - vec3<f32>(1689f, -1117f, -224f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(257f, 1000f, 228f))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-357f, -800f))), -745f, -896f));
    var var_1 = Struct_4(vec3<bool>(true, !all(vec2<bool>(false, false)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true)))), -1i);
    var_1 = Struct_4(!var_1.a, ~var_1.b);
    return 10118u;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: i32) -> vec4<f32> {
    let var_0 = Struct_4(select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, true))), vec3<bool>(all(vec4<bool>(false, true, false, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), true)), abs(12526i));
    global0 = !var_0.a.x || true;
    global0 = _wgslsmith_f_op_f32(225f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(3099f, 525f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(173f - 761f), _wgslsmith_f_op_f32(-678f + 1304f))), false == all(vec2<bool>(false, true))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-723f, -894f)) - _wgslsmith_f_op_f32(-347f + 553f));
    global0 = any(vec4<bool>(var_0.a.x, all(!vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)), ~_wgslsmith_sub_i32(arg_3, var_0.b) == ~(i32(-1i) * -1i), true));
    global0 = true;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(226f * 1336f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1418f)) - _wgslsmith_f_op_f32(f32(-1f) * -669f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1483f, 741f)), _wgslsmith_f_op_f32(f32(-1f) * -1246f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(785f * -2331f), 685f, _wgslsmith_div_f32(-545f, -931f), _wgslsmith_f_op_f32(376f * -446f))), any(!vec2<bool>(var_0.a.x, var_0.a.x))))));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(0u, vec3<u32>(firstTrailingBit(~14525u), ~4294967295u, func_2()), arg_1.x, firstTrailingBit(firstLeadingBit(u_input.a)))) * vec4<f32>(arg_0, _wgslsmith_div_f32(arg_0, arg_0), -337f, -187f));
    let var_1 = select(select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), vec4<bool>(true, all(vec3<bool>(true, false, false)), true, _wgslsmith_f_op_f32(-1644f * var_0.x) >= 373f), false), vec4<bool>(true, !select(false, false, false) && true, (any(vec3<bool>(true, true, true)) | all(vec3<bool>(false, false, true))) & !any(vec3<bool>(false, true, true)), all(vec3<bool>(all(vec3<bool>(false, true, true)), true, any(vec4<bool>(true, false, true, true))))), true);
    global0 = !var_1.x;
    let var_2 = countOneBits(vec2<u32>(_wgslsmith_mult_u32(42615u, _wgslsmith_mod_u32(arg_1.x, _wgslsmith_clamp_u32(45727u, arg_1.x, arg_1.x))), ~arg_1.x));
    let var_3 = u_input.a;
    return Struct_1(u_input.b.wzx, max(var_3, 1i), ~(-46234i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(f32(-1f) * -305f), ~vec4<u32>(_wgslsmith_div_u32(21654u, 1u), 1u, _wgslsmith_mult_u32(1u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(14280u, 1u, 28321u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(~23628u, firstTrailingBit(26464u), 1u) | ~(~vec3<u32>(22892u, 4294967295u, 0u)), _wgslsmith_sub_vec3_u32(~firstTrailingBit(vec3<u32>(13645u, 75956u, 4294967295u)), ~vec3<u32>(49015u, 0u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - 1001f), 461f);
    var var_1 = _wgslsmith_div_f32(237f, _wgslsmith_f_op_f32(187f - -1000f));
    var_1 = var_0.d;
    var var_2 = select(u_input.a, _wgslsmith_dot_vec3_i32(u_input.b.xzx & _wgslsmith_mult_vec3_i32(~u_input.b.zzz, var_0.a.a), _wgslsmith_div_vec3_i32(~var_0.a.a ^ ~var_0.a.a, max(u_input.b.wyy, vec3<i32>(1i, 4269i, -2147483647i)) << (min(var_0.b, var_0.b) % vec3<u32>(32u)))), true);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(1095f - -294f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))) - var_0.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d);
}

