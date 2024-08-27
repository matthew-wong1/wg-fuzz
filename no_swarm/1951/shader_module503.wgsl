struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = ~(i32(-1i) * -1i);
    var var_1 = arg_2.b;
    global0 = var_1.c;
    let var_2 = select(!(!vec4<bool>(arg_2.b.c, true, true, all(vec2<bool>(arg_2.b.c, var_1.c)))), !select(!select(vec4<bool>(arg_2.b.c, arg_2.b.c, true, true), vec4<bool>(true, arg_2.b.c, var_1.c, var_1.c), vec4<bool>(false, arg_2.b.c, arg_2.b.c, arg_2.b.c)), select(!vec4<bool>(var_1.c, arg_2.b.c, false, true), vec4<bool>(var_1.c, var_1.c, false, var_1.c), !vec4<bool>(true, true, arg_2.b.c, arg_2.b.c)), arg_2.b.c), any(vec4<bool>(any(!vec4<bool>(var_1.c, false, var_1.c, false)), all(select(vec2<bool>(false, var_1.c), vec2<bool>(var_1.c, false), false)), all(vec3<bool>(arg_2.b.c, var_1.c, true)), all(vec4<bool>(true, arg_2.b.c, arg_2.b.c, var_1.c)))));
    var var_3 = arg_2.e;
    return select(var_2.zy, vec2<bool>(all(select(var_2.yz, !var_2.yx, !vec2<bool>(var_2.x, false))), var_2.x), !select(arg_2.a.x != _wgslsmith_div_i32(-34115i, arg_2.a.x), true, (var_2.x & true) && true));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(-u_input.a, ~2147483647i), vec2<i32>(u_input.a, -1i), select(countOneBits(vec2<i32>(u_input.a, 29037i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a)) | (vec2<i32>(2147483647i, -1i) & vec2<i32>(u_input.a, -2147483647i)), !any(vec4<bool>(false, false, arg_2.x, arg_0.x)))), abs(~vec2<u32>(50049u, 4294967295u | u_input.b)), true && arg_0.x, Struct_2(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, u_input.a, u_input.a)), -38676i, ~(-u_input.a)), ~_wgslsmith_add_u32(0u, 1u), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(1i, 2147483647i)) << (~(vec2<u32>(u_input.c, u_input.b) >> (vec2<u32>(u_input.b, 8952u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_0 = Struct_3(countOneBits(abs(var_0.d.a.zy)), ~var_0.b, true, Struct_2(var_0.d.a, u_input.c, (_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 65820i), vec2<i32>(u_input.a, u_input.a)) >> (var_0.b % vec2<u32>(32u))) & ~var_0.d.a.zx));
    let var_1 = abs(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(min(var_0.d.c, var_0.a), vec2<i32>(-1i, -10100i) >> (var_0.b % vec2<u32>(32u))), 1i << (_wgslsmith_mod_u32(98032u, u_input.b) % 32u), var_0.a.x), vec3<i32>(~1i, min(min(u_input.a, 2147483647i), 5088i), firstLeadingBit(var_0.d.c.x))));
    let var_2 = var_0.d;
    let var_3 = countOneBits(~4294967295u);
    return arg_2;
}

