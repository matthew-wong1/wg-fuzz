struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-468f)), -396f))));
    var var_1 = any(select(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, false)), true, true, all(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)))), true));
    let var_2 = Struct_1(vec2<bool>(true, false), ~arg_0);
    var var_3 = _wgslsmith_mod_i32(~(-38833i), countOneBits(u_input.a));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(-868f, -849f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -1723f)))))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-965f + _wgslsmith_f_op_f32(floor(-1453f))))));
    return ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, var_2.b), vec2<u32>(27456u, 18718u)) | 13891u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(41836u, _wgslsmith_f_op_vec4_f32(vec4<f32>(905f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1680f - -324f))), 1f, 690f) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1076f + -186f)), -1483f, _wgslsmith_div_f32(447f, _wgslsmith_f_op_f32(f32(-1f) * -320f)), -119f)), select(func_3(arg_1, -vec3<i32>(0i, u_input.a, 2147483647i)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, 123206u), vec3<u32>(0u, 0u, arg_3.b)), !all(vec3<bool>(arg_3.a.x, arg_0.a.x, true))) == _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1, firstLeadingBit(61875u), 102392u), select(firstLeadingBit(vec3<u32>(46698u, 50643u, arg_0.b)), max(vec3<u32>(1u, 4294967295u, 39275u), vec3<u32>(arg_0.b, 57242u, arg_3.b)), select(vec3<bool>(arg_0.a.x, true, false), vec3<bool>(true, false, false), false))), !vec2<bool>(true, arg_3.a.x), arg_0);
    let var_1 = Struct_2(_wgslsmith_clamp_vec2_i32(arg_2.a, _wgslsmith_add_vec2_i32(vec2<i32>(-59408i, u_input.a) ^ arg_2.a, vec2<i32>(abs(-51731i), arg_2.a.x)), arg_2.a));
    var var_2 = 1u != arg_1;
    var var_3 = Struct_2(arg_2.a);
    var_0 = Struct_3(~(~(reverseBits(var_0.a) & _wgslsmith_div_u32(arg_0.b, var_0.e.b))), _wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(var_0.b.x, 1352f, -781f, 369f))), vec4<bool>(true, arg_0.a.x, arg_0.a.x, true))), arg_3.a.x, select(!vec2<bool>(false || arg_3.a.x, var_1.a.x < u_input.a), !select(vec2<bool>(false, false), vec2<bool>(false, false), select(arg_3.a, vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a.x)), true), arg_3);
    return Struct_1(vec2<bool>(!(!(false || var_0.c)), arg_3.a.x), ~1u);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = func_2(Struct_1(!vec2<bool>(!arg_0, true), 1u), 41197u, Struct_2(vec2<i32>(_wgslsmith_add_i32(u_input.a, 1i), -20i)), Struct_1(!vec2<bool>(!arg_0, any(vec2<bool>(true, arg_0))), ~1u));
    let var_1 = arg_1.a.x;
    var var_2 = Struct_2(vec2<i32>(~80642i, -_wgslsmith_mult_i32(u_input.a << (1u % 32u), u_input.a >> (8239u % 32u))));
    var_2 = arg_1;
    var var_3 = Struct_2(-vec2<i32>(var_1, u_input.a));
    return ~4294967295u;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = !(any(vec2<bool>(arg_0.a.x, false)) || arg_0.a.x);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(538f, 1526f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(856f, 1083f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(242f)))), -761f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(1041f * 398f))));
    let var_2 = Struct_3(arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 518f, var_1.x, var_1.x))))), arg_0.a.x, vec2<bool>(false, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 0u), vec2<u32>(61313u, 0u)) <= 26369u), arg_0);
    var_0 = var_2.a >= _wgslsmith_clamp_u32(~func_2(var_2.e, func_2(Struct_1(var_2.e.a, 4294967295u), arg_0.b, Struct_2(vec2<i32>(u_input.a, 53213i)), var_2.e).b, Struct_2(vec2<i32>(-2147483647i, -39642i)), Struct_1(vec2<bool>(var_2.d.x, false), 4109u)).b, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_2.e.b, 74824u, 15898u, var_2.a)), ~vec4<u32>(14357u, 3335u, 16542u, 0u)), firstLeadingBit(_wgslsmith_div_u32(arg_0.b >> (arg_0.b % 32u), ~4294967295u)));
    let var_3 = ~firstTrailingBit(select(~vec2<i32>(u_input.a, u_input.a), reverseBits(vec2<i32>(-1i, u_input.a)), arg_0.a.x)) | ~vec2<i32>(_wgslsmith_clamp_i32(u_input.a & 1i, _wgslsmith_div_i32(-24834i, u_input.a), u_input.a), -u_input.a << (1u % 32u));
    return Struct_3(~4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(min(var_2.b.x, 460f)), -1000f, _wgslsmith_f_op_f32(814f - var_1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_2.b.x, 1428f, var_2.b.x) * var_2.b))), _wgslsmith_f_op_vec4_f32(select(var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, var_1.x)))), select(all(vec2<bool>(arg_0.a.x, var_2.d.x)), arg_0.a.x, var_1.x > 898f)))), any(vec3<bool>(false, var_2.e.a.x, var_2.e.a.x)), arg_0.a, Struct_1(select(var_2.e.a, vec2<bool>(1u >= var_2.a, true), !vec2<bool>(false, arg_0.a.x)), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(vec2<bool>(true, true), ~_wgslsmith_div_u32(func_1(true, Struct_2(vec2<i32>(u_input.a, u_input.a))), _wgslsmith_sub_u32(1u, 0u))));
    var var_1 = ~vec4<u32>(30178u, var_0.a ^ ~firstLeadingBit(30467u), _wgslsmith_clamp_u32(min(var_0.a, var_0.a), 31629u, var_0.e.b) | max(1u, 57787u), var_0.e.b);
    var var_2 = Struct_2(select(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -48815i), max(vec2<i32>(u_input.a, -9545i), vec2<i32>(u_input.a, 19847i))), _wgslsmith_mult_vec2_i32(select(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, 33480i), var_0.d.x), ~vec2<i32>(-2147483647i, u_input.a)), var_0.d.x) & countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -18152i), vec2<i32>(u_input.a, u_input.a)) | countOneBits(vec2<i32>(-1i, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_1.xx), var_0.b.x);
}

