struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = any(vec4<bool>(false, false, false, all(vec3<bool>(false, true, all(vec2<bool>(false, false))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(498f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))))));
    var_0 = all(select(vec3<bool>(!select(false, false, false), any(vec2<bool>(true, true)), (var_1.x == var_1.x) | true), !vec3<bool>(true, true, var_1.x != -180f), true));
    let var_2 = 21445u;
    let var_3 = Struct_4(vec2<bool>(true, all(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, abs(var_2), 19712u, ~u_input.b.x), vec4<u32>(reverseBits(var_2), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, u_input.b.x)), u_input.b.x, _wgslsmith_sub_u32(4294967295u, 37775u))));
    return var_3.b.x >> (var_3.b.x % 32u);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(157f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-559f, _wgslsmith_f_op_f32(-var_0.a), arg_0.x)))) * 1f);
    global0 = array<Struct_1, 13>();
    var var_2 = max(select(~((vec4<u32>(u_input.b.x, u_input.b.x, 47131u, 4294967295u) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u) % vec4<u32>(32u))) | ~vec4<u32>(40945u, u_input.b.x, 17276u, 1u)), vec4<u32>(u_input.b.x << (~5963u % 32u), func_3(u_input.a.x << (u_input.b.x % 32u), 0i), _wgslsmith_clamp_u32(select(u_input.b.x, 1u, arg_0.x), 1u, u_input.b.x), u_input.b.x >> (firstTrailingBit(31006u) % 32u)), arg_0), _wgslsmith_sub_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(55814u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(40304u, 0u, u_input.b.x, u_input.b.x))), ~vec4<u32>(u_input.b.x ^ u_input.b.x, u_input.b.x, ~u_input.b.x, ~4294967295u)));
    let var_3 = arg_0.x;
    return _wgslsmith_sub_u32(u_input.b.x, ~_wgslsmith_sub_u32(~u_input.b.x, 1u));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 13>();
    let var_0 = Struct_4(!vec2<bool>(!any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))), vec4<u32>(~u_input.b.x, ~u_input.b.x, func_2(vec4<bool>(false, true, true, true), 12008i, -u_input.e.x), ~4294967295u));
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-_wgslsmith_sub_i32(1i, u_input.d.x), _wgslsmith_sub_i32(abs(1i), select(-2147483647i, u_input.e.x, var_0.a.x) ^ u_input.c.x)), abs(u_input.a.wx));
    var var_2 = var_0;
    var_2 = var_0;
    return ~firstLeadingBit(~(u_input.c.x | var_1.x)) & u_input.d.x;
}

fn func_4(arg_0: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_4(vec2<bool>(false, true && ((2147483647i | u_input.a.x) <= arg_0.x)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(3534u, u_input.b.x, 41185u, u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(3003u, 68062u, u_input.b.x, u_input.b.x), vec4<u32>(1u, 61575u, 0u, 4294967295u))), vec4<u32>(1u, 17092u, 1u, firstTrailingBit(57446u))));
    global0 = array<Struct_1, 13>();
    let var_1 = Struct_4(select(vec2<bool>(var_0.a.x, 4294967295u > firstTrailingBit(u_input.b.x)), vec2<bool>(var_0.a.x, !(var_0.a.x || var_0.a.x)), all(!var_0.a)), var_0.b);
    let var_2 = i32(-1i) * -(~u_input.c.x);
    let var_3 = select(~firstLeadingBit(_wgslsmith_sub_u32(48989u, var_0.b.x)), ~var_1.b.x, var_0.a.x) | 108877u;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<i32>(reverseBits(countOneBits(min(21962i, -28527i))), reverseBits(~(u_input.e.x ^ u_input.e.x)), min(-countOneBits(2147483647i), func_1())));
    var var_1 = vec4<bool>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-239f, -204f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-883f))), false, -u_input.a.x >= -19732i);
    let var_2 = _wgslsmith_mod_i32(-1i, abs(1i));
    global0 = array<Struct_1, 13>();
    var_1 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-225f))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1012f, -1551f)))), (~u_input.a.x < _wgslsmith_mult_i32(25110i, -5283i)) || !var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(-1947f + -882f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1600f - -182f) + -1947f), select(all(select(var_0.a, vec2<bool>(true, var_0.a.x), true)), true, ~var_0.b.x >= countOneBits(43524u)));
    var var_3 = select(var_0.a.x, true, var_0.a.x);
    var_3 = any(select(select(select(!vec4<bool>(false, true, var_1.x, true), !vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<bool>(true, true, var_0.a.x, false)), select(vec4<bool>(var_1.x, false, var_0.a.x, var_1.x), select(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), false), var_0.a.x), vec4<bool>(true, any(vec4<bool>(var_0.a.x, true, true, true)), !var_0.a.x, u_input.b.x < var_0.b.x)), !vec4<bool>(0i >= u_input.a.x, !var_0.a.x, true, var_0.a.x), !(!select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<bool>(true, true, true, true)))));
    global0 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_f32(step(303f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1119f, -1000f)))), ~var_2);
}

