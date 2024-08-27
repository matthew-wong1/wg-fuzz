struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, i32(-2147483648), 296u, -681f, Struct_1(vec4<bool>(false, true, true, false)));

var<private> global1: vec2<i32> = vec2<i32>(-6101i, -8456i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    let var_0 = global0.b;
    let var_1 = global0.e;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(904f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-875f, arg_0.x)) * _wgslsmith_div_f32(1197f, global0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(364f * -927f) - arg_0.x)))));
    global0 = Struct_2(!any(global0.e.a.wz), global1.x, firstTrailingBit(4294967295u) & ~(~(~global0.c)), _wgslsmith_f_op_f32(493f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-612f, 268f) * global0.d))), global0.e);
    let var_3 = Struct_1(!var_1.a);
    return false;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_0.e.a.x, 24379i, 41977u, global0.d, Struct_1(global0.e.a));
    let var_1 = select(!vec4<bool>(!select(true, false, false), global0.e.a.x, !(!var_0.e.a.x), !any(vec4<bool>(var_0.a, global0.e.a.x, true, var_0.a))), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, var_0.e.a.x)) | !all(arg_0.e.a.xxw));
    var var_2 = vec2<i32>(firstTrailingBit(~1i), -global1.x);
    var var_3 = !select(global0.e.a.wxy, vec3<bool>(!global0.a, false, any(!vec2<bool>(var_1.x, true))), func_3(vec4<f32>(_wgslsmith_f_op_f32(arg_0.d - 538f), _wgslsmith_f_op_f32(arg_0.d - arg_0.d), var_0.d, _wgslsmith_f_op_f32(-global0.d))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.d, 289f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, global0.d))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, global0.d) - vec2<f32>(global0.d, 126f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-636f, arg_0.d) + vec2<f32>(global0.d, -1022f))), var_3.x | global0.e.a.x))));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(global0.e.a.x, global1.x >> (u_input.a % 32u), abs(~_wgslsmith_sub_u32(u_input.a, select(global0.c, 4294967295u, global0.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-122f)))))), Struct_1(select(!global0.e.a, select(arg_1.e.a, !arg_1.e.a, true), select(select(vec4<bool>(true, arg_1.e.a.x, arg_1.e.a.x, false), vec4<bool>(arg_1.e.a.x, true, false, false), global0.e.a), global0.e.a, !vec4<bool>(true, true, global0.a, false)))));
    var var_1 = Struct_2(global0.e.a.x, u_input.b.x, global0.c | firstLeadingBit(reverseBits(countOneBits(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d + arg_0))))), Struct_1(vec4<bool>(1u < (27373u | var_0.c), true, arg_1.e.a.x, !func_2(arg_1).e.a.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-977f, -503f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(116f, 181f) * vec2<f32>(global0.d, var_0.d)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d, var_0.d) + vec2<f32>(var_0.d, arg_1.d))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1394f, global0.d), vec2<f32>(1475f, arg_0), var_0.e.a.wy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, global0.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, var_1.d)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -1575f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(163f, global0.d) + vec2<f32>(arg_0, -177f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0)))), var_0.e.a.zw)));
    global0 = func_2(Struct_2(any(vec2<bool>(true, true)), -(~(-10138i | arg_1.b)), ~(~(u_input.a | 23178u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_1.d))), Struct_1(var_0.e.a)));
    let var_3 = arg_1;
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> i32 {
    let var_0 = global0.e.a.xyz;
    let var_1 = true | global0.e.a.x;
    var var_2 = -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(-vec4<i32>(-3004i, 1i, -17429i, global0.b)), vec4<i32>(arg_1.b | -15979i, 1i, -global1.x, arg_1.b)), ~vec4<i32>(i32(-1i) * -2147483647i, firstTrailingBit(-790i), global1.x >> (global0.c % 32u), ~58583i));
    global1 = vec2<i32>(min(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, global0.b), func_2(arg_1).b), -4393i), global1.x);
    global0 = func_2(arg_1);
    return _wgslsmith_div_i32(~func_4(_wgslsmith_f_op_f32(-global0.d), func_4(-1000f, arg_1)).b, (arg_2 | arg_1.b) << (_wgslsmith_dot_vec2_u32(vec2<u32>(~29088u, _wgslsmith_dot_vec4_u32(vec4<u32>(14639u, 28692u, 4294967295u, global0.c), vec4<u32>(global0.c, 1u, u_input.a, u_input.a))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, global0.c), vec2<u32>(4294967295u, 1u), vec2<u32>(60981u, 1u)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(global0.c, u_input.a), vec2<u32>(u_input.a, 16764u)) % vec2<u32>(32u))) % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> bool {
    global1 = reverseBits(vec2<i32>(_wgslsmith_mult_i32(global1.x, 27078i), global1.x));
    var var_0 = _wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(~global0.b, func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), arg_1.x), func_4(arg_2, func_2(Struct_2(true, global0.b, 42375u, -1357f, Struct_1(vec4<bool>(false, global0.a, false, arg_0.a.x))))), -global1.x | 58894i)));
    global0 = func_2(func_4(_wgslsmith_f_op_f32(func_4(-809f, func_2(Struct_2(arg_0.a.x, 0i, 0u, arg_1.x, arg_0))).d - -613f), func_2(func_2(Struct_2(global0.a, -1458i, 57570u, arg_2, Struct_1(vec4<bool>(arg_0.a.x, true, global0.e.a.x, true)))))));
    let var_1 = -19187i;
    global1 = ~vec2<i32>(var_1, _wgslsmith_mod_i32(-1i, -1i));
    return true;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(!select(arg_2.e.a, func_4(216f, Struct_2(false, 3971i, u_input.a, -1838f, Struct_1(vec4<bool>(global0.e.a.x, true, false, arg_0.x)))).e.a, select(u_input.a, 1u, true) == 1u));
    let var_1 = arg_2;
    let var_2 = -272f;
    global1 = vec2<i32>(max(arg_2.b, abs(-1i)), arg_2.b);
    var_0 = func_4(-237f, var_1).e;
    return Struct_1(var_1.e.a);
}

