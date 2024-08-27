struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = !(var_0.a.x <= ~_wgslsmith_div_u32(arg_0.a.x >> (global1.a.x % 32u), u_input.b.x));
    var var_2 = u_input.d.x;
    var var_3 = -20298i;
    var_3 = 22537i;
    return var_0;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 32437i, -1i), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, -17384i, -1i), vec3<i32>(-12337i, 19858i, u_input.a)), -max(43553i, u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -48109i, 1i)))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, u_input.a)), vec2<i32>(-5721i, u_input.a) ^ vec2<i32>(-2147483647i, -235i)), -(u_input.a >> (u_input.d.x % 32u))), ~((i32(-1i) * -1i) | _wgslsmith_mod_i32(-2694i, u_input.a)), countOneBits(-23879i)));
    global0 = global1.b;
    var var_1 = func_2(Struct_1(~(vec3<u32>(4294967295u, 2197u, global1.a.x) >> ((u_input.b.xzy & vec3<u32>(u_input.d.x, global1.a.x, global1.a.x)) % vec3<u32>(32u))), global1.b), 1i, !global1.b);
    let var_2 = ~u_input.b;
    var var_3 = func_2(Struct_1(global1.a, false), u_input.a, !var_1.b);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1851f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-199f, 1447f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1167f * 811f) - -464f)))));
}

fn func_1(arg_0: i32, arg_1: u32) -> vec3<i32> {
    let var_0 = -firstLeadingBit(u_input.a);
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.yy & vec2<u32>(select(41512u, 39819u, global1.b), arg_1), _wgslsmith_mult_vec2_u32(global1.a.zx, ~vec2<u32>(arg_1, 0u))), vec2<u32>(_wgslsmith_mult_u32(countOneBits(4294967295u), u_input.d.x), firstTrailingBit(~(~4294967295u))));
    global1 = func_2(Struct_1(~select(select(vec3<u32>(0u, 4294967295u, global1.a.x), vec3<u32>(arg_1, 28658u, 10096u), vec3<bool>(true, global1.b, false)), vec3<u32>(27663u, 67450u, 19033u) | vec3<u32>(0u, var_1.x, global1.a.x), arg_0 != 2147483647i), any(vec3<bool>(true, true, true))), u_input.a, global1.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(115f))) * _wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1027f * 1571f) - _wgslsmith_f_op_f32(sign(295f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(933f))))));
    let var_3 = func_2(Struct_1(_wgslsmith_add_vec3_u32(global1.a, _wgslsmith_div_vec3_u32(u_input.d.zxx, global1.a)), global1.b), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~_wgslsmith_div_i32(var_0, arg_0), -18266i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(select(arg_0, arg_0, global1.b), -1i), _wgslsmith_clamp_i32(~(-25914i), i32(-1i) * -24496i, -43446i)), _wgslsmith_clamp_i32(-_wgslsmith_add_i32(arg_0, var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0, arg_0), vec3<i32>(u_input.a, -30361i, 0i)) >> (30616u % 32u), 2147483647i)), true);
    return vec3<i32>(~u_input.a, -7753i, max(arg_0, select(-1i, -22278i, all(select(vec2<bool>(var_3.b, true), vec2<bool>(true, true), vec2<bool>(var_3.b, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(func_1(u_input.a, ~(_wgslsmith_sub_u32(1u, u_input.d.x) >> (~u_input.d.x % 32u))), -select(select(abs(vec3<i32>(u_input.a, 104013i, -34559i)), ~vec3<i32>(u_input.a, u_input.a, u_input.a), select(vec3<bool>(global1.b, true, true), vec3<bool>(true, true, global1.b), global1.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 88004i, u_input.a)) & max(vec3<i32>(-13184i, u_input.a, u_input.a), vec3<i32>(20605i, u_input.a, 0i)), select(!vec3<bool>(global1.b, false, false), select(vec3<bool>(true, global1.b, global1.b), vec3<bool>(global1.b, global1.b, false), false), false)));
    global0 = any(!select(select(select(vec4<bool>(global1.b, true, global1.b, true), vec4<bool>(true, true, global1.b, true), true), !vec4<bool>(true, global1.b, true, false), select(vec4<bool>(global1.b, global1.b, global1.b, true), vec4<bool>(true, false, true, global1.b), vec4<bool>(true, global1.b, global1.b, global1.b))), select(vec4<bool>(false, true, global1.b, true), vec4<bool>(true, global1.b, global1.b, global1.b), true), vec4<bool>(any(vec3<bool>(false, true, global1.b)), all(vec2<bool>(true, false)), true, global1.b)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), -1934f, _wgslsmith_f_op_f32(-1000f * 903f)))), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(vec3<f32>(-878f, 719f, 437f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-789f, -247f, 384f)))), true)) * vec3<f32>(-156f, _wgslsmith_f_op_f32(382f - _wgslsmith_f_op_f32(-312f - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 899f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1198f, -722f, false)) * -409f))));
    let var_2 = func_2(func_2(Struct_1(_wgslsmith_mult_vec3_u32(~u_input.c, _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(0u, 4294967295u, u_input.d.x))), any(!vec3<bool>(global1.b, global1.b, global1.b))), abs(u_input.a), -1i < u_input.a), ~var_0.x, !any(vec2<bool>(select(false, global1.b, false), !global1.b)));
    let var_3 = Struct_1(vec3<u32>(abs(global1.a.x), global1.a.x, ~4294967295u) | var_2.a, any(!(!(!vec4<bool>(false, var_2.b, false, global1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(var_1.x, 422f, var_1.x, var_1.x)))))), _wgslsmith_mult_u32(select(_wgslsmith_clamp_u32(~var_3.a.x, 111916u, global1.a.x), _wgslsmith_mult_u32(2197u << (var_3.a.x % 32u), _wgslsmith_mult_u32(18437u, global1.a.x)), false), ~1u), var_1.x);
}

