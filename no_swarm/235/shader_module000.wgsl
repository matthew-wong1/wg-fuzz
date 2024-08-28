struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2673f * _wgslsmith_f_op_f32(-1269f - 1909f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(176f)), _wgslsmith_f_op_f32(trunc(-547f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-541f)))), true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(618f, 1000f, 384f, 1000f) + vec4<f32>(-961f, -240f, 428f, -737f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(649f, -1247f, 1195f, -480f), vec4<f32>(-320f, 1000f, 1042f, 552f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1268f, -1379f, 771f, -874f) - vec4<f32>(331f, -1290f, -1064f, -1219f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-113f, 558f, -1346f, -446f)))), vec4<f32>(_wgslsmith_div_f32(-561f, 751f), -522f, _wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(505f + -265f)))))), ~vec2<u32>(~0u, 20941u << (~4294967295u % 32u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-461f)))), -1308f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-339f, -1918f)))))), -(firstTrailingBit(vec3<i32>(20039i, u_input.a, 1562i)) ^ reverseBits(vec3<i32>(-2147483647i, u_input.a, 29859i))) << (vec3<u32>(~1u, abs(4294967295u), ~1u) % vec3<u32>(32u)));
    let var_1 = abs(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_0.e.x), var_0.e.yx), -var_0.e.x, u_input.a, -6132i) << (reverseBits(vec4<u32>(var_0.c.x, 23485u, var_0.c.x, var_0.c.x)) % vec4<u32>(32u)), vec4<i32>(~1i >> (var_0.c.x % 32u), 12225i, max(var_0.e.x, u_input.a), 1i << (~var_0.c.x % 32u))));
    let var_2 = var_0.e.x;
    var var_3 = false;
    var_3 = true;
    return var_2;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-601f, -1373f));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -421f), 898f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + 1110f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    var var_1 = _wgslsmith_mult_i32(~7752i, -func_3()) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a, -19618i), func_3()), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 0i, u_input.a), select(arg_0.d, vec3<i32>(-1i, arg_0.d.x, u_input.a), arg_1)), 2147483647i));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1099f - _wgslsmith_f_op_f32(384f * 1000f)), 1905f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1872f) * 476f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))))), var_0.x, -1000f);
    var var_3 = Struct_2(525f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-784f, var_0.x, -289f, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -828f, var_2.x, var_2.x)) - vec4<f32>(var_2.x, 126f, -1166f, 193f))))), vec2<u32>(~(~arg_0.c.x), ~(~1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.yw, vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_2.x))))), vec3<i32>(arg_0.d.x, u_input.a, i32(-1i) * -1i));
    return _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1887f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1322f - var_3.b.x), _wgslsmith_f_op_f32(1797f * var_3.a), arg_1)))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-786f, arg_1))))));
    var var_1 = true;
    var_1 = any(vec2<bool>(true, true));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-132f - _wgslsmith_f_op_f32(406f + 417f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1479f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -876f), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f), -190f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1985f)) + -1862f)))), global0[_wgslsmith_index_u32(~(~(~6418u)), 4u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, -158f), var_0)))), select(abs(_wgslsmith_div_vec3_i32(-arg_0.wxy, arg_0.wwz)), arg_0.xxw, vec3<bool>(true, true, true)));
    var_1 = all(select(!vec3<bool>(any(vec4<bool>(true, true, false, false)), false, false), select(vec3<bool>(false, arg_0.x >= u_input.a, true), vec3<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false)))), true));
    return arg_1;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> f32 {
    global0 = array<vec2<u32>, 4>();
    var var_0 = arg_2;
    global0 = array<vec2<u32>, 4>();
    return _wgslsmith_f_op_f32(func_4(vec4<i32>(-u_input.a, _wgslsmith_clamp_i32(var_0.a, ~_wgslsmith_sub_i32(var_0.d.x, -2147483647i), 1i & -arg_2.a), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.a, arg_1), select(0i, var_0.d.x, arg_0.x), 2147483647i >> (0u % 32u), ~var_0.d.x), vec4<i32>(9037i, reverseBits(arg_1), u_input.a, arg_2.d.x)), -66242i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1182f)), _wgslsmith_f_op_f32(func_2(arg_2, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1319f + 232f)), -464f)), _wgslsmith_f_op_f32(1931f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(427f * 966f) * _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), 1i, Struct_1(u_input.a, vec3<u32>(50724u, 21373u, 35460u), vec4<u32>(27802u, 4294967295u, 4294967295u, 0u), vec3<i32>(0i, 1i, 12535i))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(323f, -1939f, true)), _wgslsmith_f_op_f32(-1000f * -1000f), -111f, _wgslsmith_f_op_f32(min(825f, -1037f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-353f, 1116f, 731f, -696f))))) - vec4<f32>(-381f, _wgslsmith_f_op_f32(f32(-1f) * -181f), -783f, _wgslsmith_f_op_f32(f32(-1f) * -298f))), abs(global0[_wgslsmith_index_u32(1u, 4u)]), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_f_op_f32(f32(-1f) * -1534f)), ~vec3<i32>(abs(u_input.a >> (32442u % 32u)), 1i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, -651i), vec2<i32>(-1i, u_input.a)), vec2<i32>(u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec3<u32>(var_0.c.x, var_0.c.x, _wgslsmith_sub_u32(var_0.c.x, var_0.c.x)), ~vec3<u32>(var_0.c.x, 16895u, var_0.c.x)), u_input.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-932f, _wgslsmith_f_op_f32(func_4(vec4<i32>(var_0.e.x, u_input.a, u_input.a, var_0.e.x), 711f))), _wgslsmith_f_op_vec2_f32(round(var_0.d)), vec2<bool>(true, true))), var_0.b.xy, false & all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(28588i), var_0.e.x, min(var_0.e.x, u_input.a), ~var_0.e.x), vec4<i32>(~u_input.a, _wgslsmith_div_i32(-1i, u_input.a), var_0.e.x, var_0.e.x), -(~vec4<i32>(-1200i, var_0.e.x, 2147483647i, 32149i))), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1512f - 1213f))))));
}