fn func_7(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = arg_0.e;
    global0 = arg_0;
    var var_1 = vec4<i32>(0i, func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0.d)))), -877f, !any(global0.e.a.wz))), Struct_2(all(func_2(arg_0).e.a.zw), global0.b, global0.c, global0.d, func_4(-1040f, arg_0).e), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.b, -1i), vec3<i32>(2147483647i, arg_0.b, 49209i))))), global0.b, ~arg_0.b);
    global1 = firstLeadingBit(~_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(18103i, var_1.x)), _wgslsmith_sub_vec2_i32(abs(u_input.b), _wgslsmith_mod_vec2_i32(var_1.zw, vec2<i32>(2147483647i, 0i)))));
    var var_2 = Struct_2(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_0.d) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-342f, arg_1.x))))), func_2(arg_0)).a, _wgslsmith_add_i32(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(21839i, 7435i, u_input.b.x) ^ (global0.b >> (arg_0.c % 32u)), ~_wgslsmith_mult_i32(0i, global0.b))), arg_0.c >> (_wgslsmith_div_u32(1u, u_input.a) % 32u), 1676f, global0.e);
    return func_6(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1046f + arg_1.x))), _wgslsmith_f_op_f32(global0.d + func_4(arg_0.d, arg_0).d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.d, arg_1.x)) * -355f)))), Struct_2(var_0.a.x & (_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, -1i, global1.x), var_1.zwx) > -arg_0.b), global1.x, firstLeadingBit(u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f - arg_0.d)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1006f * arg_0.d)))), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(true, u_input.b.x, (0u >> (1u % 32u)) << (_wgslsmith_div_u32(0u, 28729u) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1699f - global0.d) + 291f), _wgslsmith_f_op_f32(ceil(1551f)))), global0.e);
    var var_0 = func_7(Struct_2(true, u_input.b.x, select(~(~4294967295u), global0.c, false), -524f, func_6(vec2<bool>(func_1(Struct_1(global0.e.a), vec2<f32>(global0.d, -115f), global0.d), true), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1743f, global0.d, global0.d)))), func_4(-673f, func_4(global0.d, Struct_2(true, global0.b, u_input.a, -633f, global0.e))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global0.d, -1481f, global0.d) - vec4<f32>(587f, -709f, global0.d, -255f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(772f, -1513f, 665f, 2708f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1263f, global0.d, 1354f, 574f) + vec4<f32>(global0.d, global0.d, -1024f, -1536f))))), global0.c);
    var var_1 = vec2<bool>(global0.e.a.x, ((false | all(vec2<bool>(true, global0.e.a.x))) && !global0.a) | !all(vec4<bool>(false, true, true, var_0.a.x)));
    let var_2 = func_7(func_4(func_2(func_4(_wgslsmith_f_op_f32(abs(546f)), func_2(Struct_2(false, global1.x, 39167u, 1000f, Struct_1(global0.e.a))))).d, func_4(global0.d, Struct_2(global0.e.a.x, -1i, _wgslsmith_div_u32(global0.c, 1u), func_2(Struct_2(false, 24640i, global0.c, global0.d, Struct_1(var_0.a))).d, Struct_1(global0.e.a)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.d, global0.d, 1440f, -521f), vec4<f32>(-1177f, -1220f, global0.d, 1088f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1568f, global0.d, global0.d, -485f))))))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(11967u, 0u, global0.c, global0.c), select(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c, 1u, 0u, global0.c), vec4<u32>(0u, 1u, global0.c, 84862u)), vec4<u32>(1u, 0u, 15272u, 53001u) ^ vec4<u32>(global0.c, 1u, 4294967295u, global0.c), !global0.e.a)), ~vec4<u32>(1u, u_input.a, u_input.a, ~u_input.a)));
    var_1 = !vec2<bool>(var_0.a.x, true);
    var var_3 = 15338u;
    var_3 = u_input.a;
    var var_4 = Struct_2(true, -22996i, u_input.a >> (0u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-228f, _wgslsmith_f_op_f32(global0.d + 1918f)), global0.d)), Struct_1(!var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~global0.b), _wgslsmith_div_i32(_wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, -11492i), _wgslsmith_div_i32(-27768i, global0.b)), 1223i), -17268i, u_input.b.x), _wgslsmith_clamp_u32(global0.c, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(var_4.d * var_4.d)), Struct_2(select(false, false, true), min(var_4.b, 2147483647i), 4294967295u, var_4.d, var_2)).c, func_4(-1182f, func_4(_wgslsmith_f_op_f32(f32(-1f) * -2271f), Struct_2(var_0.a.x, var_4.b, var_4.c, var_4.d, var_2))).c), vec2<f32>(global0.d, func_4(1055f, func_4(_wgslsmith_f_op_f32(f32(-1f) * -1681f), func_2(Struct_2(global0.a, global1.x, 0u, -121f, Struct_1(vec4<bool>(false, var_1.x, false, true)))))).d), countOneBits(var_4.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.d - global0.d))) * _wgslsmith_f_op_f32(-162f * -1393f))));
}

