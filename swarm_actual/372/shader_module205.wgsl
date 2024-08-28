struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-317f, false, vec3<f32>(1018f, -1403f, 245f), vec3<bool>(true, true, true), vec4<i32>(-20558i, -50635i, 0i, 0i)), vec3<i32>(2147483647i, i32(-2147483648), -22510i), Struct_1(226f, false, vec3<f32>(716f, -520f, -1070f), vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), i32(-2147483648), 50230i, 1i)), 467f, vec2<i32>(1567i, 1i));

var<private> global1: u32;

var<private> global2: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(2188f, -1242f), vec2<f32>(-354f, 1000f), vec2<f32>(-833f, 505f), vec2<f32>(204f, -306f), vec2<f32>(386f, 518f), vec2<f32>(1000f, -220f), vec2<f32>(-551f, -373f), vec2<f32>(-1074f, -260f), vec2<f32>(-196f, -1145f), vec2<f32>(-998f, -1039f), vec2<f32>(-814f, -204f));

var<private> global3: u32 = 103747u;

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(global4.a, true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.c.c)), _wgslsmith_div_vec3_f32(global0.a.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.d, global0.c.a)))), !select(select(select(global4.d, global4.d, global0.c.d.x), select(vec3<bool>(global4.b, global4.d.x, false), vec3<bool>(true, true, global0.c.d.x), global0.c.d), !global0.c.d.x), vec3<bool>(global0.a.d.x, global4.d.x, all(vec3<bool>(true, false, global0.c.b))), global0.c.d.x), countOneBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(global4.e.x, u_input.d, u_input.d, 0i), countOneBits(global0.c.e), vec4<bool>(global0.a.b, false, false, global0.a.d.x)), vec4<i32>(max(global0.a.e.x, global0.a.e.x), 1i, global4.e.x, global0.b.x))));
    global2 = array<vec2<f32>, 11>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-906f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -499f)))))));
    global0 = Struct_2(Struct_1(global0.a.c.x, any(select(vec4<bool>(var_0.d.x, true, global0.a.b, global4.d.x), vec4<bool>(var_0.b, global0.a.b, false, true), select(vec4<bool>(global0.c.d.x, global0.a.b, var_0.d.x, true), vec4<bool>(false, global4.d.x, var_0.d.x, true), vec4<bool>(var_0.b, global4.b, false, var_0.b)))), vec3<f32>(global4.c.x, 677f, _wgslsmith_f_op_f32(global0.c.a + _wgslsmith_div_f32(global0.c.c.x, 1254f))), !var_0.d, -(~firstLeadingBit(var_0.e))), ~(~(-vec3<i32>(global0.b.x, global4.e.x, -1i))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.a.a)), global0.c.c.x), false, vec3<f32>(_wgslsmith_f_op_f32(-1597f - -2787f), var_0.a, var_0.c.x), var_0.d, global0.a.e), _wgslsmith_f_op_f32(-306f + 1f), ~vec2<i32>(reverseBits(-8817i) | var_0.e.x, _wgslsmith_dot_vec3_i32(global0.c.e.wxz << (u_input.e % vec3<u32>(32u)), vec3<i32>(u_input.d, 1i, global0.a.e.x))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.c.x)));
    return var_0.e.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_2(global0.c, -select(vec3<i32>(abs(global0.a.e.x), arg_2.e.x, countOneBits(-53627i)), -global4.e.xyy, vec3<bool>(true, false, true)), Struct_1(global4.a, _wgslsmith_clamp_i32(-1i, arg_2.e.x, 1i | global0.c.e.x) != -_wgslsmith_div_i32(2147483647i, -11315i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c * global4.c) + _wgslsmith_div_vec3_f32(global4.c, global0.a.c))), global4.d, global4.e), -1391f, arg_0.zy);
    global3 = arg_1.x;
    var var_1 = !(!select(select(arg_2.d.zx, var_0.a.d.xx, vec2<bool>(arg_2.b, arg_2.b)), global0.c.d.yz, !(false | global4.b)));
    global2 = array<vec2<f32>, 11>();
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.a + -629f), _wgslsmith_f_op_f32(ceil(global0.c.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.c.x)), var_0.c.c.x))) - vec2<f32>(-643f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-888f)) * var_0.c.a)));
    return Struct_1(_wgslsmith_f_op_f32(ceil(476f)), select(global0.c.d.x, all(vec4<bool>(global4.d.x, true, global0.c.b, true)), global0.d > _wgslsmith_f_op_f32(-1306f - -713f)) & var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-581f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1192f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(504f - arg_2.c.x) + 549f))), arg_2.d, vec4<i32>(-2147483647i, _wgslsmith_mod_i32(-global4.e.x, min(-2147483647i, u_input.d)), 6602i, abs(func_3())));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = arg_3;
    global4 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(927f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(278f, global0.c.c.x, false)), arg_0.a, var_0)))), arg_2.a, global0.a.c, func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, ~19846i, global4.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-26674i, 1i), vec2<i32>(global4.e.x, 10944i))), global4.e), _wgslsmith_sub_vec4_u32(~u_input.b, u_input.b) << (vec4<u32>(1u, _wgslsmith_mult_u32(u_input.e.x, 4294967295u), ~u_input.b.x, 1u) % vec4<u32>(32u)), Struct_1(global4.c.x, arg_3, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), arg_1.a.c)), select(!arg_0.d, !vec3<bool>(arg_0.d.x, arg_0.b, arg_1.c.b), true), arg_1.a.e), firstLeadingBit(select(4294967295u >> (u_input.a % 32u), _wgslsmith_sub_u32(4294967295u, 119500u), all(vec2<bool>(arg_2.a, var_0))))).d, arg_2.c.c.e);
    var var_2 = func_2(func_2(vec4<i32>(-max(68172i, 35894i), global4.e.x, global4.e.x, -(i32(-1i) * -12259i)), ~u_input.b, Struct_1(_wgslsmith_f_op_f32(trunc(1047f)), arg_2.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1568f, 298f, -1000f) - _wgslsmith_div_vec3_f32(global4.c, vec3<f32>(-1614f, global4.a, global4.a))), vec3<bool>(4235i < global4.e.x, false, arg_0.e.x >= 21156i), vec4<i32>(func_3(), global4.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(23666i, 1i, arg_2.b), vec3<i32>(0i, global4.e.x, arg_2.c.c.e.x)), 36799i)), u_input.e.x).e, ~u_input.b >> (u_input.b % vec4<u32>(32u)), func_2(~(arg_0.e << (~u_input.b % vec4<u32>(32u))), min(u_input.b, ~_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.a, u_input.b.x, 4294967295u))), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(73754i, 1i, u_input.c.x, -31563i), arg_1.c.e), vec4<u32>(min(4294967295u, 20045u), u_input.a, _wgslsmith_sub_u32(1u, u_input.b.x), ~88712u), Struct_1(-528f, var_1.b, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.c.x, var_1.a, arg_1.a.c.x))), select(vec3<bool>(false, false, true), vec3<bool>(arg_2.c.c.b, false, true), vec3<bool>(var_1.d.x, var_0, arg_2.c.a.b)), vec4<i32>(1419i, -50040i, 25821i, -2766i)), u_input.b.x), countOneBits(u_input.a)), _wgslsmith_add_u32(u_input.e.x, ~21007u)).d.zy;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1776f, global4.a) * _wgslsmith_f_op_f32(1000f - -932f)))), global0.d);
    return func_2(vec4<i32>(~(i32(-1i) * -1i) ^ _wgslsmith_mult_i32(arg_2.d.e.x << (13270u % 32u), 1i), -(abs(u_input.c.x) | ~u_input.c.x), firstTrailingBit(-(27880i & arg_0.e.x)), ~(0i)), u_input.b, func_2(~_wgslsmith_clamp_vec4_i32(arg_2.c.a.e, ~vec4<i32>(global0.e.x, u_input.d, global4.e.x, -2147483647i), min(vec4<i32>(arg_1.a.e.x, 64589i, var_1.e.x, -85832i), vec4<i32>(arg_2.d.e.x, u_input.c.x, arg_1.b.x, -24756i))), firstTrailingBit(~firstLeadingBit(u_input.b)), func_2(min(~vec4<i32>(14987i, 5033i, global4.e.x, arg_1.a.e.x), firstLeadingBit(vec4<i32>(arg_1.a.e.x, u_input.d, var_1.e.x, arg_2.c.c.e.x))), ~(~u_input.b), arg_2.d, 18927u), ~8703u), u_input.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_1.c.a;
    let var_1 = global4.c;
    let var_2 = func_4(func_2(~arg_0.e, u_input.b, Struct_1(1666f, arg_1.a.d.x, _wgslsmith_f_op_vec3_f32(arg_1.a.c + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1525f, global0.d) * arg_1.c.c)), !(!vec3<bool>(false, arg_1.a.d.x, false)), countOneBits(arg_1.a.e)), _wgslsmith_mult_u32(~36059u, 0u) ^ u_input.a), Struct_2(arg_0, -vec3<i32>(1i, -arg_0.e.x, 15478i & arg_2.e.x), global0.a, -165f, max(~vec2<i32>(arg_0.e.x, -49413i) << (~u_input.e.xz % vec2<u32>(32u)), ~select(global4.e.zy, u_input.c, true))), Struct_3(global4.d.x, i32(-1i) * -2147483647i, arg_1, Struct_1(_wgslsmith_f_op_f32(abs(arg_1.d)), any(func_2(vec4<i32>(global0.e.x, arg_2.e.x, -1i, u_input.c.x), vec4<u32>(u_input.a, u_input.a, 0u, u_input.e.x), Struct_1(-108f, false, vec3<f32>(var_1.x, arg_2.a, arg_1.a.a), global0.a.d, global4.e), u_input.e.x).d), vec3<f32>(672f, _wgslsmith_f_op_f32(arg_0.c.x - global0.a.c.x), _wgslsmith_f_op_f32(abs(global0.a.c.x))), select(!global4.d, func_2(global4.e, u_input.b, arg_0, u_input.e.x).d, global0.c.b), arg_2.e)), true);
    var var_3 = any(select(vec4<bool>(arg_0.b, true, !var_2.b, true), !select(vec4<bool>(arg_0.d.x, false, false, arg_1.a.d.x), !vec4<bool>(arg_0.d.x, global4.d.x, arg_0.b, global4.d.x), vec4<bool>(arg_2.d.x, arg_1.c.d.x, arg_0.b, global4.d.x)), true));
    var var_4 = vec3<bool>(true, global0.c.d.x, true);
    return Struct_2(global0.c, vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, arg_1.a.e.x), _wgslsmith_mod_i32(-15896i, var_2.e.x)), global4.e.x >> ((78141u & firstTrailingBit(u_input.a)) % 32u), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~(-54135i), ~arg_0.e.x, global4.e.x), 0i)), var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(496f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.c.x, -189f)))), 1073f), -_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-41526i, arg_0.e.x), countOneBits(global4.e.xw)), vec2<i32>(-arg_1.e.x, arg_2.e.x)));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.c.x))), arg_1, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1063f, -1919f, global0.c.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.c)) * _wgslsmith_f_op_vec3_f32(global0.c.c + _wgslsmith_f_op_vec3_f32(-global0.a.c))))), !select(func_1(func_4(Struct_1(global0.c.a, global4.d.x, vec3<f32>(global0.c.a, global4.c.x, 592f), vec3<bool>(true, arg_0.c.d.x, false), arg_0.a.e), Struct_2(global0.c, vec3<i32>(47318i, -1i, global0.c.e.x), global0.c, global4.a, vec2<i32>(-67821i, 48137i)), Struct_3(arg_0.a.b, -24754i, arg_0, arg_0.a), global4.d.x), Struct_2(Struct_1(-966f, arg_0.c.b, global4.c, vec3<bool>(true, global0.a.b, arg_0.c.d.x), vec4<i32>(-11994i, -25456i, 2147483647i, global4.e.x)), vec3<i32>(global4.e.x, global4.e.x, 2147483647i), arg_0.a, global0.d, global0.b.zx), func_1(Struct_1(-374f, global4.d.x, vec3<f32>(223f, -1009f, global0.c.a), vec3<bool>(true, arg_1, arg_0.c.b), vec4<i32>(1i, global4.e.x, 2147483647i, -48486i)), arg_0, arg_0.a).c).a.d, global4.d, (u_input.b.x | u_input.a) >= _wgslsmith_mult_u32(u_input.e.x, 74386u)), global0.a.e);
    var var_1 = vec4<u32>(~(~(firstLeadingBit(0u) & _wgslsmith_div_u32(u_input.a, u_input.b.x))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(43231u, ~19773u, u_input.b.x, 1u), vec4<u32>(~u_input.e.x, ~0u, 1u, u_input.b.x)), u_input.b.x, 25708u);
    global4 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2148f * _wgslsmith_f_op_f32(func_4(global0.c, arg_0, Struct_3(true, 1i, Struct_2(var_0, arg_0.c.e.wyx, arg_0.a, -1797f, vec2<i32>(-330i, -33251i)), Struct_1(arg_0.d, true, vec3<f32>(var_0.c.x, global4.a, global0.c.a), arg_0.a.d, vec4<i32>(global4.e.x, global4.e.x, -4213i, 10875i))), true).c.x + _wgslsmith_f_op_f32(553f * arg_0.c.c.x))))), true && !func_1(Struct_1(var_0.a, false, vec3<f32>(global0.a.c.x, var_0.a, -1107f), var_0.d, vec4<i32>(arg_0.e.x, var_0.e.x, var_0.e.x, global0.c.e.x)), arg_0, func_2(vec4<i32>(global0.e.x, global4.e.x, 1i, u_input.d), u_input.b, global0.c, var_1.x)).a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, _wgslsmith_f_op_f32(-global0.a.c.x), 878f)) + global0.a.c), vec3<bool>(var_0.d.x, arg_0.d > -548f, global4.c.x != func_1(func_1(Struct_1(1098f, global0.c.d.x, var_0.c, vec3<bool>(false, true, true), vec4<i32>(u_input.d, 0i, -2147483647i, u_input.c.x)), arg_0, Struct_1(var_0.c.x, false, global0.a.c, global0.c.d, vec4<i32>(arg_0.b.x, global0.c.e.x, global0.c.e.x, -2147483647i))).c, arg_0, func_4(arg_0.a, Struct_2(Struct_1(arg_0.c.c.x, global0.a.d.x, vec3<f32>(var_0.a, -570f, -1377f), var_0.d, arg_0.c.e), vec3<i32>(arg_0.a.e.x, var_0.e.x, global0.b.x), arg_0.a, arg_0.d, vec2<i32>(arg_0.b.x, var_0.e.x)), Struct_3(global4.d.x, global0.b.x, arg_0, Struct_1(arg_0.a.c.x, global4.d.x, global0.a.c, vec3<bool>(true, arg_1, var_0.d.x), vec4<i32>(0i, 6591i, -2147483647i, 33008i))), arg_0.c.b)).c.a), countOneBits(vec4<i32>(select(global4.e.x, arg_0.e.x, any(vec3<bool>(false, arg_0.c.b, true))), firstTrailingBit(func_1(arg_0.c, Struct_2(var_0, arg_0.a.e.yzz, global0.a, 938f, u_input.c), Struct_1(977f, true, vec3<f32>(arg_0.c.a, -1110f, arg_0.a.a), global0.a.d, vec4<i32>(var_0.e.x, global0.e.x, -13174i, 2147483647i))).c.e.x), global0.e.x, 0i)));
    var_1 = vec4<u32>(u_input.a, 62626u, u_input.e.x, max(_wgslsmith_clamp_u32(~firstTrailingBit(0u), ~min(22490u, var_1.x), u_input.b.x), ~27767u));
    global0 = Struct_2(func_4(func_1(func_4(func_4(Struct_1(var_0.a, var_0.b, vec3<f32>(-1000f, 1370f, 570f), global4.d, vec4<i32>(0i, u_input.c.x, -57599i, 24917i)), arg_0, Struct_3(false, u_input.d, arg_0, var_0), arg_0.c.b), func_1(var_0, arg_0, var_0), Struct_3(false, global0.a.e.x, Struct_2(arg_0.a, var_0.e.xww, global0.c, 915f, arg_0.e), arg_0.c), arg_1), arg_0, func_4(Struct_1(1000f, var_0.d.x, vec3<f32>(var_0.c.x, -545f, global0.c.a), vec3<bool>(arg_1, var_0.d.x, arg_0.c.b), var_0.e), Struct_2(Struct_1(866f, arg_0.a.b, arg_0.c.c, vec3<bool>(var_0.b, arg_1, false), vec4<i32>(1i, 44090i, -38699i, global4.e.x)), vec3<i32>(arg_0.a.e.x, 19657i, 0i), Struct_1(global0.d, var_0.d.x, vec3<f32>(global0.a.a, 1120f, global4.a), arg_0.c.d, vec4<i32>(1i, -39843i, global0.b.x, -65228i)), var_0.c.x, arg_0.e), Struct_3(var_0.d.x, global4.e.x, arg_0, var_0), any(global4.d))).c, func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -228f), !var_0.d.x, _wgslsmith_f_op_vec3_f32(select(global4.c, vec3<f32>(global4.a, var_0.c.x, -210f), vec3<bool>(arg_0.a.b, false, global0.c.d.x))), global0.c.d, ~vec4<i32>(8467i, -2147483647i, global0.a.e.x, arg_0.b.x)), arg_0, func_2(select(arg_0.a.e, global4.e, vec4<bool>(var_0.b, false, arg_0.a.b, true)), ~vec4<u32>(u_input.e.x, 7154u, 1u, var_1.x), func_2(vec4<i32>(-64933i, arg_0.b.x, arg_0.c.e.x, -14557i), u_input.b, Struct_1(global4.a, true, global0.c.c, global0.a.d, vec4<i32>(-19023i, -1i, 1i, -1680i)), 90623u), 21565u)), Struct_3(select(true, !global4.d.x, true), _wgslsmith_clamp_i32(1i, abs(-2147483647i), 2147483647i), Struct_2(global0.c, global0.b, Struct_1(-477f, var_0.b, vec3<f32>(global4.c.x, global4.a, -734f), arg_0.a.d, vec4<i32>(56906i, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_div_f32(1000f, arg_0.c.a), global0.a.e.zz), func_4(arg_0.c, func_1(arg_0.a, Struct_2(Struct_1(global0.c.c.x, false, arg_0.c.c, arg_0.a.d, vec4<i32>(var_0.e.x, u_input.d, -34622i, var_0.e.x)), global0.c.e.xxw, global0.c, global4.a, vec2<i32>(19840i, -42250i)), Struct_1(var_0.a, arg_1, arg_0.c.c, vec3<bool>(var_0.b, arg_1, false), vec4<i32>(6149i, global0.c.e.x, -22296i, 8364i))), Struct_3(true, -56022i, Struct_2(global0.a, vec3<i32>(var_0.e.x, global0.b.x, 31892i), arg_0.a, -615f, u_input.c), Struct_1(global4.c.x, false, arg_0.c.c, vec3<bool>(false, true, arg_1), var_0.e)), true)), func_4(global0.c, arg_0, Struct_3(arg_0.c.b, func_4(Struct_1(global4.a, global4.d.x, vec3<f32>(arg_0.a.a, global0.d, 1014f), vec3<bool>(false, arg_0.a.d.x, global0.a.b), global4.e), Struct_2(var_0, arg_0.c.e.yxz, Struct_1(497f, true, vec3<f32>(-2189f, 2571f, 1460f), vec3<bool>(false, var_0.b, false), global0.a.e), -2458f, vec2<i32>(global4.e.x, u_input.d)), Struct_3(true, 22919i, arg_0, Struct_1(var_0.c.x, true, vec3<f32>(arg_0.a.a, global0.c.a, -805f), global0.c.d, var_0.e)), global4.d.x).e.x, arg_0, func_1(Struct_1(1485f, var_0.d.x, vec3<f32>(1000f, 363f, 445f), vec3<bool>(false, false, arg_1), vec4<i32>(1i, -2229i, var_0.e.x, 0i)), arg_0, Struct_1(110f, true, vec3<f32>(var_0.a, 315f, global4.c.x), vec3<bool>(global0.a.b, false, arg_0.a.d.x), var_0.e)).a), true).d.x), min(vec3<i32>(countOneBits(min(0i, 39895i)), u_input.c.x, select(func_4(Struct_1(global0.a.c.x, arg_0.a.d.x, global0.a.c, vec3<bool>(true, arg_1, var_0.b), var_0.e), Struct_2(Struct_1(-1061f, arg_1, arg_0.a.c, arg_0.c.d, var_0.e), global4.e.xyx, Struct_1(-1992f, false, global0.c.c, var_0.d, global4.e), 1653f, u_input.c), Struct_3(var_0.d.x, arg_0.c.e.x, arg_0, var_0), var_0.d.x).e.x, _wgslsmith_mult_i32(-1i, global0.c.e.x), !arg_1)), vec3<i32>(-u_input.c.x, 1i, -2699i) & arg_0.a.e.zxz), global0.a, var_0.a, vec2<i32>(2147483647i, global0.b.x));
    return Struct_3(arg_0.a.b, select(_wgslsmith_mult_i32(func_2(vec4<i32>(-49696i, -3092i, global4.e.x, 0i), u_input.b, var_0, u_input.e.x).e.x ^ _wgslsmith_sub_i32(arg_0.b.x, 19103i), 0i), var_0.e.x, global0.c.b), func_1(func_2(-global0.a.e, min(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(u_input.a, var_1.x, u_input.e.x, 10587u)), ~u_input.b), func_2(vec4<i32>(-2147483647i, global0.b.x, arg_0.b.x, -51091i), u_input.b, func_1(global0.c, arg_0, Struct_1(-739f, global0.c.b, vec3<f32>(789f, -1000f, 432f), global0.a.d, vec4<i32>(global0.a.e.x, global4.e.x, 4696i, arg_0.c.e.x))).a, 10343u), 30691u), func_1(global0.c, arg_0, var_0), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1214f - -881f) - _wgslsmith_f_op_f32(trunc(arg_0.d))), false, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.a, global4.a, 1000f))), !func_2(global4.e, vec4<u32>(u_input.a, 23508u, 1u, 19445u), global0.a, var_1.x).d, ~global4.e)), func_2(vec4<i32>(firstTrailingBit(var_0.e.x), _wgslsmith_mult_i32(global4.e.x, 2147483647i), -2147483647i, 7456i) ^ _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(16408i, global4.e.x, -20287i, -12376i)), var_0.e ^ vec4<i32>(var_0.e.x, global4.e.x, global0.e.x, -2147483647i)), ~u_input.b, func_2(func_2(arg_0.c.e, u_input.b, global0.a, var_1.x).e, u_input.b, func_2(vec4<i32>(-36785i, -2147483647i, 0i, global4.e.x), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b), func_4(var_0, Struct_2(Struct_1(820f, true, global4.c, arg_0.a.d, vec4<i32>(u_input.c.x, u_input.d, var_0.e.x, 1i)), global4.e.xzx, arg_0.c, arg_0.d, vec2<i32>(var_0.e.x, -52679i)), Struct_3(false, var_0.e.x, Struct_2(var_0, var_0.e.wzy, var_0, global0.a.a, arg_0.c.e.yw), Struct_1(arg_0.c.c.x, global0.c.d.x, global0.a.c, var_0.d, vec4<i32>(-2147483647i, 30710i, 16395i, -3741i))), arg_0.c.d.x), var_1.x), var_1.x), 1u));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: vec2<f32>) -> vec4<bool> {
    global4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(796f, 1000f))), all(arg_2.c.c.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.x, global4.a, 718f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, 380f, 823f)), false))) + _wgslsmith_f_op_vec3_f32(max(arg_0.c, global4.c))), vec3<bool>(!global0.a.d.x, arg_2.d.c.x >= _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(global4.a * -371f)), u_input.d == _wgslsmith_mult_i32(reverseBits(global4.e.x), arg_0.e.x)), _wgslsmith_add_vec4_i32(select(~abs(vec4<i32>(global4.e.x, global4.e.x, -788i, 0i)), arg_2.c.a.e, !select(vec4<bool>(arg_0.d.x, global4.d.x, false, global0.a.b), vec4<bool>(true, false, arg_2.d.d.x, arg_0.b), true)), select(~vec4<i32>(-1i, global0.c.e.x, 26420i, arg_2.c.e.x), vec4<i32>(u_input.c.x, 17617i, global0.a.e.x, arg_2.c.a.e.x), select(vec4<bool>(true, false, false, global4.d.x), vec4<bool>(arg_0.d.x, arg_1, arg_1, true), vec4<bool>(arg_1, arg_2.d.b, true, arg_2.c.a.d.x))) >> (vec4<u32>(~0u, 4294967295u, _wgslsmith_add_u32(u_input.e.x, 1u), 12754u >> (u_input.a % 32u)) % vec4<u32>(32u))));
    let var_0 = u_input.e.yx << (~max(vec2<u32>(u_input.a, u_input.b.x ^ 46280u), vec2<u32>(13403u, ~51573u)) % vec2<u32>(32u));
    let var_1 = u_input.b;
    let var_2 = vec3<i32>(-1i) * -(~select(~global0.b, vec3<i32>(arg_2.b, 7139i, global0.a.e.x), true));
    let var_3 = (~(~var_0.x) | select(0u, u_input.b.x, all(vec2<bool>(false, global4.b)))) & min(abs(1u), min(u_input.a, firstTrailingBit(~u_input.a)));
    return select(vec4<bool>(arg_0.d.x, global4.d.x, !all(arg_0.d.yy), true), select(select(select(vec4<bool>(arg_0.b, true, true, true), !vec4<bool>(global0.a.b, false, arg_0.d.x, false), arg_1), select(select(vec4<bool>(true, true, arg_0.d.x, true), vec4<bool>(true, arg_2.c.a.b, false, false), false), select(vec4<bool>(arg_1, false, arg_0.d.x, arg_2.a), vec4<bool>(arg_1, arg_0.b, false, arg_2.d.b), global4.b), all(global4.d)), !select(vec4<bool>(true, false, false, arg_0.b), vec4<bool>(false, true, true, false), arg_1)), vec4<bool>(arg_1, arg_0.b, max(var_2.x, global4.e.x) < -25078i, true), !vec4<bool>(false, any(arg_0.d), global0.c.b, arg_0.d.x)), false);
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = ~(-(~vec2<i32>(func_1(global0.a, Struct_2(Struct_1(global4.c.x, global0.c.d.x, vec3<f32>(-1394f, -830f, global0.a.a), global4.d, vec4<i32>(25712i, global4.e.x, arg_2, 62559i)), vec3<i32>(1i, arg_2, u_input.d), Struct_1(607f, true, vec3<f32>(global0.c.c.x, arg_1.a, -365f), vec3<bool>(true, global0.c.d.x, global0.a.b), arg_1.e), global4.a, vec2<i32>(-20948i, -51476i)), arg_1).c.e.x, 1i)));
    global1 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global4.c.x, 253f))) * -137f);
    var var_2 = func_6(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + _wgslsmith_f_op_f32(min(global0.d, 1325f)))), false, _wgslsmith_f_op_vec3_f32(global0.c.c + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1589f, -792f, -296f), func_5(Struct_2(global0.a, vec3<i32>(-29121i, -17161i, global4.e.x), Struct_1(arg_1.c.x, false, arg_1.c, global0.c.d, global0.a.e), arg_1.a, vec2<i32>(-11481i, global4.e.x)), global0.c.d.x).c.c.c))), vec3<bool>(arg_1.d.x, arg_1.d.x, func_6(Struct_1(var_1, true, global4.c, global4.d, global4.e), true, Struct_3(true, global0.a.e.x, Struct_2(global0.c, global0.c.e.zyz, Struct_1(-1185f, arg_1.d.x, vec3<f32>(global0.c.a, arg_1.a, 299f), global4.d, global4.e), -804f, arg_1.e.xy), Struct_1(global4.a, global0.a.d.x, arg_1.c, global0.c.d, global4.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, 694f))).x), -_wgslsmith_clamp_vec4_i32(~global4.e, global0.c.e, max(vec4<i32>(6197i, -1i, -1i, 45924i), global0.c.e))), !arg_1.b, Struct_3(false, ~_wgslsmith_dot_vec4_i32(arg_1.e, firstTrailingBit(global4.e)), Struct_2(func_5(Struct_2(Struct_1(2771f, global0.a.d.x, global0.c.c, vec3<bool>(true, global4.d.x, false), vec4<i32>(0i, -40823i, -2147483647i, arg_1.e.x)), global0.c.e.yxz, Struct_1(var_1, global4.b, global4.c, vec3<bool>(global4.b, global4.d.x, arg_0.x), arg_1.e), var_1, vec2<i32>(arg_1.e.x, -8081i)), arg_1.b).c.a, -(arg_1.e.yxw | vec3<i32>(-46814i, 19029i, global4.e.x)), global0.a, global0.a.a, u_input.c), func_1(arg_1, func_5(Struct_2(Struct_1(-231f, false, vec3<f32>(-640f, global0.c.c.x, 436f), arg_0.wzx, vec4<i32>(arg_2, -73716i, arg_2, -32909i)), vec3<i32>(arg_1.e.x, var_0.x, -13594i), global0.c, 271f, vec2<i32>(36224i, arg_2)), global4.d.x).c, func_4(global0.c, func_1(arg_1, Struct_2(global0.a, vec3<i32>(arg_1.e.x, arg_2, global4.e.x), arg_1, var_1, vec2<i32>(-20796i, global0.a.e.x)), Struct_1(-316f, arg_0.x, vec3<f32>(1840f, arg_1.a, 611f), vec3<bool>(global4.b, true, arg_1.d.x), global0.c.e)), func_5(Struct_2(global0.c, vec3<i32>(u_input.c.x, 19132i, 0i), arg_1, -1169f, vec2<i32>(var_0.x, -2147483647i)), arg_1.d.x), any(global4.d.zy))).c), _wgslsmith_f_op_vec2_f32(-arg_1.c.xy)).x;
    let var_3 = func_1(Struct_1(func_5(Struct_2(Struct_1(1340f, true, vec3<f32>(1000f, -753f, global0.d), vec3<bool>(global0.a.d.x, global0.a.d.x, global4.d.x), global0.c.e), arg_1.e.wxz, arg_1, _wgslsmith_f_op_f32(1725f * arg_1.a), abs(vec2<i32>(var_0.x, -22066i))), select(1u < u_input.b.x, !global4.b, func_6(Struct_1(-996f, false, global4.c, vec3<bool>(true, arg_0.x, arg_1.d.x), vec4<i32>(-2159i, 20986i, 23774i, 33891i)), true, Struct_3(false, arg_2, Struct_2(Struct_1(1569f, true, vec3<f32>(global0.a.a, -541f, 1016f), global0.a.d, vec4<i32>(0i, -10884i, arg_1.e.x, 26176i)), global4.e.zyx, global0.c, arg_1.a, global0.b.xy), global0.c), vec2<f32>(global0.c.c.x, 548f)).x)).d.a, global0.c.b, func_5(func_1(Struct_1(224f, false, vec3<f32>(var_1, global4.c.x, var_1), global4.d, vec4<i32>(-224i, var_0.x, -53821i, arg_2)), Struct_2(global0.c, global0.b, arg_1, -1312f, vec2<i32>(u_input.d, -1i)), global0.c), global0.c.d.x).d.c, vec3<bool>(!func_4(Struct_1(global0.c.a, true, global4.c, arg_1.d, arg_1.e), Struct_2(arg_1, vec3<i32>(arg_2, arg_1.e.x, var_0.x), global0.a, global4.a, vec2<i32>(arg_1.e.x, 1i)), Struct_3(false, global4.e.x, Struct_2(Struct_1(global0.d, arg_1.b, global0.a.c, global0.c.d, vec4<i32>(arg_2, -4205i, global4.e.x, 15425i)), vec3<i32>(global0.c.e.x, var_0.x, -56332i), arg_1, global0.a.a, vec2<i32>(global4.e.x, var_0.x)), arg_1), global4.d.x).d.x, any(func_4(Struct_1(-249f, global0.c.b, vec3<f32>(-504f, var_1, 1488f), global0.a.d, vec4<i32>(var_0.x, arg_2, arg_1.e.x, arg_1.e.x)), Struct_2(Struct_1(global0.c.a, false, vec3<f32>(var_1, 744f, 1000f), global0.a.d, vec4<i32>(-1i, 0i, arg_2, -14055i)), global4.e.wyz, global0.a, global0.d, vec2<i32>(1541i, 3967i)), Struct_3(false, -10399i, Struct_2(global0.a, vec3<i32>(global0.b.x, arg_1.e.x, global0.a.e.x), Struct_1(128f, arg_1.b, global4.c, vec3<bool>(global4.b, arg_1.d.x, true), vec4<i32>(-7161i, -2147483647i, 46422i, global0.b.x)), -640f, u_input.c), Struct_1(-393f, true, vec3<f32>(global0.a.c.x, var_1, var_1), vec3<bool>(false, false, global0.a.d.x), arg_1.e)), false).d.xz), false), global0.a.e), Struct_2(global0.c, arg_1.e.zxx, Struct_1(arg_1.a, arg_0.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(global4.a + var_1), _wgslsmith_f_op_f32(var_1 * 3110f)), select(vec3<bool>(true, true, true), !vec3<bool>(global4.d.x, true, global4.b), vec3<bool>(false, arg_0.x, true)), global4.e), _wgslsmith_f_op_f32(-global4.a), func_4(func_1(func_2(vec4<i32>(arg_2, -51169i, arg_1.e.x, var_0.x), u_input.b, global0.a, 41207u), Struct_2(Struct_1(1286f, true, vec3<f32>(var_1, -1533f, global4.c.x), arg_0.yyx, vec4<i32>(arg_1.e.x, u_input.c.x, u_input.c.x, global4.e.x)), vec3<i32>(2147483647i, arg_1.e.x, u_input.d), arg_1, arg_1.a, global0.a.e.wz), global0.c).a, Struct_2(func_1(global0.c, Struct_2(global0.c, vec3<i32>(-28363i, 0i, -24471i), global0.c, -2615f, global4.e.ww), Struct_1(global4.a, false, vec3<f32>(361f, 1000f, var_1), global4.d, arg_1.e)).c, -global4.e.yzw, func_4(global0.c, Struct_2(Struct_1(var_1, arg_0.x, vec3<f32>(-1933f, 1605f, global0.d), vec3<bool>(false, arg_1.b, arg_1.d.x), global4.e), global4.e.xww, arg_1, -224f, u_input.c), Struct_3(global0.a.d.x, var_0.x, Struct_2(Struct_1(global4.a, global0.a.b, global0.a.c, vec3<bool>(true, arg_1.d.x, global4.b), vec4<i32>(u_input.d, arg_2, -1i, 24837i)), global0.b, global0.a, global4.a, u_input.c), arg_1), global0.a.b), 209f, global4.e.xw), Struct_3(func_4(global0.a, Struct_2(Struct_1(-315f, arg_1.d.x, global0.a.c, arg_1.d, arg_1.e), vec3<i32>(-2147483647i, 1i, -1i), arg_1, var_1, arg_1.e.yw), Struct_3(true, arg_2, Struct_2(arg_1, global0.a.e.xzx, arg_1, 902f, u_input.c), arg_1), true).d.x, _wgslsmith_div_i32(37822i, global4.e.x), Struct_2(Struct_1(-124f, global4.b, vec3<f32>(global0.a.c.x, arg_1.a, 158f), arg_1.d, vec4<i32>(arg_1.e.x, u_input.c.x, global4.e.x, 57267i)), global0.b, global0.a, 550f, arg_1.e.zz), func_5(Struct_2(Struct_1(arg_1.a, global0.a.d.x, vec3<f32>(var_1, global0.a.a, 313f), vec3<bool>(true, arg_1.d.x, true), vec4<i32>(arg_1.e.x, var_0.x, 2147483647i, global0.a.e.x)), arg_1.e.yzx, Struct_1(global4.a, arg_0.x, arg_1.c, vec3<bool>(true, global0.a.d.x, false), global0.c.e), global4.a, arg_1.e.yy), true).d), any(!arg_1.d)).e.zx), func_5(func_1(Struct_1(_wgslsmith_f_op_f32(round(global0.a.a)), u_input.a < u_input.a, func_1(arg_1, Struct_2(Struct_1(global4.a, global0.c.d.x, vec3<f32>(-1293f, arg_1.c.x, 2117f), arg_1.d, vec4<i32>(arg_2, u_input.d, arg_2, global0.b.x)), global4.e.zxw, global0.c, 1179f, arg_1.e.wx), arg_1).c.c, vec3<bool>(true, true, true), vec4<i32>(-54968i, arg_2, var_0.x, u_input.c.x)), func_5(Struct_2(Struct_1(global4.c.x, true, vec3<f32>(global0.c.c.x, 2041f, -125f), vec3<bool>(true, true, global0.c.d.x), vec4<i32>(global4.e.x, 0i, var_0.x, global0.e.x)), vec3<i32>(arg_2, arg_1.e.x, global4.e.x), global0.c, 1048f, vec2<i32>(4865i, 14896i)), true).c, global0.a), global0.c.b).d);
    return _wgslsmith_add_u32(_wgslsmith_mult_u32(~6316u, 0u), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_7(func_6(global0.c, any(!vec3<bool>(true, true, global4.b)), func_5(func_1(Struct_1(global0.a.c.x, global4.b, global0.c.c, vec3<bool>(false, false, global4.b), global0.c.e), Struct_2(Struct_1(global4.a, global0.c.d.x, global4.c, vec3<bool>(true, global0.c.b, global4.d.x), global0.c.e), global0.c.e.zwz, global0.a, global4.a, vec2<i32>(u_input.d, global4.e.x)), Struct_1(-1000f, global0.c.b, global4.c, vec3<bool>(true, global4.b, global4.d.x), global0.c.e)), global0.c.b), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1072f, -292f)))), global0.c, _wgslsmith_div_i32(global4.e.x, -global0.b.x));
    var var_1 = Struct_3(func_2(~(~global0.c.e), (vec4<u32>(u_input.a, 4294967295u, u_input.b.x, u_input.a) | u_input.b) | _wgslsmith_add_vec4_u32(u_input.b, u_input.b), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_6(global0.c, global0.a.d.x, Struct_3(global0.c.b, 0i, Struct_2(global0.a, vec3<i32>(global0.b.x, 0i, u_input.c.x), Struct_1(global4.c.x, false, vec3<f32>(-718f, global4.a, global0.a.a), global4.d, global0.a.e), -1000f, vec2<i32>(5232i, 2147483647i)), Struct_1(2027f, global0.c.d.x, vec3<f32>(1351f, global4.a, 482f), global4.d, global4.e)), global0.c.c.zy).x, global4.c, select(global4.d, vec3<bool>(false, global4.b, true), global4.d), ~global0.a.e), ~select(4294967295u, u_input.a, global0.c.d.x)).d.x == any(vec3<bool>(!global0.a.d.x, !global0.c.b, select(global0.a.b, global4.d.x, true))), -2147483647i, func_1(func_1(global0.c, Struct_2(Struct_1(global0.d, false, global4.c, vec3<bool>(true, global4.b, global4.b), vec4<i32>(-2147483647i, -2147483647i, u_input.c.x, global4.e.x)), ~vec3<i32>(global0.e.x, global0.c.e.x, u_input.d), Struct_1(global0.d, false, vec3<f32>(711f, global0.d, -853f), global0.c.d, global0.c.e), global0.a.c.x, ~vec2<i32>(global0.a.e.x, 41230i)), func_1(Struct_1(global4.c.x, global0.c.b, vec3<f32>(global0.c.a, global4.a, 763f), vec3<bool>(global0.a.d.x, false, global4.d.x), global0.a.e), Struct_2(global0.c, global0.a.e.xyx, global0.a, global4.c.x, u_input.c), Struct_1(global0.a.a, global0.c.d.x, global4.c, vec3<bool>(global4.b, false, global4.d.x), global4.e)).a).c, func_1(func_4(Struct_1(-735f, global0.c.b, vec3<f32>(global0.c.a, global4.a, -628f), global0.a.d, global4.e), Struct_2(global0.c, global4.e.xxy, global0.a, -498f, global4.e.xw), Struct_3(global0.c.d.x, 27034i, Struct_2(Struct_1(global4.a, global0.a.b, vec3<f32>(969f, 2610f, global4.c.x), global4.d, global0.a.e), vec3<i32>(global0.e.x, u_input.d, u_input.d), global0.c, -948f, global0.a.e.zy), global0.c), true), Struct_2(func_5(Struct_2(global0.a, global4.e.wzx, Struct_1(global0.a.c.x, global4.b, vec3<f32>(641f, global4.a, -421f), vec3<bool>(true, false, global0.a.b), vec4<i32>(global0.a.e.x, global0.c.e.x, global0.e.x, 1i)), global4.c.x, global0.a.e.xz), global0.c.b).d, vec3<i32>(global4.e.x, global4.e.x, global0.e.x), func_4(global0.c, Struct_2(Struct_1(-215f, global0.c.b, vec3<f32>(940f, -521f, global0.c.a), global0.a.d, vec4<i32>(global4.e.x, global0.a.e.x, -1i, global0.e.x)), global0.b, Struct_1(434f, false, global4.c, global4.d, vec4<i32>(-37526i, global0.e.x, -57172i, global0.a.e.x)), global0.a.a, global0.a.e.xw), Struct_3(true, -29969i, Struct_2(Struct_1(global4.a, false, vec3<f32>(924f, -268f, global0.c.c.x), global4.d, vec4<i32>(0i, global4.e.x, global0.b.x, -53038i)), global0.b, global0.c, -818f, vec2<i32>(global0.b.x, global0.b.x)), global0.a), global4.b), 282f, u_input.c >> (u_input.e.xz % vec2<u32>(32u))), Struct_1(640f, false, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(328f, global0.d, global0.a.c.x), vec3<f32>(-386f, 675f, -136f))), vec3<bool>(global0.a.d.x, false, global0.a.b), firstLeadingBit(global4.e))), global0.c), func_4(func_1(Struct_1(_wgslsmith_f_op_f32(round(1469f)), !global0.c.d.x, _wgslsmith_f_op_vec3_f32(global4.c + vec3<f32>(1000f, 372f, global0.a.a)), func_5(Struct_2(global0.a, vec3<i32>(-1i, global0.e.x, 0i), Struct_1(-486f, true, vec3<f32>(684f, global0.d, -837f), vec3<bool>(true, global4.b, false), global0.a.e), global0.a.a, u_input.c), false).d.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c.e.x, 0i, u_input.c.x, 1i), global0.a.e, global4.e)), func_1(global0.a, func_1(Struct_1(global4.c.x, global4.b, global0.c.c, global4.d, global4.e), Struct_2(Struct_1(global0.d, false, global4.c, global4.d, global0.a.e), global0.a.e.wyy, Struct_1(128f, false, vec3<f32>(global0.d, global0.d, 738f), vec3<bool>(false, false, global4.d.x), vec4<i32>(global4.e.x, -35225i, 0i, global0.a.e.x)), 886f, vec2<i32>(u_input.d, -33127i)), Struct_1(global4.a, false, global0.c.c, vec3<bool>(false, true, global4.d.x), global4.e)), global0.a), Struct_1(-190f, global0.c.d.x, _wgslsmith_f_op_vec3_f32(-global4.c), vec3<bool>(global4.b, true, true), global0.a.e)).a, Struct_2(Struct_1(431f, global0.c.b, vec3<f32>(444f, global4.a, global0.a.c.x), vec3<bool>(global4.d.x, global4.b, global4.d.x), global4.e), _wgslsmith_add_vec3_i32(-vec3<i32>(global0.e.x, u_input.d, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, global0.c.e.x, global4.e.x), global0.a.e.zwz)), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f - 400f)), global4.e.xw), Struct_3(1595f >= global0.d, func_1(global0.c, Struct_2(global0.c, global0.b, global0.a, -1207f, u_input.c), global0.a).c.e.x, Struct_2(global0.c, func_4(global0.a, Struct_2(Struct_1(-587f, global0.c.b, global4.c, vec3<bool>(false, false, true), vec4<i32>(global0.c.e.x, global0.b.x, 34922i, -11436i)), vec3<i32>(global4.e.x, global4.e.x, global0.a.e.x), global0.a, -590f, u_input.c), Struct_3(global4.b, -1i, Struct_2(Struct_1(1001f, false, vec3<f32>(global4.a, -766f, global4.a), vec3<bool>(global0.a.b, global4.b, true), global4.e), global0.a.e.wzz, Struct_1(-451f, false, global4.c, vec3<bool>(false, global0.c.b, global0.a.d.x), global4.e), -376f, vec2<i32>(-55i, 47515i)), global0.c), true).e.xyw, global0.a, global4.a, _wgslsmith_clamp_vec2_i32(u_input.c, global4.e.zy, vec2<i32>(global4.e.x, global0.c.e.x))), func_2(-global0.c.e, vec4<u32>(u_input.e.x, 6388u, 74359u, u_input.b.x), Struct_1(global4.a, false, vec3<f32>(global0.c.a, global4.c.x, 781f), global0.c.d, global0.c.e), 26899u)), ~(~7021i) != u_input.c.x));
    let var_2 = func_4(global0.c, Struct_2(Struct_1(global4.a, u_input.c.x >= _wgslsmith_clamp_i32(u_input.c.x, 4076i, var_1.c.e.x), _wgslsmith_f_op_vec3_f32(max(global4.c, _wgslsmith_f_op_vec3_f32(sign(global4.c)))), var_1.c.c.d, var_1.d.e), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.e.x, 1444i, 0i, u_input.c.x), vec4<i32>(global0.c.e.x, u_input.d, -2147483647i, -27566i))), reverseBits(vec3<i32>(-32975i, global4.e.x, var_1.b))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)), var_1.a, vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.c.x), _wgslsmith_f_op_f32(global4.c.x * global4.a), -972f), var_1.c.c.d, -countOneBits(global4.e)), _wgslsmith_f_op_f32(var_1.d.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a.c.x))), reverseBits(~var_1.c.b.xz)), func_5(Struct_2(func_4(Struct_1(759f, false, global4.c, vec3<bool>(true, true, global0.a.b), global0.a.e), func_1(Struct_1(980f, global4.d.x, vec3<f32>(global4.c.x, global0.a.a, global0.d), vec3<bool>(var_1.a, false, false), var_1.d.e), Struct_2(Struct_1(-442f, var_1.d.d.x, vec3<f32>(global4.c.x, global4.a, global4.c.x), vec3<bool>(false, true, global4.d.x), global0.c.e), global0.c.e.xxy, Struct_1(var_1.d.a, global0.c.b, vec3<f32>(var_1.c.c.a, global4.a, -184f), global0.c.d, vec4<i32>(global0.a.e.x, 25815i, -18518i, global0.e.x)), -234f, u_input.c), var_1.c.a), func_5(Struct_2(Struct_1(var_1.d.a, global0.a.b, vec3<f32>(global4.c.x, 498f, -1000f), vec3<bool>(global4.b, global4.b, true), var_1.d.e), vec3<i32>(2147483647i, u_input.c.x, u_input.d), var_1.c.a, -1000f, vec2<i32>(-13720i, -2147483647i)), global4.b), !global4.b), countOneBits(firstTrailingBit(var_1.c.b)), global0.a, 362f, ~firstLeadingBit(u_input.c)), all(vec3<bool>(global4.b && true, false, !global0.a.b))), true);
    var var_3 = global0.c.c.yx;
    global1 = u_input.a;
    var var_4 = -(~select(-vec3<i32>(global0.c.e.x, 0i, var_1.c.c.e.x), ~max(vec3<i32>(var_1.b, -1i, var_2.e.x), vec3<i32>(-2147483647i, u_input.d, -49145i)), true));
    var_1 = func_5(Struct_2(Struct_1(var_1.c.c.c.x, any(global0.c.d.zz), _wgslsmith_f_op_vec3_f32(vec3<f32>(-231f, global4.a, 895f) + global4.c), func_5(var_1.c, func_4(Struct_1(var_2.a, false, vec3<f32>(-489f, -102f, global4.a), vec3<bool>(false, true, global4.d.x), var_1.d.e), var_1.c, Struct_3(var_1.c.c.d.x, var_2.e.x, Struct_2(Struct_1(964f, false, vec3<f32>(-1000f, var_3.x, global4.a), global4.d, vec4<i32>(var_1.c.e.x, global0.b.x, global4.e.x, var_4.x)), vec3<i32>(-39051i, 0i, -2147483647i), Struct_1(-1764f, false, var_2.c, global0.a.d, vec4<i32>(31045i, global4.e.x, global0.b.x, -4687i)), global0.c.c.x, global0.a.e.zx), var_2), global0.a.b).d.x).d.d, var_1.c.c.e), vec3<i32>(func_5(Struct_2(var_1.c.c, vec3<i32>(var_4.x, u_input.c.x, var_2.e.x), Struct_1(2115f, true, var_1.c.c.c, vec3<bool>(var_1.d.d.x, true, false), vec4<i32>(-1i, -16748i, 29425i, 13591i)), 260f, var_4.xx), false).c.c.e.x & (-1i >> (u_input.a % 32u)), select(1i, abs(30741i), var_1.d.b), u_input.c.x), func_1(Struct_1(281f, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 1228f, var_3.x) + vec3<f32>(396f, var_2.a, 1310f)), !vec3<bool>(global4.b, global0.a.d.x, var_2.b), vec4<i32>(var_1.d.e.x, global0.a.e.x, var_4.x, 39423i)), var_1.c, func_4(Struct_1(var_2.a, global4.b, vec3<f32>(var_3.x, 1190f, global0.c.c.x), var_2.d, var_2.e), func_5(var_1.c, true).c, Struct_3(true, var_1.b, Struct_2(Struct_1(var_2.a, true, var_1.d.c, var_1.c.a.d, vec4<i32>(var_4.x, var_1.c.a.e.x, var_2.e.x, global4.e.x)), vec3<i32>(var_4.x, u_input.d, var_2.e.x), var_2, -381f, u_input.c), Struct_1(var_3.x, true, global4.c, global4.d, vec4<i32>(var_2.e.x, 46259i, global4.e.x, var_1.c.a.e.x))), true)).c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.a.c.x + global4.a), _wgslsmith_f_op_f32(-631f * global4.a))), vec2<i32>(1i, firstLeadingBit(_wgslsmith_dot_vec2_i32(global0.b.xy, vec2<i32>(-27016i, global4.e.x))))), false);
    var var_5 = func_1(var_2, func_5(Struct_2(Struct_1(var_2.c.x, true == global0.c.b, global0.c.c, func_2(vec4<i32>(2147483647i, var_2.e.x, 5067i, 21785i), vec4<u32>(37425u, u_input.e.x, u_input.a, u_input.e.x), global0.a, u_input.a).d, global4.e), countOneBits(global0.a.e.zzw), func_2(-vec4<i32>(-1i, 18891i, 14267i, 2147483647i), u_input.b, var_1.d, ~u_input.e.x), var_3.x, max(global4.e.wy, select(vec2<i32>(9226i, -23530i), vec2<i32>(-10894i, var_4.x), vec2<bool>(var_2.d.x, global0.a.b)))), !all(!vec3<bool>(global4.d.x, false, global4.b))).c, Struct_1(-1667f, all(vec2<bool>(false || global4.b, func_6(Struct_1(417f, true, vec3<f32>(-780f, global0.a.c.x, var_1.d.c.x), var_2.d, var_1.c.c.e), true, Struct_3(global0.c.b, global4.e.x, var_1.c, var_2), vec2<f32>(363f, global0.c.c.x)).x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -626f), global4.c.x, -613f), !var_1.c.c.d, var_1.d.e)).c;
    var_5 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.a, 32893u), vec2<i32>(u_input.c.x, _wgslsmith_div_i32(~1i, var_1.c.c.e.x)), 0u & (abs(_wgslsmith_mod_u32(u_input.a, 50570u)) >> ((~19622u << (min(1u, 0u) % 32u)) % 32u)), ~(-1i));
}

