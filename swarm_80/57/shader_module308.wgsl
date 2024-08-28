struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(0i, i32(-2147483648), -32063i, i32(-2147483648)), vec4<i32>(37501i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(32084i, 4077i, i32(-2147483648), 18622i), vec4<i32>(-11611i, -1i, -57851i, 1i), vec4<i32>(48051i, 20778i, 65622i, -1i), vec4<i32>(40095i, 1257i, 2147483647i, 5358i), vec4<i32>(2147483647i, 49325i, -1i, -31505i), vec4<i32>(-1i, 0i, -1i, -23782i), vec4<i32>(10246i, -1i, i32(-2147483648), -32046i), vec4<i32>(i32(-2147483648), 0i, 0i, 1i), vec4<i32>(-18061i, 47802i, -38353i, 1i), vec4<i32>(2147483647i, -3744i, -2768i, -39329i), vec4<i32>(-6790i, i32(-2147483648), 27481i, -13296i), vec4<i32>(-29399i, 11405i, -11423i, i32(-2147483648)), vec4<i32>(-1i, -1i, 20249i, 16078i), vec4<i32>(0i, -1i, -1i, 8708i), vec4<i32>(-44293i, -48838i, 1i, -1i), vec4<i32>(16153i, -19109i, 31939i, 0i), vec4<i32>(2147483647i, 40527i, 39141i, 54272i), vec4<i32>(-16909i, 27415i, 6447i, 1i), vec4<i32>(-1i, i32(-2147483648), -6065i, 62617i), vec4<i32>(15721i, 39695i, -39886i, 2147483647i), vec4<i32>(29569i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(16779i, i32(-2147483648), 64579i, i32(-2147483648)));

var<private> global2: f32;

var<private> global3: array<f32, 16>;

var<private> global4: array<Struct_1, 13>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = vec4<u32>(firstTrailingBit(0u), ~select(u_input.a, u_input.a, arg_0.x), 351u, u_input.b);
    let var_1 = min(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, _wgslsmith_mod_u32(var_0.x, 64918u), ~78374u, global0.x), vec4<u32>(~(~56871u), u_input.b, _wgslsmith_dot_vec4_u32(~var_0, vec4<u32>(var_0.x, u_input.a, var_0.x, 0u) ^ vec4<u32>(var_0.x, 4294967295u, 1u, 1535u)), ~var_0.x >> (~global0.x % 32u))), u_input.b);
    global3 = array<f32, 16>();
    global4 = array<Struct_1, 13>();
    var var_2 = Struct_5(global4[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(u_input.a, ~var_1) << (1u % 32u)), 13u)], _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(51783u, u_input.b), ~(~vec2<u32>(4294967295u, 1u))), var_0.xx), Struct_4(max(-39344i, -28213i)));
    return 0u;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1313f, 105f, global3[_wgslsmith_index_u32(85139u, 16u)], 764f), vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 16u)], global3[_wgslsmith_index_u32(u_input.b, 16u)], global3[_wgslsmith_index_u32(41402u, 16u)], -910f), arg_1))))), arg_0.a, arg_1.wxy, _wgslsmith_f_op_f32(877f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 16u)]), _wgslsmith_f_op_f32(-439f + global3[_wgslsmith_index_u32(0u, 16u)]))), ~u_input.b), firstTrailingBit(((vec2<u32>(574u, u_input.a) & global0.yy) ^ min(vec2<u32>(4294967295u, 13303u), global0.zw)) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), Struct_4(-87018i));
    global1 = array<vec4<i32>, 24>();
    let var_1 = var_0.a.a.xxx;
    let var_2 = Struct_5(var_0.a, select(vec2<u32>(global0.x, func_3(vec2<bool>(true, var_0.a.c.x))), global0.yy, !select(arg_1.xx, var_0.a.c.zx, true)), arg_0);
    let var_3 = ~(~(~abs(var_2.a.e))) >> (~(~(~countOneBits(10237u))) % 32u);
    return Struct_2(true, select(select(select(select(arg_1, arg_1, vec4<bool>(arg_1.x, false, var_0.a.c.x, arg_1.x)), arg_1, select(vec4<bool>(var_0.a.c.x, false, var_2.a.c.x, arg_1.x), vec4<bool>(false, arg_1.x, true, arg_1.x), false)), vec4<bool>(select(true, arg_1.x, false), true, true, var_0.a.c.x), true), arg_1, !all(select(vec2<bool>(arg_1.x, true), var_0.a.c.zx, false))), select(!select(!vec4<bool>(arg_1.x, var_2.a.c.x, true, var_2.a.c.x), arg_1, vec4<bool>(arg_1.x, arg_1.x, true, false)), vec4<bool>(true, !(u_input.a >= 71081u), 1i <= var_2.c.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4005u, 18546u), var_2.b) >= 1u), !(var_2.a.d > _wgslsmith_f_op_f32(ceil(764f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_0.a.a.x, 1590f, 490f)))), 8325i, vec3<bool>(arg_1.x, all(vec4<bool>(arg_1.x, false, var_0.a.c.x, false)), all(select(arg_1, arg_1, vec4<bool>(false, false, var_2.a.c.x, false)))), _wgslsmith_f_op_f32(max(1038f, _wgslsmith_f_op_f32(abs(-144f)))), firstLeadingBit(1u)));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = func_2(Struct_4(_wgslsmith_div_i32(i32(-1i) * -arg_0.d.b, -_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(global0.x, 24u)], vec4<i32>(arg_0.d.b, -33572i, arg_0.d.b, arg_0.d.b)))), !(!select(!arg_0.c, select(arg_0.c, vec4<bool>(arg_0.c.x, arg_0.d.c.x, true, arg_0.a), arg_0.b), func_2(Struct_4(arg_0.d.b), vec4<bool>(false, arg_0.b.x, false, arg_0.a)).b))).d;
    var var_1 = Struct_3(arg_0.d.a.xyy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(arg_0.d.e, 16u)])))) < _wgslsmith_f_op_f32(f32(-1f) * -479f), vec2<u32>(abs(_wgslsmith_dot_vec2_u32(firstTrailingBit(global0.xz), ~global0.yy)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1411u, arg_0.d.e), global0.x & 4294967295u, ~4294967295u, 69041u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 36187u, 16019u, 1u), vec4<u32>(u_input.a, 4294967295u, 1u, 0u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.d.a.yy, arg_0.d.a.zw, var_0.c.yx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.a.xw * arg_0.d.a.wy) + vec2<f32>(614f, 1304f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.d, -453f) * vec2<f32>(var_0.d, -903f)) * vec2<f32>(var_0.d, arg_0.d.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.ww - vec2<f32>(-1173f, var_0.d)) - arg_0.d.a.yy)))), var_0.e);
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-720f, _wgslsmith_f_op_f32(-1221f + 1142f), _wgslsmith_f_op_f32(f32(-1f) * -1303f))))), arg_0.d.c.x, abs(_wgslsmith_mult_vec2_u32(abs(global0.wy), ~global0.zx)) ^ _wgslsmith_mod_vec2_u32(~var_1.c, reverseBits(vec2<u32>(101307u, 4294967295u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1686f, 117f) + var_0.a.wy)) + var_0.a.wz))), ~_wgslsmith_mod_u32(~1u, 0u ^ ~arg_0.d.e));
    var var_2 = 0i;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.d.d) * _wgslsmith_f_op_f32(sign(-564f))), global3[_wgslsmith_index_u32(~0u, 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-481f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1353f)), _wgslsmith_f_op_f32(1000f * global3[_wgslsmith_index_u32(u_input.b, 16u)])))))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.a))), all(!vec4<bool>(true, arg_0.a, any(arg_0.d.c.yz), true)), var_1.c >> (abs(countOneBits(_wgslsmith_add_vec2_u32(global0.yx, var_1.c))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.d, 1920f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(442f, -415f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -752f)) - _wgslsmith_f_op_vec2_f32(-var_0.a.xx))), abs(~0u));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global1 = array<vec4<i32>, 24>();
    global2 = arg_0.d.x;
    let var_0 = Struct_4(~35223i);
    global4 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_f_op_f32(-288f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(-6803i), vec4<bool>(arg_0.b, true, true, arg_0.b)).d.d - global3[_wgslsmith_index_u32(13468u, 16u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1502f, _wgslsmith_f_op_f32(arg_0.a.x + 1140f))) * _wgslsmith_f_op_f32(exp2(arg_0.d.x)))));
    return global4[_wgslsmith_index_u32(~13004u, 13u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_5) -> f32 {
    global0 = vec4<u32>(_wgslsmith_div_u32(((global0.x ^ 21212u) & min(arg_1.b.x, 0u)) & 51128u, u_input.a), u_input.b | ~(~reverseBits(global0.x)), 0u, ~(abs(u_input.b) >> (min(global0.x | 1912u, u_input.b) % 32u)));
    var var_0 = arg_1.a.a.yy;
    var var_1 = vec2<bool>(arg_1.a.b > -firstLeadingBit(-1i), !arg_1.a.c.x);
    let var_2 = _wgslsmith_add_i32(min(2147483647i, arg_1.c.a), arg_1.a.b);
    var var_3 = func_5(func_4(func_2(Struct_4(firstLeadingBit(-2147483647i)), vec4<bool>(var_2 != -784i, arg_1.a.c.x, any(vec4<bool>(var_1.x, var_1.x, true, true)), true))));
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(150f - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.x, 16u)] - 299f)), _wgslsmith_f_op_f32(step(437f, _wgslsmith_f_op_f32(func_1(global0.xw, Struct_5(Struct_1(vec4<f32>(1019f, -687f, global3[_wgslsmith_index_u32(69664u, 16u)], global3[_wgslsmith_index_u32(82182u, 16u)]), -15653i, vec3<bool>(true, false, true), -405f, global0.x), vec2<u32>(u_input.b, u_input.a), Struct_4(20982i)))))), any(func_5(Struct_3(vec3<f32>(global3[_wgslsmith_index_u32(1u, 16u)], -965f, -842f), true, vec2<u32>(1u, 1u), vec2<f32>(global3[_wgslsmith_index_u32(60248u, 16u)], global3[_wgslsmith_index_u32(u_input.a, 16u)]), 1u)).c.yy))), global3[_wgslsmith_index_u32(firstLeadingBit(1u), 16u)], global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~0u, func_5(Struct_3(vec3<f32>(-1707f, 945f, 1502f), false, vec2<u32>(global0.x, global0.x), vec2<f32>(-1583f, global3[_wgslsmith_index_u32(u_input.b, 16u)]), global0.x)).e), 16u)]), true, global0.wy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 16u)] + -431f)), global3[_wgslsmith_index_u32(0u, 16u)])), max(23324u, reverseBits(min(u_input.a, ~u_input.b))));
    var var_1 = Struct_2(true, select(select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), select(vec4<bool>(false, var_0.b, true, true), vec4<bool>(true, true, true, var_0.b), vec4<bool>(var_0.b, var_0.b, false, var_0.b)), vec4<bool>(true, true, var_0.b, var_0.b)), !func_2(Struct_4(1i), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)).b, select(!vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), func_2(Struct_4(84629i), vec4<bool>(var_0.b, var_0.b, false, true)).b, select(vec4<bool>(true, var_0.b, false, true), vec4<bool>(var_0.b, var_0.b, var_0.b, true), var_0.b))), !vec4<bool>(var_0.b, !var_0.b, true, false), vec4<bool>(false, true, false, false)), select(!func_2(Struct_4(0i), func_2(Struct_4(1i), vec4<bool>(false, true, var_0.b, var_0.b)).c).b, select(!(!vec4<bool>(true, var_0.b, false, var_0.b)), vec4<bool>(var_0.b, true, var_0.b, select(var_0.b, true, var_0.b)), !select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(true, true, false, var_0.b), false)), !select(select(vec4<bool>(true, var_0.b, false, false), vec4<bool>(var_0.b, true, true, var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b)), vec4<bool>(true, false, true, false), !vec4<bool>(var_0.b, var_0.b, var_0.b, false))), func_2(Struct_4(func_2(Struct_4(0i), vec4<bool>(true, true, var_0.b, false)).d.b), !vec4<bool>(-680f == global3[_wgslsmith_index_u32(0u, 16u)], !var_0.b, func_4(Struct_2(false, vec4<bool>(var_0.b, true, var_0.b, false), vec4<bool>(false, true, false, true), Struct_1(vec4<f32>(var_0.d.x, 951f, 183f, global3[_wgslsmith_index_u32(global0.x, 16u)]), -38661i, vec3<bool>(false, var_0.b, true), var_0.d.x, var_0.c.x))).b, true)).d);
    var var_2 = min(_wgslsmith_clamp_vec3_i32(countOneBits(-vec3<i32>(var_1.d.b, 2147483647i, 60328i)), ~max(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_1.d.b, 0i), vec3<i32>(var_1.d.b, var_1.d.b, 2147483647i), vec3<i32>(var_1.d.b, -1902i, var_1.d.b))), max(abs(select(vec3<i32>(0i, var_1.d.b, var_1.d.b), vec3<i32>(var_1.d.b, -1i, var_1.d.b), true)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.d.b, var_1.d.b, 40289i), vec3<i32>(0i, -822i, -39117i) | vec3<i32>(var_1.d.b, var_1.d.b, var_1.d.b), vec3<i32>(var_1.d.b, -10872i, -2147483647i)))), ~vec3<i32>(_wgslsmith_div_i32(var_1.d.b, -2147483647i), _wgslsmith_mult_i32(var_1.d.b, -61398i), abs(-29833i)) >> (reverseBits(vec3<u32>(global0.x, _wgslsmith_add_u32(global0.x, 1u), 1u)) % vec3<u32>(32u)));
    var var_3 = var_1.d;
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.d, func_4(Struct_2(var_3.c.x, vec4<bool>(false, true, false, var_0.b), vec4<bool>(true, var_0.b, var_3.c.x, var_0.b), Struct_1(vec4<f32>(var_0.a.x, -588f, -1029f, 515f), -2147483647i, var_1.c.yxw, var_1.d.d, 72008u))).a.x))))));
    var_2 = vec3<i32>(~(-select(-1i, var_2.x, var_0.b)), -38130i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~((select(var_2.xx, vec2<i32>(var_3.b, var_2.x), vec2<bool>(false, false)) << (var_0.c % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 55807u), vec2<u32>(4294967295u, var_3.e)) % vec2<u32>(32u))));
}

