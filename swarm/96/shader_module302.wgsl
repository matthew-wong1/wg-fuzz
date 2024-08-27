struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(150f * 1000f), _wgslsmith_f_op_f32(sign(-1595f))), _wgslsmith_f_op_f32(f32(-1f) * -394f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(205f, -1188f) - vec2<f32>(1163f, -142f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(684f, 2342f), vec2<f32>(-225f, 244f), vec2<bool>(arg_1, arg_1)))))), select(select(!vec4<bool>(arg_1, false, arg_1, arg_1), !vec4<bool>(true, true, arg_1, true), vec4<bool>(!arg_1, true, false, true)), vec4<bool>((false | arg_1) == arg_1, true, !(false && arg_1), arg_1), select(select(select(vec4<bool>(false, arg_1, true, false), vec4<bool>(arg_1, false, false, true), arg_1), !vec4<bool>(true, arg_1, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(true, arg_1, arg_1, false))), !select(vec4<bool>(true, true, arg_1, true), vec4<bool>(false, arg_1, true, false), vec4<bool>(arg_1, true, false, true)), vec4<bool>(all(vec4<bool>(false, arg_1, false, true)), true, any(vec4<bool>(true, false, false, arg_1)), false))), reverseBits(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-1i, -2011i, -2147483647i), true), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-12647i, -2147483647i, 54179i), vec3<i32>(-18102i, -1i, 17179i), vec3<i32>(15126i, -14372i, -4966i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(46632i, -1i, -46762i), select(vec3<i32>(21066i, -2147483647i, 8904i), vec3<i32>(-21301i, -9159i, 1i), arg_1), vec3<i32>(-4018i, 90638i, -1i)))));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(~var_0.c.x, var_0.c.x, -1i), ~_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(6706i, 1i, var_0.c.x)), select(reverseBits(var_0.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.x, 4376i, 35887i), vec3<i32>(-7164i, -1i, var_0.c.x), var_0.c), var_0.b.zzw)));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x)), vec4<bool>(arg_1, true, _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + 1000f))) <= _wgslsmith_f_op_f32(step(var_0.a.x, 1550f)), all(select(var_0.b.wx, vec2<bool>(var_0.b.x, var_0.b.x), !var_0.b.yx))), var_1);
    let var_2 = var_0.a.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-900f, var_0.a.x, -1000f, var_0.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(520f, var_0.a.x, 675f, 1000f) * vec4<f32>(605f, var_0.a.x, 485f, var_0.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(-460f + var_0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), var_0.a.x)), vec4<bool>(arg_1, 1u == (u_input.b.x & select(0u, 4294967295u, false)), true, false)));
    return var_3.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mult_u32(~0u, arg_3)), ~_wgslsmith_div_u32(1u, 4294967295u)), 54552u, 1u), 30u)];
    let var_1 = arg_2.x;
    global0 = array<Struct_2, 30>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-134f, 505f, any(vec4<bool>(false, arg_2.x < 308f, true, true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, 1344f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.x, arg_2.x))))));
    let var_3 = _wgslsmith_f_op_f32(func_3((~(~1u) ^ ~arg_3) << (arg_3 % 32u), select(!any(vec3<bool>(true, true, true)), true, (firstTrailingBit(0u) ^ (u_input.b.x | u_input.a.x)) > min(~93054u, _wgslsmith_sub_u32(1u, 0u)))));
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, firstTrailingBit(func_2(vec2<i32>(arg_0.c.x, 33954i), vec4<i32>(arg_3.a, -17721i, arg_2.c.x, 0i), vec3<f32>(878f, arg_0.a.x, -1839f), u_input.b.x)), abs(u_input.a.x) >> (~u_input.b.x % 32u), 1u), max(vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x) & vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), select(vec4<u32>(u_input.a.x, 75177u, 26667u, u_input.b.x), vec4<u32>(u_input.b.x, 32538u, u_input.b.x, u_input.b.x), arg_2.b)));
    let var_1 = select(-(~select(arg_0.c.x, arg_3.a, true) & 21312i), 2147483647i, true);
    global0 = array<Struct_2, 30>();
    let var_2 = vec4<i32>(-1i) * -vec4<i32>(2147483647i, select(firstTrailingBit(-1i), -7599i, false), ~firstTrailingBit(var_1), -1i);
    let var_3 = ~(~u_input.b.x);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    global0 = array<Struct_2, 30>();
    var var_0 = ~_wgslsmith_div_vec4_i32(-vec4<i32>(arg_0.c.x, _wgslsmith_sub_i32(-2476i, -1i), abs(-15637i), -15779i), ~abs(vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, 18219i)));
    let var_1 = func_1(arg_0, var_0.x, arg_0, Struct_2(~_wgslsmith_clamp_i32(arg_0.c.x, -2147483647i, 1i)));
    var_0 = -_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -13197i, -103252i, arg_0.c.x) << (vec4<u32>(u_input.a.x, 4294967295u, 7586u, 0u) % vec4<u32>(32u)), vec4<i32>(arg_0.c.x, var_0.x, -21106i, 0i)), var_1.c.x, var_0.x), ~(-vec4<i32>(arg_0.c.x, var_0.x, 2147483647i, 19408i) | vec4<i32>(-2082i, var_0.x, var_1.c.x, -52425i)));
    var var_2 = Struct_1(arg_0.a, vec4<bool>(!(!any(vec4<bool>(arg_0.b.x, false, false, false))), arg_1, !arg_0.b.x, all(arg_0.b.zy)), ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_0.x, var_0.x, var_0.x), -var_1.c, vec3<i32>(2147483647i, 68480i, var_1.c.x)) << (vec3<u32>(u_input.b.x, min(_wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 18893u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x))), 29186u) % vec3<u32>(32u)));
    return _wgslsmith_sub_vec2_i32(arg_0.c.yy, vec2<i32>(-arg_0.c.x, arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 231f;
    let var_1 = 2147483647i;
    let var_2 = var_1;
    let var_3 = _wgslsmith_add_vec2_i32(select(vec2<i32>(4336i, var_1), -(~vec2<i32>(var_1, var_1)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), _wgslsmith_clamp_vec2_i32(-(~vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1, var_1) | vec2<i32>(var_1, var_2), -vec2<i32>(var_1, var_1)), vec2<i32>(~var_2, var_1))) & min(_wgslsmith_clamp_vec2_i32(func_4(func_1(Struct_1(vec2<f32>(462f, 1300f), vec4<bool>(false, false, true, false), vec3<i32>(-1i, var_1, var_1)), var_2, Struct_1(vec2<f32>(321f, 203f), vec4<bool>(true, true, true, true), vec3<i32>(var_1, var_2, var_1)), Struct_2(2147483647i)), true), -firstTrailingBit(vec2<i32>(2147483647i, var_2)), ~vec2<i32>(-2147483647i, 26886i)), min(vec2<i32>(var_1, var_2), vec2<i32>(max(var_1, var_2), -2147483647i)));
    var var_4 = -(-(~(~(-49114i))) | -_wgslsmith_mult_i32(var_1, var_3.x));
    let var_5 = _wgslsmith_f_op_f32(var_0 - var_0);
    let var_6 = _wgslsmith_f_op_f32(-var_5);
    var var_7 = Struct_2(firstTrailingBit(-32989i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_5))), var_5)), -275f), var_3, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1 >> (u_input.b.x % 32u), var_2, -3958i) & ~vec3<i32>(0i, 18327i, var_3.x), ~vec3<i32>(1i, abs(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -33594i, -68919i), vec3<i32>(-2147483647i, -2147483647i, 1i)))), select((~vec3<u32>(24041u, 54632u, 4294967295u) | select(vec3<u32>(u_input.b.x, 4916u, 38774u), vec3<u32>(u_input.b.x, 92104u, 0u), true)) | vec3<u32>(u_input.b.x, 1u, ~0u), abs(~(~vec3<u32>(18015u, 66534u, 30029u))), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))));
}

