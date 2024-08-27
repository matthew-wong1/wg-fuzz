struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<f32, 30> = array<f32, 30>(464f, 145f, 122f, -119f, 292f, 595f, 545f, -1996f, 1637f, -310f, -776f, -1545f, 1000f, 245f, 401f, 1507f, -1180f, -1485f, 452f, -1714f, 1069f, -1119f, 284f, -198f, 714f, -502f, -303f, -1728f, -285f, 423f);

var<private> global2: Struct_2 = Struct_2(Struct_1(true, vec2<bool>(true, true), 1024f), Struct_1(false, vec2<bool>(false, false), -454f), -1i, -9875i, vec3<f32>(-577f, 574f, -665f));

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(true, vec2<bool>(true, false), 816f), Struct_1(false, vec2<bool>(false, false), -441f), 1i, i32(-2147483648), vec3<f32>(2065f, 308f, -1083f)), -6323i, 627f, Struct_2(Struct_1(false, vec2<bool>(false, false), 722f), Struct_1(false, vec2<bool>(false, false), 565f), -72986i, -7883i, vec3<f32>(836f, -1792f, -1445f)), 36798u);

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> i32 {
    global4 = ~min(min(_wgslsmith_sub_u32(global3.e, 62925u), 4294967295u) >> (_wgslsmith_sub_u32(4294967295u, global3.e) % 32u), ~_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), max(12971u, global3.e), u_input.d.x));
    global4 = ~(~_wgslsmith_div_u32(9229u, abs(~1u)));
    let var_0 = 50710u | (_wgslsmith_add_u32(~(~global3.e), _wgslsmith_mod_u32(40339u, firstLeadingBit(1u))) << (18238u % 32u));
    var var_1 = (vec3<i32>(-1i) * -max(~vec3<i32>(arg_0, 25830i, 1i), ~vec3<i32>(global3.b, global2.d, 11622i))) & _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, u_input.c.x ^ global3.b, -45286i), -min(vec3<i32>(arg_0, 23665i, u_input.b), vec3<i32>(u_input.b, global3.b, u_input.b))), ~firstTrailingBit(vec3<i32>(-1655i, arg_0, 23700i)) & (~vec3<i32>(-6966i, 1i, 43133i) & vec3<i32>(arg_0, 1i, u_input.c.x)));
    let var_2 = Struct_5(Struct_3(Struct_2(global3.a.b, Struct_1(true, vec2<bool>(false, true), _wgslsmith_f_op_f32(floor(-1859f))), firstTrailingBit(abs(var_1.x)), select(-3301i, -global3.b, all(global2.b.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.c, 304f, global1[_wgslsmith_index_u32(67368u, 30u)]))), select(arg_0, ~_wgslsmith_mod_i32(1i, u_input.a.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), global3.d, 4294967295u), false);
    return ~var_2.a.d.c;
}

