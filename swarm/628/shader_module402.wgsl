struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -32230i, -12157i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> vec4<i32> {
    let var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~(~0u), 21256u), ~(~arg_0));
    global0 = select(firstLeadingBit(vec3<i32>(reverseBits(_wgslsmith_sub_i32(global0.x, global0.x)), global0.x, (global0.x & 0i) | _wgslsmith_dot_vec2_i32(global0.xy, vec2<i32>(global0.x, global0.x)))), -firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(13761i, 14045i), global0.x, ~1i)), !(!vec3<bool>(false, all(vec3<bool>(false, true, true)), true)));
    return -(-_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, -1642i, global0.x, global0.x), vec4<i32>(global0.x, 1i, global0.x, global0.x)), ~vec4<i32>(-28019i, global0.x, global0.x, global0.x), firstTrailingBit(vec4<i32>(72309i, global0.x, 23144i, global0.x))) >> (select(firstTrailingBit(~vec4<u32>(25422u, var_0.x, 4294967295u, 1u)), select(min(vec4<u32>(u_input.a, 22223u, var_0.x, 4294967295u), vec4<u32>(39073u, 0u, 1370u, 81976u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 109764u, var_0.x, u_input.a)), true), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)));
}

fn func_2() -> Struct_5 {
    var var_0 = -(vec4<i32>(-1i) * -(~vec4<i32>(global0.x, global0.x, 1387i, global0.x) & func_3(vec2<u32>(u_input.a, u_input.a), 1247f)));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1303f * -1000f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-180f)), -1000f)))), _wgslsmith_add_i32(~global0.x, select(-34492i, abs(2455i), all(vec3<bool>(false, false, true)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = Struct_3(max(_wgslsmith_div_vec4_i32(-(~vec4<i32>(global0.x, global0.x, -2147483647i, 2147483647i)), vec4<i32>(min(var_1.b, 0i), abs(global0.x), var_1.b ^ -20466i, -17195i)), vec4<i32>(_wgslsmith_div_i32(31674i, var_0.x) ^ -1i, reverseBits(max(2147483647i, 2147483647i)), var_0.x, _wgslsmith_div_i32(min(2147483647i, 99152i), firstTrailingBit(-36036i)))), Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(252f, var_1.a) - vec2<f32>(var_1.a, -942f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-706f, var_1.a))))), ~max(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), select(vec4<u32>(787u, 4294967295u, 1u, 1u), vec4<u32>(67760u, u_input.a, u_input.a, 16278u), vec4<bool>(false, true, true, true))) | ~vec4<u32>(u_input.a & u_input.a, ~79482u, u_input.a, ~86938u));
    var var_4 = Struct_1(any(!vec4<bool>(var_3.b.a.a, any(vec4<bool>(var_3.b.a.a, var_3.b.a.a, false, true)), true || var_3.b.a.a, var_3.b.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.b.a.b + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1017f, var_3.b.a.b.x) * vec2<f32>(var_1.a, var_1.a))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(var_3.b.a.b, vec2<f32>(var_1.a, -274f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3.b.a.b, vec2<f32>(var_3.b.a.b.x, -968f)) - _wgslsmith_f_op_vec2_f32(floor(var_3.b.a.b)))))));
    return var_1;
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> vec4<f32> {
    let var_0 = global0.x > 0i;
    global0 = vec3<i32>(countOneBits(~(-(arg_1.b << (67485u % 32u)))), arg_1.b, global0.x);
    let var_1 = Struct_4(!var_0, Struct_2(Struct_1(!(arg_1.a == arg_1.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1165f, 847f) - vec2<f32>(arg_1.a, arg_1.a)))))), global0.zx, ~(~abs(~vec2<u32>(1u, arg_0))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(464f, arg_1.a, arg_1.a) + vec3<f32>(arg_1.a, 1611f, 279f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-584f, arg_1.a, 1405f) + vec3<f32>(890f, arg_1.a, -757f)))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1160f, _wgslsmith_f_op_f32(select(arg_1.a, 1000f, true)), _wgslsmith_div_f32(1027f, -731f)))), !vec3<bool>(true, true, !var_0))));
    var var_2 = Struct_2(var_1.b.a);
    var_2 = var_1.b;
    return vec4<f32>(922f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a))))) * var_2.a.b.x), _wgslsmith_f_op_f32(-var_1.b.a.b.x), var_1.e.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, u_input.a), func_2())) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_1.b.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.b.a.b.x, arg_2.b.a.b.x)))), -514f, _wgslsmith_div_f32(arg_1.b.a.b.x, arg_1.b.a.b.x)));
    var var_1 = vec4<u32>(~u_input.a, abs(abs(~arg_2.c.x)), max(_wgslsmith_clamp_u32(116917u, 1u, ~66101u), ~7286u), ~(~select(u_input.a, u_input.a, true))) | min(arg_1.c, _wgslsmith_sub_vec4_u32(vec4<u32>(37948u, 4294967295u ^ u_input.a, _wgslsmith_dot_vec4_u32(arg_1.c, vec4<u32>(1u, 1441u, 0u, arg_1.c.x)), ~4294967295u), vec4<u32>(select(8050u, u_input.a, arg_2.b.a.a), arg_0.x, min(139619u, arg_0.x), min(arg_2.c.x, arg_2.c.x))));
    var var_2 = vec2<u32>(~28386u, _wgslsmith_mult_u32(1u >> (u_input.a % 32u), arg_0.x));
    global0 = -(~vec3<i32>(~arg_1.a.x | reverseBits(-2939i), 9670i, abs(~1i)));
    var var_3 = Struct_2(Struct_1(-398f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_2.b.a.b.x)), var_0.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.yy)))))));
    return arg_1.b.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, false, true, false)), false, true, select(true, true, func_1(vec2<u32>(u_input.a, u_input.a), Struct_3(vec4<i32>(-1i, global0.x, global0.x, 56614i), Struct_2(Struct_1(false, vec2<f32>(248f, -1000f))), vec4<u32>(30160u, u_input.a, u_input.a, 12825u)), Struct_3(vec4<i32>(global0.x, -2147483647i, global0.x, global0.x), Struct_2(Struct_1(true, vec2<f32>(-1050f, 642f))), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))))), !all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)));
    var_0 = select(!select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, false, false, true)), vec4<bool>(var_0.x, var_0.x, false, var_0.x), false), false), !select(vec4<bool>(false, true, any(var_0.ww), true), select(!vec4<bool>(true, false, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true)), select(var_0.x, false, var_0.x)), vec4<bool>(var_0.x, true, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-56635i, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, 0i), vec4<i32>(global0.x, -4251i, 3070i, 2147483647i)), abs(global0.x)) != ~1i, var_0.x));
    var var_1 = _wgslsmith_f_op_f32(sign(726f));
    var_1 = _wgslsmith_f_op_f32(floor(630f));
    let var_2 = vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, ~(~u_input.a)), u_input.a);
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(min(36383u, u_input.a), ~var_2.x, u_input.a, var_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -900f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-996f))))));
}

