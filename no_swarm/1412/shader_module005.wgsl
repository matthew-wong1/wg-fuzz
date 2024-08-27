struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(0u, 55552u), vec2<u32>(1u, 0u), vec2<u32>(71639u, 7294u), vec2<u32>(4294967295u, 1u), vec2<u32>(5216u, 0u), vec2<u32>(46055u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 3532u), vec2<u32>(1u, 1u), vec2<u32>(82311u, 4294967295u), vec2<u32>(1u, 15750u), vec2<u32>(10431u, 0u), vec2<u32>(71224u, 4294967295u), vec2<u32>(13076u, 14781u), vec2<u32>(6232u, 0u), vec2<u32>(1u, 15720u), vec2<u32>(11875u, 79896u), vec2<u32>(1u, 0u));

var<private> global1: vec3<bool>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>) -> vec3<bool> {
    global1 = arg_0;
    global0 = array<vec2<u32>, 18>();
    let var_0 = 22043i;
    var var_1 = min(firstLeadingBit(var_0 << (countOneBits(firstLeadingBit(16785u)) % 32u)), var_0);
    let var_2 = u_input.a;
    return vec3<bool>(!arg_0.x, false, any(select(vec4<bool>(!global1.x, false, !arg_0.x, !global1.x), !select(vec4<bool>(false, arg_0.x, true, true), vec4<bool>(true, global1.x, false, arg_0.x), false), vec4<bool>(all(arg_0), global1.x, any(vec3<bool>(global1.x, arg_0.x, global1.x)), any(vec3<bool>(global1.x, false, true))))));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_1(u_input.a);
    var var_1 = -1081f;
    global1 = !select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, global1.x, arg_0.b), vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, false, arg_0.b)), vec3<bool>(arg_0.c, false, global1.x), vec3<bool>(true, true, false)), any(vec4<bool>(global1.x, arg_0.c, true, true))), vec3<bool>(true | !arg_0.c, arg_0.c, true), func_3(!select(vec3<bool>(false, arg_0.c, arg_0.b), vec3<bool>(false, arg_0.b, true), vec3<bool>(arg_0.b, true, global1.x))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(2013f, 1692f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1030f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-624f, 274f, false)), _wgslsmith_f_op_f32(max(-1002f, -2275f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-855f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-396f, -1461f)))));
    let var_3 = any(vec3<bool>(all(!select(vec3<bool>(global1.x, true, true), vec3<bool>(true, true, global1.x), vec3<bool>(false, false, global1.x))), true, all(vec4<bool>(false, global1.x, global1.x, true)) & !arg_0.c));
    return Struct_3(Struct_2(arg_0.a.a), arg_0.b, global1.x);
}

fn func_1() -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(countOneBits(~firstLeadingBit(1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 18704u, 4294967295u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_u32(~66221u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 23043u, 21949u), vec3<u32>(31597u, 1u, 4663u)))), 63387u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u) | ~global0[_wgslsmith_index_u32(56062u, 18u)]), reverseBits(abs(_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(72851u, 18u)], vec2<u32>(37074u, 5639u), vec2<u32>(20737u, 95075u)))))), 18u)];
    var var_1 = func_2(Struct_3(Struct_2(vec4<i32>(2147483647i, 2147483647i, ~u_input.a, -u_input.a)), global1.x, false), var_0.x);
    let var_2 = func_2(Struct_3(Struct_2(firstLeadingBit(vec4<i32>(var_1.a.a.x, u_input.a, u_input.a, 2147483647i))), true, func_3(vec3<bool>(true, true, true)).x), min(_wgslsmith_div_u32(0u, _wgslsmith_add_u32(var_0.x, ~var_0.x)), ~(~_wgslsmith_div_u32(4294967295u, var_0.x))));
    let var_3 = var_2;
    global0 = array<vec2<u32>, 18>();
    return func_2(func_2(func_2(Struct_3(Struct_2(var_2.a.a), var_0.x < 0u, false | var_1.b), _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x), _wgslsmith_mod_u32(var_0.x, var_0.x))), 24052u), reverseBits(78478u) >> (var_0.x % 32u));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(~min(12113u, ~13927u), 1u);
    var var_1 = _wgslsmith_div_f32(-1671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(444f, -794f))))));
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2054f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(771f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-166f + _wgslsmith_f_op_f32(f32(-1f) * -372f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(758f - 2151f) + 397f)))));
    let var_2 = -367f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, -1018f) - 752f)), 2234f)));
    return Struct_1(_wgslsmith_clamp_i32(0i & ~(-arg_0.a.a.x), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.a.x, u_input.a, min(57023i, arg_0.a.a.x)), _wgslsmith_add_vec3_i32(arg_0.a.a.www, arg_0.a.a.zzx) >> (_wgslsmith_add_vec3_u32(vec3<u32>(31874u, 13128u, 0u), vec3<u32>(var_0, var_0, 91676u)) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(true, global1.x, global1.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1169f, -368f, -2585f, -1612f) * vec4<f32>(-235f, -529f, 1173f, 1140f)), vec4<f32>(-1231f, -2249f, 557f, -168f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(655f, -260f)), _wgslsmith_f_op_f32(1043f * -818f))) + _wgslsmith_f_op_f32(f32(-1f) * -870f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(425f, 528f))), _wgslsmith_f_op_f32(-260f + -271f)));
    var var_1 = func_4(func_1());
    var var_2 = countOneBits(max(-(1i ^ u_input.a), var_1.a >> (~(~19319u) % 32u)));
    global1 = !vec3<bool>(global1.x, true, _wgslsmith_f_op_f32(sign(-656f)) > _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-320f + var_0.x)));
    global1 = !select(vec3<bool>(all(global1.xx) || true, any(!vec4<bool>(global1.x, global1.x, true, global1.x)), global1.x | any(vec4<bool>(global1.x, global1.x, false, global1.x))), select(vec3<bool>(true, true, global1.x), !(!vec3<bool>(false, global1.x, false)), all(vec3<bool>(global1.x, true, true))), global1.x);
    let var_3 = Struct_3(Struct_2(countOneBits(vec4<i32>(16392i, u_input.a, 71374i, var_1.a) ^ vec4<i32>(var_1.a, u_input.a, 74883i, 76357i))), global1.x, true);
    let var_4 = global1.x;
    var_2 = ~(var_1.a & ~_wgslsmith_dot_vec2_i32(var_3.a.a.xz, vec2<i32>(var_1.a, -6954i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a.a.yy, max(~1u, ~abs(83555u >> (1u % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1363f, var_0.x, 194f, var_0.x), vec4<f32>(359f, var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 310f, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, -825f, var_0.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -127f, var_0.x, var_0.x), vec4<bool>(true, var_3.c, var_3.c, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -182f))))))));
}

