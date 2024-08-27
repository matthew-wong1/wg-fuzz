struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1u, vec4<f32>(1165f, 604f, 182f, 425f)), Struct_1(20871u, vec4<f32>(-417f, -1629f, 1395f, 596f)), Struct_1(1u, vec4<f32>(-335f, -588f, 1962f, 457f)), Struct_1(34007u, vec4<f32>(-1065f, -1000f, 2171f, -413f)), Struct_1(55464u, vec4<f32>(1409f, 812f, -145f, 1874f)), Struct_1(1445u, vec4<f32>(-1230f, -638f, 885f, -270f)), Struct_1(4294967295u, vec4<f32>(-1000f, 562f, -716f, -282f)), Struct_1(101804u, vec4<f32>(2669f, -1677f, 1000f, -735f)), Struct_1(0u, vec4<f32>(238f, 1093f, -1200f, -918f)), Struct_1(1u, vec4<f32>(1369f, 452f, -187f, -858f)), Struct_1(15291u, vec4<f32>(601f, -163f, -289f, -634f)), Struct_1(3521u, vec4<f32>(-1213f, -757f, -579f, 190f)), Struct_1(21273u, vec4<f32>(359f, -1000f, -1130f, 613f)), Struct_1(22080u, vec4<f32>(-506f, -521f, 428f, -261f)), Struct_1(4294967295u, vec4<f32>(891f, -1183f, -665f, 495f)), Struct_1(45708u, vec4<f32>(-1000f, 145f, 488f, -743f)), Struct_1(4294967295u, vec4<f32>(1879f, 550f, -245f, 960f)), Struct_1(0u, vec4<f32>(490f, 1162f, 587f, -842f)), Struct_1(22718u, vec4<f32>(-1881f, 1284f, -935f, -1000f)), Struct_1(547u, vec4<f32>(-215f, -866f, -426f, -492f)), Struct_1(32970u, vec4<f32>(1194f, -1048f, -360f, -1351f)));

var<private> global1: vec4<f32> = vec4<f32>(546f, -1988f, 993f, -1000f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = -1104f;
    var var_1 = all(vec2<bool>(false & any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, true))), !(!any(vec3<bool>(true, arg_0, false)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-369f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(743f, -755f), _wgslsmith_f_op_f32(-global1.x)))));
    let var_3 = Struct_4(var_2.a);
    var var_4 = firstTrailingBit(_wgslsmith_dot_vec2_i32(~countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a))), ~(vec2<i32>(-9215i, 1i) ^ vec2<i32>(u_input.a, 30344i)) >> ((vec2<u32>(21364u, u_input.b.x) | (vec2<u32>(56349u, 11561u) >> (u_input.b % vec2<u32>(32u)))) % vec2<u32>(32u))));
    return 1000f;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = arg_1.a.b;
    var var_1 = !select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), true), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), any(vec4<bool>(false, true, false, true)), u_input.b.x <= arg_1.a.a, true), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false))), countOneBits(u_input.b.x) <= 81545u));
    var_1 = vec4<bool>(false, var_1.x, var_1.x, true);
    global0 = array<Struct_1, 21>();
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_mod_u32(~1512u, firstLeadingBit(24413u))) ^ 3739u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, -111f))), 180f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1392f, arg_1.a.b.x), _wgslsmith_f_op_f32(floor(289f)))), _wgslsmith_f_op_f32(func_3(all(vec2<bool>(false, false))))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(ceil(var_2.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.xxz)), true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.xxx, var_0.wzx, var_1.x))))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, var_2.b.x)))), -1614f, _wgslsmith_f_op_f32(floor(-1271f))));
}

