struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, 522f, 846f, -451f);

var<private> global1: array<bool, 16>;

var<private> global2: vec2<f32>;

var<private> global3: vec4<i32>;

var<private> global4: array<bool, 8>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> i32 {
    let var_0 = Struct_5(select(u_input.b.zz, vec2<i32>(~global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 1i, 1i, u_input.a), abs(vec4<i32>(31736i, -14426i, u_input.a, -22077i)))), arg_2.b.a.zx));
    let var_1 = var_0;
    var var_2 = -511f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))), -796f))) + 1216f);
    global2 = global0.xx;
    return max(select(_wgslsmith_mod_i32(_wgslsmith_add_i32(-global3.x, countOneBits(u_input.b.x)), min(-var_0.a.x, 2147483647i >> (arg_1 % 32u))), -1i, arg_2.b.a.x), u_input.a | _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x & global3.x, firstTrailingBit(2147483647i)), vec2<i32>(global3.x, -1i) & ~vec2<i32>(-13289i, u_input.a)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_5 {
    let var_0 = vec4<i32>(-1i, -global3.x, _wgslsmith_sub_i32(58221i, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_div_f32(global0.x, -176f)), u_input.c.x, Struct_4(-380f, Struct_1(vec3<bool>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec3<bool>(global4[_wgslsmith_index_u32(0u, 8u)], false, global1[_wgslsmith_index_u32(51564u, 16u)]), u_input.c.wx, 785f, vec2<u32>(16950u, u_input.c.x)), 59324u < u_input.c.x))), -2147483647i);
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(global0.zyx));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(var_1.yy));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -739f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 444f)));
    global3 = -(max(var_0, -(vec4<i32>(var_0.x, var_0.x, -1i, 0i) ^ var_0)) >> ((_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(65547u, 54683u, 1u, u_input.c.x), u_input.c), vec4<u32>(u_input.c.x, u_input.c.x, 14539u, u_input.c.x)) | select(abs(vec4<u32>(u_input.c.x, 37771u, 43563u, 37968u)), vec4<u32>(66954u, u_input.c.x, u_input.c.x, u_input.c.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 8u)], false, global4[_wgslsmith_index_u32(u_input.c.x, 8u)]), false))) % vec4<u32>(32u)));
    return Struct_5(vec2<i32>(abs(-(i32(-1i) * -30122i)), -abs(var_0.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-arg_3.b.d), false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1342f, global2.x)) + -1358f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 991f)))), -1000f) - global0.xyw);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global2.x)))), 2125f, 1369f))));
    let var_1 = ~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1.x >> (1u % 32u), _wgslsmith_sub_u32(28968u, arg_1.x)), ~1u));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(1698f, global0.x), -1102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)), _wgslsmith_f_op_f32(f32(-1f) * -794f));
    var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_3.a, var_0.x)))), var_2.zww));
    return arg_3;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec4<u32>) -> Struct_5 {
    var var_0 = arg_2;
    let var_1 = global3.x;
    var var_2 = Struct_2(func_4(~vec3<i32>(var_0.a.x, -2147483647i, u_input.b.x) ^ countOneBits(-vec3<i32>(-2147483647i, arg_2.a.x, -23149i)), (~u_input.c << (vec4<u32>(7818u, 39951u, arg_1.c.x, arg_0.b.e.x) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(arg_3, arg_3 ^ arg_3), Struct_5(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(u_input.a, global3.x))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - arg_1.d)), arg_1, (false || arg_1.b.x) && false)).b);
    global3 = ~vec4<i32>(func_3(-1212f, ~(arg_0.b.e.x >> (u_input.c.x % 32u)), Struct_4(1000f, arg_0.b, all(vec4<bool>(false, true, arg_0.c, global4[_wgslsmith_index_u32(arg_3.x, 8u)])))), -18457i, var_0.a.x, -(_wgslsmith_dot_vec2_i32(vec2<i32>(48012i, 5819i), global3.zy) | _wgslsmith_clamp_i32(u_input.b.x, -1i, -1i)));
    var var_3 = global4[_wgslsmith_index_u32(1u, 8u)];
    return Struct_5(vec2<i32>(~reverseBits(var_0.a.x) << (u_input.c.x % 32u), ~countOneBits(-20004i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> Struct_5 {
    let var_0 = arg_0;
    var var_1 = 67127u;
    var var_2 = Struct_5(vec2<i32>((_wgslsmith_sub_i32(-2147483647i, arg_1.b) ^ _wgslsmith_clamp_i32(2147483647i, u_input.b.x, 23153i)) << (var_0.e.x % 32u), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -13920i), vec2<i32>(-23188i, global3.x)))));
    global1 = array<bool, 16>();
    var var_3 = vec2<f32>(-459f, -2133f);
    return func_5(func_4(global3.wzy, ~select(~vec4<u32>(150805u, 26916u, 6320u, arg_1.d.x), ~u_input.c, var_0.a.x), func_2(select(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.e.x, 16u)], global1[_wgslsmith_index_u32(var_0.e.x, 16u)]), !vec2<bool>(global4[_wgslsmith_index_u32(arg_0.c.x, 8u)], false), var_0.b.xx)), Struct_4(var_0.d, var_0, false)), Struct_1(!vec3<bool>(false, !var_0.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 16u)] & true), func_4(~_wgslsmith_div_vec3_i32(vec3<i32>(global3.x, arg_1.b, -52795i), vec3<i32>(-2147483647i, 2147483647i, 2147483647i)), ~(~u_input.c), func_2(vec2<bool>(false, arg_0.a.x)), func_4(vec3<i32>(-4825i, u_input.b.x, -71773i), vec4<u32>(24337u, 62287u, 0u, arg_0.e.x), func_2(var_0.b.xy), func_4(global3.xzy, u_input.c, Struct_5(vec2<i32>(-22071i, -17412i)), Struct_4(946f, arg_0, true)))).b.a, vec2<u32>(arg_0.e.x, _wgslsmith_mult_u32(4294967295u, arg_0.e.x) >> (~arg_0.c.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(225f, arg_0.d)) - _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(-473f, -2528f))), vec2<u32>(105454u, arg_1.d.x)), Struct_5(vec2<i32>(0i >> (reverseBits(0u) % 32u), global3.x << (arg_0.e.x % 32u))), u_input.c);
}

