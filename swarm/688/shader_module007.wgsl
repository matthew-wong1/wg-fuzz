struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
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

var<private> global0: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.a;
    global2 = ~(~1u);
    var var_1 = vec2<u32>(20440u, ~(~select(1u, 5093u, global1.x)) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 20249u, 11938u, 6144u)));
    return vec4<bool>(true, global1.x, all(!global1.yx), !(!all(select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, true, global1.x, false), false))));
}

fn func_2() -> Struct_1 {
    global1 = select(func_3(), vec4<bool>(all(vec2<bool>(true, false || global1.x)), all(select(func_3(), vec4<bool>(true, global1.x, global1.x, global1.x), global1.x)), any(func_3().wx), true), global1.x);
    global0 = array<vec3<bool>, 30>();
    global1 = !(!(!vec4<bool>(true, any(global1.yz), true, any(vec4<bool>(global1.x, true, false, false)))));
    let var_0 = Struct_2(Struct_1(1046f, 121f, u_input.b, max(~1u, _wgslsmith_add_u32(~95123u, 68018u)), abs(abs(_wgslsmith_mod_i32(u_input.a.x, u_input.c.x)))), global1.x, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-269f + _wgslsmith_div_f32(299f, 255f)))), 1183f, ~_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c.x, 45335i), _wgslsmith_div_i32(-1i, u_input.d)), _wgslsmith_div_u32(41780u, ~(~50592u)), (abs(u_input.b) | -u_input.b) >> (firstTrailingBit(~39509u) % 32u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(-1777f + _wgslsmith_f_op_f32(-1899f - -1000f)), _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), min(vec3<i32>(u_input.a.x, u_input.e, 6999i), -vec3<i32>(-34288i, 13110i, -1i))), 76082u, ~2147483647i));
    let var_1 = vec4<bool>(global1.x, all(!select(select(global0[_wgslsmith_index_u32(var_0.c.d, 30u)], vec3<bool>(var_0.b, false, global1.x), global0[_wgslsmith_index_u32(0u, 30u)]), vec3<bool>(false, global1.x, var_0.b), true)), !any(vec2<bool>(true, var_0.c.d == var_0.d.d)), !(!var_0.b));
    return var_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_3) -> f32 {
    var var_0 = vec4<bool>(global1.x, arg_3.c, false, _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, firstLeadingBit(-20872i)), firstLeadingBit(~0i)) != (firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.c.xyy, u_input.a)) >> (72469u % 32u)));
    global2 = min(832u, arg_1.d);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-func_2().b)), _wgslsmith_div_f32(1296f, arg_3.b.b));
    global0 = array<vec3<bool>, 30>();
    global2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(~(~firstLeadingBit(4294967295u)), arg_0.d), 25876u);
    return var_1.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(1012f, _wgslsmith_f_op_f32(func_4(func_2(), arg_3.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-829f, 145f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1861f)), arg_0.zz)), vec2<f32>(_wgslsmith_f_op_f32(round(1538f)), arg_3.c.a)), Struct_3(-10270i, arg_3.a, false, select(~vec3<u32>(1u, arg_2.x, arg_3.a.d), ~vec3<u32>(arg_3.a.d, arg_2.x, 11463u), true), vec4<u32>(arg_3.a.d, _wgslsmith_mult_u32(arg_3.a.d, 0u), ~4294967295u, 51982u)))), -2147483647i, _wgslsmith_sub_u32(1u, min(arg_2.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_3.d.d, 1453u), vec3<u32>(24134u, 54155u, arg_2.x)), arg_3.a.d << (arg_3.d.d % 32u)))), arg_3.d.e);
    var var_1 = Struct_2(Struct_1(arg_3.d.b, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-770f + 1406f))), _wgslsmith_mult_i32(1i, 2147483647i & _wgslsmith_clamp_i32(var_0.e, arg_3.d.e, 56582i)), _wgslsmith_mod_u32(min(4294967295u, ~4294967295u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.d, 0u, arg_3.c.d), arg_3.a.d)), firstTrailingBit(firstTrailingBit(i32(-1i) * -2147483647i))), func_3().x, Struct_1(var_0.b, _wgslsmith_div_f32(arg_3.c.b, _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-1000f + 128f)))), u_input.a.x, ~arg_2.x, max(1i, countOneBits(abs(27373i)))), arg_3.c);
    var var_2 = select(vec4<u32>(~0u, 0u, 92482u | arg_3.a.d, 4294967295u), ~max(min(vec4<u32>(1u, var_1.c.d, 79566u, var_0.d) ^ vec4<u32>(arg_3.c.d, var_1.a.d, arg_3.a.d, 30335u), vec4<u32>(0u, 67697u, arg_2.x, arg_2.x)), min(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d, arg_3.c.d, 63812u, arg_3.c.d), vec4<u32>(1u, var_0.d, 1u, var_0.d)), vec4<u32>(4294967295u, arg_2.x, arg_3.c.d, 0u))), true);
    var var_3 = !(!(!vec2<bool>(any(vec4<bool>(arg_1, true, var_1.b, true)), arg_1)));
    var var_4 = Struct_3(select(0i, 1i, all(func_3().xz)), func_2(), all(select(vec4<bool>(all(vec4<bool>(false, var_3.x, true, arg_3.b)), any(arg_0), true, true), !func_3(), false)), var_2.xyz, vec4<u32>(0u, arg_2.x >> (9838u % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(~var_0.d, _wgslsmith_mod_u32(0u, 1u)), 52405u), var_1.c.d));
    return arg_3;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.a, _wgslsmith_f_op_f32(func_4(arg_2.a, func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1.b.b))), Struct_3(u_input.d << (arg_1.b.d % 32u), arg_1.b, false, vec3<u32>(arg_0.x, arg_2.d.d, arg_0.x), arg_1.e & arg_1.e)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2151f), _wgslsmith_f_op_f32(-func_2().b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_1.b, arg_1.b, vec2<f32>(-834f, arg_2.c.b), Struct_3(22063i, arg_2.d, true, vec3<u32>(arg_1.b.d, 57042u, 30346u), arg_1.e))) - _wgslsmith_f_op_f32(-arg_2.a.a))));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(u_input.b, u_input.e >> (firstLeadingBit(reverseBits(arg_2.c.d)) % 32u)), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(~_wgslsmith_clamp_i32(arg_1.b.c, -1i, u_input.a.x), 1i, -17644i << (~arg_0.x % 32u), firstTrailingBit(~1i))), countOneBits(u_input.d), countOneBits(select(arg_2.a.e, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.yzz, vec3<i32>(-2147483647i, arg_2.c.c, 0i)), abs(u_input.c.zzy)), !(arg_1.b.a < 691f))));
    var var_2 = func_3();
    global0 = array<vec3<bool>, 30>();
    let var_3 = func_1(var_2.zwy, arg_2.d.a >= -112f, abs(min(vec2<u32>(reverseBits(0u), abs(arg_1.d.x)), vec2<u32>(countOneBits(1u), _wgslsmith_mod_u32(112983u, 33188u)))), arg_2).c;
    return ~var_3.d < arg_2.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(global1.wx, vec2<bool>(true, func_5(vec2<u32>(1u, 1u), Struct_3(-28293i, Struct_1(-1361f, 946f, u_input.c.x, 4465u, u_input.a.x), true, vec3<u32>(722u, 75140u, 1u), vec4<u32>(19168u, 1u, 4294967295u, 75555u)), func_1(vec3<bool>(true, global1.x, false), global1.x, vec2<u32>(21735u, 1179u), Struct_2(Struct_1(-1215f, -440f, 11354i, 1u, u_input.b), true, Struct_1(-986f, -595f, -53811i, 3565u, u_input.a.x), Struct_1(298f, 261f, u_input.b, 20729u, 18567i))))), all(vec4<bool>(global1.x, global1.x, true, true))));
    let var_1 = vec3<i32>(u_input.d, -u_input.d, -max(0i, func_2().c));
    var var_2 = Struct_3(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -647f)))), 114f, func_1(vec3<bool>(true, global1.x, any(vec4<bool>(global1.x, global1.x, true, global1.x))), global1.x, _wgslsmith_mod_vec2_u32(vec2<u32>(18089u, 4294967295u), abs(vec2<u32>(45493u, 1u))), Struct_2(Struct_1(1000f, 1907f, u_input.c.x, 1u, u_input.e), false, func_1(global1.wwx, false, vec2<u32>(31515u, 1u), Struct_2(Struct_1(-1655f, 1322f, -25301i, 48638u, var_1.x), false, Struct_1(-1005f, -3057f, var_1.x, 34499u, 1i), Struct_1(272f, 1768f, 39113i, 7586u, 38307i))).a, func_2())).a.c, _wgslsmith_mod_u32(~0u, func_1(vec3<bool>(global1.x, true, false), true, vec2<u32>(33572u, 0u), Struct_2(Struct_1(-539f, 982f, 1i, 0u, -33091i), true, Struct_1(-787f, -485f, u_input.c.x, 22182u, var_1.x), Struct_1(-540f, -748f, u_input.e, 0u, u_input.b))).d.d) >> (36496u % 32u), u_input.c.x), global1.x, ~(~select(vec3<u32>(44085u, 0u, 68297u), ~vec3<u32>(64859u, 1u, 11294u), global1.x == global1.x)), _wgslsmith_mult_vec4_u32(select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(2861u, 4294967295u, 27185u, 34019u)), ~vec4<u32>(0u, 36567u, 51178u, 55074u)), vec4<u32>(1u, 1u, 1u, 1u), select(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), false), vec4<bool>(global1.x, true, global1.x, false), true)), firstLeadingBit(vec4<u32>(firstTrailingBit(37757u), _wgslsmith_add_u32(0u, 0u), 1u, 1u))));
    var var_3 = Struct_3(-(~5746i) >> (max(35734u, _wgslsmith_mod_u32(var_2.d.x ^ 4294967295u, func_2().d)) % 32u), Struct_1(_wgslsmith_f_op_f32(min(208f, _wgslsmith_f_op_f32(trunc(var_2.b.b)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-891f, var_2.b.a) - _wgslsmith_f_op_f32(round(var_2.b.a))), _wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -25188i, ~u_input.b), ~min(u_input.e, var_2.a)), var_2.e.x, ~u_input.e & (-32476i ^ _wgslsmith_div_i32(var_1.x, var_2.a))), !select(global1.x, select(40287u == var_2.e.x, false, func_3().x), !var_2.c), vec3<u32>(~var_2.b.d, var_2.b.d, _wgslsmith_sub_u32(82836u, _wgslsmith_sub_u32(firstLeadingBit(4294967295u), ~var_2.e.x))), var_2.e);
    var var_4 = func_2();
    let var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, var_5.e));
}

