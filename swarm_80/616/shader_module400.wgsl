struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32) -> vec4<f32> {
    let var_0 = abs(u_input.d.x);
    global0 = firstLeadingBit(arg_1.a);
    let var_1 = Struct_3(~max(arg_2, (var_0 | arg_2) << (var_0 % 32u)), (vec4<u32>(~9793u, 4294967295u, arg_2, arg_0.x) ^ arg_0) >> (vec4<u32>(~11432u, 1u, ~(~1u), arg_0.x) % vec4<u32>(32u)));
    let var_2 = abs(~u_input.a);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2190f) * _wgslsmith_f_op_f32(abs(850f)));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_1.d.x + var_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e, var_3) + var_3) + var_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-753f + -1313f) * -1274f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1845f)) * arg_1.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(996f, _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(round(var_3)), -676f)), !vec4<bool>(arg_1.b.x <= -2615f, all(!arg_1.c.e.xy), true, true)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(-_wgslsmith_mod_i32(arg_1.a, arg_1.a), arg_0.zxw, Struct_1(-2147483647i, arg_1.e, arg_1.d.x, arg_1.e, !arg_1.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0)))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.d.x, u_input.b, u_input.d.x, 1u)), vec4<u32>(u_input.d.x, 41486u, u_input.b, u_input.b)), Struct_2(arg_1.a, _wgslsmith_f_op_vec3_f32(trunc(arg_0.yzz)), Struct_1(-31422i, arg_1.b, false, arg_1.d, vec3<bool>(false, false, arg_1.e.x)), _wgslsmith_f_op_vec4_f32(-arg_0), 1000f), 3712u))), _wgslsmith_f_op_f32(trunc(421f)));
    let var_1 = arg_0.x;
    var var_2 = Struct_2(u_input.e, _wgslsmith_f_op_vec3_f32(-arg_0.wzw), arg_1, arg_0, -1689f);
    let var_3 = Struct_3(max(43915u, 2139u), ~select(vec4<u32>(reverseBits(33294u), 0u << (u_input.b % 32u), _wgslsmith_div_u32(40936u, 4294967295u), _wgslsmith_sub_u32(46879u, u_input.b)), vec4<u32>(~58100u, _wgslsmith_sub_u32(u_input.b, 1u), abs(65671u), ~0u), vec4<bool>(arg_0.x > -1000f, !arg_1.d.x, arg_1.b.x, var_0.c.d.x)));
    let var_4 = Struct_4(Struct_2(abs(0i), var_2.d.zxx, Struct_1(arg_1.a, vec3<bool>(!var_2.c.e.x, true, true), arg_1.c, !select(vec3<bool>(var_0.c.d.x, true, true), var_0.c.e, vec3<bool>(var_0.c.d.x, true, var_0.c.d.x)), select(arg_1.b, arg_1.d, select(vec3<bool>(false, false, true), vec3<bool>(false, var_2.c.b.x, var_0.c.c), var_0.c.d))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.d.x, var_0.b.x, -1336f, var_0.b.x), vec4<f32>(-660f, -1347f, 867f, 346f))))), var_0.e), Struct_2(~1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - var_2.e), _wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_f_op_f32(-var_1))), arg_1, arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2317f, var_0.e) * -581f)), var_0.c);
    return !select(select(select(!vec4<bool>(arg_1.b.x, var_0.c.b.x, arg_1.b.x, true), select(vec4<bool>(true, var_4.a.c.c, false, var_4.a.c.d.x), vec4<bool>(var_2.c.b.x, false, var_4.b.c.e.x, var_4.c.c), vec4<bool>(false, true, true, true)), all(vec2<bool>(false, false))), select(vec4<bool>(true, false, var_2.c.b.x, true), !vec4<bool>(arg_1.d.x, true, false, true), !vec4<bool>(arg_1.b.x, false, arg_1.b.x, var_0.c.b.x)), !(!vec4<bool>(arg_1.e.x, arg_1.d.x, false, var_2.c.e.x))), select(select(!vec4<bool>(var_2.c.d.x, arg_1.b.x, arg_1.e.x, false), select(vec4<bool>(arg_1.d.x, var_0.c.c, true, false), vec4<bool>(true, true, false, true), false), var_4.c.c), vec4<bool>(false, all(vec4<bool>(var_0.c.b.x, arg_1.e.x, var_0.c.d.x, true)), all(vec4<bool>(var_0.c.e.x, var_2.c.d.x, true, var_2.c.c)), any(var_4.a.c.d)), select(select(vec4<bool>(var_0.c.e.x, var_2.c.d.x, arg_1.e.x, var_0.c.c), vec4<bool>(false, var_4.a.c.c, var_4.a.c.b.x, var_2.c.e.x), vec4<bool>(false, var_0.c.d.x, var_2.c.d.x, arg_1.b.x)), !vec4<bool>(false, var_0.c.e.x, var_0.c.b.x, false), vec4<bool>(false, true, var_2.c.c, var_4.a.c.b.x))), true);
}

