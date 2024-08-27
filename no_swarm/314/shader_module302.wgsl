struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> vec3<u32> {
    var var_0 = select(false, true && any(select(select(vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, false, arg_0.a, arg_0.a)), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), true)), arg_0.a);
    let var_1 = _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(arg_0.d.xz, vec2<u32>(arg_1 << (1u % 32u), u_input.c))) << (~(~_wgslsmith_add_u32(~arg_0.b, arg_1 << (4294967295u % 32u))) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1440f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_0.e) * _wgslsmith_f_op_f32(trunc(1040f)))), _wgslsmith_div_f32(-1927f, arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(637f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(410f, -751f, 1375f, -633f)))) - vec4<f32>(1416f, _wgslsmith_f_op_f32(611f * 2233f), arg_2.x, 884f)) - vec4<f32>(_wgslsmith_f_op_f32(1000f - arg_0.e), arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.x + 359f))), arg_0.e)), select(!vec4<bool>(arg_0.a, arg_0.a, false || arg_0.a, arg_0.a), vec4<bool>(all(vec4<bool>(false, arg_0.a, arg_0.a, false)), any(vec2<bool>(arg_0.a, arg_0.a)), true, arg_2.x < 1000f), all(select(vec2<bool>(arg_0.a, true), vec2<bool>(true, false), any(vec2<bool>(false, true)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(111f)), _wgslsmith_div_f32(arg_2.x, 680f), _wgslsmith_f_op_f32(abs(2169f)), _wgslsmith_f_op_f32(ceil(1597f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, -251f, arg_0.e, arg_0.e))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))), _wgslsmith_f_op_f32(sign(-132f)), arg_0.e, var_2.x), !(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))))), 1898f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(160f))), 631f));
    var var_3 = Struct_4(17631i, ~firstTrailingBit(4294967295u & reverseBits(arg_0.d.x)));
    return abs(~_wgslsmith_div_vec3_u32(arg_0.d, max(~vec3<u32>(4294967295u, arg_1, 8910u), vec3<u32>(var_3.b, arg_0.b, 0u))));
}

