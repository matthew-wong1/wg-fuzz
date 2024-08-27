struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(true, false, false), vec3<u32>(4294967295u, 1u, 1u), -9252i, vec3<u32>(36344u, 21852u, 1u), vec4<u32>(2800u, 75408u, 1u, 1u));

var<private> global1: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_i32(-_wgslsmith_clamp_i32(-41845i | global0.c, abs(global0.c), i32(-1i) * -global0.c), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-18047i, global0.c), ~vec2<i32>(global0.c, 0i)), -16582i, _wgslsmith_div_i32(abs(global0.c), 2147483647i)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(abs(0i), global0.c), _wgslsmith_clamp_i32(-4853i, -global0.c, 1i))));
    let var_1 = Struct_3(abs(_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a, 56641u)), max(vec2<u32>(1u, 1u), global0.d.zy))) & vec2<u32>(_wgslsmith_mod_u32(29668u, 4294967295u) << (_wgslsmith_clamp_u32(4294967295u, arg_2.x, arg_1.a) % 32u), _wgslsmith_add_u32(~global0.e.x, abs(arg_1.a))), firstTrailingBit(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 36216u, 24418u), vec3<u32>(arg_1.a, 26043u, arg_1.a), vec3<bool>(true, false, false)), global0.b)), Struct_2(Struct_1(1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1234f, 1217f, arg_1.b.x)) * _wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(179f, arg_1.b.x, arg_1.b.x, 982f)))), 1u, min(~(~vec3<u32>(12595u, 0u, global0.e.x)), vec3<u32>(u_input.a, ~u_input.a, arg_2.x))), arg_0, arg_1);
    return !select(vec3<bool>(global0.a.x, all(select(global0.a.zz, global0.a.yy, global0.a.yy)), global0.a.x), global0.a, global0.a);
}

fn func_2() -> Struct_4 {
    global0 = Struct_4(select(select(select(global0.a, func_3(global0.a.x, Struct_1(u_input.a, vec4<f32>(-563f, -1221f, -859f, 1000f)), vec2<u32>(0u, u_input.a)), !vec3<bool>(false, false, global0.a.x)), !global0.a, ~global0.c > -2147483647i), global0.a, global0.a), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(global0.e.wyw, global0.e.zwx), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 48404u, global0.d.x), vec3<u32>(0u, global0.b.x, 84547u) & global0.b), global0.d & vec3<u32>(u_input.a, u_input.a, global0.b.x)), _wgslsmith_div_i32(1i, 9928i), vec3<u32>(abs(global0.d.x) << (4294967295u % 32u), u_input.a, _wgslsmith_sub_u32(4294967295u, firstTrailingBit(~4294967295u))), ~_wgslsmith_add_vec4_u32(~(~global0.e), ~vec4<u32>(6430u, global0.e.x, 109019u, 4294967295u)));
    global1 = all(!vec2<bool>(true || (global0.a.x == global0.a.x), any(vec3<bool>(true, global0.a.x, false)) && true));
    var var_0 = _wgslsmith_div_vec2_i32(max(-vec2<i32>(-2147483647i ^ global0.c, min(-1232i, -12315i)), firstTrailingBit(_wgslsmith_add_vec2_i32(select(vec2<i32>(global0.c, global0.c), vec2<i32>(-1i, global0.c), global0.a.x), min(vec2<i32>(global0.c, -9090i), vec2<i32>(-1i, -1i))))), countOneBits(vec2<i32>(reverseBits(global0.c), ~15363i)) & _wgslsmith_add_vec2_i32(firstLeadingBit(-vec2<i32>(-23848i, global0.c)), vec2<i32>(-2147483647i, global0.c)));
    global0 = Struct_4(select(global0.a, vec3<bool>(true, any(!global0.a.zz), var_0.x > 24324i), global0.a.x), ~global0.b, _wgslsmith_sub_i32(global0.c, -_wgslsmith_mult_i32(global0.c, countOneBits(var_0.x))), ~vec3<u32>(82612u, u_input.a, 9681u), _wgslsmith_div_vec4_u32(~(~global0.e >> (vec4<u32>(0u, u_input.a, 71545u, 4294967295u) % vec4<u32>(32u))), vec4<u32>(u_input.a, global0.e.x, u_input.a << (u_input.a % 32u), ~global0.d.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 312f));
    return Struct_4(global0.a, global0.b & ~reverseBits(global0.e.wxw), select(-_wgslsmith_mult_i32(_wgslsmith_div_i32(-25700i, 5351i), global0.c), global0.c, global0.a.x), vec3<u32>(0u, _wgslsmith_dot_vec2_u32(global0.b.xz, global0.e.zy), ~countOneBits(4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(global0.e.x ^ 0u), ~68353u, firstTrailingBit(global0.b.x) & global0.d.x, _wgslsmith_add_u32(global0.e.x, u_input.a ^ 67213u)), global0.e));
}

