struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10>;

var<private> global1: array<vec2<u32>, 7>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec3<i32> {
    global0 = array<vec3<f32>, 10>();
    global1 = array<vec2<u32>, 7>();
    let var_0 = Struct_2(Struct_1(4294967295u >> (u_input.a.x % 32u), u_input.a.zz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1063f, -525f, _wgslsmith_f_op_f32(f32(-1f) * -2165f), _wgslsmith_f_op_f32(trunc(-1225f)))), !all(vec4<bool>(true, true, true, true)), vec3<i32>(0i, abs(7182i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -40379i, 0i) << (vec4<u32>(u_input.a.x, 54595u, 0u, u_input.a.x) % vec4<u32>(32u)), -vec4<i32>(52054i, 2147483647i, 0i, 1i)))), Struct_1(~2843u, countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), ~vec2<u32>(u_input.a.x, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(678f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-803f, 196f) + _wgslsmith_f_op_f32(select(204f, -372f, false)))), all(vec3<bool>(all(vec2<bool>(false, true)), true, true)), vec3<i32>(~select(3754i, 76942i, true), countOneBits(~16849i), ~(i32(-1i) * -2147483647i))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(145f, 729f))))))), select(select(vec3<bool>(true, any(vec4<bool>(false, false, true, true)), select(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), !vec3<bool>(true, true, any(vec3<bool>(false, false, false))), false), !select(vec2<bool>(false, true), vec2<bool>(true, true), false));
    let var_1 = Struct_1(_wgslsmith_sub_u32(firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 33189u, u_input.a.x, 1u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 58633u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, 8450u, var_0.a.a), vec4<u32>(var_0.a.b.x, u_input.a.x, 4294967295u, u_input.a.x)), vec4<u32>(71389u, u_input.a.x, select(27431u, u_input.a.x, var_0.e.x), 1u))), min(~(~_wgslsmith_add_vec2_u32(var_0.a.b, u_input.a.xz)), _wgslsmith_sub_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(31276u, 70075u), vec2<u32>(1u, var_0.a.b.x))), ~(var_0.b.b & vec2<u32>(22962u, 25005u)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.c.x))), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(275f * _wgslsmith_div_f32(1000f, 493f))), -108f), var_0.b.e.x > var_0.a.e.x, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(19336i, _wgslsmith_mult_i32(var_0.b.e.x, var_0.b.e.x)), ~(i32(-1i) * -15682i), countOneBits(_wgslsmith_div_i32(var_0.a.e.x, -47536i))), _wgslsmith_sub_vec3_i32(var_0.b.e >> (firstTrailingBit(u_input.a) % vec3<u32>(32u)), -vec3<i32>(var_0.a.e.x, -1i, var_0.b.e.x))));
    global1 = array<vec2<u32>, 7>();
    return vec3<i32>(var_1.e.x, 1i, ~(~(i32(-1i) * -1i)));
}

fn func_2() -> vec4<i32> {
    var var_0 = ~38666u;
    let var_1 = Struct_1(u_input.a.x, global1[_wgslsmith_index_u32(~55889u, 7u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(983f * _wgslsmith_f_op_f32(717f + -271f)), _wgslsmith_f_op_f32(f32(-1f) * -163f))), true, -(~(vec3<i32>(-1i, -2147483647i, 0i) & func_3())));
    global1 = array<vec2<u32>, 7>();
    var var_2 = Struct_2(Struct_1(var_1.b.x, var_1.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(1020f + 697f), _wgslsmith_f_op_f32(step(100f, var_1.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)))), true, select(abs(min(vec3<i32>(var_1.e.x, 17841i, var_1.e.x), var_1.e)), _wgslsmith_mod_vec3_i32(reverseBits(var_1.e), select(var_1.e, vec3<i32>(-20187i, var_1.e.x, 16004i), vec3<bool>(true, var_1.d, var_1.d))), vec3<bool>(!var_1.d, true, var_1.d))), Struct_1(1u, vec2<u32>(u_input.a.x | var_1.b.x, abs(10411u)) >> (vec2<u32>(1u, reverseBits(4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.c.x, -2218f, 1478f)))), _wgslsmith_f_op_vec4_f32(var_1.c + _wgslsmith_f_op_vec4_f32(var_1.c * vec4<f32>(744f, var_1.c.x, 284f, var_1.c.x))), select(!vec4<bool>(var_1.d, true, true, var_1.d), vec4<bool>(var_1.d, var_1.d, true, var_1.d), !vec4<bool>(var_1.d, var_1.d, var_1.d, var_1.d)))), var_1.d, -vec3<i32>(countOneBits(2147483647i), _wgslsmith_clamp_i32(2147483647i, 1i, -19404i), ~2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(973f, var_1.c.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.c.x, 1158f), var_1.c.ww))))) * vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c.x, var_1.c.x)) * _wgslsmith_f_op_f32(1000f - var_1.c.x)))), !(!(!select(vec3<bool>(var_1.d, var_1.d, true), vec3<bool>(var_1.d, true, true), true))), vec2<bool>(true, !any(!vec4<bool>(var_1.d, var_1.d, true, true))));
    let var_3 = var_1;
    return max(reverseBits(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.e.x, -80772i, var_2.a.e.x, -14377i) << (vec4<u32>(var_1.a, 4077u, var_2.a.b.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(72209i, var_2.a.e.x, var_2.b.e.x, var_2.a.e.x) << (vec4<u32>(66161u, var_2.a.b.x, var_3.a, 28483u) % vec4<u32>(32u))))), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.e.x | var_2.b.e.x, 23978i, -7595i, 1i >> (var_2.a.a % 32u)), -vec4<i32>(var_2.a.e.x, 0i, -1i, var_1.e.x)), vec4<i32>(0i, -reverseBits(var_1.e.x), var_1.e.x, -31566i)));
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = select(-44249i, -1998i, select(arg_0.b.d, arg_0.e.x, true));
    global0 = array<vec3<f32>, 10>();
    let var_1 = _wgslsmith_div_vec4_i32(~vec4<i32>(var_0, firstLeadingBit(_wgslsmith_add_i32(3195i, arg_0.a.e.x)), 61238i, -_wgslsmith_add_i32(var_0, 2147483647i)), -abs(_wgslsmith_div_vec4_i32(func_2(), abs(vec4<i32>(-2147483647i, var_0, arg_0.a.e.x, var_0)))));
    var var_2 = Struct_2(Struct_1(~4294967295u, vec2<u32>(u_input.a.x, ~(~1u)), arg_0.b.c, 32192u == countOneBits(arg_0.b.a), var_1.wwz), arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), -1958f)) + vec2<f32>(_wgslsmith_f_op_f32(370f + _wgslsmith_f_op_f32(arg_0.c.x - arg_0.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.c.x)) + _wgslsmith_div_f32(222f, arg_0.b.c.x)))), !arg_0.d, arg_0.e);
    var var_3 = var_2.b.c.x;
    return select(true, any(vec3<bool>(all(!vec4<bool>(false, var_2.d.x, arg_0.d.x, true)), false || !arg_0.d.x, false)), arg_0.a.d);
}

