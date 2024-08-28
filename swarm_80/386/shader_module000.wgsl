struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_3,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(-528f, global0.a.x, 1475f))), global0.a)))));
    let var_0 = !select(!vec3<bool>(false, 35276u > u_input.a.x, all(vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, any(vec4<bool>(false, true, false, true)), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))));
    let var_1 = true;
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), -172f, 1275f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-136f, global0.a.x, -332f)))))));
    var var_2 = !(false & !select(false, true, false)) != all(!vec2<bool>(false, var_0.x));
    return any(vec2<bool>(true, true));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = -1079f;
    var var_1 = select(select(select(vec4<bool>(39980u > arg_0, true, true, func_3()), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), any(vec2<bool>(false, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -18357i, -1i), vec3<i32>(2147483647i, 16715i, 59177i)) != 1i), !func_3()), vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + 1047f) > 788f), any(vec2<bool>(false, true | all(vec2<bool>(true, false)))));
    let var_2 = _wgslsmith_mod_i32(~(~_wgslsmith_add_i32(-1i, 2147483647i) << (_wgslsmith_div_u32(~arg_0, ~1u) % 32u)), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, -3640i), _wgslsmith_sub_i32(44494i, 2147483647i))), 1i));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(944f, 1000f)));
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(_wgslsmith_f_op_f32(1f + 1227f), 1071f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1063f * global0.a.x) * _wgslsmith_div_f32(-1000f, -286f))), select(select(vec3<bool>(true, var_1.x, true), !var_1.wzx, select(var_1.x, true, true)), vec3<bool>(false, !var_1.x, false), var_1.xxy))));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1233f)))), _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(ceil(global0.a.x)), var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_3 {
    var var_0 = select(vec2<bool>(!all(!arg_1.e.zwy), true), arg_1.e.xy, _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, 747f) * -1120f)));
    let var_1 = arg_1;
    let var_2 = reverseBits(16243u);
    var var_3 = Struct_5(false, var_1.d.a.x, Struct_1(select(!vec4<bool>(true, arg_1.d.c, true, var_1.d.c), select(vec4<bool>(arg_1.d.c, var_1.e.x, var_1.d.c, arg_1.e.x), arg_1.e, arg_1.e), select(arg_1.e, !var_1.e, true)), true, arg_1.d.b.x, false, _wgslsmith_add_vec3_i32(vec3<i32>(var_1.d.a.x, 0i, -2147483647i) | var_1.d.a, var_1.d.a)), ~min(~1u, var_2), var_2);
    let var_4 = func_2(select(_wgslsmith_mult_u32(firstLeadingBit(~var_3.e), u_input.a.x), var_3.e, true));
    return var_1.c;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    global0 = arg_0;
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_mult_i32(-18980i, (0i | arg_1.e.x) >> (~u_input.a.x % 32u)), _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.a.x, arg_3.a.x, 61357i, arg_2.a.x), vec4<i32>(arg_1.e.x, 0i, arg_2.a.x, 2147483647i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.a.x, 26410i, arg_2.a.x, arg_1.e.x), vec4<i32>(arg_2.a.x, arg_2.a.x, -30824i, 0i))), _wgslsmith_clamp_i32(-(arg_1.e.x | arg_3.a.x), _wgslsmith_sub_i32(select(arg_1.e.x, arg_1.e.x, arg_3.c), _wgslsmith_mod_i32(-113096i, -24987i)), 1i)), _wgslsmith_mod_vec4_i32(select(~vec4<i32>(-29122i, arg_1.e.x, arg_2.a.x, -38268i), vec4<i32>(~5436i, 1i, 1i, -2147483647i), !(!arg_1.a)), select(vec4<i32>(arg_2.a.x, 1i, 0i, arg_1.e.x), -vec4<i32>(0i, arg_1.e.x, arg_3.a.x, -1i), select(true, arg_3.c, arg_3.c)) << (firstLeadingBit(abs(vec4<u32>(u_input.a.x, 1772u, 0u, u_input.a.x))) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, arg_2.a.x, 0i, arg_3.a.x), vec4<i32>(-22984i, arg_1.e.x, arg_3.a.x, arg_3.a.x), false), vec4<i32>(select(arg_1.e.x, arg_3.a.x, true), -9182i, ~(-29936i), 1i & arg_1.e.x)));
    global0 = func_2(1u);
    let var_1 = func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 23048u), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), 4294967295u, u_input.a.x), vec4<u32>(abs(58863u), 4294967295u, ~0u, ~0u)) << (38509u % 32u));
    global0 = arg_0;
    return var_1;
}

fn func_1() -> bool {
    global0 = func_5(func_4(func_2(~abs(u_input.a.x)), Struct_4(_wgslsmith_f_op_f32(-global0.a.x), -559f, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.a.x, -331f))), Struct_2(select(vec3<i32>(31271i, 58010i, -2147483647i), vec3<i32>(16425i, -1i, -2147483647i), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(global0.a.x, -1610f, global0.a.x)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true))))), Struct_1(select(vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), true), true, global0.a.x, !(!(u_input.a.x >= u_input.a.x)), vec3<i32>(-countOneBits(-1i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(62205i, 2147483647i, -1i), 4827i), min(-28625i, 1i))), Struct_2(~countOneBits(vec3<i32>(1i, 1i, 1i)), global0.a, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), any(vec4<bool>(false, false, false, true))))), Struct_2(vec3<i32>(37709i, ~1i, 52180i), global0.a, all(vec4<bool>(true, true, true, true)) != !select(false, true, true)));
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, -138f) + vec3<f32>(810f, global0.a.x, global0.a.x)), vec3<f32>(global0.a.x, global0.a.x, global0.a.x), true))))), _wgslsmith_f_op_vec3_f32(-global0.a)));
    let var_2 = 308f;
    var_1 = _wgslsmith_f_op_vec3_f32(-global0.a);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) ^ min(~_wgslsmith_add_vec4_u32(vec4<u32>(11241u, 24614u, u_input.a.x, 13415u), vec4<u32>(u_input.a.x, 1u, 4294967295u, 4743u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 88207u), vec4<u32>(u_input.a.x, 45843u, 25694u, u_input.a.x))));
    var var_1 = ~u_input.a.x;
    var var_2 = (-2147483647i >> (_wgslsmith_mult_u32(firstLeadingBit(select(var_0.x, 9964u, true)), var_0.x) % 32u)) >> (max(~1u, reverseBits(_wgslsmith_sub_u32(4294967295u, abs(var_0.x)))) % 32u);
    var var_3 = all(vec4<bool>(func_1(), !(!func_3()), false, true & (false | (u_input.a.x != u_input.a.x))));
    var var_4 = var_0.yw ^ vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a | abs(u_input.a), ~vec2<u32>(var_0.x, 0u)), _wgslsmith_clamp_u32(~u_input.a.x, 4294967295u, u_input.a.x));
    var_1 = var_4.x;
    var_1 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec2<u32>(1u, 4294967295u)) | (vec2<u32>(17692u, ~u_input.a.x) | (_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 1u)) >> (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)))), countOneBits(var_0.x));
}