fn func_2() -> vec3<i32> {
    var var_0 = !select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), vec3<bool>(true, select(true, true, true), any(vec2<bool>(true, false))), true);
    var_0 = func_4(select(func_3(1i, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(273f, -214f, -2222f))), Struct_4(min(vec3<i32>(u_input.a, 20646i, u_input.a), vec3<i32>(20345i, u_input.a, u_input.a)), Struct_3(vec2<i32>(6173i, -1i), vec2<u32>(1u, u_input.c), var_0.x, Struct_2(vec3<i32>(-36681i, -2147483647i, -2147483647i), u_input.b, vec2<i32>(u_input.a, u_input.a))), -u_input.a, u_input.b, Struct_1(vec3<f32>(901f, -188f, 1075f)))), !vec2<bool>(!var_0.x, true), true), (false != !(false || var_0.x)) || var_0.x, select(select(vec3<bool>(true, all(vec3<bool>(true, false, var_0.x)), true), !vec3<bool>(var_0.x, var_0.x, var_0.x), select(true, true, false && var_0.x)), select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(!var_0.x, true & var_0.x, false), _wgslsmith_f_op_f32(trunc(-1000f)) != _wgslsmith_f_op_f32(max(736f, -609f))), select(vec3<bool>(true, false || var_0.x, true), !(!vec3<bool>(var_0.x, true, false)), !vec3<bool>(true, var_0.x, var_0.x))));
    var var_1 = vec2<i32>(reverseBits(11948i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, 21656u, u_input.b), vec4<u32>(8034u, u_input.c, 40597u, u_input.b) ^ vec4<u32>(u_input.b, 0u, 0u, u_input.c)) % 32u)), _wgslsmith_mod_i32(-1i, ~(~u_input.a)));
    let var_2 = 2147483647i;
    var var_3 = max(1i, u_input.a);
    return -_wgslsmith_add_vec3_i32(~vec3<i32>(1i << (u_input.b % 32u), -39143i, reverseBits(u_input.a)), firstTrailingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(var_1.x, var_1.x, var_1.x), ~vec3<i32>(2147483647i, var_1.x, u_input.a))));
}

fn func_1() -> f32 {
    var var_0 = Struct_4(~func_2(), Struct_3(~abs(vec2<i32>(-35088i, u_input.a)), abs(~(vec2<u32>(u_input.c, u_input.b) & vec2<u32>(1u, 0u))), true, Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 80617i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), ~u_input.c, vec2<i32>(firstLeadingBit(u_input.a), _wgslsmith_clamp_i32(u_input.a, 2147483647i, u_input.a)))), -4127i, reverseBits(_wgslsmith_div_u32(u_input.b, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(32544u, 1u, u_input.c, 1482u), vec4<u32>(u_input.b, 57972u, 27164u, u_input.c))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(230f, 677f, -1000f) - _wgslsmith_div_vec3_f32(vec3<f32>(384f, -407f, 2090f), vec3<f32>(-466f, 555f, -428f))))));
    var var_1 = var_0.b.a.x;
    var var_2 = var_0.e.a.xz;
    var var_3 = var_0.b.d;
    global0 = select(true, var_0.a.x <= u_input.a, var_0.b.c);
    return 1043f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select((u_input.a | max(~2147483647i, u_input.a)) >= ((15569i & ~u_input.a) & ~(-3581i)), !any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, false, false), true)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) <= _wgslsmith_f_op_f32(f32(-1f) * -375f)));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-772f, 300f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(279f * -195f))), _wgslsmith_f_op_f32(round(1556f)), 665f, -1000f) - vec4<f32>(_wgslsmith_f_op_f32(1632f + -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-524f, 1021f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-876f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1f))), -1769f));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -914f, 1000f, var_0.x) + vec4<f32>(var_0.x, var_0.x, -231f, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1143f, 1270f, _wgslsmith_f_op_f32(floor(832f))), false)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(543f, 565f, var_0.x, 549f) - vec4<f32>(var_0.x, -1314f, 2180f, -1000f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(991f, var_0.x, var_0.x, var_0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), 1f))), var_0.x, var_0.x, var_0.x), true));
    let x = u_input.a;
    s_output = StorageBuffer((countOneBits(vec3<u32>(u_input.b, u_input.c, u_input.b)) & vec3<u32>(u_input.b, 12917u, min(0u, u_input.c))) & _wgslsmith_sub_vec3_u32(~(~vec3<u32>(37605u, u_input.c, u_input.b)), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 53966u, u_input.c), vec3<u32>(0u, u_input.c, 1u)))), min(~(~(vec3<u32>(u_input.b, u_input.c, u_input.c) & vec3<u32>(4294967295u, u_input.b, 101298u))), abs(~select(vec3<u32>(u_input.b, 0u, 96100u), vec3<u32>(7095u, 28892u, 29660u), false))), -1i);
}

