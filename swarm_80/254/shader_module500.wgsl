struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(Struct_3(-1459f)), Struct_5(Struct_3(436f)), Struct_5(Struct_3(764f)), Struct_5(Struct_3(-1002f)), Struct_5(Struct_3(-1590f)), Struct_5(Struct_3(-191f)), Struct_5(Struct_3(273f)), Struct_5(Struct_3(-1000f)), Struct_5(Struct_3(-203f)), Struct_5(Struct_3(-1000f)), Struct_5(Struct_3(896f)), Struct_5(Struct_3(-283f)), Struct_5(Struct_3(319f)), Struct_5(Struct_3(-1269f)), Struct_5(Struct_3(428f)), Struct_5(Struct_3(1881f)), Struct_5(Struct_3(279f)), Struct_5(Struct_3(455f)), Struct_5(Struct_3(1038f)), Struct_5(Struct_3(-1658f)), Struct_5(Struct_3(-1434f)), Struct_5(Struct_3(-116f)), Struct_5(Struct_3(179f)), Struct_5(Struct_3(-1171f)), Struct_5(Struct_3(102f)), Struct_5(Struct_3(-142f)));

var<private> global1: array<u32, 10>;

var<private> global2: array<vec2<i32>, 24>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> i32 {
    global0 = array<Struct_5, 26>();
    global1 = array<u32, 10>();
    var var_0 = arg_1;
    global2 = array<vec2<i32>, 24>();
    global2 = array<vec2<i32>, 24>();
    return abs(_wgslsmith_sub_i32(arg_2, -1i));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -372f, 1463f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(249f, 977f, arg_1.a) * vec3<f32>(arg_1.a, arg_1.a, arg_1.a)))), vec2<i32>(countOneBits(arg_2.x), u_input.a.x), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(41767u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 102471u)))), 2147483647i, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -2819f, arg_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, 519f)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(1064f * 1526f), _wgslsmith_f_op_f32(arg_1.a - arg_1.a)), arg_2.yy, ~vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)]))), 70117u, 337f);
    let var_1 = 0u;
    global1 = array<u32, 10>();
    let var_2 = ~abs(_wgslsmith_div_vec2_i32(arg_2.xy, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(28332u, 10u)], 68044u), 10u)], 24u)]));
    let var_3 = Struct_1(var_0.a.a.a, _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.e.b.x, -_wgslsmith_mod_i32(var_2.x, -33242i)), var_2), vec2<u32>(~(~global1[_wgslsmith_index_u32(var_0.b, 10u)]), 4294967295u) & var_0.a.e.c);
    return arg_3;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>) -> Struct_2 {
    global0 = array<Struct_5, 26>();
    global0 = array<Struct_5, 26>();
    let var_0 = vec2<bool>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 22910i), -20799i, ~(-30426i), u_input.a.x)) >= _wgslsmith_clamp_i32(~4167i, 2147483647i, -func_2(Struct_2(Struct_1(vec3<f32>(-1985f, -562f, 1088f), vec2<i32>(u_input.a.x, 2147483647i), arg_0.wz), 1i, arg_1, vec3<f32>(-2087f, 501f, -538f), Struct_1(vec3<f32>(980f, 735f, 935f), global2[_wgslsmith_index_u32(arg_0.x, 24u)], vec2<u32>(arg_0.x, 27161u))), Struct_3(400f), u_input.a.x)), any(arg_1.xxz));
    var var_1 = func_2(Struct_2(Struct_1(vec3<f32>(-332f, 254f, -1000f), _wgslsmith_mult_vec2_i32(-vec2<i32>(54580i, 16215i), firstLeadingBit(vec2<i32>(-15796i, u_input.a.x))), vec2<u32>(60755u, arg_0.x)), -(_wgslsmith_dot_vec3_i32(u_input.a.wxw, vec3<i32>(-2147483647i, 47767i, -2147483647i)) & -21732i), arg_1, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1278f, 2055f, 778f) * vec3<f32>(162f, 1782f, 1138f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1802f, 1101f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(866f, 285f, -1000f))), max(_wgslsmith_sub_vec2_i32(global2[_wgslsmith_index_u32(43339u, 24u)], u_input.a.wx), _wgslsmith_div_vec2_i32(vec2<i32>(-76161i, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x))), vec2<u32>(arg_0.x, abs(arg_0.x)))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-426f)) * _wgslsmith_f_op_f32(871f - 589f)) - -343f)), 56186i);
    global2 = array<vec2<i32>, 24>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(207f, 258f, -909f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1571f, 256f, -547f)))), _wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.a.x, _wgslsmith_mod_i32(1i, u_input.a.x)), global2[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(arg_0.x, 10u)] ^ 4294967295u) >> (~arg_0.x % 32u), 24u)]), ~(~arg_0.yw)), 2147483647i, vec4<bool>(!(!any(vec4<bool>(true, false, arg_1.x, arg_1.x))), false, func_3(-_wgslsmith_add_i32(-40744i, 2147483647i), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -882f)), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(-2147483647i, u_input.a.x), firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a.zy)), all(arg_1.wwx)), arg_1.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-286f, 582f, -1537f), vec3<f32>(239f, 129f, -854f), var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(664f, -1524f, -2396f)))), vec3<f32>(_wgslsmith_f_op_f32(-622f - _wgslsmith_f_op_f32(f32(-1f) * -1119f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(122f, 454f, false)), _wgslsmith_f_op_f32(f32(-1f) * -991f), func_3(62116i, Struct_3(-1000f), u_input.a, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1305f)))), !(!(!arg_1.xxy)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1764f, -1000f, 555f))), global2[_wgslsmith_index_u32(arg_0.x, 24u)], ~arg_0.yw));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: Struct_5) -> vec3<bool> {
    let var_0 = func_1(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, arg_0.e.c.x, 90433u, global1[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, 3087u, arg_0.e.c.x, arg_2.x), arg_2)), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.x, 10u)], 10u)], _wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(66007u, 10u)]), 87329u, ~arg_2.x)), ~(~(vec4<u32>(0u, arg_2.x, 0u, global1[_wgslsmith_index_u32(arg_2.x, 10u)]) << (arg_2 % vec4<u32>(32u))))), arg_0.c).c.zw;
    global1 = array<u32, 10>();
    let var_1 = u_input.a.ww;
    let var_2 = Struct_3(877f);
    let var_3 = _wgslsmith_add_i32(firstTrailingBit(abs(firstTrailingBit(arg_0.a.b.x))) | u_input.a.x, firstLeadingBit(~_wgslsmith_add_i32(firstLeadingBit(arg_0.b), -var_1.x)));
    return arg_0.c.zzw;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 24>();
    let var_0 = vec2<u32>(reverseBits(1u), _wgslsmith_add_u32(~(~0u), abs(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)] % 32u)))));
    global0 = array<Struct_5, 26>();
    var var_1 = select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec3<bool>(true, true, false))), vec3<bool>(true, true, true)), !func_4(func_1(vec4<u32>(var_0.x, 62340u, global1[_wgslsmith_index_u32(var_0.x, 10u)], 4294967295u), vec4<bool>(false, true, true, true)), Struct_5(Struct_3(-1036f)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 14199u, global1[_wgslsmith_index_u32(var_0.x, 10u)], global1[_wgslsmith_index_u32(741u, 10u)]), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 10u)], 1u, global1[_wgslsmith_index_u32(0u, 10u)])), Struct_5(Struct_3(835f))), func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(77218u, 10u)], var_0.x, 0u, 54324u), ~vec4<u32>(4294967295u, 4294967295u, 50383u, global1[_wgslsmith_index_u32(72433u, 10u)])), vec4<bool>(func_3(6920i, Struct_3(487f), u_input.a, false), all(vec4<bool>(true, false, false, false)), true, false)).c.x), !(!vec3<bool>(false, any(vec4<bool>(true, true, false, true)), false)), !(!func_4(Struct_2(Struct_1(vec3<f32>(121f, -990f, -1441f), u_input.a.xx, vec2<u32>(global1[_wgslsmith_index_u32(var_0.x, 10u)], 1u)), u_input.a.x, vec4<bool>(true, false, true, true), vec3<f32>(-362f, -682f, -108f), Struct_1(vec3<f32>(596f, 1099f, -494f), u_input.a.zz, vec2<u32>(53050u, var_0.x))), global0[_wgslsmith_index_u32(~1u, 26u)], vec4<u32>(4294967295u, var_0.x, global1[_wgslsmith_index_u32(26637u, 10u)], 30732u), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(1u, 10u)]), 10u)], 26u)])));
    var_1 = select(select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, var_1.x, u_input.a.x == -u_input.a.x), !vec3<bool>(any(var_1.zy), true, var_1.x && false)), vec3<bool>(func_3(reverseBits(_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), Struct_3(_wgslsmith_f_op_f32(max(-1355f, -254f))), u_input.a, !var_1.x), ~(var_0.x ^ var_0.x) >= 4294967295u, ~(0u | global1[_wgslsmith_index_u32(66007u, 10u)]) > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(~var_0.x, _wgslsmith_div_u32(var_0.x, 4294967295u), var_1.x), 10u)], 10u)]), !any(vec2<bool>(all(vec2<bool>(var_1.x, var_1.x)), true)));
    global1 = array<u32, 10>();
    let var_2 = Struct_5(Struct_3(2316f));
    global1 = array<u32, 10>();
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(28757u, -abs(max(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), u_input.a.xz), -2147483647i)), min(~firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-19898i, u_input.a.x, u_input.a.x, 7208i))), ~(-4099i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-512f)), -1739f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(864f, -110f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1058f, var_2.a.a))))), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, firstTrailingBit(firstLeadingBit(39341u))), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, abs(var_0.x)), 10u)], ~9770u)));
}

