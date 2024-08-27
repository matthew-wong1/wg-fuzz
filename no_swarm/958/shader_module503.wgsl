struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(true, Struct_1(-22772i, -367f), Struct_3(vec4<u32>(24971u, 584u, 26117u, 0u), vec2<i32>(-22872i, i32(-2147483648))), vec4<u32>(60342u, 44970u, 1u, 71750u));

var<private> global1: array<vec3<bool>, 4>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec3<i32>) -> i32 {
    var var_0 = arg_1.c.x;
    var_0 = -1160f;
    let var_1 = -1375f;
    let var_2 = u_input.d.x;
    var_0 = _wgslsmith_f_op_f32(max(arg_1.c.x, 1819f));
    return _wgslsmith_dot_vec4_i32(min(-vec4<i32>(arg_3.x, ~0i, ~8333i, global0.c.b.x ^ -16780i), select(vec4<i32>(-global0.b.a, ~arg_1.a.x, max(-1i, -17103i), min(11957i, global0.c.b.x)), select(vec4<i32>(39676i, -2147483647i, arg_3.x, -2147483647i), vec4<i32>(arg_3.x, u_input.c.x, -2147483647i, u_input.c.x), arg_1.d.x) | vec4<i32>(0i, arg_1.b.x, 1i, -1i), arg_1.d)), _wgslsmith_mod_vec4_i32(~select(~vec4<i32>(32837i, arg_1.b.x, arg_1.a.x, -1i), ~vec4<i32>(arg_3.x, u_input.c.x, arg_1.a.x, arg_3.x), select(vec4<bool>(false, global0.a, arg_1.e.x, true), vec4<bool>(global0.a, arg_2.x, true, global0.a), vec4<bool>(arg_2.x, true, false, false))), ~arg_1.a));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-1i, arg_1.x), (u_input.c.x << (62318u % 32u)) ^ func_3(u_input.d, Struct_2(vec4<i32>(14923i, arg_1.x, -6337i, global0.b.a), vec3<i32>(-1988i, global0.c.b.x, global0.c.b.x), vec4<f32>(global0.b.b, 563f, -234f, global0.b.b), vec4<bool>(false, arg_0, global0.a, true), vec3<bool>(global0.a, true, global0.a)), vec4<bool>(arg_0, true, global0.a, global0.a), arg_1), firstTrailingBit(u_input.c.x), 0i), ~_wgslsmith_add_vec4_i32(~vec4<i32>(8562i, global0.b.a, 4612i, -5357i), vec4<i32>(18944i, u_input.c.x, -33717i, -32018i) ^ vec4<i32>(arg_1.x, global0.b.a, -1i, -10999i))), _wgslsmith_mod_vec3_i32(min(max(arg_1, vec3<i32>(u_input.c.x, u_input.c.x, 30915i)) | vec3<i32>(36140i, 0i, arg_1.x), vec3<i32>(i32(-1i) * -16461i, _wgslsmith_mod_i32(global0.b.a, -1i), _wgslsmith_mult_i32(-1i, arg_1.x))), -vec3<i32>(abs(global0.b.a), ~global0.c.b.x, select(-2147483647i, arg_1.x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b.b, global0.b.b, _wgslsmith_f_op_f32(-414f - 582f), _wgslsmith_f_op_f32(round(-1021f)))))), select(vec4<bool>(arg_0, all(global1[_wgslsmith_index_u32(17129u, 4u)]) || !arg_0, false && global0.a, all(!vec4<bool>(true, global0.a, false, true))), select(vec4<bool>(true, true, arg_0 && true, !global0.a), !(!vec4<bool>(global0.a, arg_0, false, global0.a)), select(vec4<bool>(global0.a, true, true, false), select(vec4<bool>(arg_0, global0.a, true, arg_0), vec4<bool>(false, false, true, arg_0), vec4<bool>(global0.a, global0.a, false, global0.a)), !vec4<bool>(arg_0, global0.a, arg_0, global0.a))), (all(vec2<bool>(false, global0.a)) & all(vec2<bool>(true, true))) && !any(global1[_wgslsmith_index_u32(34972u, 4u)])), global1[_wgslsmith_index_u32(0u, 4u)]);
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.b, -3188f))), _wgslsmith_f_op_f32(step(-1294f, _wgslsmith_f_op_f32(-global0.b.b))), _wgslsmith_f_op_f32(floor(840f)) <= 934f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1490f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-918f, global0.b.b, 1448f))), _wgslsmith_f_op_vec3_f32(abs(var_0.c.zxx)))));
    let var_2 = _wgslsmith_f_op_f32(select(-601f, var_1.x, any(select(vec3<bool>(false, any(vec4<bool>(var_0.e.x, var_0.e.x, false, global0.a)), all(vec3<bool>(arg_0, false, true))), var_0.e, !global0.a & (-1000f >= global0.b.b)))));
    global0 = Struct_4(!all(select(var_0.e.zz, select(var_0.e.yy, vec2<bool>(true, var_0.d.x), true), vec2<bool>(true, true))), global0.b, global0.c, global0.d);
    let var_3 = Struct_2(var_0.a, countOneBits(vec3<i32>(2147483647i, -2147483647i, _wgslsmith_add_i32(~(-39758i), _wgslsmith_div_i32(global0.b.a, var_0.a.x)))), var_0.c, vec4<bool>(var_0.e.x, !any(select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), false)), all(vec3<bool>(true, true, !global0.a)), true), !var_0.e);
    return countOneBits(~7522u);
}

