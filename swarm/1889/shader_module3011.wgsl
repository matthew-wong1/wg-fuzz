struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(2147483647i, -1i, Struct_1(-404f, vec2<bool>(true, true), true, true, 0u)), Struct_2(-33696i, 29922i, Struct_1(-469f, vec2<bool>(false, false), true, true, 4294967295u)), Struct_2(i32(-2147483648), 62736i, Struct_1(-1275f, vec2<bool>(true, false), true, true, 66989u)), Struct_2(1i, i32(-2147483648), Struct_1(-875f, vec2<bool>(true, true), false, false, 1u)), Struct_2(2147483647i, 2147483647i, Struct_1(1000f, vec2<bool>(false, true), true, true, 18731u)), Struct_2(60019i, 49935i, Struct_1(-729f, vec2<bool>(true, false), true, true, 4294967295u)), Struct_2(-1i, -8057i, Struct_1(-663f, vec2<bool>(false, true), true, true, 1u)), Struct_2(0i, 11797i, Struct_1(-1000f, vec2<bool>(false, false), true, true, 0u)), Struct_2(6267i, -1i, Struct_1(-1949f, vec2<bool>(true, true), true, false, 1u)), Struct_2(1i, -39170i, Struct_1(-1450f, vec2<bool>(true, false), false, true, 0u)), Struct_2(0i, -1i, Struct_1(-1000f, vec2<bool>(true, true), true, true, 0u)), Struct_2(1i, 0i, Struct_1(-1411f, vec2<bool>(true, true), false, false, 89764u)), Struct_2(1i, 0i, Struct_1(2536f, vec2<bool>(true, true), true, true, 10210u)), Struct_2(2147483647i, 0i, Struct_1(418f, vec2<bool>(false, false), false, true, 33695u)), Struct_2(3844i, -10761i, Struct_1(1561f, vec2<bool>(true, true), true, false, 17017u)), Struct_2(0i, -25625i, Struct_1(527f, vec2<bool>(true, false), true, false, 1u)), Struct_2(-17282i, -50368i, Struct_1(-137f, vec2<bool>(true, false), true, false, 757u)), Struct_2(2147483647i, i32(-2147483648), Struct_1(-2421f, vec2<bool>(true, false), false, false, 0u)), Struct_2(34489i, i32(-2147483648), Struct_1(-544f, vec2<bool>(true, true), false, true, 7516u)), Struct_2(i32(-2147483648), -28892i, Struct_1(-1613f, vec2<bool>(true, false), false, true, 16966u)), Struct_2(0i, -40712i, Struct_1(1072f, vec2<bool>(false, true), true, false, 0u)), Struct_2(17307i, 22491i, Struct_1(1069f, vec2<bool>(false, false), true, false, 5781u)), Struct_2(-58904i, 0i, Struct_1(1535f, vec2<bool>(false, false), true, false, 56843u)), Struct_2(-11174i, 2147483647i, Struct_1(843f, vec2<bool>(false, false), true, true, 47437u)), Struct_2(-5347i, 2147483647i, Struct_1(-1000f, vec2<bool>(true, true), false, true, 0u)), Struct_2(53350i, 2147483647i, Struct_1(2223f, vec2<bool>(false, false), false, true, 1u)), Struct_2(i32(-2147483648), 21966i, Struct_1(225f, vec2<bool>(false, false), true, false, 4294967295u)), Struct_2(2147483647i, -38661i, Struct_1(-1000f, vec2<bool>(true, true), false, true, 9810u)), Struct_2(0i, -1i, Struct_1(-677f, vec2<bool>(true, false), true, false, 8366u)), Struct_2(-53391i, -11199i, Struct_1(-533f, vec2<bool>(false, true), true, true, 4294967295u)));

