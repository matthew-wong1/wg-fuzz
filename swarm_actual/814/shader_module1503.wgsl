struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<u32>(38602u, 0u, 37412u, 51131u), 21227u, 359f, vec4<u32>(0u, 20005u, 2631u, 0u), false), Struct_1(vec4<u32>(32807u, 54247u, 16216u, 16162u), 1u, -709f, vec4<u32>(47513u, 25141u, 12076u, 0u), true), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), 1u, 730f, vec4<u32>(36512u, 75817u, 44062u, 1u), true), Struct_1(vec4<u32>(0u, 1u, 1719u, 34781u), 4294967295u, 1337f, vec4<u32>(4294967295u, 4294967295u, 62449u, 4294967295u), false), Struct_1(vec4<u32>(21637u, 4294967295u, 25670u, 1u), 1u, 1314f, vec4<u32>(4294967295u, 50451u, 1u, 1u), true), Struct_1(vec4<u32>(4294967295u, 39665u, 1u, 64306u), 35586u, 997f, vec4<u32>(19706u, 14080u, 0u, 106610u), false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 85410u), 1u, 454f, vec4<u32>(4294967295u, 30854u, 1u, 0u), true), Struct_1(vec4<u32>(1u, 7741u, 1u, 57215u), 0u, -829f, vec4<u32>(4294967295u, 9782u, 54891u, 13816u), true), Struct_1(vec4<u32>(20888u, 1u, 1u, 75420u), 1u, -1202f, vec4<u32>(84146u, 56745u, 14573u, 31910u), true), Struct_1(vec4<u32>(80916u, 4294967295u, 25508u, 28512u), 84815u, 403f, vec4<u32>(0u, 44134u, 1u, 58176u), true), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 46016u), 90846u, -792f, vec4<u32>(523u, 4294967295u, 6605u, 1u), true), Struct_1(vec4<u32>(23123u, 16709u, 32609u, 2827u), 4294967295u, -1596f, vec4<u32>(4294967295u, 0u, 5146u, 4294967295u), true), Struct_1(vec4<u32>(4294967295u, 13547u, 0u, 62390u), 1499u, 258f, vec4<u32>(1u, 13001u, 1u, 64243u), true), Struct_1(vec4<u32>(100942u, 1u, 1601u, 4294967295u), 1u, -635f, vec4<u32>(28640u, 4294967295u, 40386u, 19230u), true));

