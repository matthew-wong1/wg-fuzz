struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = vec2<i32>(1i, 7476i) >> (vec2<u32>(min(firstTrailingBit(~4294967295u), _wgslsmith_sub_u32(~1u, 27925u)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(82763u, 4294967295u), vec2<u32>(1u, 1u)))) % vec2<u32>(32u));
    let var_1 = Struct_4(vec4<i32>(u_input.a, -(~u_input.a), -(~(i32(-1i) * -11358i)), abs(~arg_0.x)), 1u);
    var_0 = vec2<i32>(_wgslsmith_add_i32(var_1.a.x, -48670i), _wgslsmith_dot_vec2_i32(~vec2<i32>(abs(u_input.a), 1i), arg_3));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -2038f))), arg_1);
    let var_3 = var_2.x;
    return _wgslsmith_mult_vec3_i32(select(~(~arg_0), -select(var_1.a.xyw, vec3<i32>(-1i, -10501i, u_input.a), !vec3<bool>(arg_2, arg_2, true)), false), _wgslsmith_sub_vec3_i32(arg_0, -vec3<i32>(arg_3.x, -10992i, u_input.a)) | vec3<i32>(arg_3.x, var_1.a.x, arg_0.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: u32) -> bool {
    var var_0 = func_3(_wgslsmith_div_vec3_i32(~vec3<i32>(reverseBits(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, -17674i), vec3<i32>(arg_1.x, u_input.a, 0i)), -2147483647i), firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.a, 6664i, u_input.a)))), _wgslsmith_f_op_f32(select(arg_0.x, 1405f, select(true, true, true) || true)), false, max(firstTrailingBit(_wgslsmith_sub_vec2_i32(arg_1, vec2<i32>(1i, u_input.a))) >> (vec2<u32>(_wgslsmith_sub_u32(53391u, 15728u), arg_2) % vec2<u32>(32u)), arg_1));
    var_0 = _wgslsmith_sub_vec3_i32(reverseBits(abs(_wgslsmith_add_vec3_i32(~vec3<i32>(var_0.x, arg_1.x, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, 13941i), vec3<i32>(var_0.x, -1i, var_0.x))))), -vec3<i32>(u_input.a, u_input.a, -arg_1.x) >> (vec3<u32>(_wgslsmith_add_u32(arg_2, 4294967295u) & firstLeadingBit(1u), arg_2, max(1u, select(4294967295u, arg_2, false))) % vec3<u32>(32u)));
    var_0 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(_wgslsmith_div_i32(1i, arg_1.x & 67915i), -select(arg_1.x, 37830i, false), select(-u_input.a, u_input.a << (65382u % 32u), var_0.x >= 15661i))), ~(-(vec3<i32>(-1i) * -vec3<i32>(-2152i, arg_1.x, 24956i))), vec3<i32>(-1i, -27671i, max(_wgslsmith_mod_i32(u_input.a, -43639i), 1i)) << (~(~(vec3<u32>(arg_2, arg_2, arg_2) >> (vec3<u32>(arg_2, 67561u, arg_2) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, ~arg_1.x, arg_1.x), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 1i, 0i), vec3<i32>(-2147483647i, var_0.x, 50113i), vec3<i32>(-1i, arg_1.x, u_input.a)), vec3<i32>(u_input.a, u_input.a, arg_1.x) ^ vec3<i32>(var_0.x, u_input.a, 2147483647i)), vec3<i32>(4860i, -23072i, 0i >> (arg_2 % 32u)))), (max(func_3(vec3<i32>(u_input.a, -35479i, -2147483647i), arg_0.x, true, vec2<i32>(u_input.a, u_input.a)), vec3<i32>(var_0.x, arg_1.x, -2147483647i)) ^ -min(vec3<i32>(-30042i, var_0.x, -25158i), vec3<i32>(arg_1.x, u_input.a, -1i))) << (firstTrailingBit(vec3<u32>(arg_2, _wgslsmith_mod_u32(8188u, arg_2), ~arg_2)) % vec3<u32>(32u)));
    var var_1 = Struct_2(_wgslsmith_clamp_vec4_i32(firstTrailingBit(abs(min(vec4<i32>(21580i, var_0.x, var_0.x, u_input.a), vec4<i32>(0i, u_input.a, -17632i, arg_1.x)))), vec4<i32>(~u_input.a, u_input.a | _wgslsmith_mult_i32(38309i, var_0.x), -11608i, -firstTrailingBit(u_input.a)), min(firstTrailingBit(vec4<i32>(0i, 0i, 28940i, 17942i) ^ vec4<i32>(u_input.a, var_0.x, var_0.x, u_input.a)), countOneBits(vec4<i32>(1i, var_0.x, u_input.a, -2147483647i)))), ~(min(vec4<u32>(arg_2, arg_2, arg_2, arg_2) & vec4<u32>(39026u, 24657u, 1u, arg_2), vec4<u32>(20804u, arg_2, 1u, arg_2)) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_2, arg_2), vec4<u32>(0u, 63717u, arg_2, 61153u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2, 1u, 26733u), vec4<u32>(4294967295u, arg_2, 1u, arg_2)), 4294967295u, _wgslsmith_mult_u32(4294967295u, arg_2))), vec3<i32>(_wgslsmith_mult_i32(-20054i, var_0.x), -u_input.a, ~arg_1.x), select(reverseBits(vec4<u32>(~1u, arg_2, _wgslsmith_div_u32(4294967295u, 79809u), select(arg_2, 0u, true))), vec4<u32>(~1u, ~(~4294967295u), ~(~60846u), arg_2), !select(true, true, false)));
    return var_0.x > u_input.a;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> Struct_5 {
    var var_0 = Struct_2(-vec4<i32>(37478i, firstTrailingBit(u_input.a) >> (2610u % 32u), func_3(~vec3<i32>(-1i, u_input.a, 1072i), arg_0, select(false, true, true), ~vec2<i32>(-1i, 19304i)).x, func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(-17973i, -48426i, u_input.a)), _wgslsmith_f_op_f32(min(arg_0, arg_0)), !arg_2.x, vec2<i32>(u_input.a, u_input.a)).x), vec4<u32>(25991u, ~20914u, ~1u, ~38897u), select(func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(1i, u_input.a, -63649i)), arg_0, all(vec4<bool>(false, arg_1.x, true, false)), select(vec2<i32>(u_input.a, 1i), vec2<i32>(-1i, 19536i), false)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 11023i, 10952i)), !arg_1) | _wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(16861i, -2147483647i, -4254i), vec3<i32>(57813i, 0i, u_input.a)), ~abs(vec3<i32>(-12122i, 11959i, -1i))), ~(vec4<u32>(1u, 1u, 1u, 1u) ^ max(vec4<u32>(4294967295u, 92761u, 54052u, 5542u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 47640u, 1u), vec4<u32>(4294967295u, 11313u, 27172u, 70933u), vec4<u32>(1u, 4294967295u, 1560u, 1450u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-232f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1160f))), arg_0) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(192f, 523f, -1495f) + vec3<f32>(arg_0, -623f, 674f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(step(arg_0, -552f)))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(-135f, _wgslsmith_div_f32(1388f, arg_0))))));
    var_0 = Struct_2(~(-vec4<i32>(min(-1i, 37588i), -1i, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x, var_0.b.x, var_0.d.x, 0u), ~vec4<u32>(var_0.b.x, 4294967295u, var_0.d.x, var_0.d.x)), ~(~var_0.b)), _wgslsmith_div_vec4_u32(var_0.b, ~(vec4<u32>(var_0.b.x, var_0.b.x, 34776u, 28206u) & vec4<u32>(var_0.d.x, var_0.d.x, var_0.d.x, 0u))), var_0.b), _wgslsmith_mod_vec3_i32((-vec3<i32>(1i, 2147483647i, u_input.a) << (vec3<u32>(1u, 22007u, var_0.b.x) % vec3<u32>(32u))) >> (max(vec3<u32>(var_0.d.x, var_0.d.x, var_0.b.x), ~vec3<u32>(0u, var_0.d.x, var_0.d.x)) % vec3<u32>(32u)), vec3<i32>(var_0.c.x, -41839i, countOneBits(-21255i))), var_0.b);
    return Struct_5(var_0.a.x, Struct_3(Struct_2(var_0.a, var_0.d, vec3<i32>(i32(-1i) * -42386i, countOneBits(u_input.a), 8911i), vec4<u32>(var_0.d.x, _wgslsmith_div_u32(0u, 4294967295u), abs(var_0.d.x), _wgslsmith_sub_u32(4294967295u, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(3207f, -946f, 1204f, var_1.x), vec4<f32>(-1000f, 433f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 992f, arg_0, var_1.x), vec4<f32>(-260f, arg_0, -1281f, var_1.x))), false)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-258f, arg_0, -232f, arg_0) - vec4<f32>(var_1.x, -1000f, var_1.x, 290f)), vec4<f32>(117f, arg_0, arg_0, -501f), arg_1.x | arg_2.x))))));
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(681f, arg_0.c.x)), _wgslsmith_f_op_f32(435f + arg_3.c.x), -780f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f)), -682f) - func_4(arg_0.c.x, select(arg_3.e, vec3<bool>(true, false, arg_3.d.x), arg_3.d.x), vec3<bool>(true, true, true)).c.zzw)));
    let var_1 = ~(~_wgslsmith_sub_u32(0u, select(~1u, 0u ^ arg_0.b.a.d.x, arg_3.d.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.c.xzz);
    var var_2 = _wgslsmith_f_op_f32(abs(-928f));
    var var_3 = !all(vec4<bool>(all(!vec3<bool>(arg_3.d.x, true, arg_3.e.x)), true, true, false));
    return arg_2;
}

fn func_1() -> u32 {
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(1f + -1002f), vec3<bool>(any(vec4<bool>(false, false, true, false)), func_2(vec2<f32>(-1000f, 332f), vec2<i32>(u_input.a, 2176i) ^ vec2<i32>(-31301i, u_input.a), 64086u), true), vec3<bool>(true, true, true)), u_input.a, Struct_4(~abs(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i) & vec4<i32>(u_input.a, 1i, 2147483647i, 11717i)), ~firstLeadingBit(_wgslsmith_clamp_u32(35567u, 1u, 28627u))), Struct_1(-u_input.a, ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -18475i, -24712i), vec4<i32>(-12247i, -17540i, u_input.a, u_input.a)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-830f, 397f)))), _wgslsmith_f_op_f32(f32(-1f) * -2018f)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec3<bool>(false, func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1187f, -1211f))), vec2<i32>(-1i, u_input.a), 1u), true)));
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-180f, _wgslsmith_div_f32(888f, 678f))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(select(true, false, true) != false, select(func_2(vec2<f32>(-594f, -895f), var_0.a.ww, var_0.b), true, false), true), any(vec4<bool>(true, true, true, true))), select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, false, false), true), vec3<bool>(true, any(vec2<bool>(true, false)), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false))), vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true), true));
    let var_2 = _wgslsmith_f_op_f32(-var_1.c.x);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(351f, var_1.c.x)), _wgslsmith_f_op_f32(abs(var_1.c.x))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.x)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(max(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-15169i, 1i), vec2<i32>(0i, u_input.a)), u_input.a, -31644i, 2147483647i >> (0u % 32u)), -abs(firstTrailingBit(vec4<i32>(1i, -28919i, 64749i, u_input.a)))), func_1() & ~countOneBits(~0u));
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.a, -reverseBits(firstTrailingBit(vec4<i32>(-31829i, -66011i, -2147483647i, var_0.a.x))), ~(vec4<i32>(-1i) * -var_0.a)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x << (1u % 32u), countOneBits(u_input.a), 1i, 1i), abs(var_0.a)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-817f, _wgslsmith_f_op_f32(floor(1289f))))))), -728f);
    let var_3 = select(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), vec3<bool>(true, true, true), !(!select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true)));
    let var_4 = func_5(Struct_5(4501i, Struct_3(Struct_2(vec4<i32>(-1i, 0i, -1i, -6060i) << (vec4<u32>(var_0.b, var_0.b, 0u, var_0.b) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, 23990u, 0u, 4294967295u), vec4<u32>(15482u, var_0.b, var_0.b, 61009u)), -vec3<i32>(var_1.x, 19017i, var_0.a.x), vec4<u32>(1u, 25323u, var_0.b, var_0.b))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1288f, -203f, 434f, -954f), vec4<f32>(-1154f, 1477f, -898f, -937f)))))))), 13762i & -var_0.a.x, Struct_4(var_0.a, 0u), Struct_1(~(-var_1.x), -abs(max(var_1, vec4<i32>(2147483647i, var_1.x, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(826f, -1035f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -885f), vec2<f32>(-1687f, -793f))))))), select(var_3.zz, vec2<bool>(func_2(vec2<f32>(-1857f, 321f), var_0.a.yz, 20068u), !var_3.x), vec2<bool>(false, var_3.x)), !(!(!var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, var_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(431f, 1031f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1095f, -1000f), vec2<f32>(743f, -966f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-796f, -105f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-299f, -309f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1568f, -1110f), vec2<f32>(-332f, 1780f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 477f), vec2<f32>(-1129f, 1000f)))))));
}

