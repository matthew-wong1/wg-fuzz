struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> u32 {
    let var_0 = 1028f;
    var var_1 = abs(_wgslsmith_mult_i32(-612i, countOneBits(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(59618i, u_input.a.x, -1i))))));
    var var_2 = max(abs(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b, u_input.a.x, -25674i, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.b, 0i, u_input.b), vec4<i32>(1i, -1i, 0i, 0i), true), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(42444i, -21055i, 1i, -19116i), vec4<i32>(18021i, u_input.b, u_input.a.x, u_input.b), vec4<i32>(-25130i, -8002i, u_input.b, u_input.b)), countOneBits(vec4<i32>(u_input.a.x, u_input.b, u_input.b, 4140i) | vec4<i32>(u_input.b, 0i, u_input.b, 41992i)))), vec4<i32>(-1i, min(1i, firstTrailingBit(u_input.b)) | u_input.b, 28875i, u_input.b));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(960f, 549f, arg_0.b) * vec3<f32>(-1400f, -257f, -122f)) + vec3<f32>(arg_0.b, -1124f, arg_0.b))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1556f, arg_1, 872f))), (true && all(vec3<bool>(false, false, false))) || false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, arg_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1514f, arg_1)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 840f, arg_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 784f, -323f)))), true)))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.b)))))), _wgslsmith_f_op_f32(f32(-1f) * -141f));
    return ~_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec3_u32(abs(~arg_0.a.yzy), vec3<u32>(arg_0.a.x, _wgslsmith_div_u32(42070u, arg_2), u_input.c)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    global0 = arg_2.b;
    global0 = _wgslsmith_f_op_f32(353f - 1000f);
    global0 = 1311f;
    let var_0 = arg_2.a.zy;
    var var_1 = true;
    return -632f;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(509f, _wgslsmith_f_op_f32(select(-1238f, _wgslsmith_f_op_f32(-arg_0.x), true)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -2576f)));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(func_4(vec3<u32>(min(_wgslsmith_sub_u32(func_3(Struct_1(arg_1.a, arg_0.x, vec4<u32>(1u, 8686u, 24515u, var_1.a.x)), 1279f, var_1.a.x), u_input.c), firstLeadingBit(arg_1.c.x)), 4294967295u, firstTrailingBit(21120u)), -(~reverseBits(vec4<i32>(u_input.b, -39541i, u_input.a.x, -17983i)) | _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, -13337i, -36838i, 0i), vec4<i32>(u_input.a.x, -36123i, 33248i, 0i))), Struct_1(firstLeadingBit(vec4<u32>(firstLeadingBit(0u), 0u, ~26425u, var_1.a.x >> (0u % 32u))), _wgslsmith_f_op_f32(trunc(var_1.b)), ~(~(vec4<u32>(33592u, 64571u, u_input.c, 4294967295u) & var_1.c))), true));
    let var_3 = Struct_1(vec4<u32>(u_input.c, 1u, 1u, arg_2), _wgslsmith_f_op_f32(-arg_0.x), select(~vec4<u32>(_wgslsmith_sub_u32(arg_2, var_1.a.x), firstLeadingBit(1u), abs(u_input.c), var_1.c.x), var_1.a, true));
    var var_4 = Struct_1(~vec4<u32>(u_input.c, ~arg_2, 1u, ~_wgslsmith_mod_u32(60170u, arg_2)), var_1.b, arg_1.c);
    return _wgslsmith_f_op_f32(abs(var_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(166f, arg_0.b, -834f, 1211f) * vec4<f32>(1000f, 745f, 2074f, arg_0.b)), Struct_1(arg_0.c, 1236f, vec4<u32>(1u, 35696u, u_input.c, u_input.c)), 54753u))) - _wgslsmith_f_op_f32(round(728f))));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(496f))), -219f)))), 238f));
    global0 = arg_0.b;
    var var_0 = Struct_1(vec4<u32>(~1u, 0u, u_input.c, func_3(arg_0, 1f, u_input.c)), arg_0.b, arg_0.a);
    var_0 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(577f))) + _wgslsmith_f_op_f32(func_4(var_0.c.zzw, select(max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(0i, -1i, u_input.a.x, 1i)), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -66758i), var_0.b <= arg_0.b) & _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, -21438i, u_input.b, 20397i), vec4<i32>(-1i, -19842i, -2147483647i, 56122i)), Struct_1(vec4<u32>(0u, min(2068u, arg_0.a.x), 21357u, arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b, arg_0.b))), vec4<u32>(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x), _wgslsmith_sub_u32(arg_0.c.x, var_0.a.x), arg_1.x, ~41351u)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(753f, 1001f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(0u, 614u, u_input.c, 47734u), 1000f, vec4<u32>(u_input.c, 0u, 0u, 9854u)), vec2<u32>(u_input.c, 4294967295u)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f), 1f)), false))));
    var var_0 = false;
    var var_1 = Struct_1(vec4<u32>(u_input.c & firstLeadingBit(~u_input.c), _wgslsmith_sub_u32(1u, func_3(Struct_1(vec4<u32>(52507u, 28951u, u_input.c, u_input.c), 1000f, vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_div_u32(1u, 1u))), max(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 40068u, 4294967295u) ^ vec4<u32>(87411u, 0u, 0u, 1145u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)))), u_input.c), _wgslsmith_f_op_f32(810f + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) - _wgslsmith_f_op_f32(-1719f * -1000f)))), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(32729u, u_input.c, u_input.c), ~vec3<u32>(u_input.c, u_input.c, 24507u)), func_3(Struct_1(vec4<u32>(1u, u_input.c, 18238u, 8383u), -1000f, vec4<u32>(u_input.c, u_input.c, 70865u, u_input.c)), _wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(u_input.c, 1u, 4294967295u, u_input.c), 853f, vec4<u32>(59280u, u_input.c, u_input.c, 48568u)), vec2<u32>(31751u, 1u))), _wgslsmith_mod_u32(0u, u_input.c)), abs(97345u) >> (~u_input.c % 32u), u_input.c)));
    var_0 = any(vec3<bool>(false, all(vec3<bool>(true, true, true)), true));
    global0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 1000f, -924f, var_1.b))))), Struct_1(vec4<u32>(14830u, var_1.c.x, 4294967295u, ~var_1.a.x), var_1.b, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(var_1.a | vec4<u32>(1u, 44643u, u_input.c, var_1.a.x), ~var_1.c), vec4<u32>(1u, 30380u, 0u, var_1.a.x) << (vec4<u32>(1u, 4294967295u, 25529u, 11691u) % vec4<u32>(32u)))), _wgslsmith_add_u32(var_1.c.x, abs(~_wgslsmith_div_u32(var_1.c.x, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u >> (1u % 32u), ~80112u), _wgslsmith_sub_u32(u_input.c ^ u_input.c, ~var_1.a.x)), !any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))), -8947i, (abs(vec3<i32>(1i, -1i, -8623i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(54161u, var_1.a.x, u_input.c), var_1.a.zwy) % vec3<u32>(32u))) & vec3<i32>(2147483647i, select(-u_input.a.x, firstTrailingBit(u_input.a.x), any(vec2<bool>(false, true))), _wgslsmith_mod_i32(0i, -1i)), reverseBits(-_wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(u_input.b))));
}

