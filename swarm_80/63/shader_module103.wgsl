struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true));

var<private> global1: array<u32, 7>;

var<private> global2: array<vec3<u32>, 22>;

var<private> global3: vec2<i32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    var var_0 = arg_0.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -925f) * arg_1));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<bool> {
    var var_0 = reverseBits(_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(max(global1[_wgslsmith_index_u32(127059u, 7u)], 4532u), 493u, ~4294967295u), 22u)], _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(38573u, global1[_wgslsmith_index_u32(16759u, 7u)], global1[_wgslsmith_index_u32(17528u, 7u)]), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(12540u, 7u)], global1[_wgslsmith_index_u32(3534u, 7u)])), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24413u, 7u)], 7u)], 1u), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 26188u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(42671u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)]), global2[_wgslsmith_index_u32(27015u, 22u)])))));
    let var_1 = Struct_4(Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -170f))))))));
    let var_2 = _wgslsmith_div_vec4_i32(max(-min(-vec4<i32>(-16015i, -2147483647i, global3.x, -2147483647i), vec4<i32>(arg_0, 1i, global3.x, -33874i)), ~abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, arg_0, -52964i), vec4<i32>(global3.x, 50676i, -40529i, u_input.a.x)))), firstLeadingBit(abs(vec4<i32>(47247i, global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-38200i, global3.x, u_input.a.x), vec3<i32>(u_input.a.x, -12314i, 32382i)), ~global3.x))));
    let var_3 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_add_i32(-arg_0 & -23990i, 2147483647i), 2147483647i & min(u_input.a.x, reverseBits(-1i))), Struct_1(var_1.a.a.zy, select(!select(vec3<bool>(true, var_1.a.a.x, var_1.a.a.x), var_1.a.a, vec3<bool>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x)), var_1.a.a, true), reverseBits(-_wgslsmith_mult_vec3_i32(vec3<i32>(8061i, arg_0, u_input.a.x), vec3<i32>(var_2.x, var_2.x, var_2.x))), var_0.xy), Struct_2(select(select(!vec3<bool>(var_1.a.a.x, false, false), var_1.a.a, vec3<bool>(var_1.a.a.x, false, false)), var_1.a.a, vec3<bool>(true, all(vec4<bool>(false, var_1.a.a.x, var_1.a.a.x, var_1.a.a.x)), var_1.a.a.x))), vec4<bool>(select(true, all(vec2<bool>(true, false)), false), false, !var_1.a.a.x, abs(select(var_0.x, global1[_wgslsmith_index_u32(var_0.x, 7u)], var_1.a.a.x)) < ~_wgslsmith_add_u32(11231u, global1[_wgslsmith_index_u32(10096u, 7u)])));
    let var_4 = Struct_3((_wgslsmith_dot_vec2_i32(~var_2.wx, vec2<i32>(-2147483647i, arg_0)) ^ _wgslsmith_clamp_i32(firstLeadingBit(2147483647i), -1i >> (var_0.x % 32u), u_input.a.x)) >> (~max(var_0.x, 1u) % 32u), var_3.b, Struct_2(var_1.a.a), !select(vec4<bool>(var_3.b.b.x, true, true, var_1.a.a.x), select(!global0[_wgslsmith_index_u32(55898u, 23u)], vec4<bool>(var_1.a.a.x, true, true, true), var_3.d.x), !global0[_wgslsmith_index_u32(var_3.b.d.x ^ var_0.x, 23u)]));
    return var_4.c.a;
}

