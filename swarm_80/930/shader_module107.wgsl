struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 560f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_2(true, 1u, 1u, (~vec3<u32>(1u, 1u, 1u) >> (abs(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))) | _wgslsmith_div_vec3_u32(vec3<u32>(~17913u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53958u, 12903u, 4294967295u), vec4<u32>(0u, 0u, 53980u, 0u)), 0u), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 64079u)), 4294967295u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1020f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(352f, -542f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-219f + 1068f) - _wgslsmith_f_op_f32(1165f - 1215f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -370f), 1332f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-970f, _wgslsmith_f_op_f32(sign(-498f)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1490f, var_1.x, any(vec4<bool>(false, var_0.a, arg_0, var_0.a)))), _wgslsmith_f_op_f32(var_1.x - 861f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(369f, _wgslsmith_div_f32(-627f, var_1.x)))) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f + _wgslsmith_f_op_f32(floor(var_1.x)))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))))), abs(firstTrailingBit(~vec4<u32>(var_0.b, 72526u, var_0.d.x, 1u))));
    let var_4 = false;
    return firstTrailingBit(firstLeadingBit(-1i));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = -_wgslsmith_div_i32(firstTrailingBit(-_wgslsmith_div_i32(u_input.a, arg_1.x)), 0i);
    var_0 = func_3(arg_0.b.x);
    var_0 = u_input.c.x;
    global0 = arg_0.d.x;
    var var_1 = !select(!(!(!vec4<bool>(false, false, true, arg_0.b.x))), select(!select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(true, arg_0.b.x, true, false), vec4<bool>(false, arg_0.b.x, true, arg_0.b.x)), !select(vec4<bool>(true, false, arg_0.b.x, false), vec4<bool>(arg_0.b.x, arg_0.b.x, true, false), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), vec4<bool>(all(vec4<bool>(true, arg_0.b.x, arg_0.b.x, true)), true, arg_0.b.x, arg_0.b.x)), any(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)) | all(vec2<bool>(true, arg_0.b.x)));
    return Struct_2(any(select(select(var_1.wyz, select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, var_1.x, arg_0.b.x), arg_0.b.x), true), vec3<bool>(var_1.x, any(var_1.yy), var_1.x), arg_0.b.x)), arg_0.c.x >> ((~firstTrailingBit(arg_0.a) ^ _wgslsmith_dot_vec4_u32(select(vec4<u32>(76571u, arg_0.c.x, 58647u, arg_0.a), vec4<u32>(1u, 23817u, 4294967295u, 29440u), true), ~vec4<u32>(arg_0.a, 4294967295u, arg_0.a, arg_0.a))) % 32u), firstLeadingBit(79533u), vec3<u32>(~arg_0.c.x, abs(28463u), arg_0.a));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec4<f32>(1170f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f)), -1731f);
    var var_1 = -countOneBits(u_input.c.x);
    let var_2 = Struct_3(arg_1.yz, select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(18300u, 10473u), min(vec2<u32>(arg_0.x, arg_2.b), vec2<u32>(74940u, 33424u))), _wgslsmith_dot_vec3_u32(arg_0, arg_2.d) ^ 16470u, arg_2.d.x, arg_0.x ^ (arg_2.d.x << (arg_0.x % 32u))), ~min(vec4<u32>(11337u, 1u, 10593u, 4999u), vec4<u32>(arg_2.c, 93918u, 4294967295u, arg_0.x) | vec4<u32>(4294967295u, arg_2.c, 16006u, arg_0.x)), false));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<u32> {
    var var_0 = !arg_3;
    var var_1 = vec4<bool>(select(true, all(arg_3) && true, !arg_3.x & (any(vec4<bool>(arg_1.a, false, arg_0.a, arg_1.a)) && !arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -257f)))) != -642f, arg_0.a, false);
    var_0 = var_1.zzw;
    var var_2 = arg_0;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-119f, -109f), vec2<f32>(310f, 527f)))))))), firstTrailingBit(vec4<u32>(min(_wgslsmith_sub_u32(4294967295u, 43045u), countOneBits(1u)), 20778u, arg_1.d.x, 679u)));
    return arg_1.d.zx >> (vec2<u32>(~select(arg_0.d.x & var_2.c, ~var_3.b.x, arg_0.a), var_3.b.x) % vec2<u32>(32u));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    global0 = -1980f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_2.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)))), true)) * 1492f);
    global0 = _wgslsmith_f_op_f32(step(arg_1.d.x, -1144f));
    var var_0 = reverseBits(vec2<u32>(4294967295u, 1u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x - arg_2.d.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1079f), _wgslsmith_f_op_f32(max(1638f, -1485f))))))) * _wgslsmith_f_op_f32(-194f + 1313f));
    return Struct_1(9919u, arg_1.b, reverseBits(arg_2.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.zy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.d.x, 1000f) * arg_1.d)) + _wgslsmith_f_op_vec2_f32(max(arg_2.d, vec2<f32>(arg_1.d.x, 611f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(571f, arg_3.x), vec2<f32>(arg_3.x, arg_1.d.x)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d.x, -739f), vec2<f32>(arg_3.x, arg_3.x)), _wgslsmith_f_op_vec2_f32(-arg_3.xz))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_3 {
    global0 = -273f;
    var var_0 = true;
    var_0 = true;
    let var_1 = func_6(select(~(~vec2<u32>(1u, 1u)), func_5(func_4(vec3<u32>(1u, 4294967295u, 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), func_2(Struct_1(36938u, vec2<bool>(true, false), vec3<u32>(22060u, 25771u, 70966u), arg_1), u_input.c.yy)), Struct_2(any(vec2<bool>(true, false)), 1u, _wgslsmith_div_u32(0u, 4294967295u), ~vec3<u32>(1u, 77241u, 4294967295u)), max(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), vec2<bool>(true, true)), Struct_1(0u, vec2<bool>(true, true), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -1936f) * arg_1)))), Struct_1(~(~0u), vec2<bool>(false, func_2(Struct_1(3095u, vec2<bool>(false, false), vec3<u32>(4294967295u, 4007u, 0u), arg_1), arg_0.yy).a), ~firstTrailingBit(~vec3<u32>(1546u, 4294967295u, 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.x, arg_1.x))), -262f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true)), _wgslsmith_f_op_f32(arg_1.x - arg_1.x), -601f, _wgslsmith_f_op_f32(arg_1.x + arg_1.x)), vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), arg_1.x, -287f, arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -312f, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1011f, 684f, -1758f) + vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), true))))));
    var var_2 = select(select(vec3<bool>(true, true, true), select(select(!vec3<bool>(true, var_1.b.x, var_1.b.x), vec3<bool>(var_1.b.x, var_1.b.x, true), select(vec3<bool>(var_1.b.x, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, var_1.b.x))), select(select(vec3<bool>(false, var_1.b.x, var_1.b.x), vec3<bool>(true, false, var_1.b.x), vec3<bool>(true, false, var_1.b.x)), vec3<bool>(var_1.b.x, true, var_1.b.x), true), !vec3<bool>(var_1.b.x, true, false)), false), !select(vec3<bool>(true, arg_2.x < -15980i, func_2(Struct_1(var_1.a, vec2<bool>(var_1.b.x, var_1.b.x), var_1.c, vec2<f32>(-416f, var_1.d.x)), arg_0.yx).a), select(vec3<bool>(true, false, var_1.b.x), !vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), all(vec3<bool>(false, true, false))), var_1.b.x), select(vec3<bool>(false, false, false), select(vec3<bool>(func_6(var_1.c.xz, var_1, Struct_1(var_1.c.x, var_1.b, vec3<u32>(4294967295u, 0u, var_1.a), vec2<f32>(arg_1.x, -228f)), vec4<f32>(arg_1.x, 826f, -1437f, var_1.d.x)).b.x, true, var_1.d.x > var_1.d.x), vec3<bool>(false, true, true), select(select(vec3<bool>(true, true, var_1.b.x), vec3<bool>(false, false, false), var_1.b.x), vec3<bool>(false, true, true), !var_1.b.x)), (var_1.b.x && false) & false));
    return Struct_3(arg_1, ~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(75252u, 1u, var_1.c.x, 12093u) ^ vec4<u32>(var_1.c.x, var_1.a, var_1.c.x, var_1.c.x), ~vec4<u32>(var_1.a, 59880u, var_1.a, var_1.a))));
}

