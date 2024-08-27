struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 26738i, 1i, -27535i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec2<bool> {
    global0 = -(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, 26004i, abs(-1i)), vec4<i32>(_wgslsmith_div_i32(61041i, global0.x), _wgslsmith_add_i32(arg_0.b.a.x, -2147483647i), -global0.x, arg_0.b.a.x >> (14757u % 32u))) >> (~arg_1 % vec4<u32>(32u)));
    global0 = (-(vec4<i32>(u_input.b.x, 51831i, u_input.b.x, global0.x) & firstTrailingBit(vec4<i32>(u_input.b.x, global0.x, global0.x, -6632i))) | -vec4<i32>(-31846i, 0i, _wgslsmith_mod_i32(31485i, global0.x), _wgslsmith_add_i32(43779i, 1i))) ^ _wgslsmith_mult_vec4_i32(select((vec4<i32>(arg_0.b.a.x, u_input.b.x, u_input.b.x, 46988i) << (arg_1 % vec4<u32>(32u))) | vec4<i32>(u_input.b.x, u_input.b.x, 1i, 21784i), _wgslsmith_add_vec4_i32(~vec4<i32>(25274i, -1i, 2147483647i, -7406i), vec4<i32>(21853i, u_input.b.x, arg_0.b.a.x, global0.x) & vec4<i32>(arg_0.b.b.c, global0.x, arg_0.b.b.c, u_input.b.x)), vec4<bool>(arg_0.a.x, false, true, all(arg_0.b.b.d))), vec4<i32>(_wgslsmith_add_i32(u_input.b.x, 0i) & u_input.b.x, -(arg_0.b.a.x ^ 52838i), -2147483647i, ~max(-105061i, 1i)));
    global0 = _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, max(global0.x, ~1i), 1i, _wgslsmith_mod_i32(global0.x, arg_0.b.b.c) ^ _wgslsmith_clamp_i32(-37434i, 26240i, 2147483647i)), vec4<i32>(_wgslsmith_clamp_i32(global0.x, -1i, _wgslsmith_add_i32(~global0.x, 337i)), abs(i32(-1i) * -3024i), ~(_wgslsmith_dot_vec2_i32(u_input.b.xy, arg_0.b.a) | select(arg_0.b.a.x, -31749i, true)), -arg_0.b.b.c));
    global0 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b.b.c, 11364i, 7440i, arg_0.b.b.c) << (arg_1 % vec4<u32>(32u)), vec4<i32>(-31175i, arg_0.b.a.x, u_input.b.x, global0.x), vec4<i32>(-2147483647i, u_input.b.x, global0.x, -20914i)), -(vec4<i32>(12418i, u_input.b.x, 17049i, global0.x) & vec4<i32>(u_input.b.x, u_input.b.x, arg_0.b.a.x, -14048i))) >> (abs(~reverseBits(arg_1)) % vec4<u32>(32u)), vec4<i32>(66564i, -20129i, 6800i, ~arg_0.b.b.c));
    global0 = max(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, arg_0.b.b.c, u_input.b.x), abs(vec4<i32>(0i, global0.x, -2147483647i, 23709i))), vec4<i32>(-1i) * -vec4<i32>(global0.x, u_input.b.x, u_input.b.x, arg_0.b.a.x)), abs(vec4<i32>(2147483647i, _wgslsmith_mult_i32(arg_0.b.a.x, u_input.b.x), ~u_input.b.x, -22783i))) | ~countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 14341i, u_input.b.x, arg_0.b.b.c), vec4<i32>(arg_0.b.b.c, -14279i, u_input.b.x, -2147483647i)), ~(-19161i), 1i, i32(-1i) * -7795i));
    return arg_0.b.b.d;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_3(func_3(Struct_3(vec2<bool>(true, all(vec2<bool>(true, true))), Struct_2(vec2<i32>(2147483647i, u_input.b.x), Struct_1(true, vec2<u32>(u_input.a.x, u_input.a.x), -1i, vec2<bool>(true, true)))), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, arg_3.x, arg_3.x), arg_0))), Struct_2(u_input.b.yz, Struct_1(true, vec2<u32>(arg_0.x, 23698u), u_input.b.x | _wgslsmith_dot_vec4_i32(vec4<i32>(-8557i, u_input.b.x, global0.x, u_input.b.x), vec4<i32>(global0.x, -10569i, u_input.b.x, 2147483647i)), select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(Struct_3(vec2<bool>(true, true), Struct_2(global0.wy, Struct_1(false, vec2<u32>(1u, 104367u), u_input.b.x, vec2<bool>(false, false)))), vec4<u32>(0u, arg_0.x, 1u, u_input.a.x))))));
    let var_1 = Struct_2(var_0.b.a, var_0.b.b);
    var var_2 = 25853i;
    var var_3 = Struct_2(var_0.b.a, Struct_1(func_3(Struct_3(!var_0.a, Struct_2(var_0.b.a, Struct_1(var_0.a.x, arg_0.yz, u_input.b.x, var_0.b.b.d))), firstLeadingBit(vec4<u32>(arg_0.x, u_input.a.x, var_0.b.b.b.x, arg_0.x) >> (arg_0 % vec4<u32>(32u)))).x, select(abs(vec2<u32>(21283u, 1u) | var_0.b.b.b), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(63143u, 29358u), vec2<u32>(var_0.b.b.b.x, 0u), vec2<u32>(4294967295u, 25674u))), vec2<bool>(474f < arg_1, any(var_1.b.d))), var_1.a.x, !select(vec2<bool>(true, var_1.b.a), var_1.b.d, var_1.b.d)));
    var var_4 = var_0;
    return ~vec4<i32>(u_input.b.x, ~_wgslsmith_add_i32(select(-16545i, var_1.a.x, var_0.a.x), _wgslsmith_mult_i32(var_0.b.a.x, global0.x)), -u_input.b.x, firstLeadingBit(_wgslsmith_add_i32(var_0.b.b.c, -22150i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_1 {
    global0 = func_2(firstLeadingBit(countOneBits(vec4<u32>(0u, _wgslsmith_add_u32(0u, u_input.a.x), firstTrailingBit(u_input.a.x), u_input.a.x >> (102477u % 32u)))), -628f, countOneBits(arg_1.b.b.b), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b.b.b.x, arg_1.b.b.b.x ^ firstLeadingBit(arg_1.b.b.b.x)), ~vec2<u32>(_wgslsmith_div_u32(arg_1.b.b.b.x, arg_1.b.b.b.x), firstLeadingBit(0u))));
    let var_0 = arg_1;
    global0 = vec4<i32>(-1i) * -abs(~select(vec4<i32>(61412i, -11817i, global0.x, u_input.b.x), vec4<i32>(global0.x, global0.x, global0.x, -1i), vec4<bool>(var_0.a.x, false, false, false)));
    global0 = ~(-(abs(vec4<i32>(var_0.b.a.x, 0i, arg_1.b.b.c, -14499i)) << (max(select(vec4<u32>(var_0.b.b.b.x, 4294967295u, 9370u, 46392u), vec4<u32>(4294967295u, 56095u, arg_1.b.b.b.x, 93567u), arg_1.b.b.a), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 65405u, 1u), u_input.a)) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-623f, -821f, 1433f));
    return Struct_1(!any(select(select(vec3<bool>(var_0.b.b.a, arg_1.a.x, var_0.a.x), vec3<bool>(arg_1.a.x, arg_1.b.b.d.x, true), arg_1.a.x), vec3<bool>(false, false, false), select(vec3<bool>(false, var_0.b.b.a, false), vec3<bool>(arg_1.a.x, false, false), vec3<bool>(arg_1.b.b.a, arg_1.b.b.a, false)))), vec2<u32>(abs(arg_1.b.b.b.x), select(1u, 4294967295u, ~1i != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 17597i, arg_1.b.b.c, global0.x), vec4<i32>(arg_1.b.a.x, global0.x, 25733i, 4224i)))), u_input.b.x, arg_1.b.b.d);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    global0 = vec4<i32>(max(arg_3.b.b.c ^ _wgslsmith_mod_i32(-2147483647i >> (arg_1.b.x % 32u), ~arg_3.b.a.x), arg_1.c), _wgslsmith_div_i32(-5085i, max(arg_0.b.c, abs(-1i & global0.x))), -_wgslsmith_sub_i32(u_input.b.x, ~arg_1.c & -49518i), u_input.b.x);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(686f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1647f - 153f), _wgslsmith_div_f32(-1541f, 1018f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1635f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1093f, -1398f) * -912f) - -554f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-101f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1500f, 1640f)), -170f)))), 186f)));
    let var_1 = vec2<f32>(-944f, var_0.x);
    var var_2 = Struct_1(!(!arg_1.a), u_input.a.wx, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1149f, 556f, 740f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 512f, var_0.x, 284f)))), Struct_3(func_1(_wgslsmith_f_op_vec4_f32(trunc(var_0)), Struct_3(vec2<bool>(true, arg_1.d.x), arg_0)).d, arg_0)).c, func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_1.x, var_1.x)), var_0, true)), arg_3).d);
    let var_3 = ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(var_2.b.x, u_input.a.x)), u_input.a.x), ~1u, _wgslsmith_clamp_u32(firstLeadingBit(~56221u), 90808u, ~1u));
    return func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0))), arg_3);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: Struct_3) -> i32 {
    global0 = vec4<i32>(arg_0.b.c, ~37785i, -18747i, -(~global0.x) << ((arg_0.b.b.x >> (1u % 32u)) % 32u));
    var var_0 = arg_3;
    var var_1 = Struct_2(arg_3.b.a, func_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-3017f * 2830f), -101f), _wgslsmith_div_f32(721f, -1168f), 327f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(275f)), _wgslsmith_f_op_f32(max(509f, 246f)), all(arg_0.b.d)))), arg_3));
    global0 = vec4<i32>(min(1i, -func_1(vec4<f32>(1f, 1f, 1f, 1f), arg_3).c), max(~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global0.xy, arg_0.a), var_0.b.a), 0i), -35429i, var_0.b.a.x);
    var_0 = Struct_3(arg_3.b.b.d, Struct_2(vec2<i32>(reverseBits(32149i), reverseBits(-40734i ^ var_0.b.a.x)), Struct_1(!all(var_0.b.b.d), var_0.b.b.b, ~global0.x, var_0.b.b.d)));
    return -reverseBits(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(7029u, 0u, u_input.a.x)), ~_wgslsmith_add_vec3_u32(u_input.a.zxw, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x, 84446u);
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, -1i), func_5(Struct_2(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yz, global0.xy)), func_4(Struct_2(vec2<i32>(-45043i, u_input.b.x), Struct_1(true, vec2<u32>(29986u, 1u), global0.x, vec2<bool>(false, true))), func_1(vec4<f32>(1000f, 271f, -217f, 892f), Struct_3(vec2<bool>(true, false), Struct_2(vec2<i32>(15605i, 1i), Struct_1(true, var_0.yx, -12219i, vec2<bool>(true, true))))), -1i, Struct_3(vec2<bool>(false, false), Struct_2(vec2<i32>(u_input.b.x, global0.x), Struct_1(true, u_input.a.yx, 35055i, vec2<bool>(true, false)))))), func_3(Struct_3(vec2<bool>(true, true), Struct_2(u_input.b.yz, Struct_1(true, u_input.a.xz, u_input.b.x, vec2<bool>(false, false)))), u_input.a), _wgslsmith_add_vec3_u32(u_input.a.yxy, ~vec3<u32>(4294967295u, var_0.x, 4294967295u)), Struct_3(vec2<bool>(all(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, true, true, false))), Struct_2(min(global0.zy, vec2<i32>(0i, u_input.b.x)), func_4(Struct_2(global0.yx, Struct_1(false, vec2<u32>(u_input.a.x, 1u), u_input.b.x, vec2<bool>(true, true))), Struct_1(true, u_input.a.xx, -51880i, vec2<bool>(false, true)), u_input.b.x, Struct_3(vec2<bool>(true, false), Struct_2(vec2<i32>(u_input.b.x, global0.x), Struct_1(true, var_0.zz, u_input.b.x, vec2<bool>(true, false)))))))));
    var var_2 = Struct_3(func_3(Struct_3(vec2<bool>(false, -4887i == global0.x), Struct_2(_wgslsmith_add_vec2_i32(global0.zy, var_1), func_4(Struct_2(vec2<i32>(var_1.x, 43219i), Struct_1(false, vec2<u32>(19412u, u_input.a.x), var_1.x, vec2<bool>(true, false))), Struct_1(true, var_0.yy, 2147483647i, vec2<bool>(true, true)), global0.x, Struct_3(vec2<bool>(true, true), Struct_2(global0.yy, Struct_1(true, vec2<u32>(39386u, 4294967295u), 24665i, vec2<bool>(false, true))))))), firstLeadingBit(~max(u_input.a, u_input.a))), Struct_2(~global0.zy, Struct_1(true, vec2<u32>(1u, u_input.a.x), u_input.b.x, !func_3(Struct_3(vec2<bool>(false, false), Struct_2(u_input.b.xz, Struct_1(true, vec2<u32>(1u, u_input.a.x), global0.x, vec2<bool>(false, false)))), u_input.a))));
    let var_3 = Struct_3(select(select(!(!var_2.a), vec2<bool>(var_2.a.x, false), !var_2.a), var_2.a, _wgslsmith_mult_u32(1u, ~var_0.x) < var_0.x), var_2.b);
    var_2 = var_3;
    var var_4 = select(max(firstLeadingBit(max(u_input.a, u_input.a)) | ~(u_input.a << (u_input.a % vec4<u32>(32u))), vec4<u32>(0u, ~(var_0.x << (73495u % 32u)), 74724u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.b.b.x, 1u), vec2<u32>(var_3.b.b.b.x, var_3.b.b.b.x))))), firstTrailingBit(~(~(u_input.a | u_input.a))), vec4<bool>(!(!var_2.a.x && false), 4294967295u <= _wgslsmith_dot_vec2_u32(var_3.b.b.b, min(vec2<u32>(46941u, 1u), var_3.b.b.b)), var_2.b.b.d.x, true));
    var_2 = Struct_3(vec2<bool>(!(true && var_2.a.x), false & !var_2.a.x), Struct_2(select(abs(firstTrailingBit(global0.yy)), global0.ww, vec2<bool>(true, -2147483647i > var_1.x)), var_2.b.b));
    let var_5 = var_3;
    global0 = vec4<i32>(func_5(Struct_2(reverseBits(~var_3.b.a), var_3.b.b), vec2<bool>(var_2.a.x, true), u_input.a.wzw, Struct_3(!func_3(Struct_3(var_5.a, var_2.b), vec4<u32>(1u, 0u, 49065u, 0u)), var_3.b)), abs(i32(-1i) * -1i), func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-448f, -693f, -718f, 2506f) * vec4<f32>(-2329f, -1070f, 1000f, 966f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(435f, 312f, -1001f, -1325f), vec4<f32>(-519f, -863f, 217f, -1321f)))))), var_3).c, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.b.c, _wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(~var_2.b.a.x, var_5.b.a.x)), u_input.b.x), countOneBits(var_1));
}

