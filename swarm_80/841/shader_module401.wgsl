struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(194f, 1000f, 1553f, 899f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>) -> vec3<bool> {
    let var_0 = select(select(arg_0, arg_0, true), arg_0, vec4<bool>(!any(select(vec2<bool>(true, arg_0.x), vec2<bool>(true, false), arg_0.zw)), any(arg_0.wx), arg_0.x, _wgslsmith_clamp_u32(u_input.d | u_input.d, u_input.d, _wgslsmith_mult_u32(309u, u_input.d)) != 1u));
    global0 = Struct_1(vec4<f32>(-771f, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), global0.a.x));
    let var_1 = vec3<i32>(u_input.a.x, firstLeadingBit(~0i), _wgslsmith_sub_i32(firstLeadingBit(11989i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, u_input.b, 76247i), 106425i), u_input.b)));
    let var_2 = countOneBits(~arg_1.zzz);
    return select(!(!select(vec3<bool>(false, false, true), vec3<bool>(var_0.x, arg_0.x, arg_0.x), vec3<bool>(true, true, true))), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(var_0.x, all(var_0.wzz), !any(vec2<bool>(arg_0.x, arg_0.x))), any(var_0.xyx) & (true == arg_0.x)), !select(_wgslsmith_f_op_f32(trunc(-1196f)) <= _wgslsmith_f_op_f32(min(-1245f, -101f)), !var_0.x, true));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3) -> Struct_4 {
    let var_0 = Struct_4(global0.a.x, Struct_2(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, arg_1, arg_1), arg_1), select(vec3<bool>(true, false, arg_1), vec3<bool>(true, arg_1, true), false), all(vec2<bool>(arg_1, false))), select(select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, true, arg_1), arg_1), select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, false)), func_3(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(u_input.d, arg_0.x, u_input.d, u_input.d))), false), 19462u, _wgslsmith_div_f32(-2591f, _wgslsmith_f_op_f32(-global0.a.x)) <= -816f, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) + global0.a))), ~abs(select(~arg_0.x, abs(1u), arg_1)), vec3<bool>(arg_1, !all(!vec3<bool>(arg_1, arg_1, true)), arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1204f, arg_2.b.x, _wgslsmith_f_op_f32(-arg_2.b.x)) + _wgslsmith_f_op_vec3_f32(exp2(arg_2.b))) - _wgslsmith_div_vec3_f32(global0.a.wxz, arg_2.b)));
    return Struct_4(456f, var_0.b, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d, 81753u, 0u, 41329u) >> (select(vec4<u32>(u_input.d, 15818u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 4294967295u, 8070u, 4294967295u), vec4<bool>(false, var_0.b.a.x, var_0.b.a.x, false)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, var_0.c >> (12387u % 32u), ~u_input.d, var_0.b.b), countOneBits(~vec4<u32>(u_input.d, 31730u, arg_0.x, arg_0.x)))), vec3<bool>(!arg_1, var_0.b.a.x, _wgslsmith_clamp_u32(arg_0.x, _wgslsmith_mult_u32(arg_0.x, 1u), _wgslsmith_mod_u32(var_0.c, u_input.d)) >= ~(u_input.d << (u_input.d % 32u))), vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(269f)), _wgslsmith_f_op_f32(f32(-1f) * -169f)))));
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = abs(max(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-5i, var_0), vec2<i32>(5443i, -1i))) >> ((arg_0.b.b ^ firstLeadingBit(1u)) % 32u)) ^ ~firstTrailingBit(_wgslsmith_mult_i32(1i, abs(12829i)));
    var var_2 = min(-25851i, u_input.a.x);
    var_1 = max(max(-1540i, firstLeadingBit(10961i) << (firstLeadingBit(22383u) % 32u)) >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, arg_0.c) >> (vec2<u32>(18361u, 50207u) % vec2<u32>(32u))), vec2<u32>(arg_0.b.b, ~u_input.d)) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, i32(-1i) * -2147483647i, abs(20990i), abs(arg_1)), vec4<i32>(arg_1, -var_0, -arg_1, _wgslsmith_mult_i32(var_0, 42764i))), -(~(vec4<i32>(var_0, 57701i, u_input.c, -8408i) << (vec4<u32>(u_input.d, 10606u, 0u, 30211u) % vec4<u32>(32u))))));
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2(vec2<u32>(arg_0.b.b, 7518u), false, Struct_3(u_input.a.x, vec3<f32>(548f, -2214f, arg_0.a))).b.d.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, global0.a.x, global0.a.x, -413f) * _wgslsmith_f_op_vec4_f32(-arg_0.b.d.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.b.d.a))))));
    return arg_0.b.d;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = arg_1.d;
    let var_0 = _wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(45621u, arg_1.b, u_input.d))), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(59154u, ~arg_0, 1u)), abs(vec3<u32>(arg_0, arg_0, arg_0) << (~vec3<u32>(33862u, 116695u, 26067u) % vec3<u32>(32u)))), firstLeadingBit(vec3<u32>(1u, ~u_input.d, _wgslsmith_mod_u32(arg_1.b, _wgslsmith_add_u32(50684u, 9986u)))));
    let var_1 = 1384f;
    global0 = arg_1.d;
    let var_2 = 295f;
    return func_2(min(~(~vec2<u32>(1u, 4294967295u)), ~vec2<u32>(abs(4294967295u), 21261u & arg_1.b)), all(arg_1.a.yz), Struct_3(1i & max(_wgslsmith_dot_vec4_i32(vec4<i32>(-57367i, -17269i, u_input.a.x, 1i), vec4<i32>(u_input.b, u_input.c, u_input.c, 1i)), -1i), _wgslsmith_f_op_vec3_f32(select(func_2(~var_0.yx, arg_1.c, Struct_3(u_input.b, arg_1.d.a.wyy)).b.d.a.wwy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.yzy)), min(u_input.c, -1i) <= countOneBits(u_input.b))))).b.d;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_5, arg_3: f32) -> f32 {
    var var_0 = Struct_2(arg_2.c.a, 39022u, false & select(select(true || arg_2.c.c, arg_2.c.c, true), arg_2.b, all(select(vec3<bool>(true, arg_2.a.x, false), vec3<bool>(arg_2.c.c, arg_2.c.c, arg_2.b), vec3<bool>(arg_2.b, false, false)))), func_5(1u, Struct_2(select(!arg_2.a, arg_2.a, arg_2.a.x), u_input.d, arg_2.b, func_4(func_2(vec2<u32>(9667u, arg_0), arg_2.b, Struct_3(-2685i, arg_2.c.d.a.yyz)), 1i))));
    let var_1 = select(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.c, 30166i ^ u_input.a.x), u_input.b, ~min(u_input.a.x, u_input.b), _wgslsmith_mod_i32(abs(u_input.b), 2147483647i)), max((vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, u_input.c) | vec4<i32>(u_input.c, u_input.a.x, 39524i, -2147483647i)) >> (~vec4<u32>(41473u, 20656u, var_0.b, var_0.b) % vec4<u32>(32u)), ~(-vec4<i32>(-2147483647i, u_input.c, 58992i, u_input.b)))), firstTrailingBit(vec4<i32>(u_input.b, 13646i, ~u_input.b, max(-47543i, u_input.b)) | (~vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x) | abs(vec4<i32>(u_input.b, u_input.c, 4779i, u_input.c)))), false || arg_2.c.c);
    global0 = var_0.d;
    let var_2 = u_input.c;
    var var_3 = !(!select(select(var_0.a.yy, var_0.a.xy, vec2<bool>(arg_2.b, true)), select(select(var_0.a.yx, vec2<bool>(var_0.a.x, var_0.a.x), arg_2.a.yy), !vec2<bool>(arg_2.b, true), arg_2.c.a.xy), !arg_2.c.a.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.a.x)) + var_0.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1732f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(224f, _wgslsmith_f_op_f32(-global0.a.x)))), 1f, _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))));
    var var_0 = !vec2<bool>(!select(all(vec4<bool>(false, false, false, true)), 37733i >= u_input.b, true), true);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-175f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))) + _wgslsmith_f_op_f32(-global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1u, 4294967295u, Struct_5(vec3<bool>(true, false, var_0.x), false, Struct_2(vec3<bool>(var_0.x, var_0.x, false), u_input.d, var_0.x, Struct_1(global0.a)), global0.a.x), -162f))), _wgslsmith_f_op_f32(f32(-1f) * -2607f)))));
    var var_2 = true;
    let var_3 = Struct_5(vec3<bool>(!(u_input.d <= u_input.d), !var_0.x, true), all(vec2<bool>(any(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, true, false, true))), var_0.x)), Struct_2(!(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, 73879u), abs(vec4<u32>(u_input.d, 12700u, 4294967295u, 0u))), ~vec4<u32>(11414u, u_input.d, u_input.d, 1u)), any(func_3(!vec4<bool>(false, var_0.x, false, var_0.x), vec4<u32>(1574u, u_input.d, u_input.d, 4294967295u) & vec4<u32>(23190u, u_input.d, 45651u, u_input.d))), func_5(u_input.d, func_2(~vec2<u32>(0u, u_input.d), var_0.x == var_0.x, Struct_3(u_input.c, vec3<f32>(148f, 590f, var_1.a.x))).b)), _wgslsmith_f_op_f32(func_1(countOneBits(_wgslsmith_mult_u32(abs(4942u), ~u_input.d)), ~(~(~11532u)), Struct_5(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(15321u, u_input.d), vec2<u32>(1u, u_input.d)), select(true, true, var_0.x), Struct_3(2147483647i, global0.a.wyw)).b, _wgslsmith_f_op_f32(-global0.a.x)), global0.a.x)));
    let var_4 = func_2(select(vec2<u32>(_wgslsmith_div_u32(u_input.d, 4294967295u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(54908u, var_3.c.b), 69652u)), vec2<u32>(var_3.c.b, u_input.d) & vec2<u32>(u_input.d, abs(40664u)), vec2<bool>(select(true, all(var_3.a.zz), all(vec4<bool>(false, true, var_3.b, false))), true)), true, Struct_3(~20115i & u_input.c, vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), global0.a.x, _wgslsmith_f_op_f32(func_2(vec2<u32>(var_3.c.b, u_input.d), true, Struct_3(8610i, vec3<f32>(global0.a.x, 296f, 1265f))).e.x * -631f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~0u, 23982u), vec3<i32>(65464i, _wgslsmith_dot_vec3_i32(vec3<i32>(43813i, u_input.b, u_input.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.c), vec3<i32>(u_input.b, 18569i, -7545i))), -1i) & ((_wgslsmith_clamp_vec3_i32(vec3<i32>(-3688i, u_input.c, u_input.c), vec3<i32>(u_input.a.x, -294i, u_input.c), vec3<i32>(u_input.c, 20149i, 268i)) << (vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u))) << (vec3<u32>(u_input.d, var_3.c.b | 28610u, 0u) % vec3<u32>(32u))), ~(~(~(~vec3<u32>(26709u, var_3.c.b, var_4.b.b)))));
}

