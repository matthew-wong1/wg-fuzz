struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<f32>(1000f, -671f), Struct_3(14992u), Struct_1(4294967295u, vec4<f32>(319f, -789f, 528f, -1175f), 20827i, false), vec2<i32>(2147483647i, -13179i), 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2180f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a.x, 1091f), global0.a)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -998f)), _wgslsmith_f_op_vec2_f32(global0.c.b.xw * vec2<f32>(global0.c.b.x, -1321f)))))), Struct_3(~33288u), Struct_1(349u, global0.c.b, _wgslsmith_dot_vec2_i32(firstLeadingBit(-u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(11287i, global0.c.c), vec2<i32>(-7306i, -18751i))), !global0.c.d), vec2<i32>(u_input.a.x, 59370i), ~global0.c.a);
    global0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(180f + 502f) * global0.c.b.x))), global0.b, Struct_1(1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c.b), _wgslsmith_f_op_vec4_f32(-global0.c.b)), u_input.a.x, global0.c.d), _wgslsmith_sub_vec2_i32(select(select(global0.d, u_input.a << (vec2<u32>(global0.b.a, global0.b.a) % vec2<u32>(32u)), !global0.c.d), vec2<i32>(global0.d.x >> (global0.c.a % 32u), -1i), global0.e < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 0u, global0.c.a))), u_input.a), 29230u);
    var var_0 = Struct_3(~global0.b.a);
    var_0 = Struct_3(26019u);
    var_0 = Struct_3(var_0.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1115f * -218f)) * global0.a.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec3<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(252f, -1000f))))) * global0.a);
    var var_1 = abs(max(~global0.c.a, arg_0.x));
    let var_2 = arg_1;
    let var_3 = select(select(select(select(vec3<bool>(true, true, global0.c.d), vec3<bool>(false, global0.c.d, false), select(vec3<bool>(true, false, var_2.c.d), vec3<bool>(false, var_2.c.d, var_2.c.d), false)), vec3<bool>(all(vec2<bool>(var_2.c.d, var_2.c.d)), true, false), vec3<bool>(var_2.c.d, !global0.c.d, true)), vec3<bool>(false, 1u > abs(var_2.b.a), true), var_2.c.d), !vec3<bool>(arg_1.c.d, arg_1.c.d | true, false), global0.c.d);
    let var_4 = _wgslsmith_f_op_f32(-arg_2.x);
    return select(var_3, vec3<bool>(!any(select(vec3<bool>(false, true, false), var_3, vec3<bool>(true, true, true))), any(vec2<bool>(false, !arg_1.c.d)), arg_1.c.d), vec3<bool>(false, any(var_3), var_2.c.d || var_2.c.d));
}