var<private> global1: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(7203u, 9805u, 9046u), vec3<u32>(1u, 4294967295u, 70903u), vec3<u32>(14994u, 4294967295u, 33644u), vec3<u32>(66471u, 4294967295u, 1u), vec3<u32>(75532u, 21014u, 52223u), vec3<u32>(26974u, 0u, 2877u), vec3<u32>(0u, 22008u, 28711u), vec3<u32>(5876u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(69438u, 5716u, 4294967295u), vec3<u32>(0u, 91620u, 1u), vec3<u32>(34178u, 4294967295u, 1u), vec3<u32>(4294967295u, 87643u, 0u), vec3<u32>(1416u, 0u, 1u), vec3<u32>(4294967295u, 29983u, 40945u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(63231u), 30u)];
    global0 = array<Struct_2, 30>();
    let var_1 = firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(firstLeadingBit(var_0.b)), 24745i), ~(~2147483647i)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-653f - var_0.c.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1271f))))), vec2<bool>(any(vec2<bool>(true, true)), true), arg_1.c.b.x, var_0.c.e <= 45365u, ~_wgslsmith_div_u32(~arg_0.a.x | 8893u, ~select(13636u, arg_0.a.x, arg_1.c.c)));
    var var_3 = vec4<u32>(arg_0.a.x, _wgslsmith_clamp_u32(1u, ~var_2.e, (83665u ^ _wgslsmith_mult_u32(arg_0.d.x, u_input.c.x)) << (_wgslsmith_add_u32(~var_2.e, firstTrailingBit(arg_1.c.e)) % 32u)), select(~abs(u_input.c.x), firstLeadingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(33910u, u_input.c.x)), u_input.c.zy)), all(!var_2.b)), 0u);
    return _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c.a + _wgslsmith_f_op_f32(min(-1485f, -352f))))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    var var_0 = select(!vec4<bool>(false, u_input.c.x > _wgslsmith_clamp_u32(13404u, 4294967295u, arg_1.x), true, _wgslsmith_f_op_f32(ceil(237f)) >= _wgslsmith_f_op_f32(func_3(Struct_3(vec3<u32>(0u, 4294967295u, 0u), true, -2147483647i, vec2<u32>(arg_1.x, 6895u)), Struct_2(1i, arg_0, Struct_1(-1769f, vec2<bool>(false, false), true, false, u_input.c.x))))), !vec4<bool>(select(true, false, false), true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true)), false), select(!vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, false), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), true));
    var var_1 = Struct_1(1000f, var_0.zy, true, any(select(select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x)), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, false, true, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, false, true))) && var_0.x, ~abs(75487u));
    global1 = array<vec3<u32>, 15>();
    var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(var_1.a)), !(!vec2<bool>(arg_0 != arg_0, var_1.d)), !all(select(select(var_0.wzw, vec3<bool>(true, true, true), vec3<bool>(var_0.x, false, var_1.c)), !vec3<bool>(false, var_1.b.x, true), !vec3<bool>(var_1.b.x, true, var_0.x))), var_0.x, var_1.e);
    var_1 = Struct_1(897f, vec2<bool>(var_0.x, var_1.b.x), var_0.x, false, (var_1.e & max(4294967295u, ~1u)) >> (0u % 32u));
    return max(var_1.e, _wgslsmith_mult_u32(firstTrailingBit(~u_input.c.x), u_input.c.x)) >> (1u % 32u);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: u32) -> Struct_2 {
    global1 = array<vec3<u32>, 15>();
    global1 = array<vec3<u32>, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-966f, arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1268f, _wgslsmith_f_op_f32(f32(-1f) * -1691f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(387f, arg_0, 1f, -110f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(139f * 893f), 1009f, _wgslsmith_f_op_f32(arg_0 + 1407f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -895f, 1620f, -606f) + vec4<f32>(-396f, arg_0, arg_0, -1013f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1340f, arg_0, arg_0, arg_0)))))));
    let var_1 = _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_3, 1u, select(arg_3, arg_3, false)), ~(u_input.c.wzx ^ global1[_wgslsmith_index_u32(arg_3, 15u)])), _wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(12904u, arg_3, 38515u)), countOneBits(~vec3<u32>(u_input.c.x, u_input.c.x, 4860u))) & (reverseBits(vec3<u32>(4294967295u, 27448u, arg_3) & vec3<u32>(0u, arg_3, 1u)) | firstLeadingBit(~vec3<u32>(57637u, u_input.c.x, 0u))));
    var var_2 = -(max(arg_1, -(u_input.b | arg_1)) >> (~(~max(1u, 4294967295u)) % 32u));
    return Struct_2(24506i, arg_1, Struct_1(_wgslsmith_f_op_f32(exp2(var_0.x)), vec2<bool>(arg_2, !arg_2), arg_2, any(select(vec4<bool>(true, false, false, false), select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, true), vec4<bool>(true, true, arg_2, arg_2)), all(vec3<bool>(arg_2, arg_2, false)))), arg_3));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = arg_2.c.c;
    global1 = array<vec3<u32>, 15>();
    return vec3<bool>(var_0, var_0, true);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    var var_0 = -countOneBits(-(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<i32>(u_input.a, 0i, u_input.a))));
    let var_1 = global1[_wgslsmith_index_u32(arg_1.e, 15u)] ^ vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(u_input.c), vec4<u32>(4294967295u, 60088u, 20898u, 4294967295u) & vec4<u32>(0u, u_input.c.x, 0u, 1u)), ~vec4<u32>(29936u, u_input.c.x, u_input.c.x, 21461u)), func_4(arg_0, 1i, all(select(arg_2, arg_2, arg_2)), ~u_input.c.x).c.e, 46049u);
    global0 = array<Struct_2, 30>();
    var var_2 = ~arg_1.e;
    let var_3 = true;
    return 1672f;
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: vec3<bool>) -> vec4<i32> {
    global0 = array<Struct_2, 30>();
    let var_0 = global0[_wgslsmith_index_u32(59451u, 30u)];
    global1 = array<vec3<u32>, 15>();
    var var_1 = _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-120f)))), var_0.c, func_5(_wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.c.zz), u_input.c.yx) | _wgslsmith_div_vec2_u32(u_input.c.wy << (u_input.c.zz % vec2<u32>(32u)), u_input.c.zz), ~_wgslsmith_div_vec4_i32(-vec4<i32>(-533i, 27108i, var_0.b, 39918i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, arg_1, u_input.b, var_0.a), vec4<i32>(46026i, -42550i, var_0.a, arg_0.a))), func_4(356f, abs(arg_1) ^ var_0.b, 39050u < func_2(0i, vec2<u32>(52288u, 0u)), 4294967295u))));
    let var_2 = Struct_4(u_input.c);
    return vec4<i32>(2147483647i, arg_0.a, arg_0.a, _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(min(vec4<i32>(arg_0.a, -14065i, u_input.a, var_0.b), vec4<i32>(56315i, -32851i, 0i, u_input.b)), ~vec4<i32>(35489i, 0i, var_0.a, 21690i))), vec4<i32>(2147483647i, firstLeadingBit(var_0.a >> (var_0.c.e % 32u)), 10071i, ~(~15566i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, u_input.b, u_input.b, 15489i) ^ reverseBits(vec4<i32>(-42619i, u_input.a, -1i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(41409i, 1i, 1i, 2147483647i), vec4<i32>(u_input.b, 0i, u_input.a, 1i))), countOneBits(-vec4<i32>(u_input.b, 5957i, -14973i, 27322i))) ^ ~vec4<i32>(0i, -2147483647i, -u_input.b, u_input.a);
    var_0 = _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(var_0.x, var_0.x, -18771i, u_input.a)) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(13685i, 0i, -2147483647i, -(-5641i ^ var_0.x) ^ (u_input.a | ~u_input.a)), abs(~vec4<i32>(26880i, 1i, 25599i, 66182i)));
    var_0 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.a, u_input.b, var_0.x, 96102i), func_1(Struct_5(12242i), u_input.b, vec3<bool>(true, false, true))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, var_0.x, u_input.b, u_input.a), ~vec4<i32>(var_0.x, var_0.x, 2147483647i, -32354i))), vec4<i32>(-4461i << (u_input.c.x % 32u), -21764i, -var_0.x, u_input.b) ^ ~min(vec4<i32>(var_0.x, u_input.a, var_0.x, 1i), vec4<i32>(var_0.x, 13496i, 34387i, var_0.x)));
    let var_1 = func_4(1108f, ~firstTrailingBit(firstLeadingBit(-51521i)), func_5(vec2<u32>(~u_input.c.x, abs(min(26733u, u_input.c.x))), -func_1(Struct_5(64166i), ~1i, vec3<bool>(true, true, true)), Struct_2(9329i, u_input.b, Struct_1(_wgslsmith_f_op_f32(abs(1000f)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec4<bool>(false, false, true, true)), true, max(1u, 29592u)))).x, ~u_input.c.x).c;
    global0 = array<Struct_2, 30>();
    let var_2 = abs(vec4<i32>(abs(reverseBits(var_0.x)), u_input.b, var_0.x, var_0.x >> (func_4(var_1.a, 55222i, var_1.d, var_1.e).c.e % 32u))) | firstTrailingBit((_wgslsmith_sub_vec4_i32(vec4<i32>(29814i, u_input.a, u_input.b, u_input.a), vec4<i32>(9932i, 2147483647i, u_input.b, u_input.a)) << (~u_input.c % vec4<u32>(32u))) ^ (-vec4<i32>(2147483647i, u_input.a, u_input.a, 2147483647i) << (select(vec4<u32>(var_1.e, 24109u, 4294967295u, 53994u), vec4<u32>(41147u, 1u, 0u, 12737u), false) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<u32>(var_1.e, ~0u, 54529u), _wgslsmith_f_op_f32(-var_1.a) == -1718f, var_0.x, _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1.e, 17481u), u_input.c.xz, ~vec2<u32>(u_input.c.x, u_input.c.x))), Struct_2(min(u_input.a << (48157u % 32u), i32(-1i) * -2147483647i), ~(50325i & var_0.x), var_1))));
}