var<private> global1: array<bool, 25>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = arg_0;
    global0 = array<Struct_1, 14>();
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zw, _wgslsmith_mult_vec2_i32(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(27454i, -2147483647i), u_input.a.wz, u_input.a.zw), vec2<i32>(1i, -20678i)), vec2<i32>(18238i, -u_input.a.x))), u_input.a.yw);
    global1 = array<bool, 25>();
    var_1 = u_input.a.yx;
    return u_input.b.yzy;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> vec3<bool> {
    let var_0 = arg_1 ^ 1u;
    let var_1 = vec4<i32>(55618i, i32(-1i) * -34652i, -(i32(-1i) * -1i), -35681i);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.b.ywx, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(var_0), 1u, ~u_input.c), firstLeadingBit(vec3<u32>(2470u, 26703u, u_input.b.x))), func_3(global1[_wgslsmith_index_u32(4294967295u, 25u)]))), 14u)];
    global1 = array<bool, 25>();
    var var_3 = _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(-var_2.c));
    return vec3<bool>(all(!select(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_0, 25u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_2.b, 25u)]), false), vec3<bool>(var_2.e, true, false), any(vec2<bool>(global1[_wgslsmith_index_u32(8965u, 25u)], global1[_wgslsmith_index_u32(39621u, 25u)])))), all(vec4<bool>(!(!var_2.e), all(vec4<bool>(var_2.e, true, false, var_2.e)) || true, true, true)), any(vec2<bool>(true, var_2.b < 1u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = firstLeadingBit(vec2<i32>(~1i, u_input.a.x));
    global0 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1049f, _wgslsmith_f_op_f32(trunc(-888f)), _wgslsmith_f_op_f32(ceil(-285f)), _wgslsmith_f_op_f32(-1000f - -639f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-175f, -538f, 534f, 1000f), vec4<f32>(1597f, -405f, 442f, 1953f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1661f, -900f, -318f, 374f))))));
    let var_2 = ~_wgslsmith_sub_vec4_u32(select(u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(10870u, u_input.c, 30828u, 4294967295u), u_input.b, vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x)), !(!vec4<bool>(false, true, arg_1, false))), reverseBits(u_input.b));
    var var_3 = ~(-(abs(var_0) & vec2<i32>(var_0.x, 0i)) | vec2<i32>(_wgslsmith_sub_i32(var_0.x, -1i), ~_wgslsmith_mod_i32(u_input.a.x, 0i)));
    return global0[_wgslsmith_index_u32(~(u_input.b.x | 23091u) ^ ~(~var_2.x), 14u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    global1 = array<bool, 25>();
    global0 = array<Struct_1, 14>();
    var var_0 = abs(_wgslsmith_sub_i32(~80932i, abs(u_input.a.x & -1i)));
    var var_1 = func_4(!func_2(vec3<i32>(-2147483647i, arg_0.x, -46904i), u_input.b.x), all(vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1446f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - var_1.c)))));
    return -_wgslsmith_mult_i32(arg_1, -arg_0.x);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(arg_3.x, 14u)];
    var var_1 = true;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.c, -1747f)), var_0.c))) + -1544f) < _wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(abs(var_0.c)))) - 2279f), true));
    global2 = _wgslsmith_mod_u32(u_input.b.x, 49598u);
    var var_2 = any(!vec3<bool>(any(vec2<bool>(false, arg_1)), true, true));
    return func_4(!vec3<bool>(var_0.e, select(false, arg_0 >= arg_0, true), true), true);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(arg_3.e, arg_3.e, arg_0.e, any(vec2<bool>(func_5(1i, true, _wgslsmith_add_u32(0u, arg_3.d.x), abs(arg_3.d.xyx)).e, global1[_wgslsmith_index_u32(u_input.b.x, 25u)])));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, -4235i) & _wgslsmith_dot_vec3_i32(u_input.a.yzw, u_input.a.xyw), ~1i << (func_3(true).x % 32u)), var_1), vec2<i32>(u_input.a.x, var_1));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!select(any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(102187u, 25u)], true)) == true, true, !(global1[_wgslsmith_index_u32(u_input.b.x, 25u)] || false)), true);
    let var_1 = func_6(func_5(u_input.a.x, firstLeadingBit(-11035i) < -func_1(u_input.a, 1i), ~(~u_input.b.x), ~select(u_input.b.zzz, select(vec3<u32>(2169u, 91179u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], true, true)), true)), ~u_input.b.x ^ u_input.b.x, global0[_wgslsmith_index_u32(max(4294967295u, ~18423u), 14u)], Struct_1(vec4<u32>(_wgslsmith_clamp_u32(~u_input.b.x, 3450u, _wgslsmith_mult_u32(25169u, u_input.b.x)), u_input.c, _wgslsmith_clamp_u32(firstLeadingBit(u_input.c), ~u_input.b.x, u_input.b.x), ~69752u), abs(_wgslsmith_dot_vec4_u32(~u_input.b, reverseBits(u_input.b))), 268f, vec4<u32>(u_input.b.x & u_input.c, _wgslsmith_mod_u32(u_input.b.x, 1476u), abs(u_input.b.x), _wgslsmith_mult_u32(1u, 1u)) >> (vec4<u32>(1u, 0u, u_input.c, ~67334u) % vec4<u32>(32u)), var_0.x));
    global0 = array<Struct_1, 14>();
    var var_2 = !(!(!vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.a.x, 29714u), 25u)], any(var_0), true)));
    let var_3 = global0[_wgslsmith_index_u32(~21699u, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, min(vec2<i32>((-2083i & u_input.a.x) | 2147483647i, abs(firstLeadingBit(25310i))), _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -47968i, max(2147483647i, 56919i)), _wgslsmith_mult_vec2_i32(u_input.a.xy, u_input.a.yx) ^ u_input.a.yy)), ~(~(vec2<i32>(-2147483647i, u_input.a.x) & u_input.a.wz) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 18608u), vec2<u32>(1u, var_3.a.x)) % vec2<u32>(32u))), ~_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, u_input.a.x, 0i), reverseBits(~vec3<i32>(u_input.a.x, 0i, -19557i))), -(~abs(u_input.a)) ^ u_input.a);
}

