struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<bool, 30>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_5(u_input.b.ww, u_input.a.yzy, i32(-1i) * -17605i, arg_1.x);
    let var_1 = true || global0[_wgslsmith_index_u32(10060u, 13u)];
    var_0 = Struct_5(((vec2<u32>(96309u, 1u) & ~vec2<u32>(u_input.b.x, 1712u)) << (vec2<u32>(~994u, var_0.a.x) % vec2<u32>(32u))) << ((var_0.a << ((vec2<u32>(u_input.b.x, 0u) & ~vec2<u32>(u_input.b.x, arg_3.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.b, firstTrailingBit(_wgslsmith_clamp_i32(max(-2147483647i, -37150i), u_input.a.x, 11682i)), all(select(!vec3<bool>(false, false, var_1), vec3<bool>(global1[_wgslsmith_index_u32(~arg_3.x, 30u)], all(vec3<bool>(true, false, true)), true), any(vec2<bool>(false, var_1)))));
    let var_2 = 4175f;
    global1 = array<bool, 30>();
    return select(!select(vec3<bool>(true, true, var_1 | false), select(!vec3<bool>(arg_1.x, false, var_0.d), vec3<bool>(true, true, true), all(vec2<bool>(arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 30u)]))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~35553u, _wgslsmith_mod_u32(1u, 59280u)), 30u)]), vec3<bool>(true, _wgslsmith_dot_vec4_i32(u_input.a & u_input.a, ~u_input.a) >= -29358i, any(select(!vec2<bool>(false, arg_0.x), vec2<bool>(false, global0[_wgslsmith_index_u32(76915u, 13u)]), true))), vec3<bool>(!(!select(true, arg_0.x, false)), var_0.c != 1i, !any(arg_1)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec3<f32>) -> bool {
    let var_0 = Struct_5(u_input.b.zx, ~select(max(~vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_i32(u_input.a.xxx, u_input.a.zzz)), _wgslsmith_sub_vec3_i32(vec3<i32>(67794i, u_input.a.x, 387i) >> (vec3<u32>(1u, arg_1.x, 3794u) % vec3<u32>(32u)), firstTrailingBit(u_input.a.ywx)), func_3(!vec2<bool>(false, global1[_wgslsmith_index_u32(9898u, 30u)]), func_3(arg_0.a.e.zy, arg_0.b.yx, arg_0.c.x, vec3<u32>(1u, u_input.b.x, arg_1.x)).xy, _wgslsmith_f_op_f32(select(365f, arg_0.c.x, false)), u_input.b.xzx)), u_input.a.x, any(arg_0.b.yy));
    return !arg_0.a.e.x;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = 0i;
    global0 = array<bool, 13>();
    var_0 = -2147483647i;
    var var_1 = func_4(Struct_3(Struct_1(_wgslsmith_mod_i32(2147483647i, -8892i), u_input.d, vec3<f32>(_wgslsmith_f_op_f32(round(574f)), _wgslsmith_f_op_f32(floor(-1000f)), -2124f), 1419f, func_3(arg_0.xw, vec2<bool>(true, true), -106f, max(vec3<u32>(57297u, u_input.b.x, 85896u), u_input.b.yzx))), !vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], false, false)), false, u_input.a.x > u_input.d), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(2583f, 395f)), _wgslsmith_f_op_f32(min(919f, -927f)), _wgslsmith_f_op_f32(abs(-732f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 115f, -1702f) + vec3<f32>(1883f, 1000f, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, 240f, 1000f)))))), vec3<u32>(4294967295u, ~0u, u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(581f, 438f, 1322f)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(300f, 1414f, -1176f, 209f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, -843f, 811f, -2230f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-967f, 416f, -813f, 863f), vec4<f32>(-776f, -1377f, -663f, -489f))))))))), vec4<f32>(-923f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1204f, -481f, arg_0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(263f, -448f))), _wgslsmith_f_op_f32(abs(326f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1211f)))))));
    return true;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(u_input.a.x, ~(-_wgslsmith_mod_i32(arg_0.c.x, -54634i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-793f, 1000f, 1604f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1053f, -306f, -1013f), vec3<f32>(475f, -1849f, 1456f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(877f, 846f, 222f)), func_2(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(arg_0.b.x, 13u)], true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f)), vec3<bool>(global0[_wgslsmith_index_u32(49494u, 13u)] == any(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.d, 30u)], global0[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)])), true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), func_3(!vec2<bool>(!global0[_wgslsmith_index_u32(4294967295u, 13u)], true), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(146f * -829f) + _wgslsmith_f_op_f32(max(-644f, 334f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f * -556f)))), u_input.b.zwz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1134f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2076f), _wgslsmith_f_op_f32(sign(-860f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, -2558f))))));
    let var_1 = 45540u;
    var var_2 = select(true, !func_2(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], true, true, false), vec4<bool>(var_0.b.x, global1[_wgslsmith_index_u32(arg_0.b.x, 30u)], false, false), global1[_wgslsmith_index_u32(arg_0.d, 30u)])), true) != true;
    global1 = array<bool, 30>();
    let var_3 = var_0;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_4(u_input.a.x | u_input.a.x, abs(u_input.b.wy), u_input.a.xwz, 0u, vec3<i32>(1i >> (~u_input.b.x % 32u), u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -17005i) & max(u_input.c, u_input.d))));
    global0 = array<bool, 13>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c));
    var var_2 = min(-abs(_wgslsmith_mult_i32(var_0.b, -1i)), i32(-1i) * -2147483647i);
    var var_3 = Struct_5(~(u_input.b.yz | vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 31477u)), min(abs(_wgslsmith_add_vec3_i32(select(vec3<i32>(-1i, -1i, -50619i), vec3<i32>(var_0.b, var_0.a, var_0.b), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), u_input.a.zwx << (vec3<u32>(35024u, 36006u, u_input.b.x) % vec3<u32>(32u)))), select(vec3<i32>(_wgslsmith_mod_i32(-27542i, var_0.a), 1i, var_0.b), -(~vec3<i32>(16484i, var_0.b, -1795i)), !(var_0.c.x <= var_1.x))), func_1(Struct_4(-13209i, min(vec2<u32>(u_input.b.x, 25786u), u_input.b.xx) ^ vec2<u32>(u_input.b.x, 113265u), abs(u_input.a.wwz << (vec3<u32>(u_input.b.x, 1u, u_input.b.x) % vec3<u32>(32u))), ~reverseBits(0u), select(vec3<i32>(u_input.c, -1i, u_input.d), reverseBits(u_input.a.xwy), vec3<bool>(true, false, false)))).a, (_wgslsmith_div_f32(-850f, -185f) >= var_1.x) | true);
    global0 = array<bool, 13>();
    var_0 = Struct_1(-2147483647i, reverseBits(i32(-1i) * -4332i), _wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_f32(func_1(Struct_4(func_1(Struct_4(u_input.a.x, u_input.b.zx, var_3.b, var_3.a.x, u_input.a.xwx)).a, vec2<u32>(var_3.a.x, u_input.b.x) << (vec2<u32>(var_3.a.x, 4294967295u) % vec2<u32>(32u)), vec3<i32>(var_3.c, 37718i, 0i) | u_input.a.zzz, ~u_input.b.x, select(vec3<i32>(u_input.a.x, 2147483647i, u_input.c), vec3<i32>(-15285i, var_0.b, var_3.b.x), var_0.e.x))).c.x * func_1(Struct_4(~var_3.c, _wgslsmith_add_vec2_u32(u_input.b.ww, vec2<u32>(u_input.b.x, var_3.a.x)), ~var_3.b, u_input.b.x << (0u % 32u), firstTrailingBit(var_3.b))).d), var_0.e);
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(var_1.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2404f, -1283f) * var_1.zy) + _wgslsmith_div_vec2_f32(var_0.c.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_0.d))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec3_f32(-var_0.c), _wgslsmith_f_op_vec3_f32(trunc(var_0.c)));
}

