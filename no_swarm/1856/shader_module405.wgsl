struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    let var_0 = arg_0.c;
    var var_1 = Struct_3(arg_0.c.c.x, arg_1, 1447f, Struct_1(!(!(!vec4<bool>(arg_1.c.a.x, true, arg_1.c.a.x, false))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.b, 1i, arg_0.c.b), ~vec4<i32>(3013i, -1i, -48088i, 18623i)), vec4<u32>(4588u >> (select(7805u, 1u, arg_2.a.x) % 32u), ~1u, 0u, ~(~1u)), _wgslsmith_dot_vec2_u32(firstTrailingBit(~arg_1.c.c.wy), ~(~vec2<u32>(arg_2.c.x, 25998u)))), arg_1.a);
    let var_2 = !(!(!vec2<bool>(true, var_1.b.c.a.x)));
    var_1 = Struct_3(arg_0.c.c.x, Struct_2(arg_0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(arg_0.b, arg_1.b)), arg_0.b, vec4<bool>(var_1.d.a.x, arg_0.c.a.x, true, var_2.x))), var_1.b.c), var_1.e.x, arg_1.c, arg_1.a);
    var_1 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.x, 28980u, 0u), var_0.c.xwx), var_0.d), vec2<u32>(abs(71705u), 80841u)), _wgslsmith_div_u32(~reverseBits(19325u), arg_2.c.x)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1442f - 384f)), _wgslsmith_f_op_f32(-var_1.e.x), arg_1.a.x), arg_1.b, Struct_1(arg_0.c.a, abs(countOneBits(var_1.b.c.b)), arg_0.c.c, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) - arg_1.a.x)), arg_2, vec4<f32>(_wgslsmith_f_op_f32(313f * 378f), _wgslsmith_f_op_f32(min(-319f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + -1060f))), -409f, _wgslsmith_f_op_f32(f32(-1f) * -1026f)));
    return select(var_1.b.c.c.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(~(37540u >> (0u % 32u)), arg_2.c.x), ~1447u >> (countOneBits(~47168u) % 32u)), any(select(!vec4<bool>(true, arg_0.c.a.x, var_2.x, true), select(!arg_1.c.a, !vec4<bool>(false, var_2.x, arg_0.c.a.x, false), !vec4<bool>(arg_0.c.a.x, true, var_0.a.x, var_1.b.c.a.x)), !var_1.b.c.a)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = func_3(arg_0, Struct_2(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x - -289f), _wgslsmith_f_op_f32(-1028f * arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x + arg_0.a.x), arg_0.a.x), Struct_1(select(arg_0.c.a, vec4<bool>(arg_0.c.a.x, global0.x, arg_0.c.a.x, global0.x), arg_0.c.a), -49390i, arg_0.c.c, arg_0.c.c.x)), arg_0.c, vec2<u32>(min(4294967295u >> (arg_0.c.d % 32u), ~1u), _wgslsmith_mod_u32(4294967295u, u_input.a))) | 1516u;
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(78226u, ~u_input.a) & u_input.b, u_input.a | 1u, 4294967295u, _wgslsmith_mod_u32(u_input.b, ~24157u)), vec4<u32>(firstLeadingBit(~_wgslsmith_dot_vec2_u32(arg_0.c.c.zw, vec2<u32>(42818u, arg_0.c.c.x))), max(4294967295u, u_input.a), select(arg_0.c.c.x, 1u, arg_0.c.a.x), 57074u));
    var var_1 = ~arg_0.c.c.x;
    let var_2 = arg_0.a.wwy;
    var var_3 = _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~_wgslsmith_mult_vec2_u32(arg_0.c.c.yx, arg_0.c.c.wx)), select(30674u | u_input.a, select(arg_0.c.c.x, 1u, true), _wgslsmith_f_op_f32(abs(-966f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
    return ~36945u;
}

fn func_1() -> i32 {
    global0 = !vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, global0.x), vec3<bool>(false, true, true))) | all(vec3<bool>(global0.x, global0.x, false)), false);
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~8231u, func_2(Struct_2(vec4<f32>(-1000f, -1000f, -1203f, -336f), vec4<f32>(-789f, 1000f, 856f, -245f), Struct_1(vec4<bool>(global0.x, false, false, true), 11560i, vec4<u32>(u_input.b, u_input.a, 1u, 63649u), u_input.a))), min(32896u, 38074u), max(u_input.b, u_input.a)), vec4<u32>(38319u, ~u_input.b, ~u_input.b, ~u_input.a)), ~u_input.b), _wgslsmith_mod_u32(abs(u_input.b), ~0u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1301f, 1448f, -829f, -2420f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1587f, -1000f, -1684f, -586f), vec4<f32>(1000f, 1170f, -1128f, 1577f), vec4<bool>(global0.x, global0.x, false, global0.x)))))), vec4<f32>(-1000f, -110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1448f)))), -348f), Struct_1(select(select(!vec4<bool>(true, false, global0.x, true), vec4<bool>(global0.x, true, false, global0.x), !vec4<bool>(true, global0.x, true, false)), select(select(vec4<bool>(false, global0.x, true, false), vec4<bool>(true, false, global0.x, false), global0.x), !vec4<bool>(false, global0.x, global0.x, true), all(vec4<bool>(global0.x, false, global0.x, true))), global0.x), abs(-2147483647i), (vec4<u32>(87853u, 1u, var_0.x, 67393u) ^ ~vec4<u32>(31599u, var_0.x, var_0.x, 1u)) | vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(76156u, 1u), vec2<u32>(19229u, var_0.x)), 4294967295u, _wgslsmith_add_u32(4294967295u, var_0.x), ~var_0.x), ~71306u));
    let var_2 = Struct_3(var_0.x, Struct_2(vec4<f32>(_wgslsmith_div_f32(var_1.a.x, var_1.b.x), _wgslsmith_f_op_f32(-895f - _wgslsmith_f_op_f32(f32(-1f) * -217f)), _wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x)), 226f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, var_1.a.x, var_1.a.x, -481f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, 1000f, var_1.a.x))))), var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.b.x, var_1.b.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(469f - var_1.b.x) + _wgslsmith_f_op_f32(-var_1.a.x))), Struct_1(var_1.c.a, var_1.c.b & _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(0i, var_1.c.b, var_1.c.b)), vec3<i32>(var_1.c.b, var_1.c.b, -19487i) >> (var_1.c.c.xyw % vec3<u32>(32u))), var_1.c.c, _wgslsmith_dot_vec3_u32(var_1.c.c.zzw, vec3<u32>(1u, 4294967295u, 1460u)) | _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, 10765u), 4294967295u)), var_1.b);
    var var_3 = Struct_3(var_2.d.c.x, var_2.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f) + _wgslsmith_f_op_f32(var_1.b.x * -481f)))), var_2.d, var_2.e);
    return 2440i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(~(-37065i), 1i, -2147483647i, ~(-29148i)), true) & vec4<i32>(reverseBits(1i), countOneBits(-1i), 1i, 0i)) ^ _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(~0i, 31909i, func_1(), _wgslsmith_mult_i32(21603i, 5897i))), select(abs(~vec4<i32>(54262i, 1i, -2307i, 1i)), vec4<i32>(1i, 1i, 1i, 1i), select(!vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, false, true, global0.x), true)));
    var var_1 = Struct_1(vec4<bool>(all(select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)), vec2<bool>(global0.x, global0.x), true)), global0.x, all(!vec3<bool>(global0.x, global0.x, true)), global0.x), -var_0.x, min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 24842u) << (vec4<u32>(26803u, u_input.a, u_input.b, u_input.a) % vec4<u32>(32u)), min(vec4<u32>(u_input.b, 6503u, 46805u, u_input.a), vec4<u32>(4294967295u, 0u, 0u, u_input.a))), _wgslsmith_div_vec4_u32(~vec4<u32>(70800u, 15444u, u_input.b, u_input.b), vec4<u32>(u_input.a, 17961u, u_input.b, 4294967295u) & vec4<u32>(31910u, u_input.b, u_input.b, 4294967295u))) ^ max(~(vec4<u32>(31903u, u_input.a, u_input.b, u_input.b) & vec4<u32>(0u, 0u, 59222u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)) | vec4<u32>(u_input.a, 61090u, u_input.a, u_input.b)), u_input.a);
    var var_2 = var_1.a.yy;
    var var_3 = false;
    var_1 = Struct_1(vec4<bool>(true, global0.x, all(!var_1.a.yzy), var_2.x), 2147483647i, vec4<u32>(4294967295u, u_input.b, var_1.d, var_1.d), u_input.b);
    var_2 = vec2<bool>(true, true);
    var var_4 = var_1.a.ywx;
    var_4 = select(var_1.a.yxz, !select(!vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(var_4.x, var_1.a.x, true), select(var_1.a.xyy, var_1.a.wyy, select(var_1.a.ywy, vec3<bool>(true, var_2.x, false), var_1.a.xxx))), var_1.a.xxx);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-2147483647i, var_0.x), _wgslsmith_clamp_i32(var_0.x ^ firstLeadingBit(1i), countOneBits(var_0.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-50574i, 0i, 2147483647i), var_0.wyy)));
}

