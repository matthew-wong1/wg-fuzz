struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> f32 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_mod_vec3_i32(~u_input.d.ywx, max(max(vec3<i32>(arg_1.b.x, arg_1.a.b.x, 1i), vec3<i32>(arg_1.b.x, 2147483647i, arg_1.b.x)), u_input.d.yzy)), ~arg_1.a.b, arg_1.a.c), arg_1.b & -(countOneBits(vec2<i32>(-19789i, 0i)) << (select(vec2<u32>(u_input.b, arg_1.d), vec2<u32>(u_input.b, 6312u), false) % vec2<u32>(32u))), arg_1.c, abs(max(1u, ~arg_1.d | _wgslsmith_mult_u32(1u, 4294967295u))));
    global0 = _wgslsmith_f_op_f32(round(var_0.c.a));
    global0 = var_0.a.c.a;
    global0 = arg_1.a.c.a;
    var var_1 = select(select(!vec3<bool>(true, arg_0.x || arg_0.x, arg_0.x | false), !(!(!vec3<bool>(arg_0.x, false, arg_0.x))), !select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, true, true))), vec3<bool>(true, !all(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_sub_i32(arg_1.a.b.x, -20768i) > min(max(var_0.b.x, u_input.a), 2147483647i)), true);
    return arg_1.c.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    var var_0 = ~abs(~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 102529u), vec2<u32>(0u, 1u))));
    let var_1 = 1u | u_input.b;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(!(!vec2<bool>(arg_1.x, true)), Struct_4(arg_2, arg_2.b.yy | firstTrailingBit(vec2<i32>(-23126i, arg_2.a.x)), arg_2.c, u_input.b))), 130f);
    let var_2 = -2147483647i;
    var var_3 = vec3<u32>(_wgslsmith_add_u32(~(~0u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 4294967295u)) << ((vec2<u32>(84618u, var_1) & vec2<u32>(var_1, 0u)) % vec2<u32>(32u)), max(vec2<u32>(0u, u_input.b), vec2<u32>(var_0.x, 0u)) & firstLeadingBit(vec2<u32>(0u, var_1)))), ~var_1, ~reverseBits(156777u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-346f + arg_0.a)) - 517f);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(arg_1.b, select(vec2<bool>(false, true), vec2<bool>(true, false), false), Struct_2(arg_0.wzz, arg_0.yxx, Struct_1(-115f)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true)))))));
    var var_0 = vec4<u32>(32596u, u_input.b ^ arg_1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, arg_1.c.x), arg_1.c.xz), ~(~abs(~5120u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.b.a, _wgslsmith_f_op_f32(arg_1.b.a * arg_1.b.a))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1187f, -598f, arg_1.b.a)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(686f, arg_1.b.a, arg_1.a.a, arg_1.a.a))))), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-505f, 199f, -447f, _wgslsmith_f_op_f32(func_2(Struct_1(-320f), vec2<bool>(false, false), Struct_2(vec3<i32>(-2147483647i, 0i, u_input.d.x), arg_0.wzw, Struct_1(-878f)), vec4<bool>(false, false, false, true))))))));
    let var_3 = ~(~vec3<u32>(1u, 0u, ~var_0.x << (select(var_0.x, var_0.x, true) % 32u)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_u32(45039u >> (reverseBits(func_1(u_input.d, Struct_3(Struct_1(1263f), Struct_1(2127f), vec3<u32>(u_input.b, 1u, u_input.b)))) % 32u), u_input.b, u_input.b);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(111f), vec2<bool>(true, all(vec3<bool>(true, true, true))), Struct_2(max(~u_input.d.yxx, ~u_input.d.zyx), _wgslsmith_clamp_vec3_i32(vec3<i32>(-69674i, u_input.d.x, -50294i) ^ u_input.d.yzw, firstTrailingBit(vec3<i32>(0i, -346i, u_input.d.x)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.e, 0i), vec3<i32>(u_input.e, -18137i, 109788i))), Struct_1(1040f)), vec4<bool>(true, true, false, false))), 1549f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(552f, -483f, 1095f, -1020f) + vec4<f32>(-109f, 1000f, -720f, -884f))) * vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(-473f), vec2<bool>(true, true), Struct_2(vec3<i32>(u_input.a, 43872i, u_input.a), u_input.d.zyy, Struct_1(1195f)), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(step(-461f, 1994f)), _wgslsmith_f_op_f32(-893f * -368f), _wgslsmith_f_op_f32(670f + 136f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(979f - _wgslsmith_f_op_f32(step(246f, 1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(826f + -2227f)))), _wgslsmith_f_op_f32(trunc(1000f)), -604f));
    let var_2 = select(select(vec2<bool>(_wgslsmith_f_op_f32(exp2(var_1.x)) >= -901f, true), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), !vec2<bool>(all(vec4<bool>(false, true, true, false)), true)), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), vec2<bool>(true, true)), all(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, false, false, true))) || true);
    var_0 = u_input.b;
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(_wgslsmith_mod_i32(64868i, u_input.c), abs(u_input.d.x), u_input.d.x) | _wgslsmith_div_vec3_i32(u_input.d.wxy, min(vec3<i32>(u_input.c, u_input.a, u_input.d.x), vec3<i32>(-6786i, u_input.d.x, u_input.a)))) >> (~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b))) % vec3<u32>(32u)), u_input.d.wz, _wgslsmith_f_op_f32(func_3(!vec2<bool>(var_1.x == var_1.x, true), Struct_4(Struct_2(vec3<i32>(38878i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.c, 11658i, -2147483647i) ^ u_input.d.xwy, Struct_1(-1218f)), vec2<i32>(u_input.e, u_input.e ^ u_input.a), Struct_1(563f), select(_wgslsmith_dot_vec3_u32(vec3<u32>(5620u, 1u, 75968u), vec3<u32>(99035u, u_input.b, 4294967295u)), reverseBits(1u), select(true, true, var_3))))));
}

