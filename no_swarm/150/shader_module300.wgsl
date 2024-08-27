struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(54025u, 25389u), vec2<u32>(44964u, 28623u), vec2<u32>(5130u, 0u), vec2<u32>(0u, 48298u), vec2<u32>(1u, 1u), vec2<u32>(41301u, 45643u), vec2<u32>(18582u, 0u), vec2<u32>(54863u, 36912u), vec2<u32>(11934u, 0u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    global0 = array<vec2<u32>, 9>();
    var var_0 = arg_1;
    let var_1 = vec4<i32>(~var_0.c.x, var_0.c.x, var_0.c.x, ~countOneBits(arg_1.c.x));
    var var_2 = Struct_1(1u, 144f, var_1.yyw, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, arg_1.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1075f, 150f) + var_0.d)), var_0.d))), arg_1.e);
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(f32(-1f) * -547f)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), all(vec2<bool>(true, arg_1.x < 455f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(func_3(u_input.d, Struct_1(16940u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), vec3<i32>(arg_0, ~(-60441i), -39260i), vec2<f32>(-1000f, 1000f), vec4<u32>(u_input.d.x, 5246u, abs(u_input.d.x), u_input.d.x >> (11202u % 32u))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1055f, arg_1.x))))))), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true))), arg_1.x)));
    let var_2 = Struct_1(firstTrailingBit(min(436u, firstLeadingBit(u_input.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1384f * var_1.x) * -1710f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f - 539f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)))))), vec3<i32>(max(abs(arg_0 << (0u % 32u)), u_input.c), firstTrailingBit(1i), ~(~(~u_input.a))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-709f - _wgslsmith_div_f32(2138f, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -365f, var_0.x)))))), _wgslsmith_div_vec4_u32(select(countOneBits(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.d.x)), abs(vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.d.x)), vec4<bool>(false, var_0.x, var_0.x, true)) & vec4<u32>(~0u, u_input.d.x, u_input.d.x, max(u_input.d.x, 39270u)), ~vec4<u32>(~u_input.d.x, abs(4294967295u), u_input.d.x, 4294967295u)));
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_f32(sign(var_2.b));
    return vec2<bool>(true == all(vec4<bool>(var_4 > 493f, true, false, var_0.x)), var_0.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_2.zy;
    let var_1 = _wgslsmith_f_op_f32(578f + -1401f);
    var_0 = func_2(0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-867f, -1267f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(172f, 2350f))))));
    global0 = array<vec2<u32>, 9>();
    var var_2 = ~arg_1;
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, ~max(arg_0.x, 4294967295u), ~56231u, (u_input.d.x ^ u_input.d.x) | _wgslsmith_div_u32(28751u, arg_0.x)), vec4<u32>(0u >> (arg_0.x % 32u), arg_0.x, _wgslsmith_mod_u32(u_input.d.x, u_input.d.x), arg_0.x) << ((~vec4<u32>(arg_0.x, arg_0.x, u_input.d.x, u_input.d.x) & (vec4<u32>(u_input.d.x, 0u, 56880u, u_input.d.x) ^ vec4<u32>(43677u, u_input.d.x, 73424u, u_input.d.x))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(676f, var_1, true))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(min(1000f, var_1))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(min(u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, arg_0.x)), Struct_1(32274u, var_1, vec3<i32>(2147483647i, u_input.b, arg_1), vec2<f32>(-106f, var_1), vec4<u32>(20592u, 62212u, 75842u, u_input.d.x)))), 717f, all(arg_2.zx)))), ~(~(~(-vec3<i32>(u_input.a, 0i, u_input.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 209f))) - vec2<f32>(-673f, var_1))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -532f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(607f, var_1), vec2<f32>(var_1, var_1)))))), max(~(~(~vec4<u32>(u_input.d.x, 4294967295u, 1u, 1u))), min(firstLeadingBit(vec4<u32>(1u, u_input.d.x, 17966u, u_input.d.x)), vec4<u32>(~4294967295u, ~21184u, ~0u, 0u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = func_1(vec3<u32>(4294967295u, arg_0.e.x | ~select(24539u, 8650u, arg_1.x), 37273u | arg_2.e.x), u_input.a, vec3<bool>(any(vec3<bool>(false, all(vec3<bool>(true, true, false)), true)), arg_1.x, all(select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, true, false), !arg_1.x))));
    var var_1 = arg_1.x;
    var var_2 = !any(arg_1);
    let var_3 = u_input.d.x == ~_wgslsmith_div_u32(5172u, _wgslsmith_sub_u32(u_input.d.x << (arg_0.a % 32u), max(u_input.d.x, 6120u)));
    var var_4 = func_1(var_0.e.zyx, 1i, vec3<bool>(func_2(-u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.d, vec2<f32>(-207f, 514f)))).x, all(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -27998i, arg_0.c.x, 17269i), vec4<i32>(-1i, 2147483647i, arg_2.c.x, u_input.a)), vec2<f32>(arg_0.b, arg_2.b))), true || (_wgslsmith_f_op_f32(ceil(-472f)) > _wgslsmith_f_op_f32(963f + arg_0.b))));
    return -abs(_wgslsmith_clamp_i32(-(i32(-1i) * -36501i), abs(firstLeadingBit(10705i)), _wgslsmith_add_i32(-arg_2.c.x, var_4.c.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~(firstLeadingBit(func_1(max(vec3<u32>(arg_0.a, 55881u, arg_1.a), u_input.d), i32(-1i) * -1i, vec3<bool>(true, true, true)).c.x) >> (64612u % 32u));
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = countOneBits(firstLeadingBit(arg_1.c.zz));
    var_1 = arg_0;
    return Struct_1(_wgslsmith_add_u32(select(u_input.d.x, min(arg_1.a, u_input.d.x), true) & arg_1.e.x, arg_0.e.x ^ min(arg_1.e.x, 14584u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1093f, -377f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d.x)))))), _wgslsmith_add_vec3_i32(-(arg_1.c ^ (vec3<i32>(1i, var_2.x, 15742i) & arg_1.c)), ~max(arg_1.c, vec3<i32>(13919i, arg_0.c.x, 8015i)) >> (arg_1.e.zxy % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.d.x, var_1.b), _wgslsmith_f_op_vec2_f32(-arg_1.d))), _wgslsmith_mod_vec4_u32(var_1.e, arg_1.e) ^ ~max(vec4<u32>(6857u, arg_0.e.x, 1u, 0u), vec4<u32>(var_1.a, 9772u, arg_0.a, arg_0.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 16957u, 76856u, 53773u), vec4<u32>(0u, 0u, u_input.d.x, u_input.d.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1423f, _wgslsmith_f_op_f32(1000f + -864f))), vec3<i32>(_wgslsmith_add_i32(u_input.c, 0i), u_input.c, func_4(func_1(u_input.d, u_input.c, vec3<bool>(true, false, false)), vec2<bool>(true, true), func_1(vec3<u32>(u_input.d.x, 0u, u_input.d.x), 13685i, vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1751f, 454f)), _wgslsmith_f_op_f32(f32(-1f) * -1201f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(296f, -103f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1183f, -117f) * vec2<f32>(520f, 713f)))), vec4<u32>(6733u, 0u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 1u, 30331u, u_input.d.x)), _wgslsmith_mult_u32(u_input.d.x, u_input.d.x >> (u_input.d.x % 32u)), ~1u << (0u % 32u))), Struct_1(0u, _wgslsmith_f_op_f32(367f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, 1663f)))), ~(~_wgslsmith_add_vec3_i32(vec3<i32>(-55491i, u_input.b, 1i), vec3<i32>(-44655i, u_input.c, u_input.c))), vec2<f32>(_wgslsmith_f_op_f32(-1656f + _wgslsmith_f_op_f32(f32(-1f) * -1965f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f + -393f) * _wgslsmith_f_op_f32(-1480f - -1113f))), select(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.d.x, 16963u, 0u), ~vec4<u32>(0u, u_input.d.x, 0u, 1u)), vec4<u32>(89406u, 31432u, min(1u, u_input.d.x), select(u_input.d.x, u_input.d.x, true)), !all(vec4<bool>(true, true, false, false)))));
    let var_1 = -var_0.c.x < firstTrailingBit(i32(-1i) * -40460i);
    var var_2 = var_0.b;
    global0 = array<vec2<u32>, 9>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.e.zww, Struct_1(u_input.d.x, var_0.b, var_0.c, vec2<f32>(-271f, var_0.b), var_0.e))))))), var_0.d.x, 535f, -1000f);
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(863f, vec3<i32>(u_input.b, u_input.b, _wgslsmith_mult_i32(var_0.c.x, i32(-1i) * -57727i)), var_0.e.x);
}