fn func_1() -> f32 {
    let var_0 = -272f;
    let var_1 = -_wgslsmith_dot_vec4_i32(u_input.a, u_input.a << (vec4<u32>(0u, 973u, u_input.b, u_input.b) % vec4<u32>(32u))) > 18336i;
    let var_2 = Struct_1(abs(firstLeadingBit(-_wgslsmith_mod_i32(u_input.a.x, u_input.c.x))), vec3<bool>(any(!vec4<bool>(var_1, true, true, false)), !var_1, select(_wgslsmith_mult_i32(u_input.c.x, 1i), i32(-1i) * -9531i, var_1) <= u_input.a.x), var_1, !(!select(!vec3<bool>(true, var_1, var_1), vec3<bool>(true, true, true), var_1)), vec3<bool>(false, all(vec2<bool>(16263u < u_input.d.x, var_1)), all(!func_2(vec4<f32>(1203f, -1075f, var_0, -264f), Struct_1(u_input.e, vec3<bool>(var_1, var_1, var_1), var_1, vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, true))))));
    let var_3 = u_input.b;
    let var_4 = Struct_3(18681u, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(1u, var_3, 8721u, 4294967295u)), ~abs(vec4<u32>(7632u, 4294967295u, 5258u, u_input.b))), vec4<u32>(u_input.b, 5553u, firstTrailingBit(_wgslsmith_sub_u32(24156u, 1u)), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(42850u, 1u))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(u_input.e, ~20304i);
    global0 = var_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f + 1266f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -215f));
    global0 = ~(-_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.zyx & vec3<i32>(u_input.c.x, 1i, 0i), ~u_input.a.zxz), u_input.a.www));
    let var_2 = Struct_1(-var_0, !vec3<bool>(!(-1i >= var_0), true, func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, var_1, -187f, var_1))), Struct_1(u_input.e, vec3<bool>(true, true, false), true, vec3<bool>(false, false, false), vec3<bool>(false, true, false))).x), true, select(vec3<bool>(select(true, false, true), u_input.e >= u_input.e, true), !func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, 872f, 947f) * vec4<f32>(380f, var_1, var_1, 721f)), Struct_1(var_0, vec3<bool>(false, true, false), false, vec3<bool>(false, true, true), vec3<bool>(true, true, true))).wwx, vec3<bool>(all(func_2(vec4<f32>(var_1, -890f, 204f, 308f), Struct_1(-2147483647i, vec3<bool>(false, true, true), false, vec3<bool>(true, false, false), vec3<bool>(false, false, true))).zw), true, false)), vec3<bool>(true, all(func_2(vec4<f32>(var_1, 418f, 1560f, var_1), Struct_1(var_0, vec3<bool>(true, true, true), false, vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), false));
    let var_3 = select(var_2.e.zx, vec2<bool>(any(!select(var_2.e.yz, var_2.b.yx, var_2.b.x)), !(false && (u_input.c.x > var_2.a))), var_2.b.xy);
    let var_4 = Struct_1(0i ^ _wgslsmith_mult_i32(firstTrailingBit(2147483647i >> (u_input.b % 32u)), ~firstLeadingBit(var_0)), var_2.e, !(var_3.x | false), vec3<bool>(all(var_2.d.zy), false, true), vec3<bool>(var_3.x, all(vec3<bool>(var_3.x & var_3.x, !var_2.b.x, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-24986i, -1i, -72893i), -730f, countOneBits(_wgslsmith_dot_vec3_i32(-countOneBits(u_input.a.yxw), vec3<i32>(var_4.a, var_2.a, -2147483647i) >> (countOneBits(vec3<u32>(4294967295u, 0u, 51913u)) % vec3<u32>(32u)))), _wgslsmith_mod_vec2_i32(select(-u_input.a.xz, min(u_input.c ^ vec2<i32>(var_0, var_4.a), reverseBits(u_input.c)), var_2.b.zx), vec2<i32>(var_4.a, var_2.a) ^ vec2<i32>(~var_2.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_2.a, 6433i), vec3<i32>(var_0, 0i, 2147483647i)))), -2147483647i);
}

