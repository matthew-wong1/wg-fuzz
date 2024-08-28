struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(1123f, -1375f), vec2<f32>(-141f, 591f), vec2<f32>(-164f, 631f), vec2<f32>(1000f, -2317f), vec2<f32>(1000f, 1388f), vec2<f32>(-465f, 480f), vec2<f32>(1451f, -501f), vec2<f32>(-739f, 248f));

var<private> global1: array<f32, 16> = array<f32, 16>(956f, -895f, 1354f, 1250f, -606f, 1124f, -632f, 541f, 309f, -1555f, 628f, 555f, 529f, -376f, 765f, -388f);

var<private> global2: Struct_3 = Struct_3(-32590i, true, vec4<bool>(true, true, false, true), 2147483647i, vec4<i32>(-53831i, 18383i, 4021i, i32(-2147483648)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec4<f32> {
    let var_0 = select(vec3<u32>(u_input.a.x, u_input.a.x, 0u), u_input.a.wxw, global2.b) << (~abs(u_input.a.wwz) % vec3<u32>(32u));
    var var_1 = var_0.x;
    var var_2 = reverseBits(arg_3.xy);
    let var_3 = 0u;
    var_2 = _wgslsmith_clamp_vec2_i32(global2.e.zx, vec2<i32>(0i, -1i), global2.e.zy);
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(2912f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(63469u, 16u)])), _wgslsmith_f_op_f32(1390f * global1[_wgslsmith_index_u32(29984u, 16u)])))))), -571f);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_div_vec4_u32(firstLeadingBit(~abs(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), _wgslsmith_mult_vec4_u32(u_input.a, ~u_input.a));
    let var_1 = _wgslsmith_mult_vec2_u32(max(vec2<u32>(var_0.x, 35758u), var_0.xx) ^ u_input.a.xw, _wgslsmith_sub_vec2_u32(~(u_input.a.yy & vec2<u32>(0u, u_input.a.x)) | ~_wgslsmith_div_vec2_u32(var_0.yy, vec2<u32>(u_input.a.x, 0u)), _wgslsmith_mult_vec2_u32(u_input.a.yy, ~vec2<u32>(8909u, 88628u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_1.x, 16u)], -1695f, global1[_wgslsmith_index_u32(39046u, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec4<f32>(1841f, -2162f, global1[_wgslsmith_index_u32(var_1.x, 16u)], global1[_wgslsmith_index_u32(var_1.x, 16u)])) * vec4<f32>(1268f, -1034f, global1[_wgslsmith_index_u32(62472u, 16u)], -1507f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], -335f, global1[_wgslsmith_index_u32(var_0.x, 16u)], 2220f))) + _wgslsmith_f_op_vec4_f32(func_3(global2.c.x, -260f, _wgslsmith_mult_vec4_i32(global2.e | global2.e, select(global2.e, vec4<i32>(-2147483647i, 2147483647i, global2.e.x, -6011i), global2.c)), ~vec3<i32>(-41753i, 6755i, u_input.b.x)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(var_0.x), _wgslsmith_sub_u32(38775u, var_0.x)), vec2<u32>(var_1.x | 1u, ~var_1.x), reverseBits(~vec2<u32>(2396u, 71006u))), global1[_wgslsmith_index_u32(var_1.x, 16u)], global2.c.x, vec4<f32>(_wgslsmith_f_op_f32(select(-838f, global1[_wgslsmith_index_u32(~4294967295u, 16u)], global2.c.x && false)), 2263f, -1372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))))), Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.yx), var_1), var_0.yz), -1194f, global2.b, var_2), Struct_1(_wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(u_input.a.wz, var_0.zy)), _wgslsmith_mult_vec2_u32(var_0.xx ^ vec2<u32>(4294967295u, 68274u), ~u_input.a.xx), _wgslsmith_mod_vec2_u32(u_input.a.zz, u_input.a.wy ^ vec2<u32>(var_0.x, 13074u))), -1048f, var_2.x <= var_2.x, _wgslsmith_div_vec4_f32(var_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1319f, 429f, 1601f, global1[_wgslsmith_index_u32(40520u, 16u)])))), Struct_1(var_0.yz, var_2.x, !(!(!global2.b)), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(global2.c.x, -357f, ~vec4<i32>(global2.e.x, global2.e.x, 0i, u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, 1i), u_input.b))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(75056u, 16u)])) - _wgslsmith_f_op_f32(-var_2.x)), var_2.x, var_2.x)));
    var var_4 = Struct_4(Struct_3(global2.d, any(!global2.c.wxw) & !any(vec3<bool>(global2.b, false, var_3.b.c)), !global2.c, ~abs(global2.a) >> (~(~var_0.x) % 32u), -vec4<i32>(0i << (var_3.d.a.x % 32u), u_input.b.x >> (4294967295u % 32u), -global2.d, firstLeadingBit(24909i))), var_3.c.c);
    return 13802i;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = max(-1i, func_2() ^ u_input.b.x);
    global0 = array<vec2<f32>, 8>();
    global1 = array<f32, 16>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 16u)], 3603f)))), _wgslsmith_f_op_f32(-1240f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(60969u, 16u)] - -2161f)), _wgslsmith_f_op_f32(229f + _wgslsmith_f_op_f32(1000f - -2291f)))));
    global2 = Struct_3(_wgslsmith_add_i32(_wgslsmith_add_i32(-40658i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-23598i << (u_input.a.x % 32u), 7844i, global2.e.x), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-14102i, global2.d, -1i), u_input.b, vec3<i32>(1i, -1i, -25277i))))), true, vec4<bool>(select(_wgslsmith_f_op_vec4_f32(func_3(true, var_1.x, global2.e, u_input.b)).x > _wgslsmith_f_op_f32(-var_1.x), arg_1.x, any(!arg_1.xzx)), all(select(!arg_1.yw, vec2<bool>(arg_0, false), false)), all(vec2<bool>(arg_1.x, global2.c.x)), true), -u_input.b.x, _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32((global2.e >> (u_input.a % vec4<u32>(32u))) & -vec4<i32>(2147483647i, 37103i, u_input.c, global2.d), vec4<i32>(u_input.b.x, i32(-1i) * -2147483647i, ~global2.d, -1i)), _wgslsmith_add_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.d, u_input.b.x, global2.a, u_input.b.x), global2.e)), select(vec4<i32>(global2.d, u_input.c, -44659i, global2.a), global2.e, arg_1)), vec4<i32>(-reverseBits(u_input.c), 1i, _wgslsmith_div_i32(-2147483647i, 22771i), _wgslsmith_sub_i32(-u_input.b.x, -1i))));
    return Struct_3(1i, false, vec4<bool>(all(!vec3<bool>(arg_1.x, arg_0, false)), global2.c.x, !all(vec3<bool>(false, arg_0, global2.c.x)) && global2.b, arg_0), _wgslsmith_mod_i32(-38476i, 1i), global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(true, global2.c);
    var var_0 = vec4<f32>(global1[_wgslsmith_index_u32(~u_input.a.x, 16u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.a.x, 16u)] * 440f), 2477f, _wgslsmith_f_op_f32(step(-968f, _wgslsmith_f_op_f32(-1186f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 16u)] * -378f), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.a.x, 16u)]))))))));
    global0 = array<vec2<f32>, 8>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1418f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 16u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 149f, 212f, global1[_wgslsmith_index_u32(36127u, 16u)]) - vec4<f32>(249f, 408f, -1732f, -650f))))));
    let var_2 = u_input.a.x;
    let var_3 = any(global2.c.wzz);
    let var_4 = ~_wgslsmith_div_vec2_u32(u_input.a.ww, vec2<u32>(u_input.a.x, 0u) & u_input.a.xx) | vec2<u32>(96636u, ~(~(~136739u)));
    var var_5 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.zy, global2.e.wx), vec2<i32>(-27432i, global2.e.x)), u_input.b.yx), vec2<i32>(-1i, u_input.c)), vec2<i32>(reverseBits(_wgslsmith_clamp_i32(global2.a | global2.d, _wgslsmith_add_i32(33948i, -2147483647i), _wgslsmith_div_i32(2147483647i, global2.d))), -1i));
    let var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.yzw, (firstTrailingBit(u_input.a.zxx) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(var_6.x, 6735u, 25640u), vec3<u32>(var_4.x, var_2, 48312u))) | vec3<u32>(_wgslsmith_div_u32(0u, abs(var_4.x)), var_4.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.yzx) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(var_1.x * global1[_wgslsmith_index_u32(var_2, 16u)])) - var_0.zww)));
}

