struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-49514i, 1i), -2291f, -3733f, 0u, 1310f), vec4<bool>(true, false, true, true), -983f);

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = global0.a;
    let var_1 = arg_0.x;
    global0 = Struct_2(Struct_1(vec2<i32>(var_0.a.x, reverseBits(var_0.a.x)) & vec2<i32>(-26347i, _wgslsmith_mult_i32(global0.a.a.x, var_0.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-427f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.x)))), global0.b.x)), var_0.d, global0.a.c), !vec4<bool>(!global0.b.x, true, false, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(413f, var_1)))))));
    let var_2 = firstLeadingBit(reverseBits(vec4<u32>(_wgslsmith_clamp_u32(34912u, 0u | var_0.d, abs(0u)), 4294967295u, max(~93940u, _wgslsmith_mult_u32(u_input.d, var_0.d)), ~global0.a.d)));
    global0 = Struct_2(Struct_1(var_0.a, 468f, _wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_add_u32(max(max(var_0.d, 1u), 5909u), _wgslsmith_div_u32(u_input.a & var_2.x, _wgslsmith_add_u32(global0.a.d, u_input.a))), _wgslsmith_f_op_f32(-1f)), select(select(vec4<bool>(true, arg_1, true, any(global0.b.wy)), select(global0.b, vec4<bool>(false, global0.b.x, arg_1, arg_1), vec4<bool>(global0.b.x, false, arg_1, arg_2)), vec4<bool>(50874u < var_2.x, all(vec2<bool>(true, arg_2)), all(vec3<bool>(true, arg_2, arg_2)), arg_1)), select(vec4<bool>(arg_1 == true, !arg_1, true, global0.b.x), !(!vec4<bool>(false, false, false, arg_1)), true), !global0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2457f + var_0.e)), var_1)));
    return global0.a.d;
}