fn func_7(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = ((30407u >> (_wgslsmith_div_u32(14836u, 36822u) % 32u)) <= _wgslsmith_dot_vec2_u32(~arg_2.b.wz, vec2<u32>(firstTrailingBit(arg_2.b.x), arg_2.b.x >> (24086u % 32u)))) && !(func_6(func_5(Struct_2(false, arg_2.b.x, 15360u, arg_2.b.yyz), Struct_2(false, 90633u, 4294967295u, arg_2.b.zyy), arg_2.b.xy, vec3<bool>(true, true, true)), Struct_1(arg_2.b.x, vec2<bool>(false, false), arg_2.b.xzy, arg_0.a), func_6(arg_2.b.yx, Struct_1(arg_0.b.x, vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, arg_0.b.x), arg_2.a), Struct_1(1u, vec2<bool>(true, false), vec3<u32>(4294967295u, arg_0.b.x, arg_0.b.x), arg_0.a), vec4<f32>(arg_2.a.x, arg_0.a.x, 1607f, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-286f, arg_2.a.x, 404f, -2077f), vec4<f32>(426f, arg_2.a.x, arg_2.a.x, arg_2.a.x), true))).b.x | (_wgslsmith_f_op_f32(1174f * 1070f) == arg_0.a.x));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, arg_1.x, abs(arg_1.x)), vec3<i32>(arg_1.x, -1i, ~u_input.d.x)), u_input.c), arg_1.x);
    global0 = 624f;
    var var_2 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(576f))));
    let var_3 = func_2(Struct_1(countOneBits(~arg_2.b.x), !(!vec2<bool>(var_0, var_0)), ~(vec3<u32>(arg_0.b.x, 0u, arg_2.b.x) ^ (arg_0.b.www | vec3<u32>(arg_2.b.x, arg_0.b.x, arg_2.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a)))), vec2<i32>(1i, -40564i));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, _wgslsmith_f_op_f32(-487f * _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x))), -1275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f;
    var_0 = -508f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -381f))));
    var var_1 = 11031i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_7(Struct_3(vec2<f32>(741f, 1505f), vec4<u32>(85667u, 0u, 27843u, 26454u)), u_input.c, func_1(u_input.c, vec2<f32>(-1245f, -242f), vec3<i32>(u_input.a, u_input.d.x, -2147483647i))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1577f, -1101f, 381f, 1742f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(-1952f + 891f), -474f, _wgslsmith_f_op_f32(trunc(1872f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, abs(1u), firstTrailingBit(24133u)), u_input.c.x, func_1(vec3<i32>(countOneBits(-5394i), _wgslsmith_mult_i32(-1i, 2147483647i), 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x))), -vec3<i32>(-u_input.c.x, ~0i, i32(-1i) * -49403i)).b.zxx, var_2.x, var_2.x);
}

