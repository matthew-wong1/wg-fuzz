struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, true, false, true, false, true, false, true, true, true, true, true, true, false, true, false, true, true, false, true, true, true, false, true, true, true, true, false, false, true, true);

var<private> global1: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-1000f, 243f, -298f), vec3<f32>(1555f, -1353f, -183f), vec3<f32>(213f, -943f, -1040f), vec3<f32>(309f, -874f, 1000f), vec3<f32>(-824f, 220f, 379f), vec3<f32>(-651f, 602f, -199f), vec3<f32>(177f, -993f, -957f), vec3<f32>(162f, -504f, -756f), vec3<f32>(560f, 1297f, 302f), vec3<f32>(276f, 546f, -150f), vec3<f32>(-1298f, 1038f, 548f), vec3<f32>(1179f, 1088f, -423f), vec3<f32>(-1074f, -492f, 257f), vec3<f32>(-250f, -1459f, -915f), vec3<f32>(-156f, 1434f, 1546f));

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec2<bool> {
    global2 = Struct_1(~global2.e.x, vec3<u32>(~_wgslsmith_mod_u32(reverseBits(global2.e.x), global2.e.x), _wgslsmith_mult_u32(17177u, _wgslsmith_dot_vec3_u32(vec3<u32>(8579u, u_input.c.x, 0u), vec3<u32>(global2.b.x, 0u, 0u)) << (global2.b.x % 32u)), u_input.c.x), global2.c, select(!vec3<bool>(true, true, any(vec3<bool>(global0[_wgslsmith_index_u32(global2.a, 31u)], global2.d.x, global0[_wgslsmith_index_u32(1u, 31u)]))), global2.d, !arg_0), global2.e);
    var var_0 = select(vec3<i32>(u_input.b.x, u_input.a.x, -firstLeadingBit(u_input.a.x | 1i)), vec3<i32>(-1i) * -(vec3<i32>(-1i, arg_1.x, 34331i) | u_input.b), !(!(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 1u), 31u)] | !global0[_wgslsmith_index_u32(38871u, 31u)])));
    return select(arg_0.zy, !vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], all(global2.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(497f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f))) != 1f);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = -19558i;
    return select(!func_3(select(!global2.d, arg_1.b.d, false), vec3<i32>(0i, 1i, 1i)), global2.d.zx, func_3(select(!arg_1.b.d, select(!vec3<bool>(global2.d.x, arg_1.b.d.x, true), arg_1.b.d, any(global2.d)), func_3(global2.d, ~global2.c).x), vec3<i32>(-10334i, ~(~(-49142i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-40683i, var_0, -1i, 37414i), min(vec4<i32>(-19688i, u_input.b.x, -2147483647i, var_0), vec4<i32>(0i, -11533i, 10317i, 1i))))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = func_2(global2.c.zz >> (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(245f, -1326f) + -302f)), Struct_1(reverseBits(1u), global2.b | ~vec3<u32>(global2.e.x, u_input.c.x, global2.e.x), _wgslsmith_clamp_vec3_i32(abs(arg_0.xxx), arg_0.wwx >> (vec3<u32>(10152u, 1239u, u_input.c.x) % vec3<u32>(32u)), vec3<i32>(2147483647i, 34111i, arg_0.x) << (vec3<u32>(1u, 47736u, u_input.c.x) % vec3<u32>(32u))), select(vec3<bool>(false, false, global2.d.x), select(global2.d, global2.d, true), true), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(global2.b, global2.b), _wgslsmith_dot_vec2_u32(global2.b.xz, vec2<u32>(u_input.c.x, 1u)), ~u_input.c.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1191f)), _wgslsmith_f_op_f32(-1430f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-2342f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f))))) * global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~reverseBits(u_input.c.x), _wgslsmith_mod_u32(abs(1u), ~0u)), 15u)]);
    global2 = Struct_1(global2.e.x, _wgslsmith_sub_vec3_u32(abs(~(~vec3<u32>(4294967295u, 4294967295u, 0u))), firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(35293u, 1u), _wgslsmith_div_u32(4294967295u, global2.a), u_input.c.x))), firstLeadingBit(_wgslsmith_add_vec3_i32(arg_0.xwx | (u_input.a | arg_0.xxw), ~(~global2.c))), select(select(vec3<bool>(true, global2.d.x & false, any(vec4<bool>(var_0.x, true, false, var_0.x))), global2.d, select(select(global2.d, global2.d, global0[_wgslsmith_index_u32(u_input.c.x, 31u)]), global2.d, global2.d.x)), vec3<bool>(global0[_wgslsmith_index_u32(global2.a, 31u)], true, all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(global2.e.x, 31u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], true, global2.d.x, true), var_0.x))), !global2.d), global2.e);
    global2 = Struct_1(~(~(global2.b.x & 0u)) << (~(11466u >> (_wgslsmith_add_u32(global2.a, global2.b.x) % 32u)) % 32u), _wgslsmith_div_vec3_u32(min(vec3<u32>(90623u, 31857u, u_input.c.x), global2.b), ~vec3<u32>(4294967295u, u_input.c.x, u_input.c.x) >> (countOneBits(global2.b) % vec3<u32>(32u))) | vec3<u32>(16019u, 0u, 1u), global2.c, select(global2.d, !global2.d, global2.d), ~vec4<u32>(u_input.c.x, abs(u_input.c.x), _wgslsmith_sub_u32(4294967295u, ~global2.b.x), 1u));
    global1 = array<vec3<f32>, 15>();
    return Struct_1(u_input.c.x, abs(global2.b), _wgslsmith_add_vec3_i32(u_input.a, abs(firstTrailingBit(vec3<i32>(-1i, 76532i, global2.c.x)))), global2.d, max(global2.e, vec4<u32>(u_input.c.x, u_input.c.x, _wgslsmith_add_u32(min(global2.b.x, 7129u), global2.e.x), max(u_input.c.x >> (u_input.c.x % 32u), ~0u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-735f + _wgslsmith_f_op_f32(f32(-1f) * -1177f))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(337f, 787f) + _wgslsmith_f_op_f32(trunc(167f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1451f, -607f)), _wgslsmith_f_op_f32(trunc(-1000f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1191f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -865f)))));
    return _wgslsmith_f_op_f32(trunc(1303f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1485f * 1000f))))));
    let var_1 = ~vec3<u32>(~u_input.c.x, ~u_input.c.x, abs(~select(153539u, global2.b.x, global2.d.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(vec4<i32>(1i, -7912i, 2241i, global2.c.x)), func_1(vec4<i32>(global2.c.x, 5366i, global2.c.x, 13255i) << (global2.e % vec4<u32>(32u))).e, !select(vec4<bool>(global2.d.x, global0[_wgslsmith_index_u32(2189u, 31u)], true, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(1u, 31u)]), true))), 1644f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(280f + _wgslsmith_f_op_f32(func_4(Struct_1(0u, var_1, vec3<i32>(12332i, -24257i, 25209i), global2.d, global2.e), global2.e, vec4<bool>(false, global2.d.x, global2.d.x, global0[_wgslsmith_index_u32(var_1.x, 31u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -730f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-758f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(366f))), -1085f, -1132f)));
    let var_3 = vec2<u32>(~(~0u | (14546u ^ var_1.x)), _wgslsmith_dot_vec4_u32(min(global2.e, global2.e), _wgslsmith_div_vec4_u32(firstTrailingBit(global2.e), _wgslsmith_sub_vec4_u32(global2.e, global2.e)))) ^ abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, abs(var_1.x)), vec2<u32>(1u, firstLeadingBit(var_1.x))));
    global2 = func_1((((vec4<i32>(u_input.b.x, global2.c.x, -15204i, global2.c.x) & vec4<i32>(-62959i, u_input.b.x, -2147483647i, global2.c.x)) | vec4<i32>(1i, 24187i, 24171i, -1i)) | vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 0i), global2.c.x | 0i, global2.c.x, u_input.b.x & global2.c.x)) & (~(~vec4<i32>(0i, 0i, -41827i, -1i)) << (global2.e % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-791f * var_2.x) + var_2.x), 281f, _wgslsmith_f_op_f32(exp2(var_2.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_2.x, -792f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, 1622f) - vec3<f32>(-123f, -581f, -1000f))), global1[_wgslsmith_index_u32(55993u, 15u)])));
}

