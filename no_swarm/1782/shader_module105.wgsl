struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(-1355f);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false, -9309i, false, 631f), Struct_1(true, 6681i, true, -776f), Struct_1(true, 1i, true, 834f), Struct_1(false, -34296i, false, 1278f), Struct_1(false, 0i, false, 1076f), Struct_1(false, -8842i, true, 926f), Struct_1(false, -2761i, false, 362f), Struct_1(false, 13664i, true, 755f), Struct_1(true, -23682i, true, 476f), Struct_1(true, 0i, false, -661f), Struct_1(false, -1i, false, 580f), Struct_1(false, 1i, false, 426f), Struct_1(true, 2147483647i, true, -381f), Struct_1(false, -24556i, false, 106f), Struct_1(true, 16112i, true, -258f), Struct_1(true, 13994i, false, 2455f), Struct_1(true, 49410i, true, 2256f), Struct_1(true, -22084i, true, -2015f), Struct_1(false, -38602i, true, 1353f), Struct_1(false, -46089i, true, -150f), Struct_1(true, 2147483647i, false, -274f), Struct_1(false, i32(-2147483648), true, -665f), Struct_1(false, 2147483647i, false, 1063f), Struct_1(true, 2147483647i, true, -931f), Struct_1(true, -33401i, false, -713f), Struct_1(false, -13718i, false, 1159f), Struct_1(true, 0i, false, -1000f), Struct_1(false, i32(-2147483648), true, -1092f), Struct_1(true, 185i, false, -812f), Struct_1(false, 37448i, true, 811f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i ^ arg_1.x, u_input.d), firstLeadingBit(~arg_1.xx)), vec2<i32>(-arg_1.x, arg_1.x), vec2<i32>(u_input.d, arg_1.x)), _wgslsmith_f_op_vec3_f32(ceil(arg_0.xzz)), Struct_2(arg_0.x), vec2<u32>(u_input.c, ~(~u_input.a)));
    var var_1 = Struct_3(-_wgslsmith_mod_vec2_i32(-arg_1.yz, select(arg_1.zz, arg_1.xy, vec2<bool>(false, true))) ^ ~(~vec2<i32>(0i, -23604i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.zzy, vec3<f32>(-1782f, -426f, 877f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(578f, 222f, 799f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1425f, arg_0.x, -1000f), vec3<f32>(133f, arg_0.x, -2768f), vec3<bool>(false, false, true))))))), Struct_2(523f), var_0.d | ~max(var_0.d, var_0.d));
    global0 = 0u;
    var var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 30u)];
    var_0 = Struct_3(vec2<i32>(-(~(~(-2147483647i))), _wgslsmith_mod_i32(select(arg_1.x, countOneBits(var_2.b), false), 5196i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a)) + -1715f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(global1.a, var_0.c.a, 751f))) + arg_0.ywx)), var_0.c, ~var_0.d);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-1905f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)), -908f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(global1.a - var_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, -1376f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1441f * _wgslsmith_f_op_f32(f32(-1f) * -321f)), -121f))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    global1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -901f), _wgslsmith_f_op_f32(arg_3.a - -729f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1808f + 1707f)), -1310f)))));
    global2 = array<Struct_1, 30>();
    let var_0 = !arg_0;
    var var_1 = arg_3.a;
    var var_2 = !var_0;
    return Struct_3(arg_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(551f, global1.a, -1084f, arg_3.a), vec3<i32>(u_input.e, -1i, u_input.e)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, arg_2.b.x, global1.a)), vec3<f32>(179f, 1142f, arg_3.a)))), arg_3, vec2<u32>(reverseBits(firstTrailingBit(max(arg_2.d.x, arg_2.d.x))), abs(~(~u_input.a))));
}

fn func_1(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = func_2(all(vec2<bool>(u_input.c >= 0u, global1.a == arg_0.x)), vec3<bool>(true, true, true), Struct_3(~_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, 11461i), -vec2<i32>(-57826i, u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, arg_0.x, global1.a), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 477f, global1.a), vec3<f32>(1686f, global1.a, -1205f)))), Struct_2(arg_0.x), ~abs(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(0u, 33085u) % vec2<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(-600f - _wgslsmith_f_op_f32(abs(226f)))));
    var var_1 = ~select(~31212u, _wgslsmith_sub_u32(4294967295u, 1u), true);
    var var_2 = Struct_1(true, 5280i, true, _wgslsmith_f_op_f32(-global1.a));
    let var_3 = global2[_wgslsmith_index_u32(var_0.d.x, 30u)];
    let var_4 = var_0.c;
    return !vec4<bool>(true, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a + 640f))) != var_4.a, !(!(1i < u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-17049i, u_input.d, -38617i, i32(-1i) * -2147483647i), select(select(vec4<i32>(u_input.b, u_input.d, u_input.e, u_input.e), min(vec4<i32>(-20720i, u_input.e, -2147483647i, u_input.b), vec4<i32>(0i, 0i, -26407i, 6186i)), true), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 17180i, -2147483647i, u_input.d), vec4<i32>(u_input.e, u_input.d, 0i, u_input.e), vec4<i32>(0i, u_input.e, 30131i, 28521i)), max(vec4<i32>(u_input.d, u_input.b, 0i, u_input.d), vec4<i32>(u_input.e, u_input.b, 2147483647i, u_input.d))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -1545f, global1.a) - vec3<f32>(-485f, 549f, global1.a)))) ^ vec4<i32>(i32(-1i) * -u_input.b, _wgslsmith_add_i32(u_input.b, -u_input.e), ~(i32(-1i) * -2147483647i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 10019i), vec2<i32>(40026i, 453i))));
    var var_1 = global1.a;
    let var_2 = Struct_1(all(!vec2<bool>(any(vec3<bool>(false, true, false)), true)), _wgslsmith_clamp_i32(~u_input.b, firstLeadingBit(-63320i) & var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.x) >> (vec2<u32>(34295u, 0u) % vec2<u32>(32u)), vec2<i32>(-46866i, -2147483647i) & var_0.wy) | (i32(-1i) * -41918i)), true, 1079f);
    var_1 = _wgslsmith_f_op_f32(-global1.a);
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, _wgslsmith_add_u32(~(u_input.a << (u_input.c % 32u)), u_input.a), 0u), vec4<u32>(u_input.c, ~max(96128u, u_input.c >> (u_input.a % 32u)), ~13456u, _wgslsmith_div_u32(u_input.c, 22582u)));
    global1 = Struct_2(-1672f);
    let x = u_input.a;
    s_output = StorageBuffer(24214u >> (_wgslsmith_dot_vec4_u32(~(~var_3), var_3) % 32u), (~(~u_input.c) | var_3.x) << (_wgslsmith_mult_u32(33872u, 0u) % 32u));
}

