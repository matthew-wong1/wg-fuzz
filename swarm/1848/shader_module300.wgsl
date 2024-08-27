struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = Struct_2(vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1443f + -1965f) * _wgslsmith_f_op_f32(abs(-3253f))) <= _wgslsmith_f_op_f32(step(arg_0.x, 375f))), 94948u, Struct_1(true, true, !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), true), vec3<bool>(true, false, true), arg_0.x), abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 4294967295u, 19920u), vec3<u32>(1u, 1u, 1u)) | vec3<u32>(1u, 1u, _wgslsmith_add_u32(1u, 15787u))), u_input.a);
    var var_1 = 4294967295u;
    let var_2 = Struct_3(var_0.c.d, var_0.c);
    var var_3 = vec3<i32>(~1i, 560i, ~abs(-var_0.e));
    var var_4 = Struct_5(Struct_3(vec3<bool>(true, !var_2.b.a, var_2.b.b), var_2.b), var_2.b.c);
    return _wgslsmith_f_op_f32(-179f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0.x)), var_0.c.e))), var_2.b.e));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec4<f32>(-2097f, -943f, 1000f, -475f))))) - -749f));
    var var_1 = _wgslsmith_add_u32(0u, ~1u);
    var_1 = 4294967295u;
    var_0 = _wgslsmith_div_f32(102f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-861f)), -592f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f * _wgslsmith_f_op_f32(floor(-463f)))), any(vec3<bool>(true, true, true)))));
    var var_2 = 39754u;
    return Struct_2(vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, any(vec4<bool>(false, true, false, true)), true))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 51272u, 1u, 4294967295u), vec4<u32>(1u, _wgslsmith_mod_u32(7789u, 1u), select(11432u, 4294967295u, true), _wgslsmith_mult_u32(0u, 4294967295u))), Struct_1(true, true, vec4<bool>(all(vec4<bool>(true, false, false, true)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))), false, any(vec4<bool>(false, false, true, false))), vec3<bool>(all(vec2<bool>(true, true)), true && select(true, false, false), !select(false, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -488f), _wgslsmith_f_op_f32(-272f * -386f), true)) - 706f)), ~min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), u_input.c);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = abs(~vec4<u32>(countOneBits(_wgslsmith_clamp_u32(0u, 59635u, 48871u)), 47070u, 29528u, 38605u));
    let var_1 = func_2();
    let var_2 = vec2<bool>(var_1.c.b, select(any(vec2<bool>(select(arg_1.b, var_1.a.x, var_1.a.x), -407f == var_1.c.e)), !(any(vec4<bool>(true, true, true, arg_1.b)) & (-28577i < var_1.e)), true));
    var var_3 = true;
    let var_4 = Struct_3(func_2().c.c.yww, var_1.c);
    return !select(arg_1.c, !(!var_4.b.c), var_2.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = Struct_4(select(_wgslsmith_clamp_u32(1u, var_0.b, ~33411u), _wgslsmith_dot_vec2_u32(var_0.d.yx, var_0.d.xx), false) >= var_0.b, 41747i ^ _wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.e, 14128i, var_0.e), vec3<i32>(18719i, var_0.e, u_input.b) << (vec3<u32>(49242u, 121517u, 75720u) % vec3<u32>(32u)))), !(!func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-957f, var_0.c.e, 1975f, -297f), vec4<f32>(257f, arg_2.x, var_0.c.e, arg_2.x)), var_0.c).yz), Struct_2(vec2<bool>(true, any(vec3<bool>(true, arg_0.b.a, arg_0.b.c.x))), ~var_0.d.x, Struct_1(!arg_1.b.a, all(arg_1.b.d.xx), vec4<bool>(true, func_1(vec4<f32>(var_0.c.e, arg_0.b.e, arg_2.x, 875f), arg_0.b).x, true, true), select(vec3<bool>(var_0.c.c.x, arg_0.a.x, arg_0.b.d.x), !arg_1.b.c.ywx, any(arg_1.b.c)), func_2().c.e), _wgslsmith_add_vec3_u32(countOneBits(func_2().d), ~var_0.d), ~_wgslsmith_sub_i32(var_0.e | -2147483647i, u_input.a)));
    var_1 = Struct_4(func_2().c.a, u_input.b, var_0.a, func_2());
    let var_2 = var_1.d.d;
    var var_3 = var_1.d.c.e;
    return Struct_1(!var_1.c.x | (0u < _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, var_0.b, 20232u, var_0.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.b, var_0.b, var_0.d.x), vec4<u32>(4294967295u, 4294967295u, 0u, 65835u)))), arg_0.b.b, !func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.e, -822f, arg_1.b.e, arg_1.b.e) - vec4<f32>(var_1.d.c.e, 907f, var_0.c.e, arg_1.b.e)), vec4<f32>(168f, -1184f, arg_2.x, arg_0.b.e)), var_1.d.c), func_2().c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-783f, 1427f, arg_0.b.e, arg_1.b.e) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.e, arg_2.x, var_0.c.e, 267f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(var_1.d.c.e * 172f)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: u32) -> vec4<f32> {
    var var_0 = arg_0.d;
    let var_1 = true;
    var_0 = vec3<bool>(!(-1i > _wgslsmith_add_i32(-2147483647i, u_input.a)), all(func_2().c.c.wzz), func_2().c.c.x);
    var var_2 = 11029u;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.e, arg_2.b.e), vec2<f32>(542f, -444f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.b.e, 874f))))) * vec2<f32>(-1249f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.b.e - arg_0.e))))));
    return vec4<f32>(arg_2.b.e, _wgslsmith_f_op_f32(exp2(arg_2.b.e)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_2.b.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.x * arg_2.b.e), _wgslsmith_f_op_f32(f32(-1f) * -414f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1877f))), arg_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-236f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -117f))), 581f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1103f), _wgslsmith_f_op_f32(trunc(159f)))), 264f)));
    var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_3(vec3<bool>(true, false, false), Struct_1(true, 11269i > u_input.b, func_1(vec4<f32>(519f, var_0.x, 962f, -652f), Struct_1(false, false, vec4<bool>(true, true, false, false), vec3<bool>(true, true, false), 829f)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), -808f)), Struct_3(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), func_2().c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(-803f, var_0.x, -1350f)), _wgslsmith_f_op_vec3_f32(-var_0.yxy)))), !func_4(Struct_3(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), func_2().c), Struct_3(vec3<bool>(true, true, true), Struct_1(true, true, vec4<bool>(true, true, false, false), vec3<bool>(false, true, true), -822f)), var_0.yxw).c, Struct_3(vec3<bool>(true, true, select(func_4(Struct_3(vec3<bool>(false, true, true), Struct_1(true, true, vec4<bool>(false, true, false, true), vec3<bool>(false, true, true), var_0.x)), Struct_3(vec3<bool>(true, false, false), Struct_1(false, true, vec4<bool>(true, false, true, false), vec3<bool>(false, false, true), 2077f)), vec3<f32>(var_0.x, -2831f, -1099f)).b, true, func_2().a.x)), Struct_1(true, true, vec4<bool>(true, true, true, true), func_2().c.d, 2179f)), ~0u & _wgslsmith_mod_u32(~1u, ~firstTrailingBit(12348u))));
    let var_1 = 1u;
    let var_2 = func_2().c.c.x;
    let var_3 = vec2<u32>(~min(var_1, 1u), ~(~(abs(var_1) >> (~41226u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(1u, select(~var_3.x, 14888u, true)), -307f, vec2<i32>(_wgslsmith_mult_i32(-countOneBits(-1i), 8879i), _wgslsmith_div_i32(abs(abs(u_input.a)), (u_input.d.x >> (4294967295u % 32u)) << (firstLeadingBit(0u) % 32u))), u_input.d.yy);
}