fn func_2() -> bool {
    let var_0 = ~(~min(vec4<u32>(~global0.a.d, 43568u | u_input.a, global0.a.d, func_3(vec3<f32>(-323f, 374f, 351f), global0.b.x, global0.b.x)), vec4<u32>(u_input.a, u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14097u, global0.a.d), vec3<u32>(u_input.a, 4294967295u, 0u)), ~6001u)));
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-5909i, abs(~global0.a.a.x)), -(global0.a.a >> (select(var_0.zx, var_0.yy, true) % vec2<u32>(32u)))), -298f, -724f, ~(~_wgslsmith_div_u32(19669u, var_0.x) | (~global0.a.d << (max(0u, 1u) % 32u))), 1000f);
    global1 = var_1.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1396f * global0.c), global0.a.c) - global0.a.e))));
    var_2 = _wgslsmith_div_f32(-574f, _wgslsmith_f_op_f32(-251f + 681f));
    return select(global0.b.x || true, true, any(vec3<bool>(global0.b.x, !select(global0.b.x, global0.b.x, true), true)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - _wgslsmith_f_op_f32(-arg_0)), 428f, func_2())) - -1271f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(292f, global0.a.c))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + _wgslsmith_f_op_f32(-global0.a.b))))));
    global0 = Struct_2(arg_1, global0.b, -1000f);
    let var_0 = _wgslsmith_f_op_f32(-1375f * arg_1.b);
    var var_1 = abs(~arg_1.d);
    let var_2 = arg_1;
    return global0.a;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = Struct_2(func_1(global0.c, arg_2, ~firstTrailingBit(vec2<u32>(1u, global0.a.d))), global0.b, arg_2.e);
    let var_0 = func_1(_wgslsmith_f_op_f32(-413f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c)))), func_1(global0.c, Struct_1(global0.a.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c * 104f), _wgslsmith_div_f32(arg_2.c, 959f))), -1000f, _wgslsmith_mult_u32(~52776u, ~arg_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.c)))), vec2<u32>(global0.a.d >> (u_input.d % 32u), 45504u) << (max(~vec2<u32>(global0.a.d, global0.a.d), vec2<u32>(1u, 115505u) ^ vec2<u32>(0u, global0.a.d)) % vec2<u32>(32u))), max(select(vec2<u32>(56104u, 19558u) | vec2<u32>(4294967295u, arg_2.d), _wgslsmith_div_vec2_u32(vec2<u32>(global0.a.d, arg_2.d), vec2<u32>(44238u, 15211u)), !global0.b.yz) | ~vec2<u32>(23851u, 21839u), _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(global0.a.d, arg_2.d)), firstTrailingBit(select(vec2<u32>(u_input.d, global0.a.d), vec2<u32>(u_input.a, 0u), vec2<bool>(global0.b.x, global0.b.x))), abs(vec2<u32>(14381u, 0u) << (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) + _wgslsmith_f_op_f32(-arg_2.b));
    var var_1 = select(true, (~(5453u << (0u % 32u)) >> (_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(4294967295u, 1u, global0.a.d)) % 32u)) == reverseBits(~arg_2.d), arg_0);
    return func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.c)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(485f, 607f) + 1335f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(295f, -164f) * var_0.c)))), func_1(_wgslsmith_f_op_f32(func_1(global0.a.e, var_0, reverseBits(vec2<u32>(u_input.a, 68689u))).c + _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(round(global0.c)))), Struct_1(select(vec2<i32>(-2147483647i, global0.a.a.x), vec2<i32>(u_input.c, arg_3) << (vec2<u32>(7475u, 120915u) % vec2<u32>(32u)), vec2<bool>(global0.b.x, global0.b.x)), 222f, _wgslsmith_f_op_f32(f32(-1f) * -164f), arg_2.d, -579f), vec2<u32>(~var_0.d, _wgslsmith_mod_u32(4294967295u, ~arg_2.d))), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.d, global0.a.d), ~vec2<u32>(abs(var_0.d), _wgslsmith_sub_u32(39656u, global0.a.d))));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = select(global0.b.x, global0.b.x, u_input.e.x != (_wgslsmith_div_i32(-57202i, func_4(true, -20668i, Struct_1(vec2<i32>(u_input.c, -7654i), arg_0.e, 1038f, 68494u, global0.a.c), 9229i).a.x) >> (abs(0u) % 32u)));
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~54172i, _wgslsmith_mult_i32(24810i, u_input.b.x), -36123i, ~(-47515i)), select(vec4<i32>(-1466i, u_input.e.x, global0.a.a.x, global0.a.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.a.x, u_input.b.x, arg_0.a.x, arg_0.a.x), vec4<i32>(2147483647i, global0.a.a.x, -1i, u_input.e.x)), true)), _wgslsmith_clamp_i32(-arg_0.a.x, global0.a.a.x, _wgslsmith_dot_vec3_i32(u_input.b >> (vec3<u32>(79312u, 20252u, global0.a.d) % vec3<u32>(32u)), u_input.b << (vec3<u32>(48498u, global0.a.d, 66070u) % vec3<u32>(32u)))), global0.a.a.x, -global0.a.a.x), abs(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.c, 1i, u_input.b.x, global0.a.a.x), vec4<i32>(-28019i, u_input.c, -7604i, -27849i), var_0), firstLeadingBit(max(vec4<i32>(arg_0.a.x, 0i, -1i, global0.a.a.x), vec4<i32>(2147483647i, global0.a.a.x, -1i, 12875i))))));
    global1 = -171f;
    global0 = Struct_2(func_4(var_0 && false, ~(-var_1.x), func_1(_wgslsmith_f_op_f32(639f - 363f), global0.a, _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.d, arg_0.d), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(arg_1, 4294967295u), vec2<u32>(4294967295u, arg_1)), select(vec2<u32>(20960u, 4294967295u), vec2<u32>(arg_1, 55143u), vec2<bool>(var_0, var_0)))), -47011i), !select(vec4<bool>(true, true, var_0, global0.b.x), select(!vec4<bool>(true, var_0, false, global0.b.x), !global0.b, !global0.b.x), !select(vec4<bool>(false, false, var_0, true), global0.b, global0.b.x)), -1876f);
    let var_2 = vec4<bool>(true, !var_0, false, global0.b.x);
    return Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(47543i, 0i, 1i, 1i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(9898i, 34926i, -29815i, -5778i), vec4<i32>(30440i, global0.a.a.x, var_1.x, -1i), vec4<i32>(-27224i, 0i, -5492i, global0.a.a.x) >> (vec4<u32>(arg_1, arg_1, global0.a.d, global0.a.d) % vec4<u32>(32u)))), abs(1i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(global0.a.e + arg_0.c), global0.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.d, 14788u), vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, 1u))).c), arg_0.b, false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c) + _wgslsmith_f_op_f32(-arg_0.b))))), func_4(!var_2.x, ~var_1.x, func_4(any(vec2<bool>(var_2.x, global0.b.x)) & any(vec2<bool>(var_0, true)), 1i, arg_0, abs(_wgslsmith_mult_i32(1i, 2147483647i))), -(~var_1.x)).d, _wgslsmith_f_op_f32(global0.a.c - _wgslsmith_f_op_f32(-356f * arg_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.d;
    var var_1 = !(!global0.b.x);
    var var_2 = Struct_2(func_5(func_4(true, _wgslsmith_sub_i32(u_input.b.x, -2147483647i) << (46864u % 32u), func_1(_wgslsmith_f_op_f32(-global0.c), global0.a, _wgslsmith_mult_vec2_u32(vec2<u32>(7632u, global0.a.d), vec2<u32>(u_input.d, 41130u))), 0i), abs(53998u)), !(!vec4<bool>(!global0.b.x, any(global0.b.wy), global0.b.x | true, global0.b.x)), -475f);
    var_1 = !(true | var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_4(!any(var_2.b.zy), global0.a.a.x, var_2.a, _wgslsmith_mult_i32(var_2.a.a.x, _wgslsmith_div_i32(var_2.a.a.x, 27552i))), ~(~u_input.a)).c, func_5(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.c), global0.a.a), 3001f, _wgslsmith_div_f32(1280f, _wgslsmith_f_op_f32(868f - global0.c)), ~abs(37748u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.e * 845f), _wgslsmith_f_op_f32(floor(285f)))), 485u).a.x, _wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, u_input.b), abs(u_input.b)), vec3<i32>(~_wgslsmith_mult_i32(global0.a.a.x, var_2.a.a.x), ~u_input.e.x, 14561i)), u_input.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(328f, var_2.a.b))))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(1396f)), _wgslsmith_f_op_f32(321f * var_2.c))))));
}