fn func_6(arg_0: f32, arg_1: Struct_5, arg_2: vec3<i32>) -> bool {
    var var_0 = vec4<f32>(-756f, global2.x, 503f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(vec3<i32>(arg_2.x, arg_1.a.x, -2147483647i), ~vec4<u32>(u_input.c.x, 27176u, u_input.c.x, 4294967295u), arg_1, func_4(global3.yww, vec4<u32>(31449u, u_input.c.x, u_input.c.x, 8877u), arg_1, Struct_4(global2.x, Struct_1(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 8u)], false, global4[_wgslsmith_index_u32(1u, 8u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 16u)], true), vec2<u32>(44u, u_input.c.x), arg_0, vec2<u32>(19807u, 40415u)), global1[_wgslsmith_index_u32(4294967295u, 16u)]))).a + -929f))));
    let var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), ~u_input.c, u_input.c | vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 58579u)), u_input.c, vec4<bool>(true, true, true, true))), ~abs(vec4<u32>(4294967295u, u_input.c.x | u_input.c.x, 13736u, u_input.c.x << (u_input.c.x % 32u))));
    let var_2 = select(arg_1.a, vec2<i32>(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(27733i, -7873i, -37039i, arg_2.x)), select(min(vec4<i32>(1i, -1i, u_input.a, 37602i), vec4<i32>(-1i, -1i, 1i, u_input.a)), vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 83890i), true)), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, arg_2.x), ~(-1i))), !global1[_wgslsmith_index_u32(var_1, 16u)]);
    let var_3 = 12321u;
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1305f, _wgslsmith_f_op_f32(min(-796f, 1044f)), -211f, arg_0) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global0.x, global0.x, global2.x) * vec4<f32>(1460f, 1517f, -265f, 175f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), -531f, 560f, _wgslsmith_f_op_f32(-var_0.x)))), global4[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.xwy, u_input.c.xyw), u_input.c.zyy) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, var_1), var_3) % 32u)), 8u)]));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(!vec3<bool>(all(vec3<bool>(global4[_wgslsmith_index_u32(86178u, 8u)], false, true)), !global4[_wgslsmith_index_u32(7855u, 8u)], any(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 8u)], true, true))), vec3<bool>(all(select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(true, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global1[_wgslsmith_index_u32(u_input.c.x, 16u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 16u)]))), func_6(global2.x, func_1(Struct_1(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.c.x, 8u)], false), vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(67691u, 16u)], global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), u_input.c.yy, global0.x, vec2<u32>(u_input.c.x, 17571u)), Struct_3(499f, u_input.b.x, vec3<f32>(-725f, -858f, 1498f), u_input.c.xw)), reverseBits(vec3<i32>(27817i, global3.x, global3.x))), true), u_input.c.zx, _wgslsmith_f_op_f32(-global2.x), vec2<u32>(~(~u_input.c.x), 14786u)));
    global3 = firstTrailingBit(-(-vec4<i32>(-2147483647i, 1i, -674i, 0i) >> (~u_input.c % vec4<u32>(32u))) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.a, global3.x), vec4<i32>(0i, 2147483647i, global3.x, -38028i) & vec4<i32>(u_input.a, -7008i, u_input.b.x, 12939i)));
    let var_1 = Struct_5(global3.xy);
    global4 = array<bool, 8>();
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-450f - global2.x), -761f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1414f))), global0.x, global0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 929f, global0.x, var_0.a.d) - vec4<f32>(987f, -1429f, global0.x, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d, global2.x, -1985f, 210f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1147f, 704f, var_0.a.d, 298f) + vec4<f32>(831f, global2.x, 2474f, -495f))))));
    global4 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_sub_i32(46687i, var_1.a.x), -6335i), ~(~u_input.c.yyy), global2.x);
}

