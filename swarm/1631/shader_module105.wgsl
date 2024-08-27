struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool = false;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = Struct_3(vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(43527u, u_input.b, 7238u, 1u), firstTrailingBit(u_input.a)) > u_input.a.x, arg_0, arg_0, true), 52032u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1684f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-501f, -338f)) - -2050f))))));
    global0 = select(var_0.a.x, true, true);
    global0 = any(!vec4<bool>(!var_0.a.x, (var_0.b != 77579u) || var_0.a.x, var_0.a.x, var_0.a.x));
    let var_1 = Struct_4(~vec2<u32>(u_input.a.x, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, var_0.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1182f, 461f), vec2<f32>(-412f, var_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c)), var_0.a.yy)))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -u_input.c.x, _wgslsmith_div_i32(u_input.c.x ^ 39652i, _wgslsmith_add_i32(u_input.d.x, u_input.c.x)), u_input.d.x), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-2147483647i, 0i, u_input.d.x, 0i) << (u_input.a % vec4<u32>(32u))), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, u_input.e, u_input.d.x), u_input.c))), abs(_wgslsmith_mult_vec3_u32(max(max(u_input.a.yzy, vec3<u32>(31543u, 26824u, var_0.b)), _wgslsmith_div_vec3_u32(u_input.a.yxw, vec3<u32>(u_input.b, 0u, var_0.b))), min(vec3<u32>(1u, var_0.b, u_input.a.x), ~u_input.a.yzy))), var_0.a);
    global0 = !var_1.e.x;
    return var_0.a.xy;
}

fn func_2() -> Struct_1 {
    global0 = false;
    global1 = any(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), false), func_3(true))));
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-850f, 825f, 1281f)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(-507f)), 193f, _wgslsmith_f_op_f32(f32(-1f) * -251f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-127f, 181f, -961f) * vec3<f32>(1088f, -1387f, 1317f))), vec3<f32>(-830f, _wgslsmith_f_op_f32(-1000f + -643f), -249f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1501f, _wgslsmith_f_op_f32(815f - -1000f), _wgslsmith_f_op_f32(step(-827f, -729f)))))));
    let var_1 = vec3<bool>(!(select(false, true, -4306i == u_input.c.x) | true), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), all(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_div_i32(-2147483647i, -2147483647i);
    return Struct_1(vec4<bool>(var_1.x, true, true, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(626f, var_0.x, 391f, -539f)))))), select(-_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, 14596i), vec3<i32>(-54908i, 0i, 1i)), u_input.c.yxy, true), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, u_input.a) ^ max(u_input.a, vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x)), countOneBits(select(u_input.a, u_input.a, vec4<bool>(var_1.x, true, true, true)))), _wgslsmith_mult_vec4_u32(~(~u_input.a), u_input.a)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32) -> f32 {
    global1 = false;
    let var_0 = arg_1.b;
    var var_1 = func_2();
    global0 = true;
    let var_2 = Struct_2(_wgslsmith_sub_vec4_u32(~(var_1.d ^ var_1.d), vec4<u32>(~var_1.d.x, 20721u, var_0, ~15018u)));
    return _wgslsmith_f_op_f32(-arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-931f - _wgslsmith_f_op_f32(trunc(-1110f)))))), 165f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(830f, _wgslsmith_div_f32(-275f, _wgslsmith_f_op_f32(ceil(2330f)))), _wgslsmith_f_op_f32(-564f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, true), Struct_3(vec4<bool>(true, true, true, true), 1u, -514f), u_input.d.x)))), true)), -1123f);
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1374f, var_0.x, -473f, var_0.x), vec4<f32>(-804f, -688f, var_0.x, var_0.x), true)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-742f, -391f, var_0.x, 742f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(340f, var_0.x, 1149f, var_0.x))) + vec4<f32>(-808f, 1103f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(func_2().b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 954f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, -1609f, 166f, -1000f))) + vec4<f32>(1f, var_0.x, _wgslsmith_f_op_f32(-1035f - var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x))))), any(select(vec3<bool>(true, true, any(vec2<bool>(true, false))), select(func_2().a.zwx, vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)))));
    global0 = _wgslsmith_f_op_f32(ceil(-164f)) < -926f;
    var var_1 = -u_input.c.yx;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 678f, 1443f, -1058f) + vec4<f32>(var_0.x, 380f, -804f, -1169f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -1000f, 118f, 1122f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))) - vec4<f32>(-610f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(493f * var_0.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1266f), _wgslsmith_f_op_f32(round(-1310f))))), var_0.x, var_0.x));
    var var_2 = !select(!func_2().a.zz, vec2<bool>(_wgslsmith_sub_u32(u_input.b, 4294967295u) >= ~28284u, true), vec2<bool>(false, -var_1.x < -var_1.x));
    var var_3 = u_input.c;
    let var_4 = any(!func_2().a.wy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32((max(u_input.a.x, 0u) >> (~4294967295u % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.a.x, u_input.a.x) | u_input.a, u_input.a) % 32u), firstLeadingBit(34165u)), -_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -2147483647i, -57552i, 17885i)), func_2().c.x, 1i, ~var_1.x)), var_1.x, u_input.a.xw, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(abs(min(vec4<u32>(0u, u_input.a.x, u_input.b, 1u), vec4<u32>(1u, 0u, u_input.b, u_input.b))), _wgslsmith_div_vec4_u32(firstLeadingBit(u_input.a), ~vec4<u32>(u_input.b, 4294967295u, u_input.a.x, u_input.b))), u_input.a ^ vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 1u | u_input.b, u_input.b), ~(max(u_input.a, u_input.a) >> (firstTrailingBit(u_input.a) % vec4<u32>(32u)))));
}

