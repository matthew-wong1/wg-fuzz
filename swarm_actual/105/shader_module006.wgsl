struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: vec4<f32>;

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = select(select(select(vec3<bool>(true, arg_2.a.b.x != arg_2.a.a, arg_2.a.b.x), !select(vec3<bool>(false, arg_2.e.x, true), arg_2.a.b, arg_2.a.b), select(vec3<bool>(false, arg_2.e.x, arg_2.a.b.x), select(arg_2.a.b, vec3<bool>(arg_2.e.x, false, arg_2.e.x), false), arg_2.a.b)), !vec3<bool>(false, arg_2.a.a, arg_2.a.a), false), !select(vec3<bool>(all(arg_2.a.b), arg_2.e.x, true), select(!arg_2.a.b, arg_2.a.b, arg_2.a.b), !arg_2.a.b), arg_2.a.b);
    return select(select(select(vec2<bool>(true, true), select(arg_2.a.b.zz, !vec2<bool>(var_0.x, true), vec2<bool>(true, true)), all(vec2<bool>(false, var_0.x))), arg_2.a.b.xz, all(select(vec3<bool>(arg_2.a.a, true, var_0.x), vec3<bool>(false, arg_2.e.x, var_0.x), arg_2.e.x))), select(vec2<bool>(all(select(vec4<bool>(arg_2.e.x, arg_2.e.x, false, false), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, true, false))), !all(vec4<bool>(true, var_0.x, true, false))), !vec2<bool>(all(vec2<bool>(var_0.x, false)), true), vec2<bool>(true, false)), vec2<bool>(_wgslsmith_clamp_u32(u_input.a, 4294967295u | u_input.a, 0u) < 4747u, false));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(any(!select(func_3(4294967295u, vec2<i32>(-8814i, 2147483647i), Struct_2(Struct_1(false, vec3<bool>(true, true, false)), global1.x, global1.ywy, vec3<i32>(-34939i, 18516i, -16263i), vec2<bool>(true, false))), vec2<bool>(true, true), false)), vec3<bool>(false, true, false));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(261f, _wgslsmith_f_op_f32(-global1.x), global1.x, 1490f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 1667f, global1.x) - vec4<f32>(1000f, global1.x, global1.x, -837f)) + vec4<f32>(global1.x, global1.x, -454f, -1383f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(888f, -1238f, global1.x, -176f) - vec4<f32>(global1.x, 981f, global1.x, -1642f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(980f, global1.x, 547f, -890f)))))));
    var var_2 = u_input.a;
    var var_3 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 105941u), vec3<u32>(u_input.a, 4294967295u, u_input.a) & min(vec3<u32>(63148u, u_input.a, u_input.a), vec3<u32>(u_input.a, 33242u, u_input.a))), vec3<u32>(firstTrailingBit(u_input.a), 1u >> (u_input.a % 32u), _wgslsmith_div_u32(41244u, 23178u)) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 36893u, 4294967295u), max(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(u_input.a, 4294967295u, u_input.a))) % vec3<u32>(32u)), vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(21831u, 64870u), vec2<u32>(u_input.a, u_input.a))), u_input.a, (0u ^ u_input.a) | 0u));
    var var_4 = Struct_2(Struct_1(false, !(!(!var_0.b))), global1.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.xwx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.xyw)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 812f, var_1.x))))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, -2147483647i, 0i), vec3<i32>(14529i, 20129i, -2147483647i), ~vec3<i32>(-25825i, 1i, -2147483647i)), vec3<i32>(-20765i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1879i), vec2<i32>(-51529i, 20655i)), i32(-1i) * -10687i), vec3<i32>(~(-2147483647i), _wgslsmith_mult_i32(3244i, 0i), -19079i)), vec3<i32>(0i, -1i, ~(-22769i))), !var_0.b.zz);
    return Struct_1(any(select(!(!vec4<bool>(var_4.e.x, false, false, var_4.e.x)), vec4<bool>(var_4.a.a, all(vec4<bool>(true, false, false, true)), var_4.a.b.x, true), var_4.e.x)), vec3<bool>(u_input.a != _wgslsmith_mod_u32(u_input.a, var_3.x), false, var_0.a));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(~arg_3, abs(-1i), arg_3), _wgslsmith_clamp_i32(arg_3, abs(arg_3 >> ((1u << (1u % 32u)) % 32u)), 47287i));
    var var_1 = Struct_2(Struct_1(true, vec3<bool>(arg_1.a, -592f > arg_0, true != !arg_1.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(arg_0 + 526f))), _wgslsmith_f_op_f32(global1.x * arg_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.wwz), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(global1.wyy)))))), min(-((vec3<i32>(2147483647i, -20544i, -2147483647i) ^ vec3<i32>(var_0.x, var_0.x, -6352i)) << ((vec3<u32>(u_input.a, 0u, u_input.a) ^ vec3<u32>(4294967295u, 0u, 48081u)) % vec3<u32>(32u))), vec3<i32>(abs(0i), var_0.x, _wgslsmith_add_i32(~var_0.x, var_0.x ^ var_0.x))), vec2<bool>(all(vec4<bool>(arg_1.b.x, false, func_3(u_input.a, var_0, Struct_2(arg_1, arg_2, vec3<f32>(arg_0, -784f, 489f), vec3<i32>(-2147483647i, arg_3, var_0.x), vec2<bool>(arg_1.b.x, true))).x, arg_1.a & arg_1.a)), all(select(select(arg_1.b.xz, arg_1.b.yz, vec2<bool>(arg_1.b.x, arg_1.b.x)), select(vec2<bool>(arg_1.b.x, true), arg_1.b.zy, vec2<bool>(false, arg_1.b.x)), func_2().b.x))));
    let var_2 = arg_1;
    let var_3 = Struct_1(true, !(!(!(!vec3<bool>(var_2.b.x, false, var_1.a.a)))));
    var var_4 = -(vec4<i32>(4627i, 1i << (~4294967295u % 32u), abs(1i), max(1i, var_1.d.x)) << (vec4<u32>(u_input.a, abs(u_input.a ^ 82324u), _wgslsmith_div_u32(0u | u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), ~u_input.a >> (11018u % 32u)) % vec4<u32>(32u)));
    return func_2();
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(min(arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2034f))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1071f))), arg_0.d.x), _wgslsmith_f_op_f32(max(164f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - 1679f), _wgslsmith_f_op_f32(floor(-572f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, arg_0.c.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.wyw), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(849f, -573f, 1447f), global1.xzw))))), _wgslsmith_div_vec3_i32(arg_0.d, arg_0.d), !vec2<bool>(any(select(vec4<bool>(arg_0.a.b.x, arg_1.x, false, true), vec4<bool>(arg_0.e.x, arg_1.x, arg_0.e.x, true), arg_1.x)), arg_0.a.a));
    let var_1 = var_0.a;
    var var_2 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-819f, _wgslsmith_div_f32(global1.x, 1164f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1658f, global1.x)) + _wgslsmith_f_op_f32(global1.x - var_0.b)))), arg_0.c.x), func_2(), _wgslsmith_f_op_f32(round(229f)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.d.x, -2147483647i), -vec3<i32>(11278i, -26596i, -1i)));
    let var_3 = ~(~firstTrailingBit(~var_0.d.zy) << (_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, max(4294967295u, u_input.a)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(54582u, u_input.a))) % vec2<u32>(32u)));
    let var_4 = reverseBits(_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 2323u), vec2<u32>(0u, 24169u)), min(~vec2<u32>(1u, u_input.a), min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 40591u)))) & select(vec2<u32>(_wgslsmith_clamp_u32(38793u, u_input.a, u_input.a), 0u), firstTrailingBit(~vec2<u32>(25624u, u_input.a)), vec2<bool>(arg_0.e.x, !var_0.e.x)));
    return !(4294967295u <= select(_wgslsmith_mult_u32(~14637u, min(1u, 1u)), var_4.x, !(!arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(vec3<bool>(true, false, true)), !(!(func_1(Struct_2(Struct_1(false, vec3<bool>(false, true, false)), global1.x, global1.yzy, vec3<i32>(-1i, 42195i, 2147483647i), vec2<bool>(true, false)), vec2<bool>(true, true)) & all(vec2<bool>(false, false)))), true, false);
    global2 = 4294967295u ^ u_input.a;
    let var_1 = vec3<i32>(55558i, -2147483647i, ((i32(-1i) * -75942i) << (firstLeadingBit(u_input.a) % 32u)) >> (max(reverseBits(u_input.a), abs(57039u) << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)) % 32u));
    let var_2 = _wgslsmith_clamp_vec2_i32(var_1.zy, -countOneBits(vec2<i32>(-2147483647i >> (u_input.a % 32u), ~var_1.x)), max(var_1.zz, firstLeadingBit(vec2<i32>(var_1.x, -2147483647i))) | vec2<i32>(var_1.x, -2147483647i));
    let var_3 = -(var_2.x << (min(0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, u_input.a), _wgslsmith_div_u32(u_input.a, 19138u))) % 32u));
    let var_4 = true;
    let var_5 = vec2<bool>(var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.x)), 600f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) + -2133f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    let var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-745f)) * 806f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-293f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-284f, -1000f, global1.x, -1279f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(9783i & var_1.x, 136f);
}