fn func_2() -> vec2<i32> {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(min(reverseBits(~vec3<u32>(u_input.a, 6592u, 4294967295u)), _wgslsmith_mult_vec3_u32(func_3(Struct_1(true, 1u, 1i, vec3<u32>(u_input.c, 1u, 1u), -1049f), u_input.a, vec2<f32>(-3249f, 1124f)), select(vec3<u32>(u_input.c, u_input.c, 40904u), vec3<u32>(u_input.c, 1u, 0u), vec3<bool>(true, false, true)))), ~(~vec3<u32>(u_input.c, 1u, u_input.a)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.c), abs(vec3<u32>(1u, 4294967295u, u_input.c)))), abs(113020u), 0u);
    var var_1 = ~_wgslsmith_dot_vec2_u32(var_0.xz, ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 2840u) | var_0.yz, firstTrailingBit(var_0.yy)));
    var_0 = vec3<u32>(~_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.a, 0u), abs(1u)), ~_wgslsmith_dot_vec2_u32(abs(firstTrailingBit(vec2<u32>(u_input.a, 99869u))), vec2<u32>(u_input.a, var_0.x & var_0.x)), var_0.x);
    var_1 = func_3(Struct_1(true, ~min(~32605u, var_0.x), ~u_input.b, vec3<u32>(_wgslsmith_add_u32(u_input.c, u_input.a) >> (firstTrailingBit(var_0.x) % 32u), reverseBits(919u), reverseBits(0u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1704f)) - -333f)))), 30459u, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-691f, -1333f), _wgslsmith_f_op_f32(select(-1619f, -1000f, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-962f, 1055f, true)), _wgslsmith_f_op_f32(-640f * -1519f), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-649f)) * _wgslsmith_f_op_f32(f32(-1f) * -399f))))).x;
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(abs(var_0.x), reverseBits(var_0.x)), var_0.x, u_input.c, var_0.x) | (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c, var_0.x, u_input.a), vec4<u32>(u_input.a, 0u, var_0.x, u_input.a)) << (vec4<u32>(1u, firstLeadingBit(0u), 104207u, max(0u, u_input.c)) % vec4<u32>(32u))), ~(~(~(~vec4<u32>(29706u, 37354u, var_0.x, var_0.x)))));
    return ~(abs(vec2<i32>(firstTrailingBit(25063i), i32(-1i) * -2147483647i)) | select(vec2<i32>(u_input.b | 23530i, u_input.b), -vec2<i32>(16201i, u_input.b), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mod_vec2_i32(-func_2(), vec2<i32>(u_input.b, func_2().x)), vec2<i32>(u_input.b, i32(-1i) * -u_input.b));
    var var_1 = false;
    var var_2 = Struct_1(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(10838u, u_input.a, !(false && (u_input.c < 4294967295u))), u_input.b, ~vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1500f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-508f))))));
    let var_3 = vec3<bool>(any(!select(!vec3<bool>(true, var_2.a, var_2.a), !vec3<bool>(false, true, var_2.a), var_2.a)), all(select(!vec4<bool>(false, false, var_2.a, false), !vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a), !var_2.a)) && var_2.a, !all(select(vec3<bool>(true, true, var_2.a), select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(var_2.a, var_2.a, true), vec3<bool>(var_2.a, false, var_2.a)), false)));
    var var_4 = 766f;
    return Struct_1(var_2.a, 0u, ~var_0.b.x, vec3<u32>(select(~u_input.c ^ _wgslsmith_dot_vec2_u32(vec2<u32>(11027u, var_2.d.x), vec2<u32>(0u, u_input.a)), 4294967295u, any(select(var_3, vec3<bool>(var_2.a, var_2.a, var_2.a), false))), 4294967295u, var_2.b), var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_mult_vec4_i32(firstLeadingBit(select(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, -14826i), vec4<i32>(1i, 2147483647i, -2147483647i, 1i)) & max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, -7236i, u_input.b), vec4<i32>(-62946i, u_input.b, 1i, u_input.b))), !all(vec3<bool>(false, false, true)))), ~abs(firstLeadingBit(firstTrailingBit(vec4<i32>(-1i, u_input.b, -10997i, 2147483647i)))));
    let var_2 = Struct_3(func_1(), max(~_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(u_input.a, 12775u)), ~vec2<u32>(37180u, 4294967295u)), vec2<u32>(17945u, ~u_input.c)));
    let var_3 = Struct_4((firstTrailingBit(var_2.a.c) ^ u_input.b) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, var_2.b.x) >> (~var_2.a.b % 32u), _wgslsmith_clamp_u32(abs(32970u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.d.x, 43313u), vec2<u32>(u_input.c, var_2.b.x)), reverseBits(1u))) % 32u), var_2.b.x);
    var var_4 = Struct_1(var_2.a.a, var_3.b, var_2.a.c, _wgslsmith_div_vec3_u32(abs(~(~vec3<u32>(28864u, u_input.a, u_input.c))), ~var_2.a.d), _wgslsmith_f_op_f32(f32(-1f) * -900f));
    var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(var_4.c, -32706i, var_2.a.c, select(593i, ~1i, var_4.a == true)), -(~abs(~vec4<i32>(var_2.a.c, -1i, var_4.c, -31367i))), abs((firstTrailingBit(vec4<i32>(var_4.c, var_1.x, 0i, -7539i)) ^ ~vec4<i32>(var_3.a, -11000i, u_input.b, var_3.a)) >> (firstLeadingBit(~vec4<u32>(var_3.b, var_4.b, u_input.a, var_2.a.d.x)) % vec4<u32>(32u))));
    let var_5 = _wgslsmith_f_op_f32(514f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(2380f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_5), -1000f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(349f + 1633f))) - _wgslsmith_f_op_f32(min(-287f, _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_div_f32(-1365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1445f)) - 1298f)), _wgslsmith_div_f32(var_5, -890f)), vec2<i32>(u_input.b, var_3.a));
}

