struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1330f;

var<private> global1: array<bool, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_1(~abs(~(-vec4<i32>(arg_1.x, -2147483647i, 1i, -1i))), arg_1.x);
    let var_1 = ~var_0.a.zyy;
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-412f)), _wgslsmith_f_op_f32(-680f * -659f))) * -1259f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487f - 975f)) + 254f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1406f * 1720f)))))));
    var var_2 = ~_wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, 81616u)) << (max(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yz) % vec2<u32>(32u)), ~reverseBits(u_input.b.zy));
    let var_3 = var_0.a | -var_0.a;
    return ~_wgslsmith_add_u32(abs(~(~4294967295u)), min(4294967295u, u_input.b.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    global1 = array<bool, 32>();
    var var_1 = (i32(-1i) * -(~1i)) <= arg_1.a.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(156f)) + 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) + 1203f);
    global1 = array<bool, 32>();
    return Struct_2(func_3(any(vec2<bool>(global1[_wgslsmith_index_u32(8996u, 32u)], false)), vec2<i32>(-arg_1.a.x, 1i), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(arg_0.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(10906u, 32u)], true), all(vec4<bool>(false, false, false, true)))) | func_3(-17828i >= u_input.a.x, vec2<i32>(arg_1.a.x, _wgslsmith_add_i32(-82348i, arg_1.b)), select(!vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(arg_0.x, 32u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(26121u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], false), false)), !select(select(!vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 32u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 32u)], false, true, true), var_0.b >= u_input.c.x), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(67166u, 32u)], global1[_wgslsmith_index_u32(arg_0.x, 32u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(arg_0.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), global1[_wgslsmith_index_u32(21883u, 32u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(arg_0.x, 32u)], true), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 32u)]), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 32u)], true, true), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), false)), -17274i, _wgslsmith_mod_vec2_i32(abs(arg_1.a.yz), var_0.a.xy), select(true, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(443f))) > 345f, all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true)), vec2<bool>(true, true), any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], true))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_1(select(firstTrailingBit(vec4<i32>(arg_1.c >> (arg_1.a % 32u), i32(-1i) * -2147483647i, _wgslsmith_mult_i32(u_input.a.x, 9540i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, arg_1.d.x, -13170i), vec3<i32>(u_input.a.x, 1i, arg_1.d.x)))), arg_0.a, 1u > ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, u_input.b.x, 4294967295u, arg_1.a), vec4<u32>(arg_1.a, 1u, 0u, 34920u))), ~(-3072i));
    global1 = array<bool, 32>();
    let var_1 = vec2<u32>(35373u, max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b, u_input.b), u_input.b >> (vec3<u32>(arg_1.a, arg_1.a, 1208u) % vec3<u32>(32u))), 53282u)) | select(~(~vec2<u32>(101983u, arg_1.a) | _wgslsmith_add_vec2_u32(u_input.b.yz, vec2<u32>(u_input.b.x, u_input.b.x))), abs(vec2<u32>(~1u, u_input.b.x)), ~(~arg_1.a) == firstTrailingBit(firstTrailingBit(26213u)));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))));
    global1 = array<bool, 32>();
    return ~1u;
}

fn func_1() -> vec4<bool> {
    var var_0 = select(select(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(37815u, 32u)], false, false, global1[_wgslsmith_index_u32(10370u, 32u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false))), !select(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(10567u, 32u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(48672u, 32u)]), global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(54044u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(47770u, 32u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 32u)], false, global1[_wgslsmith_index_u32(1u, 32u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(36548u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]))), any(select(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(30857u, 32u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 32u)])))), select(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false, false, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global1[_wgslsmith_index_u32(1u, 32u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]))), vec4<bool>(true & global1[_wgslsmith_index_u32(~u_input.b.x, 32u)], !global1[_wgslsmith_index_u32(4294967295u >> (u_input.b.x % 32u), 32u)], false, true), true), true);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1418f, 1f) + _wgslsmith_f_op_f32(f32(-1f) * -945f));
    var var_1 = 46478u;
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(1u, ~(~8124u)), vec2<u32>(_wgslsmith_clamp_u32(~(u_input.b.x ^ 18547u), 18674u, func_4(Struct_1(vec4<i32>(-10635i, 33654i, u_input.c.x, u_input.c.x), 1i), func_2(vec4<u32>(0u, u_input.b.x, 10036u, u_input.b.x), Struct_1(vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, 19598i), 873i)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(151f, -1321f, 1063f))))), firstLeadingBit(_wgslsmith_add_u32(3970u, 90428u) | _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))));
    global1 = array<bool, 32>();
    return !(!vec4<bool>(global1[_wgslsmith_index_u32(select(~2932u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), var_0.x), 32u)], !(u_input.c.x < u_input.c.x), true, !global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 32u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x >> (u_input.b.x % 32u), u_input.b.x), ~abs(u_input.b)), ~u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 41792u, 5613u))), u_input.b.x), 32u)]), !(!func_1()), reverseBits(u_input.a.x << (0u % 32u)), firstTrailingBit(_wgslsmith_mod_vec2_i32(~u_input.c.zz, -vec2<i32>(u_input.c.x, -2147483647i))) ^ ~u_input.c.zy, !global1[_wgslsmith_index_u32(u_input.b.x, 32u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-189f, -611f, 1122f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-615f, -873f, -592f, 689f), vec4<f32>(1000f, 624f, 747f, 1843f)))))));
    let var_2 = !var_0.b;
    var var_3 = vec3<u32>(1u, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(~u_input.b.xy, min(vec2<u32>(4294967295u, u_input.b.x), u_input.b.xy)), _wgslsmith_mult_vec2_u32(abs(u_input.b.zx), max(_wgslsmith_mult_vec2_u32(u_input.b.xy, vec2<u32>(4294967295u, 48280u)), ~u_input.b.zz))), firstTrailingBit(firstLeadingBit(_wgslsmith_sub_u32(~var_0.a, u_input.b.x))));
    let var_4 = func_2(vec4<u32>(var_3.x, abs(4294967295u), var_3.x, 14801u), Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(-7635i, 0i, 1i, u_input.c.x), vec4<i32>(var_0.d.x, u_input.a.x, u_input.a.x, var_0.c) | vec4<i32>(307i, 1i, u_input.c.x, 11492i)) ^ ~firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, var_0.c)), abs(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a.x, var_0.d.x), vec2<i32>(var_0.d.x, var_0.c), true), -vec2<i32>(-2147483647i, 32198i)))));
    let var_5 = _wgslsmith_clamp_u32(var_0.a, (_wgslsmith_div_u32(1u, 1u) << (var_0.a % 32u)) ^ var_0.a, var_4.a);
    global1 = array<bool, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(1804f, u_input.c, 53935u);
}

