struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    global0 = array<i32, 10>();
    let var_0 = Struct_1(51927u, min(~(~(~vec3<u32>(14713u, u_input.a, 47427u))), ~vec3<u32>(u_input.a, u_input.a, u_input.a) & firstLeadingBit(~vec3<u32>(u_input.a, 83847u, u_input.a))));
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    return arg_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    var var_0 = vec2<i32>(1i >> ((~u_input.a >> (_wgslsmith_add_u32(~u_input.a, 1u) % 32u)) % 32u), -18580i);
    var var_1 = _wgslsmith_f_op_f32(select(1390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) * 789f), arg_0.e.x))), false));
    var var_2 = Struct_1(1u, vec3<u32>(~u_input.a, 81499u & u_input.a, 10885u));
    var_0 = select(-vec2<i32>(12844i, select(firstLeadingBit(-614i), _wgslsmith_sub_i32(-36639i, arg_0.c.x), true)), (vec2<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(4294967295u, 10u)], -5114i), min(0i, 9528i)) ^ vec2<i32>(-var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], 22826i, var_0.x, 21240i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], 0i, global0[_wgslsmith_index_u32(var_2.a, 10u)], -35325i)))) | vec2<i32>(42213i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_2.a, 10u)], 1i, var_0.x), vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], arg_0.d.x)), vec4<i32>(0i, 2147483647i, arg_0.c.x, global0[_wgslsmith_index_u32(u_input.a, 10u)]))), false);
    let var_3 = vec3<bool>(arg_0.b.x, true, arg_0.a.x);
    return 61533u;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = Struct_1(4294967295u, ~vec3<u32>(firstTrailingBit(u_input.a), arg_3.c.x, func_4(Struct_2(vec4<bool>(arg_3.a.x, arg_3.a.x, false, false), arg_3.a, arg_3.b.zy, arg_3.b.zy, vec2<f32>(arg_0, arg_2)), func_3(1186f, Struct_2(vec4<bool>(arg_3.a.x, false, arg_3.a.x, true), arg_3.a, arg_3.b.xz, vec2<i32>(32033i, arg_1), vec2<f32>(arg_2, 455f))))));
    var var_1 = Struct_2(!vec4<bool>(~arg_3.b.x <= ~global0[_wgslsmith_index_u32(0u, 10u)], arg_3.a.x, !(u_input.a != 4294967295u), arg_3.a.x & true), vec3<bool>(arg_3.a.x, true, false), -vec2<i32>(max(1i, arg_3.b.x ^ global0[_wgslsmith_index_u32(45021u, 10u)]), _wgslsmith_add_i32(-64410i, firstTrailingBit(arg_1))), arg_3.b.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(562f, arg_2) + vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_2)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_2, arg_2)), -952f))));
    let var_2 = arg_2;
    var var_3 = arg_3;
    var_3 = Struct_3(vec3<bool>(var_1.b.x, false, true), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.b.x, arg_3.b.x, -20741i & (global0[_wgslsmith_index_u32(152251u, 10u)] & -1i)), ~var_3.b), abs(~arg_3.c));
    return var_3.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = select(countOneBits((func_2(arg_2.e.x, global0[_wgslsmith_index_u32(u_input.a, 10u)], arg_2.e.x, Struct_3(arg_0, vec3<i32>(40951i, global0[_wgslsmith_index_u32(u_input.a, 10u)], -1i), vec4<u32>(24491u, 4294967295u, u_input.a, 10801u))) >> ((vec4<u32>(1u, u_input.a, 1u, u_input.a) ^ vec4<u32>(u_input.a, 51276u, 32085u, u_input.a)) % vec4<u32>(32u))) & countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 48845u, 83745u, 31266u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 17827u, ~_wgslsmith_mod_u32(u_input.a, 22448u)), vec4<u32>(u_input.a & 0u, _wgslsmith_sub_u32(35980u, 0u), u_input.a, 75490u ^ u_input.a) ^ ~(~vec4<u32>(1u, 7694u, 1u, 4294967295u)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(9119u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(1u, 62834u, 0u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(8762u, 1u, u_input.a, u_input.a), vec4<u32>(4294967295u, 1u, 4294967295u, 0u)) << ((vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) & vec4<u32>(1u, 0u, u_input.a, u_input.a)) % vec4<u32>(32u)))), arg_2.a);
    global0 = array<i32, 10>();
    var var_1 = var_0.wwy;
    var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(0u), 1u, 0u), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, var_1.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, u_input.a, 13176u), ~vec3<u32>(u_input.a, 4294967295u, 16194u), reverseBits(vec3<u32>(var_0.x, var_0.x, var_1.x)))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(select(var_0.xwy, var_0.zyw, vec3<bool>(arg_2.a.x, arg_0.x, arg_2.a.x)), vec3<u32>(4294967295u, var_0.x, var_0.x), min(var_0.www, var_0.yxw)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x), var_0.xyw) | var_0.yyz)));
    let var_2 = 70887u;
    return vec2<f32>(arg_1.x, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!(!vec4<bool>(any(vec4<bool>(false, true, true, true)), global0[_wgslsmith_index_u32(u_input.a, 10u)] >= global0[_wgslsmith_index_u32(u_input.a, 10u)], false, true)), vec3<bool>(!(~u_input.a <= abs(4294967295u)), !(16871u >= ~u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f), _wgslsmith_f_op_f32(round(1384f))) < 1f), ~countOneBits(vec2<i32>(-2147483647i, 1601i) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec2_i32(-select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], 58791i), vec2<i32>(1i, global0[_wgslsmith_index_u32(8288u, 10u)]), vec2<bool>(true, false)), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(22882u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(true, true, false), vec3<f32>(2572f, -654f, -497f), Struct_2(vec4<bool>(true, true, true, false), vec3<bool>(true, false, true), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(81128u, 10u)]), vec2<i32>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec2<f32>(725f, -1308f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-894f, 243f))), false))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(352f, -211f) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1004f - -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e.x)) + _wgslsmith_f_op_f32(floor(-1820f))))), var_0.e.x, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2479f + 534f), _wgslsmith_f_op_f32(max(var_0.e.x, var_0.e.x)))), 294f)), abs(vec4<u32>(firstTrailingBit(u_input.a) ^ ~0u, func_2(_wgslsmith_f_op_f32(var_0.e.x + var_0.e.x), firstLeadingBit(1i), -761f, Struct_3(var_0.a.wzz, vec3<i32>(-2147483647i, -18534i, -14490i), vec4<u32>(4294967295u, u_input.a, 34157u, 0u))).x, ~(u_input.a ^ 22635u), _wgslsmith_div_u32(79614u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(52127u, 3138u))))));
}