fn func_1(arg_0: vec4<bool>) -> vec3<i32> {
    let var_0 = vec3<f32>(global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1273f, _wgslsmith_f_op_f32(global0.b.b - 324f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1055f, _wgslsmith_f_op_f32(118f - 649f)))), _wgslsmith_f_op_f32(-582f + _wgslsmith_f_op_f32(-1624f + -1522f)));
    let var_1 = select(~(func_2(true, vec3<i32>(2147483647i, global0.c.b.x, -23656i), 1u) | ~global0.d.x) ^ 33549u, _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.d.x, global0.d.x), _wgslsmith_dot_vec2_u32(~u_input.d.yz, global0.d.wx)), all(select(!global1[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 4u)], select(global1[_wgslsmith_index_u32(abs(u_input.a), 4u)], vec3<bool>(false, global0.a, false), select(arg_0.zwz, arg_0.zww, false)), vec3<bool>(arg_0.x, arg_0.x, global0.a))));
    global1 = array<vec3<bool>, 4>();
    global0 = Struct_4(false, global0.b, Struct_3(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, global0.d.x, 26282u, var_1), global0.d)), vec2<i32>(select(0i, global0.c.b.x, false), _wgslsmith_sub_i32(-22600i, 11711i)) ^ global0.c.b), global0.d);
    var var_2 = global0.a;
    return vec3<i32>(-u_input.c.x, 2147483647i, _wgslsmith_mod_i32(2147483647i, -5833i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(global0.c.b.x, u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(26854i, u_input.c.x), u_input.c), ~2147483647i) ^ select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, 40241i), vec3<i32>(-35654i, 54580i, 0i)), -u_input.c.x, select(66871i, -45094i, global0.a), 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.c.x, global0.c.b.x, global0.c.b.x), select(vec4<i32>(1i, u_input.c.x, -1i, global0.b.a), vec4<i32>(u_input.c.x, -1i, -26937i, -1i), global0.a)), vec4<bool>(true, true, global0.b.b < global0.b.b, -478f <= global0.b.b)), _wgslsmith_clamp_vec3_i32(~_wgslsmith_sub_vec3_i32(abs(vec3<i32>(global0.b.a, -2147483647i, u_input.c.x)), vec3<i32>(1i, global0.c.b.x, u_input.c.x)), select(vec3<i32>(u_input.c.x & 2147483647i, i32(-1i) * -2147483647i, -50549i), func_1(vec4<bool>(global0.a, false, global0.a, global0.a)), _wgslsmith_f_op_f32(390f + -1000f) > _wgslsmith_div_f32(-100f, global0.b.b)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global0.c.b.x, global0.b.a, global0.b.a), countOneBits(vec3<i32>(u_input.c.x, -26056i, -9360i)))), vec4<f32>(-455f, _wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.b, -1169f) + 1000f) - _wgslsmith_div_f32(_wgslsmith_div_f32(436f, global0.b.b), -615f)), -695f), !select(select(select(vec4<bool>(true, true, false, global0.a), vec4<bool>(global0.a, true, false, true), global0.a), vec4<bool>(global0.a, global0.a, global0.a, global0.a), !vec4<bool>(global0.a, true, true, false)), !(!vec4<bool>(global0.a, false, false, global0.a)), select(select(vec4<bool>(global0.a, global0.a, false, false), vec4<bool>(global0.a, global0.a, false, true), vec4<bool>(global0.a, true, false, global0.a)), select(vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(false, true, global0.a, false), global0.a), vec4<bool>(global0.a, false, global0.a, true))), global1[_wgslsmith_index_u32(max(~u_input.b, 4294967295u) >> (firstLeadingBit(reverseBits(global0.c.a.x)) % 32u), 4u)]);
    global1 = array<vec3<bool>, 4>();
    var var_1 = true;
    let var_2 = var_0.c;
    var_1 = !global0.a;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-215f, global0.b.b)) - var_2.x);
    let var_4 = Struct_1(0i, _wgslsmith_f_op_f32(-global0.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(var_0.b, var_0.b));
}