fn func_2() -> vec4<bool> {
    let var_0 = any(vec4<bool>(!(any(vec3<bool>(false, global3.a.a.b.x, false)) || global2.a.b.x), global3.b == -global2.c, false, any(global3.a.b.b)));
    let var_1 = true;
    global3 = Struct_3(global3.d, global2.d, _wgslsmith_f_op_f32(-180f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 30u)] - 477f), global3.a.b.c)))), Struct_2(global2.b, global2.b, global3.b & -82810i, ~1i, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(-773f, -509f)), _wgslsmith_f_op_f32(1223f - 2498f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 30u)]))))), 19519u);
    let var_2 = global2.b;
    global3 = Struct_3(Struct_2(global3.a.a, Struct_1(var_1 & global2.a.b.x, !select(global2.b.b, vec2<bool>(false, global3.a.b.a), var_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.a.a.c + -412f)))), -global2.c, -_wgslsmith_dot_vec2_i32(vec2<i32>(18449i, 17623i), vec2<i32>(-45017i, 2871i)) << (26705u % 32u), global2.e), -func_3(0i), 474f, Struct_2(global3.a.a, Struct_1(all(vec3<bool>(true, true, true)), vec2<bool>(true, false), var_2.c), global2.c, global3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(global3.e, 30u)], -164f, global3.c))))), _wgslsmith_add_u32(~19769u, global3.e));
    return !vec4<bool>(var_0, all(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(21316u, 29u)], global2.a.b.x, false))), global2.a.b.x, true);
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    global4 = ~4294967295u;
    let var_0 = Struct_2(Struct_1(all(select(arg_0.wzz, select(arg_0.wyx, vec3<bool>(false, false, false), arg_0.x), true)), global3.a.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.c, 1275f, false)) + _wgslsmith_f_op_f32(-global2.e.x)))), Struct_1(true, !func_2().yx, global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 42327u), vec2<u32>(global3.e, u_input.d.x)), abs(4294967295u))), 30u)]), u_input.b, 60972i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.e - vec3<f32>(-1301f, global1[_wgslsmith_index_u32(global3.e, 30u)], 2682f)))))));
    var var_1 = Struct_1(false, vec2<bool>(true, any(vec4<bool>(true, arg_0.x, true, all(var_0.b.b)))), _wgslsmith_f_op_f32(round(820f)));
    global0 = array<bool, 29>();
    global1 = array<f32, 30>();
    return global3.d;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: i32) -> u32 {
    global2 = func_4(func_2());
    var var_0 = global3.a.e;
    var var_1 = Struct_3(Struct_2(global2.a, Struct_1(global0[_wgslsmith_index_u32(~6767u, 29u)], !(!global3.a.a.b), -777f), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 45099i, arg_0.x), vec4<i32>(arg_0.x, u_input.c.x, -2147483647i, u_input.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2548i, -5571i, 1i), vec4<i32>(arg_0.x, global3.a.c, -22064i, -14233i))), abs(-14513i)), _wgslsmith_dot_vec2_i32(~arg_0.zz, u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(global2.a.a, global3.a.b.b.x, global2.b.b.x, global3.d.b.b.x)).e - _wgslsmith_f_op_vec3_f32(vec3<f32>(1598f, var_0.x, global1[_wgslsmith_index_u32(80629u, 30u)]) * global2.e)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.e)))), _wgslsmith_dot_vec3_i32(vec3<i32>(min(65305i, global3.b), arg_2, reverseBits(min(-1i, arg_0.x))), select(_wgslsmith_div_vec3_i32(~vec3<i32>(-34937i, global2.d, 0i), min(vec3<i32>(arg_0.x, global2.d, global2.d), vec3<i32>(arg_2, u_input.a.x, arg_2))), firstTrailingBit(vec3<i32>(-1i, global3.b, 79117i)), all(vec3<bool>(global0[_wgslsmith_index_u32(1638u, 29u)], global3.d.b.b.x, global3.d.b.b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -256f), 1f)), _wgslsmith_f_op_f32(-global2.e.x))), Struct_2(Struct_1(false, select(select(vec2<bool>(global2.b.a, global2.a.b.x), global3.a.b.b, false), global3.d.b.b, global2.b.a), _wgslsmith_f_op_f32(floor(func_4(vec4<bool>(global2.b.a, true, true, global0[_wgslsmith_index_u32(20240u, 29u)])).a.c))), func_4(func_2()).a, ~global3.d.d, -_wgslsmith_div_i32(_wgslsmith_div_i32(0i, arg_2), 0i), _wgslsmith_f_op_vec3_f32(-func_4(vec4<bool>(global2.b.a, global3.a.b.b.x, global2.a.b.x, global2.b.b.x)).e)), firstTrailingBit(1u) & countOneBits(max(_wgslsmith_dot_vec3_u32(vec3<u32>(27254u, u_input.d.x, 33097u), vec3<u32>(40885u, global3.e, global3.e)), reverseBits(82921u))));
    let var_2 = 39041u;
    global3 = Struct_3(Struct_2(Struct_1(global2.b.b.x, global2.b.b, 2877f), Struct_1(func_4(vec4<bool>(global3.a.b.a, global0[_wgslsmith_index_u32(0u, 29u)], false, true)).a.a, !vec2<bool>(global0[_wgslsmith_index_u32(global3.e, 29u)], true), var_0.x), ~(~arg_0.x), _wgslsmith_dot_vec2_i32(arg_0.zy, u_input.a << (u_input.d % vec2<u32>(32u))) ^ -(~(-1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, -246f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1653f, global1[_wgslsmith_index_u32(22381u, 30u)], -939f)))))), _wgslsmith_sub_i32(~(~arg_2), -abs(0i | u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1217f, -1291f) + _wgslsmith_f_op_f32(min(global2.a.c, var_1.d.e.x)))), var_1.d, ~22244u | var_2);
    return reverseBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(6200u, ~4294967295u), ~var_1.e));
}

