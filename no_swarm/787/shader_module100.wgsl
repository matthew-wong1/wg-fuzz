struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(1848f, -749f, -843f, -1978f), vec4<f32>(-1135f, 1597f, -1065f, -417f), vec4<f32>(-978f, -396f, -829f, -1277f), vec4<f32>(196f, -720f, -308f, 274f), vec4<f32>(1527f, -392f, -1253f, 132f), vec4<f32>(-469f, -1563f, 767f, -906f), vec4<f32>(-884f, -1478f, 1897f, -1308f), vec4<f32>(763f, -521f, -478f, 1077f), vec4<f32>(-700f, 1354f, 587f, 644f), vec4<f32>(544f, 2793f, 1206f, 1382f), vec4<f32>(-2243f, 2321f, 322f, 1000f), vec4<f32>(-2414f, 1767f, 823f, 613f), vec4<f32>(777f, -1000f, -1000f, -464f), vec4<f32>(-815f, -686f, 668f, 932f), vec4<f32>(751f, 2031f, -778f, -310f), vec4<f32>(286f, 667f, 1000f, 278f));

var<private> global1: array<vec4<bool>, 30>;

var<private> global2: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(2147483647i, -1i), vec2<i32>(1989i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-20660i, -1i), vec2<i32>(2147483647i, -10899i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-37011i, 1i), vec2<i32>(11391i, -30738i), vec2<i32>(42967i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(11828i, 1i), vec2<i32>(-45190i, -9377i), vec2<i32>(-1i, -65833i), vec2<i32>(-18356i, -14564i), vec2<i32>(49726i, -1i), vec2<i32>(-27412i, -21959i), vec2<i32>(1i, 13186i), vec2<i32>(1i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1i, 0i));

var<private> global3: vec2<i32> = vec2<i32>(-8399i, 17454i);

