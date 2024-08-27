struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-1193f, -1216f), vec2<f32>(-1865f, 192f), vec2<f32>(661f, -1075f), vec2<f32>(-248f, 229f), vec2<f32>(986f, 289f), vec2<f32>(449f, -1000f), vec2<f32>(-129f, -198f), vec2<f32>(689f, -2050f), vec2<f32>(-455f, -100f), vec2<f32>(965f, 641f), vec2<f32>(1365f, 1277f), vec2<f32>(1560f, 1819f), vec2<f32>(1482f, 632f));

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(611f, 116f, 1446f, 2249f), vec4<f32>(1451f, 538f, 697f, 1000f), vec4<f32>(1367f, -397f, 804f, 2359f), vec4<f32>(1066f, 1322f, 139f, -399f), vec4<f32>(325f, -1542f, 131f, 240f), vec4<f32>(-527f, -1791f, -606f, -1091f), vec4<f32>(-929f, 137f, 884f, 1000f), vec4<f32>(-522f, -1000f, -210f, -1240f), vec4<f32>(-222f, 930f, -1000f, -170f), vec4<f32>(-586f, -1018f, 1009f, 909f), vec4<f32>(542f, -1047f, -1000f, -769f), vec4<f32>(1080f, -956f, 230f, 158f), vec4<f32>(1576f, 728f, -114f, 410f), vec4<f32>(273f, 488f, 246f, -591f), vec4<f32>(253f, 206f, 1000f, 122f), vec4<f32>(1735f, 1441f, 168f, -147f), vec4<f32>(-865f, -1001f, 926f, -820f), vec4<f32>(131f, 2428f, -270f, 112f), vec4<f32>(321f, 851f, 461f, -1121f), vec4<f32>(232f, -1076f, 187f, 769f), vec4<f32>(-774f, -313f, 117f, -342f), vec4<f32>(760f, 1540f, 434f, -217f), vec4<f32>(1092f, 650f, -1077f, 696f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = arg_0;
    global0 = array<vec2<f32>, 13>();
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = u_input.a;
    global1 = array<vec4<f32>, 23>();
    return ~abs(var_2);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = false;
    var var_1 = 124f;
    var var_2 = select(vec3<bool>(arg_0, false, ~select(u_input.b.x, arg_2.x, true) > u_input.b.x), !(!select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), false), vec3<bool>(true, arg_0, false))), !(!vec3<bool>(true, select(arg_0, true, arg_0), any(vec2<bool>(false, false)))));
    global1 = array<vec4<f32>, 23>();
    let var_3 = Struct_2(Struct_1(vec4<u32>(~30352u, ~35372u, u_input.b.x, arg_2.x) & vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(59395u, 19308u, u_input.b.x, arg_2.x)), 1u, 4294967295u, ~1u), _wgslsmith_div_u32(arg_2.x, countOneBits(0u)) << (~u_input.b.x % 32u), (vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a)) | vec2<i32>(u_input.a & -57164i, select(u_input.a, u_input.a, true)), arg_2, !vec3<bool>(var_2.x, false, false)), 30145u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1175f, -511f, 518f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1144f, -390f, 299f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1000f, arg_1.x)) + vec3<f32>(1662f, 502f, arg_3.x)), !select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(arg_0, arg_0, true), var_2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(629f, arg_1.x, arg_3.x) * vec3<f32>(arg_3.x, -241f, 694f))))), ~(_wgslsmith_clamp_u32(~95378u, 0u, 0u) << (~_wgslsmith_clamp_u32(0u, arg_2.x, 39461u) % 32u)), Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), u_input.b), select(vec4<u32>(4294967295u, arg_2.x, u_input.b.x, 0u), select(vec4<u32>(arg_2.x, 67859u, 4294967295u, 7357u), u_input.b, vec4<bool>(true, false, false, true)), vec4<bool>(var_2.x, true, var_2.x, arg_0))), 4294967295u, -(~vec2<i32>(32589i, 1i) & _wgslsmith_mult_vec2_i32(vec2<i32>(-17935i, 27055i), vec2<i32>(-39867i, u_input.a))), u_input.b.xz, !(!select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, var_2.x, true), arg_0))));
    return vec4<bool>(arg_0, arg_0, all(select(vec3<bool>(true, true, true), vec3<bool>(true, !var_3.e.e.x, true), select(var_3.e.e, var_3.a.e, select(var_2.x, true, true)))), !all(select(vec2<bool>(true, true), var_3.a.e.xz, !vec2<bool>(arg_0, true))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    global1 = array<vec4<f32>, 23>();
    var var_0 = !(1i >= ~firstTrailingBit(2147483647i));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 37021u), var_1.ww), min(vec2<u32>(u_input.b.x, 1809u), vec2<u32>(arg_2.e.a.x, var_1.x) & var_1.xy), true), vec2<u32>(~(~17790u), ~(~arg_2.e.b))), 23u)]);
    let var_3 = vec3<i32>(min(arg_2.a.c.x, func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(var_1.x, 23u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(769f, 109f, 715f, -1000f)))))), -45664i, min(~(-646i), 0i));
    return select(!select(!vec4<bool>(arg_2.e.e.x, false, false, false), !(!vec4<bool>(true, false, arg_2.e.e.x, false)), any(arg_2.a.e.zz)), select(vec4<bool>(arg_2.a.e.x == (arg_2.a.e.x & false), true, any(arg_2.e.e), arg_2.e.e.x | true), vec4<bool>(true, all(!vec3<bool>(false, arg_2.a.e.x, arg_2.e.e.x)), arg_2.e.e.x, any(arg_2.a.e)), !(u_input.b.x > u_input.b.x) && false), select(!(!func_3(arg_2.e.e.x, global0[_wgslsmith_index_u32(arg_2.d, 13u)], arg_2.a.a.wz, global0[_wgslsmith_index_u32(47004u, 13u)])), !(!select(vec4<bool>(false, arg_2.a.e.x, arg_2.e.e.x, arg_2.a.e.x), vec4<bool>(arg_2.e.e.x, arg_2.e.e.x, true, false), arg_2.a.e.x)), select(true, arg_2.e.e.x, !(arg_2.a.e.x && arg_2.a.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = -202f;
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    let var_2 = Struct_5(vec2<i32>(select(~u_input.a, u_input.a, _wgslsmith_f_op_f32(step(var_1, 1290f)) <= _wgslsmith_f_op_f32(1000f * var_1)), func_1(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(693f + var_1), var_1, _wgslsmith_div_f32(1319f, var_1)))), global1[_wgslsmith_index_u32(~(~1u), 23u)], select(vec4<bool>(true, !var_0, var_0, var_0), select(vec4<bool>(u_input.a <= u_input.a, var_0, var_0, true | var_0), select(func_2(u_input.a, u_input.a, Struct_2(Struct_1(u_input.b, 15685u, vec2<i32>(1i, u_input.a), vec2<u32>(0u, 43940u), vec3<bool>(var_0, true, true)), u_input.b.x, vec3<f32>(var_1, var_1, -449f), 18380u, Struct_1(u_input.b, u_input.b.x, vec2<i32>(u_input.a, 1i), u_input.b.zw, vec3<bool>(var_0, true, var_0)))), select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, false, var_0, false), true), func_3(var_0, vec2<f32>(2024f, var_1), u_input.b.zy, vec2<f32>(var_1, 525f))), var_0), true), Struct_2(Struct_1(vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(1u, 1u), ~u_input.b.x, ~u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(19264u, u_input.b.x, u_input.b.x) << (vec3<u32>(27u, u_input.b.x, 1u) % vec3<u32>(32u)), min(u_input.b.ywy, u_input.b.wxz)), vec2<i32>(abs(1i), ~0i), u_input.b.yz, select(select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, var_0, false), vec3<bool>(true, true, false)), func_2(0i, 0i, Struct_2(Struct_1(vec4<u32>(52615u, u_input.b.x, 1154u, 11685u), u_input.b.x, vec2<i32>(0i, -24454i), u_input.b.xy, vec3<bool>(var_0, var_0, true)), u_input.b.x, vec3<f32>(-553f, 424f, var_1), 0u, Struct_1(vec4<u32>(29692u, 4294967295u, 79676u, 0u), 29641u, vec2<i32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.b.x), vec3<bool>(true, var_0, var_0)))).xyz, var_0)), 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, var_1, 1172f), vec3<f32>(var_1, var_1, var_1))))), abs(~firstLeadingBit(u_input.b.x)), Struct_1(~u_input.b, ~abs(u_input.b.x), -vec2<i32>(u_input.a, 28542i), countOneBits(vec2<u32>(u_input.b.x, u_input.b.x)), func_3(var_0, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(1u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(39557u, 13u)])).yww)), Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), u_input.b.x, vec2<i32>(u_input.a, u_input.a), abs(vec2<u32>(u_input.b.x, u_input.b.x)), vec3<bool>(true, true, false)), abs(75517u) << (u_input.b.x % 32u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2383f, var_1, var_1)))), _wgslsmith_clamp_u32(countOneBits(u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b.zzw, u_input.b.xzy), ~65829u), Struct_1(~u_input.b, ~u_input.b.x, -vec2<i32>(-1i, 1702i), u_input.b.yx, !vec3<bool>(var_0, true, var_0))), Struct_2(Struct_1(u_input.b, 41458u, abs(vec2<i32>(-4978i, u_input.a)), vec2<u32>(1u, u_input.b.x), !vec3<bool>(var_0, var_0, var_0)), u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 3744f, var_1) + vec3<f32>(var_1, var_1, -346f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1, 1014f) * vec3<f32>(var_1, var_1, var_1))), abs(1842u), Struct_1(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 0u), select(0u, u_input.b.x, var_0), vec2<i32>(-44774i, 2147483647i), vec2<u32>(u_input.b.x, u_input.b.x), func_3(false, vec2<f32>(1161f, var_1), u_input.b.zw, vec2<f32>(var_1, var_1)).zww))));
    global1 = array<vec4<f32>, 23>();
    var var_3 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(10148u, var_2.e.b.e.a.x, 35115u, 53157u)) >> (~var_2.e.b.e.a % vec4<u32>(32u)), var_2.d.a.a), ~reverseBits(u_input.b.x), firstLeadingBit(_wgslsmith_sub_vec2_i32(var_2.a, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_2.a.x), vec2<i32>(u_input.a, var_2.e.a.a.c.x)))), _wgslsmith_mult_vec2_u32(~select(u_input.b.zy, var_2.d.a.a.wz, false), select(var_2.e.a.e.a.xx, ~var_2.d.e.d, var_2.e.a.a.e.yy)), var_2.c.wxx), 4294967295u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(var_2.b.ywy)))), 1u, var_2.e.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.e.a.zzw), _wgslsmith_mult_vec2_i32(vec2<i32>(~abs(var_3.e.c.x), 1i), countOneBits(vec2<i32>(var_2.d.e.c.x & -52991i, _wgslsmith_mult_i32(-1i, 0i)))), ~1i);
}