fn func_5(arg_0: u32, arg_1: bool) -> Struct_2 {
    global0 = array<bool, 29>();
    let var_0 = global3.d.e.zx;
    var var_1 = _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(abs(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, arg_0, arg_0, 13214u), vec4<u32>(u_input.d.x, global3.e, u_input.d.x, global3.e) & vec4<u32>(arg_0, global3.e, global3.e, 1u)))), 30u)], _wgslsmith_f_op_f32(trunc(-1142f))));
    let var_2 = Struct_3(global3.d, -5057i, _wgslsmith_f_op_f32(trunc(global3.a.e.x)), Struct_2(func_4(vec4<bool>(global0[_wgslsmith_index_u32(min(0u, 84851u), 29u)], true, true, global2.a.b.x)).a, Struct_1(func_4(vec4<bool>(global0[_wgslsmith_index_u32(12954u, 29u)], global3.d.a.b.x, global2.b.b.x, arg_1)).a.a, global2.a.b, global2.b.c), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-16455i, 0i, -2147483647i), vec3<i32>(-28293i, -1i, 2749i)) & firstLeadingBit(global2.d), _wgslsmith_clamp_i32(17585i, _wgslsmith_add_i32(u_input.b, 2147483647i), -20870i | global3.a.c)), firstTrailingBit(select(~u_input.c.x, firstTrailingBit(u_input.a.x), !global3.d.a.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(105f, 394f, -320f) - vec3<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.d.x, 30u)], var_0.x)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.e.x, var_0.x, global1[_wgslsmith_index_u32(global3.e, 30u)]), vec3<f32>(1000f, -1079f, global2.a.c)))))), select(1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.e, 14342u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, arg_0, global3.e)), all(!(!global3.a.a.b))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -770f))) + -430f);
    return global3.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(3954u, global0[_wgslsmith_index_u32(~(~(func_1(vec3<i32>(-2147483647i, -58241i, u_input.b), 34482u, u_input.a.x) << (u_input.d.x % 32u))), 29u)]);
    let var_0 = _wgslsmith_f_op_f32(-global2.b.c);
    global1 = array<f32, 30>();
    let var_1 = vec4<u32>(0u, ~global3.e, ~(~u_input.d.x) << ((~u_input.d.x << (u_input.d.x % 32u)) % 32u), u_input.d.x & 4294967295u) << (((vec4<u32>(func_1(vec3<i32>(global3.b, global2.d, 2147483647i), 4294967295u, 33619i), global3.e, global3.e >> (u_input.d.x % 32u), global3.e) & _wgslsmith_add_vec4_u32(vec4<u32>(global3.e, u_input.d.x, 0u, global3.e) >> (vec4<u32>(18850u, 1u, 49233u, 1u) % vec4<u32>(32u)), vec4<u32>(global3.e, global3.e, 1u, 9167u) ^ vec4<u32>(u_input.d.x, 23594u, u_input.d.x, 1u))) ^ firstTrailingBit(~abs(vec4<u32>(global3.e, u_input.d.x, u_input.d.x, 6108u)))) % vec4<u32>(32u));
    let var_2 = func_2().x;
    var var_3 = _wgslsmith_sub_u32(u_input.d.x | u_input.d.x, global3.e);
    global0 = array<bool, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.e, 12668u);
}