fn func_2() -> Struct_4 {
    let var_0 = reverseBits(u_input.b << (u_input.b % vec2<u32>(32u)));
    global0 = array<Struct_1, 21>();
    let var_1 = global1.x;
    let var_2 = vec3<u32>(min(~16324u, 1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(min(~27115u, 26410u >> (0u % 32u)), _wgslsmith_mod_u32(4294967295u, ~u_input.b.x)), ~_wgslsmith_add_u32(0u ^ u_input.b.x, 1u ^ var_0.x)), u_input.b.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mult_vec3_i32(min(-vec3<i32>(u_input.a, 9390i, u_input.a), vec3<i32>(0i, 1i, u_input.a)), vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a ^ 5033i, -21914i)) << (firstLeadingBit(~(~vec3<u32>(var_2.x, var_2.x, var_0.x))) % vec3<u32>(32u)), Struct_2(Struct_1(21888u, vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -348f, _wgslsmith_f_op_f32(func_3(false)), 723f)), firstLeadingBit(var_2) & _wgslsmith_add_vec3_u32(vec3<u32>(34812u, var_0.x, 4294967295u), var_2), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1004f, global1.x))))), _wgslsmith_f_op_f32(-global1.x))));
    return Struct_4(var_3.x);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = abs(4294967295u);
    global0 = array<Struct_1, 21>();
    let var_1 = true;
    let var_2 = func_2();
    let var_3 = global0[_wgslsmith_index_u32(~u_input.b.x, 21u)];
    return Struct_2(Struct_1(arg_3.a.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) - arg_0.b.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -833f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_2.a, arg_0.c.d.x, true)), 637f)))), abs(arg_0.c.b), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, max(-12290i, 2147483647i))), (_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.c, u_input.a), vec2<i32>(0i, arg_3.c), vec2<i32>(arg_0.c.c, u_input.a)) | (vec2<i32>(arg_3.c, -41453i) >> (arg_3.b.yx % vec2<u32>(32u)))) & select(vec2<i32>(-899i, u_input.a), ~vec2<i32>(arg_0.c.c, u_input.a), select(vec2<bool>(false, true), vec2<bool>(arg_0.a, var_1), vec2<bool>(false, true)))), vec3<f32>(1263f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * arg_0.c.d.x)), arg_0.c.a.b.x)), var_2.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.a.b.x)))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_3(true, func_1(Struct_3(true, arg_0, arg_0), arg_0, _wgslsmith_mult_vec2_u32(vec2<u32>(48539u ^ u_input.b.x, u_input.b.x), _wgslsmith_div_vec2_u32(arg_0.b.xy, select(u_input.b, u_input.b, vec2<bool>(false, true)))), arg_0), arg_0);
    var var_1 = vec4<i32>(var_0.b.c, -8743i, arg_1.x, 1i);
    let var_2 = vec4<f32>(2151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-582f * global1.x) - 248f), global1.x, arg_0.d.x);
    let var_3 = select(vec3<bool>(var_0.a, !var_0.a, var_0.a), select(select(!select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a)), vec3<bool>(!var_0.a, false, any(vec4<bool>(true, var_0.a, false, false))), true), !select(!vec3<bool>(var_0.a, var_0.a, var_0.a), !vec3<bool>(false, false, var_0.a), vec3<bool>(true, true, true)), any(!select(vec4<bool>(var_0.a, true, false, false), vec4<bool>(false, var_0.a, var_0.a, true), true))), !vec3<bool>(true, true, any(!vec2<bool>(false, var_0.a))));
    var_1 = ~vec4<i32>(abs(arg_1.x), min(-u_input.a & _wgslsmith_add_i32(-32130i, arg_1.x), arg_1.x), _wgslsmith_mod_i32(-14287i, min(var_0.c.c, var_0.b.c) | max(arg_0.c, 19296i)), -13723i);
    return Struct_3(false, Struct_2(var_0.b.a, vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(34315u, 1u, 48389u, arg_0.b.x), vec4<u32>(4294967295u, arg_0.b.x, var_0.c.b.x, var_0.b.a.a))), 36921u | ~u_input.b.x, u_input.b.x), _wgslsmith_sub_i32(arg_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(select(func_1(var_0, var_0.c, var_0.c.b.zx, func_1(Struct_3(var_3.x, Struct_2(Struct_1(arg_0.a.a, vec4<f32>(786f, global1.x, 188f, var_2.x)), var_0.c.b, 1i, var_2.zyx, var_0.c.e), arg_0), Struct_2(var_0.b.a, arg_0.b, -2147483647i, vec3<f32>(var_0.c.a.b.x, -933f, arg_0.a.b.x), var_2.x), arg_0.b.zz, Struct_2(Struct_1(u_input.b.x, vec4<f32>(var_2.x, arg_0.e, -861f, -378f)), var_0.c.b, -13544i, arg_0.a.b.xxz, -549f))).a.b.zxz, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.e, -169f, var_2.x), _wgslsmith_f_op_vec3_f32(var_0.b.a.b.ywy - var_2.ywy), vec3<bool>(var_3.x, false, var_3.x))), any(var_3))), 1f), Struct_2(Struct_1(1u, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.e, arg_0.d.x, 463f, 1592f), arg_0.a.b))), vec3<u32>(countOneBits(0u), min(60259u, arg_0.b.x), ~0u) & (select(arg_0.b, var_0.b.b, var_3) & _wgslsmith_mult_vec3_u32(var_0.c.b, vec3<u32>(u_input.b.x, arg_0.b.x, u_input.b.x))), ~var_1.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(global1.ywz, vec3<f32>(773f, var_0.b.d.x, var_2.x))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1131f), 2495f))), _wgslsmith_f_op_f32(func_3(1u > ~u_input.b.x))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<i32> {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_0 = ~arg_0.b.b.xz;
    global0 = array<Struct_1, 21>();
    return max(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, ~(u_input.a << (7745u % 32u)), max(1i & arg_0.c.c, 1i), u_input.a), vec4<i32>(u_input.a, _wgslsmith_add_i32(2147483647i, u_input.a) | -18993i, ~abs(arg_0.b.c), 1i)), vec4<i32>(u_input.a, countOneBits(max(-2147483647i, arg_0.c.c)), firstTrailingBit(reverseBits(1i)), max(u_input.a >> (31059u % 32u), arg_0.c.c)) & ~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c.c, -55233i, 0i, u_input.a), vec4<i32>(-36749i, u_input.a, arg_0.b.c, -9688i))));
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_4) -> f32 {
    var var_0 = abs(max(func_6(func_5(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], vec3<u32>(95889u, u_input.b.x, u_input.b.x), arg_0.x, vec3<f32>(2454f, global1.x, -675f), arg_1.a), arg_0.yz), arg_1, global0[_wgslsmith_index_u32(~0u, 21u)], vec2<f32>(600f, arg_2.a)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 46127u, 81261u), vec4<u32>(0u, u_input.b.x, 52089u, 78715u)) % vec4<u32>(32u)), ~(~(~vec4<i32>(14539i, -2147483647i, 0i, arg_0.x)))));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_1.a)) - global1.x)), 1396f);
    let var_3 = arg_1;
    let var_4 = func_5(Struct_2(Struct_1(firstTrailingBit(min(var_1.x, u_input.b.x)), func_5(Struct_2(global0[_wgslsmith_index_u32(var_1.x, 21u)], vec3<u32>(var_1.x, 4294967295u, 4294967295u), arg_0.x, vec3<f32>(259f, var_3.a, global1.x), var_3.a), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.ww)).b.a.b), abs(vec3<u32>(countOneBits(1u), var_1.x, 58375u)), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(var_0.xxz, abs(arg_0.xyz))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(min(var_3.a, global1.x))))), -2483f), var_0.xw ^ _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -var_0.xy, -(vec2<i32>(-43276i, u_input.a) << (var_1 % vec2<u32>(32u))))).b.a.b.x;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_7(func_6(func_5(func_1(Struct_3(false, Struct_2(Struct_1(u_input.b.x, vec4<f32>(global1.x, global1.x, global1.x, 599f)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), 36621i, global1.xzw, global1.x), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], vec3<u32>(4359u, u_input.b.x, 101411u), u_input.a, global1.xyz, -550f)), Struct_2(Struct_1(u_input.b.x, vec4<f32>(294f, global1.x, global1.x, 742f)), vec3<u32>(4294967295u, u_input.b.x, 51957u), u_input.a, vec3<f32>(global1.x, global1.x, -1045f), -665f), vec2<u32>(u_input.b.x, 4294967295u), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], vec3<u32>(0u, 9890u, 30676u), u_input.a, global1.zyx, global1.x)), vec2<i32>(32061i, -29906i)), func_2(), global0[_wgslsmith_index_u32(21609u, 21u)], vec2<f32>(1041f, -625f)), func_2(), Struct_4(-753f))), global1.x, _wgslsmith_f_op_f32(-func_1(func_5(func_5(Struct_2(Struct_1(u_input.b.x, vec4<f32>(global1.x, global1.x, global1.x, global1.x)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.a, vec3<f32>(global1.x, global1.x, global1.x), global1.x), vec2<i32>(-21087i, u_input.a)).b, vec2<i32>(6717i, u_input.a) >> (u_input.b % vec2<u32>(32u))), func_5(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], vec3<u32>(u_input.b.x, 1u, 4294967295u), u_input.a, global1.yxx, -140f), min(vec2<i32>(25920i, u_input.a), vec2<i32>(u_input.a, u_input.a))).b, reverseBits(vec2<u32>(u_input.b.x, 0u)) >> (u_input.b % vec2<u32>(32u)), func_5(func_5(Struct_2(Struct_1(u_input.b.x, vec4<f32>(global1.x, global1.x, -989f, 1909f)), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), 28168i, vec3<f32>(global1.x, 2605f, global1.x), global1.x), vec2<i32>(25574i, u_input.a)).c, abs(vec2<i32>(35999i, 0i))).b).a.b.x), -1847f);
    let var_1 = abs((select(0i, 0i, true) << (u_input.b.x % 32u)) << (_wgslsmith_sub_u32(u_input.b.x, ~(~u_input.b.x)) % 32u));
    let var_2 = select(vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true)), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false))), !(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), any(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, true, false), u_input.a >= var_1)));
    var var_3 = vec3<i32>(38368i, 2147483647i, min(-71339i, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zy);
}