fn func_1() -> StorageBuffer {
    global0 = func_2();
    var var_0 = _wgslsmith_f_op_f32(1266f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-553f, -1978f))), 809f)))));
    var var_1 = firstTrailingBit(1u);
    var var_2 = select(select(vec4<bool>(!any(global0.a), func_2().a.x, all(vec3<bool>(true, false, global0.a.x)), any(!vec4<bool>(true, true, true, global0.a.x))), !select(!vec4<bool>(global0.a.x, global0.a.x, false, true), select(vec4<bool>(true, true, global0.a.x, global0.a.x), vec4<bool>(false, global0.a.x, false, global0.a.x), vec4<bool>(true, false, false, true)), vec4<bool>(global0.a.x, true, true, false)), true), !(!(!select(vec4<bool>(false, true, global0.a.x, global0.a.x), vec4<bool>(false, false, global0.a.x, true), global0.a.x))), vec4<bool>(false, true, 4294967295u < global0.e.x, true));
    var var_3 = -1067f;
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1755f - -830f)) * 484f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1340f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1646f * 1108f)), any(select(var_2.yyx, vec3<bool>(false, global0.a.x, false), global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1664f - 1f) + 1f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1589f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-778f + 410f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(114f))))), 0u, max(firstLeadingBit(vec4<u32>(u_input.a, 0u, 0u, 0u) ^ vec4<u32>(11346u, 1u, global0.d.x, 0u)), _wgslsmith_add_vec4_u32(func_2().e, global0.e)) & countOneBits(vec4<u32>(global0.e.x, u_input.a, u_input.a, 63616u) << ((global0.e ^ vec4<u32>(15773u, 1u, 0u, u_input.a)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(!global0.a.yy);
    global1 = select(false, false, false);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f * -904f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(483f * 557f), -282f)))));
    global1 = !global0.a.x;
    let var_1 = Struct_4(select(select(global0.a, vec3<bool>(global0.a.x, global0.a.x | false, false || global0.a.x), global0.a), vec3<bool>(all(!vec4<bool>(false, true, global0.a.x, false)), false, all(global0.a.xy)), any(vec2<bool>(any(global0.a), !global0.a.x))), vec3<u32>(4294967295u, (global0.d.x | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 97044u, global0.e.x), vec3<u32>(u_input.a, u_input.a, 39010u))) | ~global0.d.x, max(_wgslsmith_mod_u32(min(10252u, 16926u), ~global0.b.x), 78762u)), global0.c, max(global0.b, vec3<u32>(17700u, ~global0.e.x, max(1u, global0.e.x))) | _wgslsmith_mod_vec3_u32(max(global0.b, vec3<u32>(1962u, global0.b.x, u_input.a)) & vec3<u32>(u_input.a, u_input.a, u_input.a), (global0.d >> (vec3<u32>(1u, 4294967295u, 0u) % vec3<u32>(32u))) | firstTrailingBit(vec3<u32>(1u, 1u, u_input.a))), ~global0.e);
    let x = u_input.a;
    s_output = func_1();
}

