struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = vec4<bool>(!any(vec4<bool>(any(vec2<bool>(false, false)), true, all(vec4<bool>(true, false, true, true)), true)), true, true, all(!vec3<bool>(true, arg_1.c.x <= -594f, true)));
    global0 = array<f32, 32>();
    var var_1 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 106446u, u_input.d.x << (max(0u, u_input.d.x) % 32u), u_input.a), _wgslsmith_mod_vec4_u32(firstLeadingBit(abs(vec4<u32>(arg_1.a, u_input.a, 46347u, 35676u))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 0u, u_input.a, arg_1.a), vec4<u32>(arg_1.a, 36624u, u_input.d.x, 0u), var_0.x), max(vec4<u32>(arg_1.b.x, arg_1.a, 49117u, 39664u), vec4<u32>(u_input.d.x, 0u, u_input.a, u_input.d.x))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.a, 32u)])) * arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(41893u), 32u)])))));
    var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, arg_1.a, 40813u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 56001u, 87694u), arg_1.b)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(5970u, u_input.d.x, arg_1.b.x, arg_1.a), vec4<u32>(arg_1.b.x, 1u, 63551u, 1u))), _wgslsmith_mult_u32(firstTrailingBit(u_input.c.x), ~u_input.c.x) ^ u_input.d.x, _wgslsmith_sub_u32(~max(4294967295u, 0u), var_1.x), 4294967295u), ~(select(~vec4<u32>(u_input.a, var_1.x, u_input.c.x, 0u), vec4<u32>(76139u, u_input.a, u_input.c.x, 40775u), var_0) & ~(~vec4<u32>(arg_1.b.x, u_input.a, var_1.x, u_input.c.x))));
    return vec2<bool>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~57610u, 32u)] + -1426f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(456f * 345f) - _wgslsmith_f_op_f32(ceil(arg_1.c.x))) * _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -596f))), false);
}

fn func_2() -> u32 {
    var var_0 = any(!func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-335f, global0[_wgslsmith_index_u32(67673u, 32u)]))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(48738u, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), vec2<f32>(560f, -1471f)))), Struct_1(_wgslsmith_sub_u32(4294967295u, u_input.d.x), vec3<u32>(0u, u_input.d.x, u_input.d.x), _wgslsmith_div_vec4_f32(vec4<f32>(-982f, global0[_wgslsmith_index_u32(67907u, 32u)], global0[_wgslsmith_index_u32(77889u, 32u)], global0[_wgslsmith_index_u32(28670u, 32u)]), vec4<f32>(-574f, 1946f, -383f, 522f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-632f, 1399f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(-227f, global0[_wgslsmith_index_u32(30046u, 32u)]), vec2<f32>(global0[_wgslsmith_index_u32(97306u, 32u)], 333f))), -vec3<i32>(-47697i, 24632i, u_input.e)));
    let var_1 = ~vec4<i32>(u_input.b.x, abs(select(1i, 1i, true)), _wgslsmith_div_i32(u_input.b.x, ~u_input.e), _wgslsmith_mod_i32(select(0i, _wgslsmith_add_i32(u_input.e, 1i), all(vec2<bool>(true, false))), -2147483647i));
    let var_2 = ~(~countOneBits(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 214u, u_input.a), _wgslsmith_add_u32(u_input.c.x, 32054u), firstTrailingBit(1u), ~1u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(13057u, 32u)], global0[_wgslsmith_index_u32(17383u, 32u)], 667f), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 361f, 635f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 660f, -873f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], -269f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 32u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 32u)] + global0[_wgslsmith_index_u32(u_input.a, 32u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)])))));
    var var_4 = Struct_1(u_input.d.x, ~(vec3<u32>(1738u >> (var_2.x % 32u), u_input.a & u_input.d.x, ~15323u) & (~vec3<u32>(6192u, var_2.x, 25370u) | _wgslsmith_mult_vec3_u32(vec3<u32>(59658u, 56497u, u_input.c.x), var_2.wyw))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(5487u, 32u)], var_3.x)), all(vec3<bool>(false, true, true)))), 838f, global0[_wgslsmith_index_u32(var_2.x, 32u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(76639u, 1u), 32u)]))));
    return abs(~_wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_clamp_u32(~30879u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.b.x, 1u, var_4.a, 40962u), var_2), _wgslsmith_clamp_u32(var_4.a, 0u, var_2.x)), 1u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<f32, 32>();
    let var_0 = vec3<u32>(arg_1.x, arg_1.x, func_2());
    global0 = array<f32, 32>();
    var var_1 = ~vec3<u32>(4294967295u, 32855u, u_input.d.x);
    let var_2 = arg_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), false), vec2<u32>(u_input.c.x, 4294967295u), Struct_1(reverseBits(u_input.a) | select(u_input.d.x, u_input.a, u_input.e > 2147483647i), ~(~vec3<u32>(1u, u_input.a, 30676u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1868f, 1045f, global0[_wgslsmith_index_u32(u_input.d.x, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]))))))), ~min(u_input.b.wxz, u_input.b.zwz));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(2194f, -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 32u)], -1313f) * var_0.c.yz)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(var_0.c.wz))))))));
    let var_2 = ~reverseBits(var_0.b);
    global0 = array<f32, 32>();
    let var_3 = max(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 28233u), var_0.b.yx), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_2.x, 9783u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.x), vec2<u32>(4294967295u, var_2.x))), ~(~var_2.x), firstTrailingBit(func_2())), ~firstTrailingBit(vec4<u32>(var_0.b.x, 1u, var_2.x, 40281u) & vec4<u32>(0u, 20865u, var_0.a, 4294967295u))) >> (max(vec4<u32>(u_input.a, 52048u, u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, 4294967295u), vec4<u32>(50917u, var_2.x, 1u, 4294967295u)) % 32u), var_2.x), vec4<u32>(4294967295u, 2896u, var_2.x, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 52083u) & firstLeadingBit(u_input.a))) % vec4<u32>(32u));
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(var_0.c));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_1.x) * vec2<f32>(-493f, 1000f)), _wgslsmith_f_op_vec2_f32(var_0.c.ww * var_0.c.yw), all(vec3<bool>(false, true, true)))))) * vec2<f32>(var_4.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x * -431f), -442f)))));
    let var_5 = !(!all(vec2<bool>(true, true)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_4.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, func_1(!(!select(vec3<bool>(var_5, var_5, true), vec3<bool>(var_5, var_5, true), vec3<bool>(true, var_5, var_5))), vec2<u32>(0u, ~u_input.a ^ _wgslsmith_clamp_u32(var_0.b.x, 15642u, 43112u)), var_0, vec3<i32>(-(~1i), min(~u_input.e, reverseBits(u_input.b.x)), u_input.e << (u_input.c.x % 32u))).c, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(38209u, u_input.c.x, 0u), vec3<u32>(1u, 5695u, 41349u)), _wgslsmith_mod_vec3_u32(var_2, var_3.zwz)), _wgslsmith_sub_u32(countOneBits(var_3.x), func_1(vec3<bool>(var_5, false, true), var_3.wy, var_0, u_input.b.ywy).a)) ^ _wgslsmith_sub_u32(4294967295u, 53331u), var_3.x);
}

