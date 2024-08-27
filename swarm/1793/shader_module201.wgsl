struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-710f, -420f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> i32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_1.a.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 1098f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-277f + -648f), 1143f)), -2147f)));
    global0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-812f, global0.x, true)))), _wgslsmith_f_op_f32(arg_1.a.a - _wgslsmith_f_op_f32(min(global0.x, arg_2)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, arg_1.a.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.a, -427f), vec2<f32>(arg_1.a.a, global0.x)))))))));
    let var_0 = Struct_5(_wgslsmith_mult_vec3_u32(select(~vec3<u32>(u_input.e.x, 1u, u_input.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d.x), u_input.e), u_input.b.x < u_input.c.x) | u_input.e, reverseBits(firstTrailingBit(firstTrailingBit(vec3<u32>(1u, u_input.d.x, u_input.d.x))))), arg_1.a.a, !vec4<bool>(false, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(global0.x + 1350f) != _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(43332u, 0u), _wgslsmith_sub_u32(u_input.a, 31700u) >> (min(1u, 1u) % 32u), ~firstTrailingBit(u_input.e.x), 28554u), ~(reverseBits(vec4<u32>(16878u, 38043u, u_input.d.x, 0u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u), vec4<u32>(u_input.d.x, 14607u, 4294967295u, 0u)) % vec4<u32>(32u))), vec4<u32>(firstTrailingBit(~20609u), ~u_input.a, 1u, u_input.e.x)), Struct_2(true, arg_1.a, _wgslsmith_dot_vec2_u32(u_input.d, abs(_wgslsmith_add_vec2_u32(vec2<u32>(53642u, 4294967295u), vec2<u32>(u_input.d.x, u_input.e.x)))), firstTrailingBit(~(~vec4<u32>(0u, 4294967295u, 1u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(283f, -482f) * vec2<f32>(arg_2, 751f)))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) * _wgslsmith_f_op_vec2_f32(vec2<f32>(270f, -358f) + vec2<f32>(global0.x, arg_1.a.a))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-414f, arg_1.a.a))))))));
    return _wgslsmith_mod_i32(-1i, abs(22005i));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = Struct_5(vec3<u32>(countOneBits(0u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 38200u, 52024u), abs(vec3<u32>(u_input.d.x, arg_2.d.x, arg_2.c)), firstTrailingBit(arg_2.d.yyw)), ~abs(u_input.e)), 30004u), -2684f, vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.c.x, -2147483647i), vec4<i32>(u_input.c.x, -1i, -2147483647i, u_input.c.x)), -14868i) == func_3(countOneBits(0i), Struct_4(Struct_1(-1000f)), -1104f), true, arg_2.a, true), arg_2.d, arg_2);
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1403f, _wgslsmith_f_op_f32(step(arg_2.e, arg_2.e)))))))));
    let var_1 = var_0.e.b;
    var var_2 = -60419i;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))) * _wgslsmith_f_op_f32(step(725f, _wgslsmith_f_op_f32(max(1595f, arg_2.b.a))))), var_1.a);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<u32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2501f, 319f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(global0.x), true, Struct_2(arg_1.x, Struct_1(global0.x), arg_2, vec4<u32>(arg_2, arg_3.x, 0u, 19836u), -784f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -198f) + vec2<f32>(-245f, global0.x)), vec2<f32>(global0.x, -1000f)), arg_1.x))));
    var var_0 = true;
    var var_1 = select(select(vec4<bool>(true, select(arg_1.x, u_input.c.x < -42169i, false), false, !(arg_1.x || false)), select(!select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(true, arg_1.x, true, arg_1.x)), vec4<bool>(arg_1.x, any(vec4<bool>(false, arg_1.x, true, arg_1.x)), arg_1.x, !arg_1.x), select(vec4<bool>(true, arg_1.x, arg_1.x, true), select(vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(true, arg_1.x, false, arg_1.x)), true)), arg_1.x && !any(arg_1.zy)), !select(!(!vec4<bool>(false, false, arg_1.x, arg_1.x)), select(select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(true, false, arg_1.x, true), vec4<bool>(true, arg_1.x, arg_1.x, false)), vec4<bool>(true, true, arg_1.x, true), vec4<bool>(true, false, arg_1.x, false)), arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-global0.x)))) >= global0.x);
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(2215f - _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(global0.x), true, Struct_2(false, Struct_1(-489f), arg_2, vec4<u32>(u_input.d.x, 0u, u_input.e.x, arg_0), -487f))).x + -255f))), vec4<u32>(abs(32802u), select(~(~arg_3.x), 35601u, true), arg_3.x, firstTrailingBit(22390u)), u_input.d.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -1888f, 1845f), vec3<f32>(global0.x, 499f, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -648f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))), arg_1.x);
    var var_3 = u_input.e;
    return var_2;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> vec3<bool> {
    var var_0 = arg_1.b;
    var var_1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, 1i), select(abs(u_input.c.x), 0i, arg_1.e), -1i, (u_input.b.x << (38199u % 32u)) | _wgslsmith_sub_i32(u_input.c.x, u_input.b.x)), ~select(vec4<i32>(0i, u_input.b.x, u_input.c.x, -4607i) ^ vec4<i32>(-6i, -53126i, -1i, -1i), vec4<i32>(u_input.c.x, u_input.c.x, 0i, u_input.b.x), !vec4<bool>(arg_1.e, arg_1.e, false, false)));
    let var_2 = !arg_1.e;
    var_1 = -(abs(_wgslsmith_mult_i32(u_input.c.x, -2147483647i)) ^ u_input.c.x);
    global0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.a, global0.x)) - 1f), _wgslsmith_f_op_f32(-266f - global0.x)), 1001f)));
    return vec3<bool>(all(vec3<bool>(false, true, all(vec4<bool>(arg_1.e, false, arg_1.e, false)))), arg_1.e, any(select(vec3<bool>(arg_1.e, !arg_1.e, true), vec3<bool>(all(vec4<bool>(true, true, true, false)), select(arg_1.e, false, false), false), vec3<bool>(!var_2, var_2, u_input.c.x < u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global0 = vec2<f32>(446f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + -786f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), global0.x, global0.x < global0.x))), _wgslsmith_f_op_f32(-global0.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    var var_2 = u_input.a;
    let var_3 = false;
    let var_4 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.x), ~vec4<u32>(~1u, var_0.x, 0u, 0u), firstLeadingBit(u_input.c), select(vec3<i32>(-(~(-10450i)), u_input.b.x, u_input.c.x), ~vec3<i32>(11628i >> (1u % 32u), -48527i << (var_0.x % 32u), u_input.c.x), func_4(_wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x) << (~var_0.x % 32u), func_1(~39601u, select(vec3<bool>(false, var_3, var_3), vec3<bool>(true, false, var_3), vec3<bool>(var_3, true, var_3)), var_0.x, var_0), var_0.x)), u_input.d.x);
}

