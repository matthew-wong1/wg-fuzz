struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<f32, 8> = array<f32, 8>(-221f, 3446f, 596f, 765f, 477f, -1839f, 870f, -279f);

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec2<f32> {
    global1 = array<f32, 8>();
    global2 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_f_op_f32(floor(-981f));
    global2 = array<Struct_1, 9>();
    let var_1 = Struct_2(Struct_1(~vec2<u32>(4294967295u, firstLeadingBit(u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(step(var_0, global1[_wgslsmith_index_u32(45664u, 8u)])), -260f, var_0, 141f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1))))), abs(1u)), Struct_1(u_input.b.wx, _wgslsmith_div_vec4_f32(vec4<f32>(527f, _wgslsmith_f_op_f32(f32(-1f) * -527f), -950f, -151f), _wgslsmith_div_vec4_f32(vec4<f32>(478f, 955f, -427f, 425f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(197f, -184f, -1496f, arg_1.x))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -2673f) + _wgslsmith_f_op_vec2_f32(-arg_1)), vec2<f32>(arg_1.x, var_0))), ~1u), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.e.x, u_input.c.x), 9u)], Struct_1(_wgslsmith_add_vec2_u32(u_input.b.wx, firstTrailingBit(vec2<u32>(4294967295u, 44468u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 812f, global1[_wgslsmith_index_u32(60252u, 8u)]) - vec4<f32>(520f, -1000f, 1626f, -1000f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_1, arg_1))), ~_wgslsmith_mod_u32(~59923u, 28330u ^ u_input.a)), select(arg_0.yz, select(vec2<bool>(any(vec3<bool>(arg_0.x, false, arg_0.x)), all(vec4<bool>(true, true, true, arg_0.x))), vec2<bool>(arg_0.x, all(vec4<bool>(false, arg_0.x, false, false))), true), arg_0.yz));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, var_0))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 + var_1.a.c.x))) - _wgslsmith_f_op_vec2_f32(-var_1.a.c))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = u_input.e.yx;
    var var_1 = Struct_2(Struct_1(var_0, vec4<f32>(_wgslsmith_f_op_f32(363f - global1[_wgslsmith_index_u32(var_0.x, 8u)]), global1[_wgslsmith_index_u32(~(var_0.x | u_input.c.x), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-367f - global1[_wgslsmith_index_u32(u_input.c.x, 8u)]) * -2624f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 8u)] * 1602f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(340f, global1[_wgslsmith_index_u32(var_0.x, 8u)]))) - vec2<f32>(_wgslsmith_f_op_f32(963f * global1[_wgslsmith_index_u32(var_0.x, 8u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 8u)]))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(34763u, u_input.c.x), vec2<u32>(var_0.x, 73862u))), global2[_wgslsmith_index_u32(0u, 9u)], Struct_1(~abs(var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u << (var_0.x % 32u), 8u)], -1672f, global1[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 8u)], _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 8u)])))), vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_0.x, 8u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -512f)))), _wgslsmith_dot_vec3_u32(u_input.e.zwz, ~u_input.c)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~(1u << (var_0.x % 32u))), var_0.x | firstLeadingBit(11176u << (var_0.x % 32u))), 9u)], vec2<bool>(true, true));
    var var_2 = any(var_1.e) && !var_1.e.x;
    var var_3 = Struct_2(Struct_1(max(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.b.a.x, 12481u), var_1.d.a) | (var_0 ^ var_1.a.a), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.a), var_0)), vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 8u)], 860f, 1888f, _wgslsmith_f_op_f32(trunc(637f))), var_1.d.c, ~25772u), Struct_1(var_1.a.a, _wgslsmith_f_op_vec4_f32(-var_1.c.b), _wgslsmith_div_vec2_f32(var_1.c.c, vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 8u)] - var_1.d.b.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 8u)] * 258f))), ~var_1.a.d), Struct_1(u_input.b.wy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c.b)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_1.a.b + var_1.d.b)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(var_1.e.x, var_1.e.x, true), _wgslsmith_f_op_vec2_f32(var_1.a.b.xw - vec2<f32>(-668f, 945f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.d.b.wx)))), ~var_0.x), Struct_1(firstLeadingBit(vec2<u32>(~var_0.x, ~50346u)), var_1.d.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.c.b.x + var_1.d.c.x), global1[_wgslsmith_index_u32(1u, 8u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(257f, -1719f) + var_1.a.c)), _wgslsmith_div_u32(abs(_wgslsmith_sub_u32(var_0.x, var_1.d.d)), var_0.x)), var_1.e);
    let var_4 = !select(!(!select(vec4<bool>(var_3.e.x, var_3.e.x, true, var_3.e.x), vec4<bool>(false, var_3.e.x, true, var_1.e.x), vec4<bool>(false, var_3.e.x, var_3.e.x, var_3.e.x))), vec4<bool>(false, any(select(vec2<bool>(false, false), var_1.e, var_3.e.x)), var_1.e.x, var_1.e.x & true), true);
    return Struct_3(vec4<i32>(_wgslsmith_div_i32(global0.x, _wgslsmith_mult_i32(~u_input.d, 1i)), u_input.d, ~(-27914i), _wgslsmith_mult_i32(firstLeadingBit(u_input.d), global0.x)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_3(firstLeadingBit(_wgslsmith_sub_vec4_i32(firstTrailingBit(~arg_2), arg_2)));
    let var_1 = true;
    return func_2(-2147483647i);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: f32) -> vec3<i32> {
    global0 = vec3<i32>(-countOneBits(countOneBits(func_2(26111i).a.x)), -2020i, -2147483647i);
    global1 = array<f32, 8>();
    let var_0 = Struct_2(Struct_1(vec2<u32>(4294967295u, countOneBits(u_input.a) ^ abs(1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-901f, arg_3, arg_3, global1[_wgslsmith_index_u32(u_input.a, 8u)]), vec4<f32>(-161f, global1[_wgslsmith_index_u32(41852u, 8u)], -1413f, -1578f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(60248u, 8u)], arg_3, 537f, arg_3)))))), vec2<f32>(arg_3, 1000f), firstTrailingBit(reverseBits(select(22164u, u_input.c.x, false)))), global2[_wgslsmith_index_u32(~1u, 9u)], Struct_1(~(u_input.c.yx & ~u_input.b.zy), vec4<f32>(arg_3, -222f, 349f, _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(459f, arg_3), vec2<f32>(-202f, -519f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], -662f))), !any(vec3<bool>(true, false, true)))), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.e.x, u_input.e.x << (0u % 32u)), u_input.b.x)), Struct_1(u_input.b.wy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1483f, arg_3, _wgslsmith_f_op_f32(403f + arg_3), 1584f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1043f, -1295f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-175f, global1[_wgslsmith_index_u32(0u, 8u)]), vec2<f32>(874f, 800f))) + vec2<f32>(1000f, -1000f)), true)), ~u_input.c.x << (~(~u_input.a) % 32u)), vec2<bool>(true, true));
    let var_1 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.d.d, u_input.b.x ^ 1u), 62079u), ~(~var_0.d.a.x & u_input.a)), ~4294967295u);
    global1 = array<f32, 8>();
    return ~(abs(arg_2.a.wwy) | (arg_0.wyx & abs(vec3<i32>(4427i, u_input.d, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.d, _wgslsmith_div_i32(2147483647i, u_input.d), firstLeadingBit(u_input.d), u_input.d ^ global0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-49811i, global0.x, global0.x, u_input.d), vec4<i32>(global0.x, global0.x, 3036i, 25726i)) << (~vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 38017u) % vec4<u32>(32u))), min(-vec4<i32>(0i, 60828i, global0.x, 1i) & firstLeadingBit(vec4<i32>(1i, global0.x, 14429i, 32167i)), min(vec4<i32>(-27996i, -63410i, u_input.d, u_input.d), vec4<i32>(-2147483647i, global0.x, 57323i, -1i)) >> (u_input.b % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_sub_i32(global0.x, firstLeadingBit(firstLeadingBit(21490i))), ~(~33808i >> (0u % 32u)), _wgslsmith_mod_i32(i32(-1i) * -global0.x, 5114i), ~_wgslsmith_clamp_i32(58290i, u_input.d, global0.x) & abs(963i)), func_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(reverseBits(u_input.e.x) >> (countOneBits(0u) % 32u), 8u)] - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 8u)])))), vec3<bool>(true, !(4294967295u < u_input.a), true), -select(~vec4<i32>(u_input.d, global0.x, 2147483647i, u_input.d), ~vec4<i32>(global0.x, u_input.d, u_input.d, u_input.d), true)), global1[_wgslsmith_index_u32(1u, 8u)]);
    var var_0 = ~((select(~u_input.b.x, _wgslsmith_mod_u32(4294967295u, u_input.b.x), select(false, false, true)) >> (reverseBits(_wgslsmith_div_u32(u_input.a, 1u)) % 32u)) & countOneBits(~u_input.e.x));
    global1 = array<f32, 8>();
    let var_1 = vec3<u32>(~u_input.b.x & u_input.b.x, ~max(reverseBits(15149u), ~u_input.c.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.b.x, u_input.e.x), u_input.e.zyz), u_input.b.wyw) << (_wgslsmith_sub_u32(u_input.a, ~u_input.c.x) % 32u)) >> (vec3<u32>(u_input.e.x, u_input.b.x, u_input.a) % vec3<u32>(32u));
    var var_2 = Struct_2(Struct_1(vec2<u32>(~(~var_1.x), ~(~26868u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_1.x, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(var_1.x, 8u)], global1[_wgslsmith_index_u32(61790u, 8u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(721f, 348f, -939f, -732f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(40709u, 8u)], 1444f, -1557f, -778f))) * vec4<f32>(global1[_wgslsmith_index_u32(22713u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(2245u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)])))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 8u)], 923f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 8u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 8u)], global1[_wgslsmith_index_u32(var_1.x, 8u)]))))), _wgslsmith_mod_u32(max(var_1.x, var_1.x ^ var_1.x), var_1.x)), global2[_wgslsmith_index_u32(((abs(u_input.a) << ((u_input.e.x << (0u % 32u)) % 32u)) << (~1u % 32u)) << (1u % 32u), 9u)], Struct_1(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(927u, u_input.e.x), u_input.b.xz)), vec4<f32>(_wgslsmith_div_f32(2413f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, 21789u), 8u)]), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 8u)] + -381f))), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.yz)), 8u)], _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~var_1.x, 8u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(636f, global1[_wgslsmith_index_u32(u_input.c.x, 8u)]) + vec2<f32>(global1[_wgslsmith_index_u32(80792u, 8u)], 793f))))), max(1u, 128872u) << (~_wgslsmith_sub_u32(var_1.x, u_input.a) % 32u)), global2[_wgslsmith_index_u32(45021u, 9u)], vec2<bool>(all(vec4<bool>(true, false, false, false)) & (true && select(false, false, false)), u_input.d >= 21026i));
    global2 = array<Struct_1, 9>();
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, _wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.d, 1i, 2147483647i)), vec3<i32>(46074i, -1i & global0.x, -2147483647i)), i32(-1i) * -2147483647i), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-24605i, -2147483647i, -20548i, 30856i), func_1(531f, vec3<bool>(var_2.e.x, var_2.e.x, false), vec4<i32>(global0.x, global0.x, -44514i, global0.x)).a), _wgslsmith_sub_i32(-32029i, _wgslsmith_dot_vec2_i32(global0.yz, vec2<i32>(0i, -2147483647i)))), u_input.d | abs(-1i), func_1(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(9160u, 8u)])), vec3<bool>(!var_2.e.x, !var_2.e.x, false && var_2.e.x), countOneBits(vec4<i32>(global0.x, -2147483647i, -1i, u_input.d)) >> (vec4<u32>(u_input.c.x, u_input.a, var_2.c.d, u_input.b.x) % vec4<u32>(32u))).a.x));
    var var_3 = var_2.c;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-(~firstTrailingBit(vec2<i32>(67797i, global0.x))), vec3<i32>(2147483647i, -1i, _wgslsmith_mult_i32(-2147483647i | global0.x, -(~(-25793i)))));
}