fn func_1() -> u32 {
    let var_0 = !select(vec3<bool>(global0.c.d, any(!vec4<bool>(global0.c.d, true, false, global0.c.d)), true), !vec3<bool>(false, any(vec2<bool>(true, global0.c.d)), global0.e > global0.e), select(vec3<bool>(global0.c.d, true, false), vec3<bool>(true, true, true), !func_2(vec4<u32>(31091u, global0.b.a, 0u, 77350u), Struct_4(global0.a, Struct_3(global0.b.a), global0.c, global0.d, global0.c.a), global0.c.b.zyz)));
    var var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(abs(637f)), -727f), global0.b, Struct_1(_wgslsmith_mult_u32(42512u, _wgslsmith_mod_u32(~global0.c.a, global0.c.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(global0.c.b)))), countOneBits(-u_input.a.x), false), ~_wgslsmith_div_vec2_i32(min(global0.d, vec2<i32>(global0.d.x, u_input.a.x)), firstTrailingBit(global0.d)) & global0.d, _wgslsmith_mult_u32(select(4294967295u, 1u, false) << (_wgslsmith_add_u32(45452u, global0.c.a) % 32u), _wgslsmith_mult_u32(557u, min(global0.c.a, global0.b.a))) ^ global0.b.a);
    let var_2 = _wgslsmith_div_i32(max(-(~(~var_1.c.c)), -(28046i << (~4294967295u % 32u))), -(~(-11450i)));
    let var_3 = Struct_2(_wgslsmith_mult_vec2_u32(~vec2<u32>(56825u, 8444u), ~(~(~vec2<u32>(var_1.e, var_1.c.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(global0.c.b.x - global0.c.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.c.b.x, global0.a.x, global0.c.b.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-749f, var_1.a.x, -180f) + vec3<f32>(global0.a.x, -950f, var_1.a.x)))))), Struct_1(var_1.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 779i, 2147483647i, 2147483647i) & vec4<i32>(38699i, var_1.d.x, -7105i, 32735i), abs(select(vec4<i32>(global0.d.x, 1i, u_input.a.x, u_input.a.x), vec4<i32>(13344i, -37808i, -3343i, -1i), vec4<bool>(true, global0.c.d, false, global0.c.d)))), all(func_2(abs(vec4<u32>(31801u, 0u, var_1.e, 58458u)), Struct_4(global0.a, Struct_3(global0.b.a), Struct_1(4294967295u, vec4<f32>(-514f, 2507f, var_1.a.x, 155f), u_input.a.x, true), u_input.a, global0.c.a), global0.c.b.ywx))));
    var var_4 = var_1.d;
    return 97572u;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = global0.c;
    let var_1 = global0.b;
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2, 1080f), vec2<f32>(arg_2, 2215f))) + _wgslsmith_f_op_vec2_f32(abs(global0.c.b.xx))))), global0.b, Struct_1(1u | _wgslsmith_sub_u32(reverseBits(var_0.a), 4386u & var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, global0.a.x, global0.c.b.x, -979f))) - vec4<f32>(_wgslsmith_div_f32(1000f, global0.a.x), _wgslsmith_f_op_f32(-var_0.b.x), 591f, _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, 0i), -(0i | var_0.c), ~u_input.a.x ^ 5794i), countOneBits(select(u_input.a.x, var_0.c, false)) >= -13547i), vec2<i32>(54483i, u_input.a.x), 4294967295u);
    global0 = Struct_4(vec2<f32>(-960f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-161f, -476f))), Struct_3(var_2.b.a), Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(52333u, arg_3.x, 51655u, 19910u), ~(~arg_3)), vec4<f32>(-333f, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 1327f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, 554f)) + _wgslsmith_f_op_f32(-673f + -913f))), firstTrailingBit(u_input.a.x), true), ~vec2<i32>(u_input.a.x, reverseBits(1i) << ((4294967295u & var_2.e) % 32u)), max(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_1.xx, arg_1.xy) | ~57689u, var_1.a), ~var_1.a));
    var var_3 = !any(select(vec2<bool>(false, var_0.d), select(vec2<bool>(false, true), vec2<bool>(var_2.c.d, true), vec2<bool>(var_2.c.d, true)), any(vec3<bool>(global0.c.d, var_0.d, var_0.d)))) || (any(vec3<bool>(func_2(vec4<u32>(global0.c.a, 49735u, 4294967295u, 4294967295u), Struct_4(vec2<f32>(2912f, 1000f), global0.b, var_2.c, vec2<i32>(14785i, global0.d.x), arg_0), vec3<f32>(1213f, var_2.a.x, 741f)).x, true, var_2.c.d)) || global0.c.d);
    return var_2;
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: f32) -> Struct_4 {
    var var_0 = global0.c;
    var_0 = global0.c;
    let var_1 = func_2(vec4<u32>(arg_1.e, var_0.a, _wgslsmith_sub_u32(~19899u, _wgslsmith_clamp_u32(arg_1.c.a, 11670u, arg_1.b.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(70651u, 0u), vec2<u32>(74481u, 4294967295u)) ^ ~9261u) << (select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 36751u, var_0.a, 0u), vec4<u32>(1u, var_0.a, 22020u, arg_1.c.a)) | ~vec4<u32>(var_0.a, 4294967295u, arg_1.e, 1u), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_1.b.a, global0.b.a, 1u, 57709u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.e, 1u, arg_1.c.a, 1u), vec4<u32>(global0.b.a, global0.e, 1u, 44961u))), vec4<bool>(false, true, true, !global0.c.d)) % vec4<u32>(32u)), func_4(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e, var_0.a, arg_1.e, 1u) & vec4<u32>(arg_1.c.a, global0.c.a, 7645u, arg_1.c.a), ~vec4<u32>(global0.e, arg_1.e, global0.e, 1u)), ~countOneBits(~vec3<u32>(0u, 68967u, var_0.a)), _wgslsmith_f_op_f32(abs(-268f)), ~vec4<u32>(~global0.b.a, 4294967295u, 1250u, arg_1.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2057f, 843f, -731f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.b.wyy) * _wgslsmith_f_op_vec3_f32(-arg_1.c.b.wzx))))).xz;
    let var_2 = -vec2<i32>(0i, reverseBits(-202i));
    var_0 = func_4(1u, vec3<u32>(global0.e, ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(11240u, 49679u, 59351u), vec3<u32>(1u, global0.e, arg_1.b.a)), vec3<u32>(arg_1.c.a, global0.b.a, var_0.a)), 69280u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - -361f) + global0.c.b.x), 606f)))), ~(vec4<u32>(52194u, 35633u, ~var_0.a, _wgslsmith_mult_u32(global0.c.a, 30290u)) & abs(vec4<u32>(var_0.a, var_0.a, var_0.a, 10828u) ^ vec4<u32>(global0.b.a, 38901u, var_0.a, 12356u)))).c;
    return func_4(72309u, abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b.a, var_0.a, arg_1.b.a), vec3<u32>(39958u, var_0.a, 21381u) ^ vec3<u32>(4143u, arg_1.b.a, 1u))), func_4(abs(countOneBits(global0.c.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1.e, global0.c.a, global0.b.a), _wgslsmith_sub_vec3_u32(vec3<u32>(19601u, 45171u, 4294967295u), vec3<u32>(1u, arg_1.e, var_0.a)) >> (abs(vec3<u32>(1u, 0u, var_0.a)) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.b.x)), _wgslsmith_f_op_f32(var_0.b.x - -609f)), _wgslsmith_f_op_f32(step(527f, var_0.b.x))), ~abs(vec4<u32>(4294967295u, global0.e, 1u, 0u)) ^ _wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_1.e, 1u, arg_1.e, 4294967295u)), min(vec4<u32>(1u, 0u, 1u, global0.b.a), vec4<u32>(36677u, 0u, var_0.a, var_0.a)))).a.x, vec4<u32>(arg_1.e, abs(_wgslsmith_mod_u32(global0.e, global0.c.a)), reverseBits(_wgslsmith_sub_u32(~61661u, _wgslsmith_dot_vec2_u32(vec2<u32>(187u, var_0.a), vec2<u32>(56180u, 48316u)))), arg_1.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!global0.c.d, func_4(max(reverseBits(global0.c.a >> (59129u % 32u)), 1u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(20902u, global0.b.a, 46465u, global0.b.a), max(vec4<u32>(global0.e, 1u, global0.c.a, global0.b.a), vec4<u32>(global0.b.a, global0.e, 16241u, 46914u))), 34597u, global0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))), countOneBits(vec4<u32>(_wgslsmith_clamp_u32(29585u, global0.c.a, 18606u), func_1(), 4294967295u ^ global0.e, global0.b.a))), global0.a.x);
    var var_1 = Struct_2(abs(firstLeadingBit(vec2<u32>(var_0.b.a, func_1()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, 228f)) - _wgslsmith_f_op_f32(min(global0.a.x, global0.a.x))) + _wgslsmith_f_op_f32(f32(-1f) * -155f)) - _wgslsmith_f_op_f32(f32(-1f) * -2585f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(827f - 1119f), _wgslsmith_f_op_f32(min(global0.a.x, global0.c.b.x)), var_0.a.x))), global0.c);
    var var_2 = func_4(select(29412u, func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.a, 203974u) << (var_1.a % vec2<u32>(32u)), vec2<u32>(4294967295u, 4294967295u)), vec3<u32>(109032u, ~var_0.b.a, var_1.a.x), _wgslsmith_f_op_f32(min(-193f, _wgslsmith_f_op_f32(f32(-1f) * -677f))), vec4<u32>(~0u, var_0.e | 46714u, abs(var_1.d.a), var_1.d.a)).e, !any(!vec3<bool>(global0.c.d, true, false))), vec3<u32>(1u, abs(var_1.a.x >> (~var_1.a.x % 32u)), 4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c.b.x)) + _wgslsmith_div_f32(112f, var_1.b)))), countOneBits(vec4<u32>(var_1.a.x, abs(~var_0.b.a), ~var_1.d.a, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_0.e, 0u, global0.c.a)), vec3<u32>(var_1.d.a, 65295u, var_1.a.x))))).b;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_5(false, var_0, _wgslsmith_f_op_f32(1198f + global0.c.b.x)).a)));
    var_2 = func_4(var_0.e, ~(~vec3<u32>(~var_0.b.a, 1u, global0.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(0u), min(~var_0.b.a, ~var_2.a), 14346u, 0u), ~(vec4<u32>(global0.b.a, 39485u, 4294967295u, 14253u) | vec4<u32>(global0.e, var_1.d.a, 4294967295u, 4294967295u)) | _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_1.a.x, 59365u, 4294967295u), vec4<u32>(global0.e, global0.c.a, var_0.c.a, 0u)), vec4<u32>(100785u, func_1(), 0u, 16409u))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(firstLeadingBit(abs(vec3<i32>(-1i, var_0.d.x, u_input.a.x))), vec3<i32>(u_input.a.x ^ -7105i, firstLeadingBit(0i), abs(-1i))) & _wgslsmith_add_i32(~0i, 0i << (reverseBits(var_1.d.a) % 32u)), vec4<i32>(-1i) * -(~_wgslsmith_div_vec4_i32(vec4<i32>(17501i, 13475i, 2147483647i, 12383i), vec4<i32>(-18469i, u_input.a.x, var_0.d.x, -11420i))), var_1.a);
}

