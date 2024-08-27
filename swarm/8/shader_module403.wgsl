struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<i32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: vec2<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = Struct_3(select(true, true, true));
    let var_1 = ~u_input.a;
    let var_2 = -600f;
    var var_3 = Struct_1(select(~(~vec2<u32>(global1.x, 13930u)), min(abs(vec2<u32>(global1.x, global1.x)), reverseBits(vec2<u32>(global1.x, 15528u))), all(vec2<bool>(true, var_0.a))) | ~(~abs(vec2<u32>(u_input.d, 1u))), !var_0.a, _wgslsmith_mult_vec4_i32(~(~firstTrailingBit(vec4<i32>(u_input.b.x, -26213i, 2147483647i, 1i))), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, u_input.e, var_1, -24256i), firstLeadingBit(vec4<i32>(-1i, u_input.a, var_1, u_input.c))))), min(reverseBits(34829u), u_input.d) >> (_wgslsmith_dot_vec4_u32(min(vec4<u32>(10538u, 0u, 34625u, 59104u), ~vec4<u32>(u_input.d, 4294967295u, 0u, 4294967295u)), min(min(vec4<u32>(108874u, global1.x, 5453u, 26939u), vec4<u32>(1u, 1u, u_input.d, u_input.d)), vec4<u32>(global1.x, u_input.d, 54181u, global1.x))) % 32u), -33712i);
    let var_4 = Struct_2(abs(1u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(670f, _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(-1f), var_2) * global0[_wgslsmith_index_u32(0u, 17u)]) * _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(firstTrailingBit(~var_4.a), 17u)] * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, 232f, var_2)) * vec3<f32>(-1136f, -1000f, var_2)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global1.x, 17u)]), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2, -908f, var_2))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<f32>) -> bool {
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    global1 = ~vec2<u32>(u_input.d, abs(global1.x));
    return true;
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = !vec3<bool>(func_4(vec2<f32>(_wgslsmith_div_f32(596f, 421f), -565f), _wgslsmith_div_f32(_wgslsmith_div_f32(-338f, -700f), 1f), _wgslsmith_f_op_vec3_f32(func_3(true))), arg_0.a, arg_0.a);
    let var_1 = any(vec4<bool>(!(-1381f == _wgslsmith_f_op_f32(sign(2009f))), true, all(select(vec4<bool>(false, true, var_0.x, true), select(vec4<bool>(arg_0.a, true, false, arg_0.a), vec4<bool>(var_0.x, false, false, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, false)), var_0.x)), arg_0.a));
    var var_2 = vec4<i32>(1i, u_input.a, firstLeadingBit(_wgslsmith_div_i32(-reverseBits(u_input.e), u_input.c)), ~min(abs(30027i), max(1i, u_input.a)));
    global0 = array<vec3<f32>, 17>();
    var var_3 = abs(-(vec3<i32>(-var_2.x, ~12306i, var_2.x) >> (select(~vec3<u32>(38369u, u_input.d, u_input.d), reverseBits(vec3<u32>(global1.x, 87183u, 0u)), !var_0) % vec3<u32>(32u))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_0.x)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1680f * -1845f)))));
}

fn func_5(arg_0: i32, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -179f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.x, -2102f, true)), arg_1.x));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1.x, u_input.d), 17u)];
    let var_3 = select(~reverseBits(vec2<u32>(u_input.d, ~4294967295u)), ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, u_input.d)), ~vec2<u32>(u_input.d, 59503u)), select(!vec2<bool>(any(vec3<bool>(false, true, true)), true), vec2<bool>(1i > _wgslsmith_sub_i32(u_input.b.x, u_input.e), true | (global1.x <= global1.x)), vec2<bool>(95687u == _wgslsmith_mult_u32(0u, u_input.d), true)));
    return var_2.x;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x + 365f), _wgslsmith_f_op_f32(ceil(arg_3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2650f - arg_3.x))))), _wgslsmith_f_op_f32(817f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(-arg_3.x))))), _wgslsmith_f_op_f32(func_5(abs(u_input.a) | (_wgslsmith_mult_i32(arg_0, 50300i) >> ((global1.x ^ global1.x) % 32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_3.yw - _wgslsmith_f_op_vec2_f32(func_2(Struct_3(arg_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_3.xz)) * _wgslsmith_div_vec2_f32(arg_3.wz, vec2<f32>(arg_3.x, -581f))))))));
    var var_1 = select(-(~(~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -22110i, arg_0), vec3<i32>(u_input.c, 2147483647i, u_input.a)))), vec3<i32>(-u_input.a, -51644i, 1i & arg_0), arg_1.x);
    return Struct_2(global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-(i32(-1i) * -u_input.e), vec3<bool>(!select(all(vec2<bool>(true, false)), true, any(vec3<bool>(false, false, true))), select(true, _wgslsmith_add_i32(u_input.e, u_input.a) > -13602i, false), 1000f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -115f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1425f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1280f * -466f))) - _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(23727u), 5164u), 17u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1257f, -1623f, -469f, 328f), vec4<f32>(724f, 612f, 392f, 170f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-900f, -2077f, -369f, -214f) - vec4<f32>(1000f, -1213f, -1000f, 702f))))));
    let var_1 = Struct_1(countOneBits(~(~(vec2<u32>(4294967295u, var_0.a) | vec2<u32>(var_0.a, global1.x)))), false, abs(vec4<i32>(-1i) * -vec4<i32>(-49738i, u_input.e, -1447i, 12985i)), ~(~101048u), u_input.a);
    var var_2 = vec3<u32>(u_input.d, ~u_input.d, var_1.a.x);
    var_2 = ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.d, 23295u, var_0.a)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.a.x, 86720u), vec3<u32>(var_2.x, 21087u, var_1.a.x) | vec3<u32>(0u, var_0.a, 4294967295u)), max(countOneBits(select(vec3<u32>(1u, u_input.d, 53258u), vec3<u32>(global1.x, var_0.a, global1.x), vec3<bool>(var_1.b, var_1.b, false))), vec3<u32>(~1u, 74815u, var_0.a)), max(~(~vec3<u32>(0u, var_2.x, u_input.d)), vec3<u32>(6087u, _wgslsmith_div_u32(var_1.d, var_0.a), var_1.d)));
    var var_3 = all(select(!vec4<bool>(var_1.b, any(vec3<bool>(true, var_1.b, var_1.b)), all(vec4<bool>(var_1.b, var_1.b, false, false)), !var_1.b), !(!vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)), 10375u > var_2.x));
    let var_4 = ~(~(~((global1.x >> (var_1.a.x % 32u)) | ~var_1.a.x)));
    let var_5 = !vec3<bool>(var_1.b, false, true);
    let var_6 = func_4(_wgslsmith_div_vec2_f32(vec2<f32>(1569f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-292f, 850f)))) - vec2<f32>(-281f, _wgslsmith_f_op_f32(f32(-1f) * -1931f)))), _wgslsmith_f_op_f32(-216f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(231f)))), vec3<f32>(_wgslsmith_f_op_f32(min(731f, _wgslsmith_f_op_f32(f32(-1f) * -463f))), -342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1018f + -225f) - -287f)));
    let var_7 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-373f - -1684f), -272f, -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(var_1.c.zw | var_1.c.wz), -(~_wgslsmith_clamp_vec2_i32(var_1.c.yx, var_1.c.wy, vec2<i32>(u_input.e, u_input.c)))));
}

