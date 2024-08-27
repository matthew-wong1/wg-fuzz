struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-1000f, 145f, 887f), vec3<f32>(886f, 477f, -1045f), vec3<f32>(1000f, 398f, 835f), vec3<f32>(-1104f, -641f, -145f), vec3<f32>(-553f, 1531f, 1000f), vec3<f32>(-253f, -542f, -952f), vec3<f32>(194f, 106f, 1176f), vec3<f32>(1970f, 1467f, -1000f), vec3<f32>(-335f, 424f, 1103f), vec3<f32>(2255f, -1250f, -134f), vec3<f32>(-630f, -169f, 440f), vec3<f32>(-1000f, 946f, 319f), vec3<f32>(842f, 1185f, 304f), vec3<f32>(842f, 831f, -1000f), vec3<f32>(-549f, -804f, -752f), vec3<f32>(-1057f, 158f, -1490f), vec3<f32>(1474f, 831f, -1701f), vec3<f32>(291f, -178f, 1775f));

var<private> global2: array<bool, 9>;

var<private> global3: array<i32, 20> = array<i32, 20>(-16i, i32(-2147483648), -1i, -26424i, i32(-2147483648), -7493i, 28435i, -10947i, 1i, 2147483647i, -1i, 43766i, -1i, i32(-2147483648), 28367i, 1i, 2147483647i, -33525i, 27141i, 23862i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = vec3<i32>(-13373i, max(~(~global3[_wgslsmith_index_u32(9093u, 20u)] & _wgslsmith_div_i32(global3[_wgslsmith_index_u32(2495u, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)])), abs(global3[_wgslsmith_index_u32(~(arg_1 << (1u % 32u)), 20u)])), 0i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(833f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1374f)), 189f))) - _wgslsmith_f_op_f32(arg_2.x * arg_2.x));
    global0 = arg_2.x != 511f;
    let var_2 = vec2<bool>(any(vec2<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22398u, arg_0.x, arg_0.x), vec4<u32>(1u, 142174u, 8091u, 0u)), _wgslsmith_sub_u32(arg_1, 0u)), 9u)])), global2[_wgslsmith_index_u32(countOneBits(arg_0.x), 9u)]);
    var var_3 = Struct_3(_wgslsmith_sub_vec2_i32(var_0.zx, vec2<i32>(global3[_wgslsmith_index_u32(reverseBits(u_input.a), 20u)], 2147483647i)), true, Struct_2(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~arg_0.x, arg_0.x, 21896u), 32593u)));
    return var_3.c;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    let var_0 = arg_3.x;
    var var_1 = Struct_4(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 9u)], (global2[_wgslsmith_index_u32(25967u, 9u)] | all(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], true, false))) && global2[_wgslsmith_index_u32(u_input.a, 9u)], false, any(!(!vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 9u)], true)))), arg_2);
    let var_2 = Struct_1(select(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 11629u, u_input.a), _wgslsmith_add_vec3_u32(min(vec3<u32>(arg_0.x, u_input.a, u_input.a), vec3<u32>(36461u, arg_0.x, u_input.a)), vec3<u32>(arg_0.x, u_input.a, arg_0.x) & vec3<u32>(14549u, u_input.a, u_input.a))), ~(~vec3<u32>(4294967295u, 32220u, arg_0.x)), ~(0u >> (u_input.a % 32u)) > arg_0.x), vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(select(1971f, -700f, !(!global2[_wgslsmith_index_u32(48681u, 9u)])))), _wgslsmith_f_op_f32(f32(-1f) * -175f), ~abs(vec4<u32>(arg_0.x, _wgslsmith_mult_u32(arg_0.x, 0u), firstTrailingBit(4294967295u), min(u_input.a, arg_0.x))));
    let var_3 = 0u;
    var var_4 = Struct_4(var_1.a, _wgslsmith_dot_vec4_i32(min(select(arg_1, arg_1, vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(var_2.d.x, 9u)], var_1.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, 2147483647i, 2147483647i, var_1.b), arg_1)) ^ arg_1, arg_1));
    return 42397u << (~max(61764u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_2.d, var_2.d, vec4<u32>(arg_0.x, var_3, var_2.d.x, arg_0.x)), vec4<u32>(arg_0.x, var_3, u_input.a, arg_0.x) | var_2.d)) % 32u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = -(~vec4<i32>(-_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a, 20u)], 0i), -(~2147483647i), arg_0.a.x, _wgslsmith_mod_i32(abs(arg_2.b), 35847i | arg_0.a.x)));
    global3 = array<i32, 20>();
    global2 = array<bool, 9>();
    let var_1 = any(vec4<bool>(true && !any(arg_2.a.xz), arg_2.a.x, !arg_1.a.x, arg_1.a.x));
    let var_2 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(_wgslsmith_mod_u32(u_input.a, 1u), u_input.a & arg_0.c.a, 0u >> (0u % 32u))), firstTrailingBit(~vec3<u32>(4294967295u, func_2(vec2<u32>(arg_0.c.a, 17930u), 1u, vec4<f32>(-152f, -239f, -127f, 265f)).a, max(u_input.a, 62515u))));
    return Struct_1(countOneBits(vec3<u32>(arg_0.c.a, ~var_2.x ^ ~48829u, countOneBits(3669u))), arg_3, _wgslsmith_f_op_f32(2348f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.x)) + arg_3.x)), abs(abs(~vec4<u32>(u_input.a, var_2.x, arg_0.c.a, 71494u)) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 1u, 1u, var_2.x), vec4<u32>(u_input.a, var_2.x, var_2.x, arg_0.c.a)) ^ ~vec4<u32>(4294967295u, u_input.a, 36223u, 28021u)) % vec4<u32>(32u))));
}