fn func_2() -> u32 {
    var var_0 = -reverseBits(-6290i);
    var var_1 = global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 44609u) & 1u), 7u)];
    var var_2 = Struct_4(Struct_2(!select(vec3<bool>(false, true, false), func_3(-44956i, 825f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-214f, -2259f, -1000f, -675f), vec4<f32>(1544f, 1650f, -1263f, -2023f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-951f, 1688f, 1117f, 344f) + vec4<f32>(-1000f, -153f, -1000f, 1241f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-258f, -1349f, -1715f, 731f)))), func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, -25394i, u_input.a.x), vec4<i32>(u_input.a.x, 24961i, 0i, u_input.a.x)), _wgslsmith_f_op_f32(trunc(-1613f))).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1194f, -1419f, 205f, -2404f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(685f, -236f, -896f, 1820f)))))));
    global3 = min(_wgslsmith_clamp_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(global3.x, abs(u_input.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-4604i, u_input.a.x), vec2<i32>(57509i, 0i))), u_input.a ^ _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global3.x, -1i), vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a, -vec2<i32>(global3.x, -17962i))), vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(global3.x, global3.x, -53222i), vec3<i32>(0i, u_input.a.x, global3.x), vec3<bool>(true, true, false)), min(vec3<i32>(1i, 18398i, u_input.a.x), vec3<i32>(global3.x, 20161i, u_input.a.x))) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(44209u, 5823u, global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<u32>(1u, 27767u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])), ~vec3<u32>(66963u, 17037u, global1[_wgslsmith_index_u32(28820u, 7u)])) % 32u)));
    let var_3 = Struct_3(reverseBits(_wgslsmith_mult_i32(u_input.a.x, select(firstLeadingBit(29635i), -29734i, true))), Struct_1(var_2.a.a.yx, !vec3<bool>(!var_2.a.a.x, true, any(vec3<bool>(var_2.a.a.x, false, var_2.a.a.x))), min(abs(~vec3<i32>(global3.x, 57612i, global3.x)), (vec3<i32>(u_input.a.x, -1i, global3.x) >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(23101u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42101u, 7u)], 7u)]) % vec3<u32>(32u))) & ~vec3<i32>(u_input.a.x, global3.x, 47204i)), vec2<u32>(0u, global1[_wgslsmith_index_u32(116822u, 7u)])), var_2.a, select(select(select(select(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], vec4<bool>(false, var_2.a.a.x, false, true)), vec4<bool>(var_2.a.a.x, true, var_2.a.a.x, false), !vec4<bool>(var_2.a.a.x, var_2.a.a.x, true, var_2.a.a.x)), !vec4<bool>(true, var_2.a.a.x, var_2.a.a.x, true), global0[_wgslsmith_index_u32(~4294967295u, 23u)]), !select(select(vec4<bool>(var_2.a.a.x, true, false, var_2.a.a.x), global0[_wgslsmith_index_u32(0u, 23u)], vec4<bool>(var_2.a.a.x, var_2.a.a.x, false, var_2.a.a.x)), select(global0[_wgslsmith_index_u32(49311u, 23u)], vec4<bool>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, var_2.a.a.x), false), select(global0[_wgslsmith_index_u32(4294967295u, 23u)], vec4<bool>(true, var_2.a.a.x, false, var_2.a.a.x), false)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 7u)], 0u, firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 7u)])), 23u)]));
    return var_3.b.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(35086u, 7u)];
    var_0 = global1[_wgslsmith_index_u32(0u, 7u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1851f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -630f), vec2<f32>(-1627f, 347f)))), vec2<f32>(-1317f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(898f, 1000f))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_2(vec3<bool>(true, false, false)), vec4<f32>(301f, 718f, 1643f, -554f)), 1097f, vec2<bool>(true, false))), 2222f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(997f, -931f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(677f, -161f))))))))));
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(73979u, 7u)]) | vec2<u32>(global1[_wgslsmith_index_u32(18280u, 7u)], 92755u), ~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], 41585u)), ~vec2<u32>(87256u, 4294967295u)), global1[_wgslsmith_index_u32(1u, 7u)], ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46831u, 7u)], 7u)], 7u)], 7u)], 7u)] ^ global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(110349u, 7u)], 7u)], 22u)], global2[_wgslsmith_index_u32(0u, 22u)]), 7u)])), ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~24334u), 7u)] << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_2(), 7u)], 7u)] % 32u), 22u)], ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 22u)]);
    var var_3 = !func_3(global3.x, var_1.x);
    var_3 = !select(vec3<bool>(all(select(var_3.xx, vec2<bool>(true, var_3.x), var_3.zz)), var_3.x, var_3.x), vec3<bool>(true, !(97131u <= global1[_wgslsmith_index_u32(80930u, 7u)]), _wgslsmith_f_op_f32(abs(1958f)) != _wgslsmith_div_f32(-359f, var_1.x)), func_3(firstTrailingBit(-22555i), var_1.x).x);
    let var_4 = vec3<i32>(_wgslsmith_div_i32(-15796i, 2147483647i), u_input.a.x, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(7560u);
}

