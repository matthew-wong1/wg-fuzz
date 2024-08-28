struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-9116i, 1063i, 2147483647i), vec3<i32>(-17169i, 10009i, i32(-2147483648)), vec3<i32>(-1i, 29061i, i32(-2147483648)));

var<private> global1: Struct_3 = Struct_3(vec3<i32>(22010i, i32(-2147483648), i32(-2147483648)));

var<private> global2: bool;

var<private> global3: array<bool, 20> = array<bool, 20>(false, true, false, false, false, true, false, true, false, false, true, false, true, true, false, false, false, false, false, false);

var<private> global4: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32) -> bool {
    let var_0 = Struct_2(arg_0.a.x <= _wgslsmith_div_i32(arg_2 & arg_2, arg_2), countOneBits(select(_wgslsmith_div_u32(u_input.a, 74476u), u_input.a & 1u, true)) >> (u_input.a % 32u), Struct_1(~(~reverseBits(25327u)), firstLeadingBit(u_input.a), _wgslsmith_div_f32(155f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(355f)) + 1f)), ~reverseBits(vec2<u32>(4294967295u, u_input.a) & vec2<u32>(u_input.a, u_input.a)), min(~vec4<u32>(u_input.a, u_input.a, u_input.a, 49240u) >> (vec4<u32>(0u, 6861u, 0u, 0u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1361u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 1u), vec4<u32>(35965u, u_input.a, 76411u, 1u)) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-792f, 726f, -625f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c.c, var_0.c.c, var_0.c.c))))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.c, var_0.c.c, 1357f) - vec3<f32>(var_0.c.c, var_0.c.c, var_0.c.c))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c, var_0.c.c, -270f))))))));
    let var_2 = select(select(vec2<bool>(any(vec4<bool>(var_0.a, true, true, global3[_wgslsmith_index_u32(19593u, 20u)])), _wgslsmith_sub_u32(var_0.c.d.x, var_0.c.a) > 61506u), vec2<bool>(true, true), any(select(vec3<bool>(true, false, false), !vec3<bool>(false, var_0.a, global3[_wgslsmith_index_u32(1209u, 20u)]), !vec3<bool>(false, var_0.a, global3[_wgslsmith_index_u32(u_input.a, 20u)])))), !vec2<bool>((var_0.a & true) && !var_0.a, var_0.a), select(vec2<bool>(!var_0.a, var_0.a), !(!select(vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)]), true)), select(!vec2<bool>(var_0.a, var_0.a), !vec2<bool>(var_0.a, false), all(!vec4<bool>(global3[_wgslsmith_index_u32(var_0.b, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], false, global3[_wgslsmith_index_u32(u_input.a, 20u)])))));
    var var_3 = !vec3<bool>(true, var_2.x, false == (_wgslsmith_f_op_f32(select(var_1.x, var_1.x, global3[_wgslsmith_index_u32(var_0.b, 20u)])) < var_1.x));
    global4 = -2147483647i;
    return true != var_3.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: Struct_4) -> u32 {
    var var_0 = Struct_3(reverseBits(-abs(_wgslsmith_mult_vec3_i32(vec3<i32>(61769i, global1.a.x, arg_3.a.a.x), vec3<i32>(arg_2.x, 9268i, arg_3.a.a.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.b.c.c, arg_3.b.c.c))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0, arg_0))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1272f, arg_3.b.c.c) * arg_0))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.b.c.c))), 1878f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + arg_0) - arg_0))));
    global2 = false;
    let var_2 = arg_3.a;
    let var_3 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.a, 1u), ~0u), 20u)], max(abs(~75549u), 1u ^ _wgslsmith_div_u32(arg_3.b.c.b, u_input.a)), Struct_1(select(4294967295u, ~(~4294967295u), true), _wgslsmith_div_u32(~(u_input.a | u_input.a), countOneBits(~arg_3.b.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2182f - _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-209f + 1138f)))), arg_3.b.c.e.zw, _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, arg_3.b.c.d.x, 21672u, arg_3.b.b) >> ((vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) >> (arg_3.b.c.e % vec4<u32>(32u))) % vec4<u32>(32u)), select(abs(arg_3.b.c.e), ~vec4<u32>(4294967295u, 47119u, u_input.a, 0u), false))));
    return min(44410u, 638u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> u32 {
    global3 = array<bool, 20>();
    global2 = global3[_wgslsmith_index_u32(0u, 20u)];
    var var_0 = -global0[_wgslsmith_index_u32(func_4(vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(1482f, -136f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), -2819f, func_3(Struct_3(global0[_wgslsmith_index_u32(20010u, 3u)]), global0[_wgslsmith_index_u32(0u, 3u)], 0i)))), vec4<bool>(false, false, ~0u > _wgslsmith_sub_u32(0u, arg_0.x), global3[_wgslsmith_index_u32(~min(u_input.a, u_input.a), 20u)]), vec4<i32>(arg_1.x, global1.a.x | select(arg_1.x, 9143i, global3[_wgslsmith_index_u32(arg_0.x, 20u)]), global1.a.x, arg_1.x), Struct_4(Struct_3(global1.a), Struct_2(!global3[_wgslsmith_index_u32(arg_0.x, 20u)], ~1u, Struct_1(u_input.a, 0u, 505f, vec2<u32>(867u, 18714u), vec4<u32>(4294967295u, arg_0.x, arg_0.x, 4294967295u))))), 3u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2663f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-164f, -133f)))))));
    let var_2 = 477f;
    return arg_0.x;
}