fn func_1() -> Struct_3 {
    var var_0 = countOneBits(_wgslsmith_div_i32(~2147483647i, abs(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 62290i, -32688i), vec3<i32>(1i, 0i, global3[_wgslsmith_index_u32(4294967295u, 20u)]))))));
    var_0 = ~(-2147483647i ^ global3[_wgslsmith_index_u32(1u, 20u)]);
    var var_1 = func_4(Struct_3(vec2<i32>(_wgslsmith_clamp_i32(~(-26132i), _wgslsmith_sub_i32(16271i, 1i), 36856i), global3[_wgslsmith_index_u32(firstTrailingBit(16503u) & _wgslsmith_add_u32(1u, 36011u), 20u)]), select(false, false, false), func_2(~(~vec2<u32>(4294967295u, u_input.a)), 1u << ((1u & u_input.a) % 32u), vec4<f32>(1f, 1f, 1f, 1f))), Struct_4(!vec4<bool>(select(false, global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)]), true, true, false), _wgslsmith_mult_i32(i32(-1i) * -global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(49925u, u_input.a, 44375u, u_input.a)), 20u)])), Struct_4(select(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], true)), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], false, global2[_wgslsmith_index_u32(78633u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)])), false), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(global3[_wgslsmith_index_u32(5695u, 20u)], 0i)), vec2<i32>(635i, global3[_wgslsmith_index_u32(func_3(vec2<u32>(0u, 4294967295u), vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], 11239i), -16873i, vec2<f32>(-445f, -281f)), 20u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1277f, _wgslsmith_f_op_f32(f32(-1f) * -1380f)), -1007f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-844f, 961f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2478f, 463f), vec2<f32>(716f, 819f), vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 9u)])))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-514f, -1659f) + vec2<f32>(-1148f, 1736f)))))));
    var var_2 = reverseBits(-(~vec3<i32>(33623i, 1i, firstLeadingBit(2147483647i))));
    global2 = array<bool, 9>();
    return Struct_3(-vec2<i32>(-56367i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), ~var_2.xx)), global3[_wgslsmith_index_u32(26031u, 20u)] < 1378i, func_2(var_1.d.zy, ~var_1.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-923f, -944f, 507f, 1990f), vec4<f32>(441f, -852f, -793f, var_1.c))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = -23220i;
    global0 = !var_0.b;
    let var_2 = Struct_4(vec4<bool>(var_0.b && true, (_wgslsmith_f_op_f32(select(-588f, 170f, false)) > _wgslsmith_f_op_f32(step(448f, 385f))) && !global2[_wgslsmith_index_u32(var_0.c.a, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], !any(vec3<bool>(global2[_wgslsmith_index_u32(var_0.c.a, 9u)], var_0.b, true))), ~reverseBits(reverseBits(~1i)));
    var var_3 = var_2.a.xw;
    let var_4 = any(!var_2.a.yx);
    var var_5 = vec2<u32>(25998u, _wgslsmith_mult_u32(var_0.c.a, var_0.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~countOneBits(u_input.a) >> (u_input.a % 32u), ~func_3(vec2<u32>(7374u, var_0.c.a), vec4<i32>(var_2.b, var_2.b, -2147483647i, var_0.a.x), global3[_wgslsmith_index_u32(var_0.c.a, 20u)], vec2<f32>(-180f, -898f)) | u_input.a), -vec2<i32>(1i, var_2.b));
}

