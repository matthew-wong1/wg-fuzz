struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_1(arg_2.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c, arg_3.c, -1927f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c, -643f, -380f) + vec3<f32>(-176f, 743f, arg_2.c))))), -1454f);
    var var_1 = vec2<u32>(~4294967295u, arg_2.b.x);
    let var_2 = arg_1.xx;
    var var_3 = !var_2;
    var var_4 = ~_wgslsmith_mod_u32(abs(~(~0u)), ~_wgslsmith_dot_vec2_u32(arg_3.b.zx, arg_2.b.xy));
    return arg_2;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(0i, -(~0i)), 0i, u_input.b), ~vec3<i32>(i32(-1i) * -2147483647i, ~arg_1.a, -1i));
    let var_1 = arg_0.b.x;
    let var_2 = vec2<i32>(-arg_0.a, 2147483647i) >> (arg_1.b.xy % vec2<u32>(32u));
    var var_3 = func_2(-firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_2.x, u_input.a.x, 1685i), vec4<i32>(43585i, arg_1.a, arg_0.a, 2147483647i), vec4<i32>(arg_1.a, var_2.x, arg_1.a, arg_1.a)), vec4<i32>(2147483647i, var_2.x, arg_1.a, -1i) | vec4<i32>(arg_1.a, 2147483647i, 2147483647i, -2147483647i))), select(select(select(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), !vec4<bool>(arg_2.x, true, false, true), select(vec4<bool>(false, true, arg_2.x, true), vec4<bool>(arg_2.x, false, true, arg_2.x), vec4<bool>(false, false, false, false))), select(!vec4<bool>(false, arg_2.x, arg_2.x, true), !vec4<bool>(true, true, true, arg_2.x), false & arg_2.x), true), !select(!vec4<bool>(arg_2.x, true, true, false), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(true, arg_2.x, false, arg_2.x), vec4<bool>(false, true, false, arg_2.x)), arg_2.x), false), func_2(vec4<i32>(-9068i, func_2(_wgslsmith_div_vec4_i32(vec4<i32>(17561i, u_input.b, 52815i, arg_1.a), vec4<i32>(6792i, -2147483647i, arg_0.a, u_input.b)), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(false, true, arg_2.x, false), arg_2.x), Struct_4(arg_1.a, arg_0.b, 1000f), Struct_4(-70646i, vec3<u32>(arg_1.b.x, 4294967295u, 67874u), arg_1.c)).a, min(~var_2.x, -31755i), _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(-25307i, -11718i))), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(arg_2.x, false, false, false), false), select(vec4<bool>(false, false, arg_2.x, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), arg_2.x), any(vec4<bool>(false, false, true, arg_2.x))), !vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(all(vec2<bool>(true, arg_2.x)), any(vec2<bool>(false, arg_2.x)), arg_2.x, !arg_2.x)), Struct_4(arg_1.a >> (abs(var_1) % 32u), ~(~vec3<u32>(1u, var_1, arg_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -694f)), func_2(select(-vec4<i32>(arg_1.a, 2796i, arg_0.a, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a, -44111i, 8248i, var_2.x), vec4<i32>(14606i, 66577i, u_input.b, -32302i)), vec4<bool>(true, true, true, true)), !(!vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x)), arg_0, func_2(vec4<i32>(arg_1.a, -2147483647i, u_input.b, -18777i) << (vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_1.b.x) % vec4<u32>(32u)), !vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), arg_0, Struct_4(0i, arg_1.b, 418f)))), arg_1);
    let var_4 = Struct_2(_wgslsmith_dot_vec4_u32(~(firstTrailingBit(vec4<u32>(74002u, 17161u, 1u, 21905u)) | vec4<u32>(arg_1.b.x, 4967u, var_3.b.x, 4294967295u)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, var_3.b.x, 1385u), ~vec4<u32>(4294967295u, 26235u, 39848u, 46824u)))), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(var_2, u_input.a.xx)), vec2<i32>(arg_0.a, 33240i | arg_0.a))), _wgslsmith_div_u32(reverseBits(1u | arg_0.b.x) << (var_1 % 32u), firstLeadingBit(12491u)));
    return vec4<i32>(_wgslsmith_div_i32(20304i, 59193i), -abs(-(i32(-1i) * -2147483647i)), ~(~64826i ^ _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-1i, var_4.b))) << (countOneBits(arg_0.b.x) % 32u), -1i);
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = select(vec4<i32>(arg_0, _wgslsmith_mod_i32(24681i ^ arg_0, arg_0) | arg_0, u_input.b, -_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 0i, arg_0), firstLeadingBit(vec3<i32>(arg_0, arg_0, arg_0)))), _wgslsmith_mod_vec4_i32(countOneBits(min(vec4<i32>(55426i, u_input.b, 0i, arg_0), -vec4<i32>(-2147483647i, 0i, arg_0, arg_0))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-50937i, -2147483647i, abs(arg_0), -2147483647i), vec4<i32>(-1i, arg_0, 48111i, -1060i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(9608i, 0i, u_input.b, arg_0), vec4<i32>(5876i, -131i, arg_0, -2147483647i))))), false);
    var_0 = ~(~_wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, -2147483647i, var_0.x), vec4<i32>(arg_0, -1i, var_0.x, u_input.a.x)), -vec4<i32>(0i, u_input.a.x, 12810i, var_0.x) >> (vec4<u32>(4294967295u, 4294967295u, 64189u, 86311u) % vec4<u32>(32u))));
    var_0 = func_3(Struct_4(var_0.x, ~vec3<u32>(1u, 0u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1169f, -575f)))), func_2(vec4<i32>(_wgslsmith_mod_i32(-1i, var_0.x), -var_0.x, var_0.x ^ var_0.x, _wgslsmith_mod_i32(-5733i, var_0.x)), vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, true), Struct_4(u_input.b, vec3<u32>(1u, 1u, 1u), 328f), Struct_4(var_0.x << (51527u % 32u), vec3<u32>(1u, 1u, 1u), _wgslsmith_div_f32(-780f, 204f))), vec3<bool>(true, true, true)) >> (~vec4<u32>(_wgslsmith_clamp_u32(73264u, 1u, _wgslsmith_div_u32(1u, 42693u)), ~1u, _wgslsmith_mod_u32(4294967295u, 1u), ~firstLeadingBit(1u)) % vec4<u32>(32u));
    var var_1 = Struct_3(select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), vec3<bool>(true, true, true)), !(!select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec3<bool>(true, true, false)))), all(vec2<bool>(true, true)), Struct_1(1u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1017f, 148f, 431f)))), _wgslsmith_f_op_f32(round(1f))), 1f);
    let var_2 = !vec4<bool>(10301i > var_0.x, true, var_1.a.x || true, false);
    return func_2(-max(vec4<i32>(~50322i, abs(11814i), ~1i, _wgslsmith_sub_i32(u_input.a.x, -1i)), firstTrailingBit(-vec4<i32>(-48077i, u_input.a.x, -2147483647i, arg_0))), var_2, Struct_4(-8605i, vec3<u32>(~var_1.d.a, ~(~4294967295u), ~var_1.d.a), 1f), Struct_4(func_3(Struct_4(0i, vec3<u32>(var_1.d.a, var_1.d.a, 39724u), -415f), Struct_4(u_input.a.x, vec3<u32>(41830u, 10064u, var_1.d.a), var_1.d.c), vec3<bool>(var_1.a.x, var_1.c, var_2.x)).x << (34700u % 32u), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(40223u, 30378u, 0u), firstLeadingBit(vec3<u32>(4294967295u, var_1.d.a, 71253u))), var_1.d.c));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1058f, arg_0.c, -1113f, -1000f), vec4<f32>(arg_0.c, arg_2.c, arg_0.c, arg_2.c)))))));
    var var_1 = func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_2.a, -487i, -1i, arg_0.a), vec4<i32>(-2147483647i, arg_0.a, u_input.a.x, -2147483647i)) >> (firstLeadingBit(vec4<u32>(arg_2.b.x, arg_2.b.x, 28888u, arg_3.d.a)) % vec4<u32>(32u)), -(~(vec4<i32>(arg_0.a, arg_2.a, arg_0.a, -46344i) & vec4<i32>(37054i, 1i, -89447i, 0i)))), vec4<bool>(select(arg_3.a.x, true, any(vec4<bool>(arg_3.b.x, false, arg_3.b.x, false))) && !(-53202i > u_input.a.x), !(!arg_3.b.x | arg_3.a.x), false, any(vec2<bool>(any(vec2<bool>(arg_3.b.x, arg_3.b.x)), all(vec4<bool>(arg_3.c, arg_3.a.x, arg_3.a.x, arg_3.c))))), Struct_4(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, 2147483647i), 1i), _wgslsmith_clamp_i32(16415i, -44381i, -2147483647i) | firstTrailingBit(1i)), ~max(arg_2.b ^ arg_0.b, arg_2.b), -139f), func_1(~(-2147483647i)));
    var var_2 = Struct_4(arg_0.a, ~var_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(780f))))), var_1.c)));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)));
    var_1 = arg_0;
    return arg_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(-(~u_input.a.x)), Struct_1(66205u << (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 7107u), vec2<u32>(0u, 1u)) % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(941f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1870f * -1397f))), _wgslsmith_f_op_f32(f32(-1f) * -877f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(945f, -2100f)) - 1872f)), func_1(func_1(u_input.a.x).a), Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true)), Struct_1(func_1(_wgslsmith_mod_i32(u_input.a.x, 79968i)).b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(249f, -1130f, 1131f)), vec3<f32>(1071f, 1000f, -185f)), 121f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -966f) - 192f)));
    var_0 = func_4(Struct_4(countOneBits(u_input.b << (var_0.a % 32u)) << (~var_0.a % 32u), ~vec3<u32>(23638u | var_0.a, abs(32074u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(4294967295u, 30505u, var_0.a))), -551f), func_4(func_2(vec4<i32>(firstTrailingBit(u_input.a.x), 0i, u_input.a.x, ~(-2147483647i)), vec4<bool>(true, true, true, true), func_2(abs(vec4<i32>(u_input.a.x, -2786i, u_input.a.x, u_input.a.x)), vec4<bool>(true, true, true, true), Struct_4(-37457i, vec3<u32>(4294967295u, 4294967295u, 4294967295u), 881f), Struct_4(-10531i, vec3<u32>(var_0.a, var_0.a, var_0.a), var_0.b.x)), func_2(select(vec4<i32>(u_input.a.x, u_input.b, 53765i, -43339i), vec4<i32>(u_input.b, u_input.a.x, -2147483647i, u_input.a.x), true), vec4<bool>(true, true, true, true), func_1(0i), func_2(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 0i), vec4<bool>(false, true, false, false), Struct_4(-1i, vec3<u32>(0u, 12409u, var_0.a), -493f), Struct_4(u_input.b, vec3<u32>(4294967295u, 1u, var_0.a), var_0.b.x)))), func_4(func_1(u_input.b), Struct_1(func_2(vec4<i32>(u_input.b, u_input.b, 2147483647i, 2147483647i), vec4<bool>(false, false, false, true), Struct_4(-1i, vec3<u32>(var_0.a, 35493u, 0u), -418f), Struct_4(-1i, vec3<u32>(4294967295u, 86116u, 1u), var_0.b.x)).b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 555f, 809f) + vec3<f32>(var_0.b.x, var_0.b.x, -1555f)), 437f), func_2(~vec4<i32>(u_input.a.x, -262i, u_input.b, u_input.a.x), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), Struct_4(34486i, vec3<u32>(39424u, 0u, var_0.a), 785f), Struct_4(33030i, vec3<u32>(0u, var_0.a, var_0.a), var_0.b.x)), Struct_3(vec3<bool>(false, false, false), vec2<bool>(true, true), true, func_4(Struct_4(u_input.a.x, vec3<u32>(6817u, var_0.a, var_0.a), -154f), Struct_1(39613u, vec3<f32>(var_0.b.x, var_0.c, -1340f), 945f), Struct_4(0i, vec3<u32>(var_0.a, 4294967295u, 110900u), var_0.c), Struct_3(vec3<bool>(false, true, true), vec2<bool>(true, false), true, Struct_1(0u, var_0.b, var_0.b.x), var_0.b.x)), var_0.c)), func_1(u_input.b), Struct_3(vec3<bool>(true, true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), false), any(vec4<bool>(false, false, true, true)) & false, func_4(Struct_4(u_input.a.x, vec3<u32>(31873u, var_0.a, 4294967295u), var_0.b.x), func_4(Struct_4(u_input.b, vec3<u32>(var_0.a, 39806u, 1u), var_0.c), Struct_1(var_0.a, var_0.b, 282f), Struct_4(-24498i, vec3<u32>(0u, var_0.a, 20107u), var_0.b.x), Struct_3(vec3<bool>(false, true, false), vec2<bool>(true, false), false, Struct_1(4861u, var_0.b, var_0.b.x), 167f)), Struct_4(u_input.b, vec3<u32>(var_0.a, 0u, var_0.a), -448f), Struct_3(vec3<bool>(true, true, false), vec2<bool>(false, false), false, Struct_1(var_0.a, var_0.b, -848f), var_0.b.x)), -1047f)), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(func_1(0i).a, u_input.a.x, abs(u_input.a.x), 32227i), vec4<i32>(-1i) * -vec4<i32>(u_input.b, -18057i, -57682i, u_input.a.x)), vec4<bool>(true, false || (-573f < var_0.b.x), any(vec4<bool>(true, true, false, false)), false), Struct_4(func_3(Struct_4(2147483647i, vec3<u32>(37110u, var_0.a, var_0.a), -1216f), func_1(u_input.b), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)).x, countOneBits(vec3<u32>(var_0.a, 96074u, var_0.a)), var_0.b.x), func_1(u_input.a.x)), Struct_3(vec3<bool>(select(true, true, all(vec3<bool>(true, false, false))), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), true), vec2<bool>(all(vec2<bool>(true, true)), (var_0.b.x <= -714f) & false), !(~var_0.a == reverseBits(0u)), Struct_1(0u, _wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(746f, var_0.b.x)), 952f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c, 985f)) * var_0.c)))));
    var var_1 = ~(~(-14825i));
    var_1 = u_input.b;
    let var_2 = func_4(func_2(_wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(124703i, u_input.a.x, u_input.b, 1i), vec4<i32>(u_input.b, -54345i, 19904i, -34919i))), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.b, u_input.b, -1i)), vec4<bool>(all(vec4<bool>(true, false, true, false)) | true, ~var_0.a < 10539u, true, -1521f >= var_0.c), Struct_4(func_1(~(-1i)).a, ~(~vec3<u32>(var_0.a, var_0.a, 4294967295u)), var_0.b.x), Struct_4(_wgslsmith_clamp_i32(~u_input.a.x, 11470i << (var_0.a % 32u), ~(-35346i)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 25737u, 75142u), select(vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(var_0.a, 37584u, 4294967295u), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(reverseBits(min(var_0.a, 62892u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), -301f, _wgslsmith_f_op_f32(var_0.c + -783f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * var_0.b.x) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(826f, -174f), func_4(Struct_4(u_input.b, vec3<u32>(var_0.a, 4294967295u, 1u), var_0.b.x), Struct_1(4294967295u, var_0.b, -728f), Struct_4(u_input.b, vec3<u32>(38908u, 10561u, 1572u), -161f), Struct_3(vec3<bool>(true, false, true), vec2<bool>(true, false), true, Struct_1(0u, var_0.b, -534f), -190f)).c, true)))), Struct_4(2147483647i, vec3<u32>(~var_0.a, ~0u, ~var_0.a) << (max(vec3<u32>(var_0.a, var_0.a, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, var_0.a), vec3<u32>(0u, 1u, 6442u), vec3<u32>(11827u, 20226u, 4294967295u))) % vec3<u32>(32u)), -456f), Struct_3(select(vec3<bool>(true, true, var_0.a != 2745u), vec3<bool>(true, true, false), false), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, true), all(vec4<bool>(true, false, true, true))), all(vec2<bool>(true, true))), ~var_0.a >= ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 101013u, 61822u, var_0.a), vec4<u32>(4294967295u, 54057u, var_0.a, 4294967295u)), func_4(func_1(u_input.a.x), func_4(Struct_4(14217i, vec3<u32>(var_0.a, var_0.a, var_0.a), var_0.c), Struct_1(66421u, var_0.b, -334f), Struct_4(u_input.a.x, vec3<u32>(var_0.a, 33816u, 1u), -314f), Struct_3(vec3<bool>(true, false, false), vec2<bool>(false, false), false, Struct_1(675u, vec3<f32>(-1545f, var_0.b.x, 645f), 514f), 219f)), func_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<bool>(true, false, true, true), func_2(vec4<i32>(62173i, -2147483647i, u_input.b, 1i), vec4<bool>(false, false, false, false), Struct_4(u_input.b, vec3<u32>(13133u, 31023u, 29124u), 1000f), Struct_4(u_input.a.x, vec3<u32>(var_0.a, var_0.a, 4294967295u), var_0.c)), Struct_4(29649i, vec3<u32>(0u, 36377u, 47363u), var_0.b.x)), Struct_3(vec3<bool>(false, true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true, Struct_1(35662u, var_0.b, -320f), var_0.c)), var_0.b.x));
    let var_3 = Struct_3(select(vec3<bool>(true, select(any(vec2<bool>(false, true)), true, select(true, false, true)), any(vec4<bool>(false, true, false, false))), vec3<bool>(true, all(vec2<bool>(true, true)), true & any(vec4<bool>(true, false, false, false))), !all(vec3<bool>(false, true, false)) | false), vec2<bool>(all(vec3<bool>(true, any(vec4<bool>(true, false, true, false)), select(false, false, false))), all(vec4<bool>(true, true, true, var_0.a < 4281u))), true, var_2, _wgslsmith_f_op_f32(521f + 968f));
    var var_4 = func_2(abs(firstTrailingBit(vec4<i32>(-1i, ~u_input.b, -39830i, ~u_input.b))), vec4<bool>(-686f == _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.d.c, var_0.b.x), 301f)), false, true, var_3.b.x), func_1(-func_1(u_input.a.x).a), Struct_4(u_input.b, vec3<u32>(~_wgslsmith_div_u32(var_0.a, 19234u), var_3.d.a, func_4(func_2(vec4<i32>(33721i, 1i, -2147483647i, 1639i), vec4<bool>(true, false, false, false), Struct_4(0i, vec3<u32>(4294967295u, 102899u, var_2.a), var_0.c), Struct_4(u_input.b, vec3<u32>(31228u, 0u, 1u), var_2.b.x)), func_4(Struct_4(-1i, vec3<u32>(var_0.a, 17596u, 0u), -109f), Struct_1(92319u, vec3<f32>(124f, -1347f, var_0.b.x), var_0.c), Struct_4(u_input.a.x, vec3<u32>(1u, 4294967295u, 1u), -1609f), var_3), func_1(u_input.b), var_3).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1362f)))).b.yz;
    let var_5 = Struct_1(_wgslsmith_dot_vec2_u32(~(~firstLeadingBit(vec2<u32>(4294967295u, var_3.d.a))), ~vec2<u32>(max(var_3.d.a, 12909u), 4294967295u ^ var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b + var_3.d.b)), var_3.d.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