var<private> global4: bool;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.a.e.x, arg_2.a.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.a.e.x + -275f))))))));
    var var_1 = select(!(!(!(!arg_2.a.d.yy))), vec2<bool>(true, true), arg_2.a.d.zz);
    global2 = array<vec2<i32>, 21>();
    let var_2 = _wgslsmith_f_op_f32(floor(var_0.x));
    global2 = array<vec2<i32>, 21>();
    return global3.x;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> vec2<u32> {
    global3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(1i), func_3(true, max(~vec4<u32>(2677u, arg_1, 21745u, arg_1), vec4<u32>(7073u, 6373u, arg_1, arg_1) >> (vec4<u32>(13339u, 4294967295u, arg_1, 1u) % vec4<u32>(32u))), Struct_2(Struct_1(8676i, 1i, arg_2.b.x, vec3<bool>(true, true, true), vec2<f32>(1199f, arg_2.b.x))), arg_0)), -vec2<i32>(-abs(-24563i), _wgslsmith_sub_i32(10603i, select(27906i, global3.x, arg_0))), -(~vec2<i32>(~global3.x, global3.x)));
    global0 = array<vec4<f32>, 16>();
    var var_0 = 103527u;
    global2 = array<vec2<i32>, 21>();
    let var_1 = true;
    return abs(~u_input.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-534f, _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(max(1985f, -966f)))))));
    var var_1 = vec3<bool>(true, false, any(vec3<bool>(true, false, all(vec3<bool>(true, true, false)))));
    var var_2 = vec2<f32>(var_0, -548f);
    let var_3 = Struct_3(~0u, vec2<f32>(-1176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, 636f))))));
    let var_4 = Struct_5(vec4<bool>(!(!var_1.x || var_1.x), any(!select(vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, var_1.x, true), false)), true, all(select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, true, true)), select(vec3<bool>(true, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x), var_1.x)))));
    return var_3;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    let var_0 = Struct_4(select(((arg_1.d.x && arg_1.d.x) && all(global1[_wgslsmith_index_u32(arg_0.a, 30u)])) || arg_1.d.x, all(global1[_wgslsmith_index_u32(~0u, 30u)]) & (false || arg_1.d.x), all(select(!arg_1.d.yx, !vec2<bool>(false, arg_1.d.x), !vec2<bool>(arg_1.d.x, false)))), arg_1.e, _wgslsmith_mult_i32(31627i & ~(-global3.x), -global3.x));
    var var_1 = var_0;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_i32(-arg_1.a, var_0.c), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-6952i, -14243i, 0i, 1606i), vec4<i32>(arg_1.b, var_0.c, -2147483647i, -2147483647i)), ~2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), vec3<bool>(arg_1.d.x, all(arg_1.d.xz), true != any(vec3<bool>(var_0.a, true, true))), _wgslsmith_div_vec2_f32(var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.e.x, var_1.b.x)))))));
    var var_3 = vec2<bool>(all(!vec4<bool>(select(var_0.a, var_0.a, arg_1.d.x), !var_2.a.d.x, var_0.a, true)), var_2.a.d.x);
    return -_wgslsmith_clamp_i32(arg_1.b, arg_1.a, var_2.a.a);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<bool>) -> i32 {
    global3 = vec2<i32>(global3.x, abs(-firstLeadingBit(~global3.x)));
    var var_0 = firstLeadingBit(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(-2147483647i, global3.x)), func_5(func_4(func_2(arg_3.x, 40245u, Struct_3(41471u, vec2<f32>(-1463f, -783f))), _wgslsmith_add_i32(global3.x, 29401i), 1000f, 1u), Struct_1(1i, ~(-1i), _wgslsmith_div_f32(355f, 812f), !arg_3.yxz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-399f, -1768f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(7700u, 16u)] - global0[_wgslsmith_index_u32(100664u, 16u)]))), -20870i));
    var var_1 = _wgslsmith_f_op_f32(-1738f + 1333f);
    var_0 = -abs(~min(countOneBits(vec3<i32>(global3.x, -1i, global3.x)), max(vec3<i32>(0i, global3.x, -1i), vec3<i32>(var_0.x, global3.x, -23497i))));
    global3 = vec2<i32>(1i, -1i);
    return _wgslsmith_add_i32(~(_wgslsmith_mult_i32(1i, 26127i) | _wgslsmith_add_i32(reverseBits(global3.x), var_0.x ^ var_0.x)), -2147483647i);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: i32) -> i32 {
    global0 = array<vec4<f32>, 16>();
    let var_0 = abs((global2[_wgslsmith_index_u32(4294967295u, 21u)] & global2[_wgslsmith_index_u32(countOneBits(0u), 21u)]) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)));
    global4 = true;
    global3 = var_0;
    var var_1 = Struct_1(~(~14822i), ~select(-6905i, ~_wgslsmith_sub_i32(global3.x, arg_3), false), arg_0.b.x, vec3<bool>(true, false, arg_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.b))))));
    return reverseBits(arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    global0 = array<vec4<f32>, 16>();
    global0 = array<vec4<f32>, 16>();
    let var_1 = Struct_1(firstLeadingBit(func_6(Struct_4(true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(874f, -1382f), vec2<f32>(-739f, 705f), false)), global3.x), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(394f, -800f)), func_1(68510u | u_input.a.x, vec3<u32>(u_input.a.x, 23365u, u_input.a.x), ~1u, vec4<bool>(true, false, true, true)))), func_1(_wgslsmith_add_u32(func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 100828u), vec2<u32>(26487u, u_input.a.x)), ~(-2147483647i), -557f, u_input.a.x).a, ~(~94489u)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(4294967295u, u_input.a.x, 23604u), vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<bool>(true, true, false)), reverseBits(vec3<u32>(1u, 69568u, 30319u)), vec3<u32>(1u, u_input.a.x, 0u)), max(~vec3<u32>(5982u, u_input.a.x, u_input.a.x), ~vec3<u32>(4294967295u, 17221u, 4814u))), u_input.a.x, global1[_wgslsmith_index_u32(0u, 30u)]), -911f, !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec2<f32>(193f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) - _wgslsmith_f_op_f32(f32(-1f) * -1398f)), -689f, true))));
    global1 = array<vec4<bool>, 30>();
    var var_2 = vec4<i32>(global3.x, global3.x, 2147483647i, _wgslsmith_add_i32(min(var_1.a, -2147483647i) | (12878i >> (u_input.a.x % 32u)), 0i) >> (u_input.a.x % 32u));
    var var_3 = true;
    var var_4 = Struct_3(abs(_wgslsmith_clamp_u32(55822u, 4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 1u), u_input.a.x))), _wgslsmith_f_op_vec2_f32(-var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x, _wgslsmith_mod_vec3_i32(var_2.wwz, max(vec3<i32>(0i, global3.x, 14971i), var_2.zyx)), -566f, _wgslsmith_add_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_4.a, 28573u, var_4.a, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 46509u, u_input.a.x))), ~vec4<u32>(4294967295u, u_input.a.x, 15589u, 4294967295u)) << (reverseBits((vec4<u32>(4294967295u, 0u, u_input.a.x, 85042u) & vec4<u32>(u_input.a.x, 35480u, u_input.a.x, var_4.a)) & firstLeadingBit(vec4<u32>(71110u, u_input.a.x, 1u, u_input.a.x))) % vec4<u32>(32u)), firstLeadingBit(-15572i << (var_4.a % 32u)));
}