fn func_4(arg_0: vec4<bool>) -> bool {
    let var_0 = 18747u;
    var var_1 = any(select(vec4<bool>(true, false, arg_0.x, false), select(!vec4<bool>(false, true, true, arg_0.x), select(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), select(arg_0, vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, false, true, arg_0.x)), true), !arg_0.x), vec4<bool>(arg_0.x, !arg_0.x, true, all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)))));
    global1 = array<vec2<u32>, 7>();
    global1 = array<vec2<u32>, 7>();
    return all(vec2<bool>((reverseBits(u_input.a.x) << (u_input.a.x % 32u)) >= ~1u, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 7>();
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(step(-1153f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))))) != _wgslsmith_f_op_f32(abs(770f)), true, func_4(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), !func_1(Struct_2(Struct_1(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], vec4<f32>(-1669f, -105f, 419f, -1070f), true, vec3<i32>(-2147483647i, -2147483647i, 0i)), Struct_1(u_input.a.x, vec2<u32>(u_input.a.x, 26618u), vec4<f32>(332f, 1174f, 1746f, 480f), false, vec3<i32>(1i, -15332i, 30564i)), vec2<f32>(-652f, 528f), vec3<bool>(true, true, false), vec2<bool>(false, false))))));
    var var_1 = Struct_1(~29997u, reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(select(u_input.a.x, 60379u, var_0.x), _wgslsmith_mult_u32(1u, u_input.a.x)), vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1234f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1940f, -1684f) - _wgslsmith_f_op_f32(f32(-1f) * -2104f)), _wgslsmith_f_op_f32(max(-434f, _wgslsmith_f_op_f32(abs(-407f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-405f - -225f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1657f, 192f, -999f, 125f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-764f, -299f, 1000f, 1157f), vec4<f32>(-1557f, -538f, -1631f, -1213f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(582f, -567f, -723f, -407f))))), var_0.x, ~max(vec3<i32>(-2147483647i >> (u_input.a.x % 32u), 17280i, i32(-1i) * -12647i), abs(~vec3<i32>(-29642i, -2147483647i, 0i))));
    let var_2 = Struct_2(Struct_1(0u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~39257u), var_1.b.x), 7u)], vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1668f), var_1.c.x, -596f, _wgslsmith_f_op_f32(f32(-1f) * -751f)), true, var_1.e), Struct_1(var_1.b.x, var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.c, var_1.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1379f, 158f, -205f, var_1.c.x))), true, ~(-vec3<i32>(74741i, -1i, var_1.e.x))), var_1.c.yw, vec3<bool>(var_0.x, _wgslsmith_f_op_f32(444f * _wgslsmith_f_op_f32(-var_1.c.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1836f)) + 381f), !((var_0.x || var_0.x) && all(vec3<bool>(var_1.d, true, var_1.d)))), vec2<bool>(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 30862u), u_input.a.zy)) > u_input.a.x, true));
    var_0 = !(!var_2.d);
    let var_3 = var_2.b;
    var var_4 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_4.c.yxw, max(~u_input.a, abs(countOneBits(vec3<u32>(83096u, 36220u, u_input.a.x) << (vec3<u32>(0u, 0u, var_3.a) % vec3<u32>(32u))))), ~abs(~abs(vec4<u32>(var_4.b.x, var_1.b.x, 19114u, var_4.a))));
}

