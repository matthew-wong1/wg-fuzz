struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: vec4<i32> = vec4<i32>(-17164i, -1i, 1i, i32(-2147483648));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    return _wgslsmith_add_i32(arg_0, arg_0);
}

fn func_2() -> f32 {
    var var_0 = vec4<i32>(1i, 2147483647i, -global1.x, global0[_wgslsmith_index_u32(1u << (u_input.a % 32u), 23u)]);
    global1 = abs(vec4<i32>(reverseBits(39136i), select(~global1.x & (-48145i << (u_input.a % 32u)), select(global1.x, -1i, any(vec3<bool>(false, true, false))), true), 905i, global1.x));
    var var_1 = u_input.c;
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1000f + -1514f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -903f), -1000f, true)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(f32(-1f) * -1591f))), -452f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-272f, 242f))))), _wgslsmith_mod_vec3_i32(vec3<i32>(-(global1.x | 18070i), -2147483647i, ~abs(global0[_wgslsmith_index_u32(u_input.a, 23u)])), vec3<i32>(var_0.x, ~(~global0[_wgslsmith_index_u32(90880u, 23u)]), var_0.x)), 8203u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-437f + _wgslsmith_div_f32(-1359f, -387f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1024f, 138f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(150f * -1699f))))), !(!vec4<bool>(false, -20878i < global1.x, true, true)));
    var_0 = min(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(~u_input.c, 23u)], firstTrailingBit(51930i), _wgslsmith_sub_i32(global1.x, global1.x)), vec3<i32>(~var_2.b.x, ~(-4020i), global0[_wgslsmith_index_u32(~var_2.c, 23u)])), _wgslsmith_add_i32(var_0.x ^ _wgslsmith_dot_vec3_i32(var_2.b, vec3<i32>(-2147483647i, 2147483647i, -43815i)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(21290i, global0[_wgslsmith_index_u32(1u, 23u)], var_0.x), func_3(-1i, global1.zy, 98956u))), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_2.b.x, 1i << (u_input.c % 32u)), -42039i), ~(_wgslsmith_mod_i32(var_0.x, -60006i) >> (var_2.c % 32u))), ~vec4<i32>(_wgslsmith_mod_i32(24693i, var_0.x), var_2.b.x << (~4294967295u % 32u), var_2.b.x, -2147483647i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-645f, _wgslsmith_f_op_f32(f32(-1f) * -315f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1470f)) * var_2.d.x));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(576f, 377f))) * -798f)))));
    var var_1 = true;
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2())));
    let var_2 = -1905f;
    let var_3 = vec3<bool>(any(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2))) * var_2) != var_2, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(u_input.b.x, u_input.c) ^ vec2<u32>(30314u, 91887u)), 31681u << (_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 12687u) % 32u)) > u_input.a);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_f_op_f32(-var_2), var_2, _wgslsmith_f_op_f32(120f * -606f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2, -944f, -918f, -1235f))), all(select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, true), var_3.zx))))), global1.zww, 15747u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -565f, 1000f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, 563f, -2230f), vec3<f32>(var_2, var_2, var_2), false)), vec3<f32>(-1751f, var_2, -1769f))), any(!vec4<bool>(true, var_3.x, var_3.x, true))))), !vec4<bool>(var_3.x, true, any(!var_3.xx), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_sub_vec4_u32(u_input.b, ~reverseBits(u_input.b));
    var var_2 = firstTrailingBit(_wgslsmith_add_vec4_i32(-(-vec4<i32>(-2147483647i, var_0.b.x, var_0.b.x, 2147483647i) << (vec4<u32>(u_input.a, var_0.c, 6496u, var_1.x) % vec4<u32>(32u))), -abs(abs(vec4<i32>(-24326i, var_0.b.x, 1i, 55769i)))));
    var var_3 = var_0;
    global0 = array<i32, 23>();
    let var_4 = func_1();
    var_2 = ~(~vec4<i32>(-1i >> (~u_input.a % 32u), 2147483647i, var_0.b.x, abs(~(-19650i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_4.a.wzw), _wgslsmith_f_op_f32(-var_3.a.x), (select(max(1u, 1u), firstLeadingBit(18418u), !var_3.e.x) >> (~reverseBits(74633u) % 32u)) & ~(_wgslsmith_add_u32(var_1.x, var_1.x) << (88513u % 32u)), _wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, var_4.b.x, 4806i), reverseBits(vec4<i32>(-2147483647i, -1i, 55172i, -1904i))), -select(_wgslsmith_mod_vec4_i32(vec4<i32>(79819i, 2147483647i, 15622i, 0i), vec4<i32>(12641i, -47648i, 90275i, 1i)), select(vec4<i32>(var_4.b.x, 36777i, var_3.b.x, 1i), vec4<i32>(-1i, var_2.x, 1i, global1.x), var_4.e), var_4.e.x & var_0.e.x)));
}