fn func_5(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_1(u_input.a, ~((u_input.a ^ max(4294967295u, u_input.a)) & select(_wgslsmith_mod_u32(67492u, u_input.a), 4294967295u, global3[_wgslsmith_index_u32(u_input.a, 20u)] != false)), _wgslsmith_f_op_f32(499f * _wgslsmith_f_op_f32(floor(-1613f))), _wgslsmith_div_vec2_u32(max(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(41215u, u_input.a), vec2<u32>(u_input.a, 67596u))), countOneBits(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(3953u, u_input.a)))), reverseBits(vec2<u32>(1u, 4294967295u) ^ ~vec2<u32>(u_input.a, u_input.a))), ~_wgslsmith_clamp_vec4_u32(countOneBits(select(vec4<u32>(0u, 77620u, u_input.a, 1u), vec4<u32>(13459u, 4070u, u_input.a, 61695u), vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(u_input.a, 20u)]))), reverseBits(abs(vec4<u32>(u_input.a, 4294967295u, 21497u, u_input.a))), vec4<u32>(firstLeadingBit(1514u), u_input.a, abs(u_input.a), ~u_input.a)));
    let var_1 = var_0.c;
    global1 = Struct_3(~vec3<i32>(~global1.a.x, global1.a.x, arg_0.x) & abs(vec3<i32>(global1.a.x, global1.a.x, -2020i) & arg_0));
    let var_2 = global3[_wgslsmith_index_u32(1u, 20u)];
    global4 = -select(-12692i, global1.a.x, false) ^ min(arg_0.x, i32(-1i) * -1i);
    return Struct_3(vec3<i32>(min(global1.a.x, -(global1.a.x >> (u_input.a % 32u))), _wgslsmith_clamp_i32(min(global1.a.x, ~global1.a.x), -2147483647i, max(~5852i, arg_0.x)), select(abs(arg_0.x) ^ (global1.a.x >> (4294967295u % 32u)), reverseBits(_wgslsmith_div_i32(-31743i, arg_0.x)), false)));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_mod_vec3_i32(abs(~firstLeadingBit(vec3<i32>(-2147483647i, -27009i, -1i))), global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(17837u, arg_0) ^ arg_0), 3u)]));
    global1 = func_5(vec3<i32>(0i, _wgslsmith_add_i32(firstTrailingBit(-1i), -2323i) >> (func_2(~vec2<u32>(4294967295u, u_input.a), vec2<i32>(13013i, global1.a.x) << (vec2<u32>(15424u, 4294967295u) % vec2<u32>(32u))) % 32u), reverseBits(10472i)));
    let var_1 = vec2<u32>(48862u, 41179u);
    var var_2 = any(vec3<bool>(true, true, true)) || false;
    var var_3 = global1.a.x;
    return var_0;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> i32 {
    global2 = true;
    let var_0 = arg_1.xwx ^ ~_wgslsmith_div_vec3_i32(~(-vec3<i32>(1i, global1.a.x, arg_2.x)), -(vec3<i32>(55234i, -2147483647i, -1i) | vec3<i32>(0i, arg_0.a.x, global1.a.x)));
    var var_1 = var_0;
    global0 = array<vec3<i32>, 3>();
    var_1 = arg_0.a;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, global1.a.x), max(-1i, -2147483647i)) & func_6(func_1(u_input.a, Struct_3(vec3<i32>(7576i, 0i, global1.a.x))), countOneBits(vec4<i32>(global1.a.x, 53517i, global1.a.x, global1.a.x)), -vec4<i32>(1i, global1.a.x, global1.a.x, global1.a.x), vec3<f32>(-195f, 412f, 2035f)), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(~(u_input.a & 0u), 3u)], -global1.a), global1.a.x));
    var var_0 = -357f;
    global3 = array<bool, 20>();
    let var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 68353i), abs(func_5(vec3<i32>(-1i, -1i, global1.a.x) | vec3<i32>(global1.a.x, global1.a.x, global1.a.x)).a.zz)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a >> (var_1 % 32u), 115246u), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1, 1u), vec2<u32>(var_1, var_1))), vec2<u32>(u_input.a ^ u_input.a, reverseBits(1u)))), vec2<i32>(global1.a.x, ~1i), 69238i, ~4294967295u | _wgslsmith_add_u32(~(~63576u), _wgslsmith_div_u32(21998u, u_input.a) << ((var_1 ^ u_input.a) % 32u)));
}

