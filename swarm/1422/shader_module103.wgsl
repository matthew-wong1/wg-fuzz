struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = abs(vec4<i32>(arg_2, arg_1.b.a.x, 4363i, ~arg_0.b.a.x));
    let var_1 = arg_0.b.c;
    let var_2 = Struct_5(vec4<bool>(_wgslsmith_div_f32(985f, _wgslsmith_f_op_f32(exp2(arg_3.b.b.x))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_3.b.b.x, -263f)))), any(vec2<bool>(all(arg_1.b.c.xz), any(arg_3.b.c))), true, all(!vec4<bool>(var_1.x, arg_3.b.c.x, arg_0.b.c.x, false))), arg_0, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.b.x, -799f), arg_0.b.b.yx), Struct_1(min(var_0, vec4<i32>(-1i) * -vec4<i32>(arg_2, -38033i, var_0.x, -33536i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1336f, -129f, arg_1.a, 2205f) - vec4<f32>(arg_0.b.b.x, arg_3.a, arg_1.b.b.x, arg_3.a)), arg_0.b.b), !(!select(arg_1.b.c, vec3<bool>(true, false, arg_3.b.c.x), vec3<bool>(arg_0.b.c.x, false, false))), select(vec4<u32>(~1u, ~12634u, 0u, arg_1.b.d.x), vec4<u32>(1u, ~arg_0.b.d.x, ~arg_0.b.d.x, firstLeadingBit(1u)), any(!var_1))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(238f * _wgslsmith_f_op_f32(floor(1000f))), 1120f, var_2.d.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) + arg_3.b.b.x)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(arg_0.b.b.ywy))));
    return var_2.a.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_5 {
    let var_0 = !(!select(!select(vec2<bool>(true, arg_2), vec2<bool>(true, true), false), vec2<bool>(true, arg_1 && false), true));
    let var_1 = ~u_input.b;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1579f + -1302f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_1(-(vec4<i32>(2147483647i, -8686i, 2147483647i, u_input.c) & vec4<i32>(arg_0, u_input.c, u_input.c, arg_0)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1617f, 674f, 769f))))))), vec3<bool>(arg_1, func_3(Struct_2(-2070f, Struct_1(vec4<i32>(u_input.c, 2147483647i, -57626i, -33642i), vec4<f32>(-1719f, -741f, -581f, 2442f), vec3<bool>(false, arg_1, false), vec4<u32>(84057u, 2660u, var_1, 0u))), Struct_2(2067f, Struct_1(vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), vec4<f32>(-341f, 870f, -1765f, -1000f), vec3<bool>(arg_1, false, var_0.x), vec4<u32>(u_input.b, 5130u, 9993u, var_1))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -135i), vec2<i32>(u_input.c, 21044i)), Struct_2(-107f, Struct_1(vec4<i32>(u_input.c, -29950i, arg_0, u_input.c), vec4<f32>(-665f, 671f, -346f, 224f), vec3<bool>(true, false, var_0.x), vec4<u32>(var_1, 1u, u_input.a, 4294967295u)))), _wgslsmith_clamp_i32(11190i, u_input.c, -2147483647i) != firstLeadingBit(u_input.c)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 42309u, 1u, var_1), vec4<u32>(u_input.a, u_input.a, 0u, 0u))));
    let var_3 = select(!var_2.b.c, !var_2.b.c, true);
    var var_4 = var_2.b;
    return Struct_5(select(select(vec4<bool>(var_4.c.x, true, any(vec3<bool>(var_4.c.x, var_2.b.c.x, true)), !var_3.x), vec4<bool>(var_0.x, var_2.b.a.x >= arg_0, var_4.c.x, all(var_2.b.c)), true), vec4<bool>(arg_1 != true, true, true, var_0.x), var_4.c.x && false), var_2, vec2<f32>(var_4.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.b.x * _wgslsmith_f_op_f32(790f * 643f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b.b.x, var_2.a, arg_2))))), Struct_1(vec4<i32>(var_4.a.x & -26761i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-12331i, 34598i), var_4.a.x), u_input.c, _wgslsmith_add_i32(min(-1i, 0i), 0i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(var_2.b.b, var_2.b.b)), var_4.b, select(select(vec4<bool>(var_2.b.c.x, var_4.c.x, true, var_4.c.x), vec4<bool>(arg_1, false, true, true), vec4<bool>(false, arg_2, arg_2, var_0.x)), vec4<bool>(var_4.c.x, true, arg_2, arg_1), true))), !var_3, vec4<u32>(max(u_input.b | var_2.b.d.x, var_2.b.d.x), 36203u, _wgslsmith_mult_u32(27161u, ~var_2.b.d.x), var_4.d.x)));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = arg_3.c.b.a.zzw;
    let var_1 = arg_0;
    let var_2 = vec2<bool>(func_2(_wgslsmith_mod_i32(-50100i, var_1.b.b.a.x), arg_3.c.b.c.x, arg_0.d.c.x).a.x, !all(func_2(max(1i, arg_1.x), !arg_3.c.b.c.x, any(vec2<bool>(arg_0.d.c.x, false))).a));
    var var_3 = ~1u;
    var var_4 = 42469i;
    return func_2(firstLeadingBit(abs(var_1.d.a.x)), var_2.x, !var_1.a.x).b;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    let var_0 = func_4(func_2(max(0i, -u_input.c), !arg_3.c.b.c.x, true), -(vec4<i32>(countOneBits(u_input.c), u_input.c, firstLeadingBit(arg_2.c.b.a.x), _wgslsmith_dot_vec2_i32(arg_2.c.b.a.zz, vec2<i32>(arg_2.c.b.a.x, u_input.c))) >> (abs(vec4<u32>(arg_1.x, arg_3.c.b.d.x, 0u, arg_3.c.b.d.x)) % vec4<u32>(32u))), _wgslsmith_div_u32(8522u, ~1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.b.d.x, arg_3.c.b.d.x, 69092u, ~0u), abs(~arg_3.c.b.d)), Struct_4(_wgslsmith_f_op_vec4_f32(floor(arg_2.a)), arg_3.a, arg_3.c));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x))));
    var_1 = func_2(arg_3.c.b.a.x, false, !(~var_0.b.d.x > _wgslsmith_mod_u32(var_0.b.d.x, 0u)) & true).b.b.b.x;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a.x)) * _wgslsmith_f_op_f32(max(1287f, arg_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a.x)) - arg_0), !(183f < var_0.b.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -906f)))));
    var var_3 = Struct_1(~abs(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(arg_3.c.b.a, vec4<i32>(0i, var_0.b.a.x, -21002i, -27428i)), min(vec4<i32>(arg_3.c.b.a.x, -2147483647i, arg_3.c.b.a.x, arg_3.c.b.a.x), vec4<i32>(u_input.c, -16792i, u_input.c, u_input.c)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + var_2.a) * -2235f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-773f)), _wgslsmith_f_op_f32(arg_0 - arg_0), var_0.b.c.x)), -1078f, _wgslsmith_f_op_f32(ceil(-534f))), _wgslsmith_f_op_vec4_f32(arg_3.c.b.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_3.c.a, -1017f, -355f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1041f, -1444f, 765f, arg_3.c.b.b.x), vec4<f32>(560f, -1620f, arg_0, var_2.a))))), !select(!vec3<bool>(arg_3.c.b.c.x, true, arg_2.c.b.c.x), arg_2.c.b.c, true), min(vec4<u32>(1u, 1u, var_0.b.d.x, _wgslsmith_mod_u32(u_input.a, 17953u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.d.x, arg_3.c.b.d.x, 4294967295u, arg_2.c.b.d.x), abs(arg_2.c.b.d), ~arg_2.c.b.d)) ^ var_0.b.d);
    return _wgslsmith_f_op_f32(step(arg_2.b.x, _wgslsmith_div_f32(-865f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-712f)))))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: vec2<u32>, arg_3: f32) -> StorageBuffer {
    var var_0 = 4294967295u;
    var var_1 = vec2<i32>(u_input.c, u_input.c);
    var_0 = ~(u_input.a | 7705u);
    let var_2 = _wgslsmith_mult_u32(u_input.b, _wgslsmith_add_u32(arg_2.x, ~_wgslsmith_clamp_u32(~38010u, func_2(u_input.c, true, true).b.b.d.x, ~0u)));
    var var_3 = _wgslsmith_add_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 20953u, u_input.a), vec3<u32>(26746u, 1u, 1u))), select(~(~vec3<u32>(34490u, 1u, arg_1)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 15051u, var_2), vec3<u32>(arg_2.x, u_input.a, 1u)), func_4(Struct_5(vec4<bool>(true, false, true, true), Struct_2(arg_3, Struct_1(vec4<i32>(var_1.x, -11628i, var_1.x, -22275i), vec4<f32>(arg_3, arg_3, arg_0, arg_0), vec3<bool>(true, false, false), vec4<u32>(var_2, 29927u, arg_2.x, arg_1))), vec2<f32>(arg_0, arg_3), Struct_1(vec4<i32>(u_input.c, u_input.c, var_1.x, 2147483647i), vec4<f32>(arg_0, arg_0, 1479f, -1347f), vec3<bool>(false, false, false), vec4<u32>(53014u, 4913u, var_2, 4294967295u))), vec4<i32>(36644i, var_1.x, var_1.x, -37842i), arg_1, Struct_4(vec4<f32>(arg_0, arg_0, arg_3, arg_0), vec4<f32>(arg_3, -132f, arg_3, 1076f), Struct_2(arg_0, Struct_1(vec4<i32>(var_1.x, -1i, var_1.x, var_1.x), vec4<f32>(-1655f, arg_0, 1259f, arg_0), vec3<bool>(true, true, true), vec4<u32>(u_input.b, arg_1, 34645u, 0u))))).b.d.zww), any(vec3<bool>(false, true, false)))) << (~(vec3<u32>(13825u, ~arg_2.x, _wgslsmith_mult_u32(var_2, arg_2.x)) | firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(41349u, 35507u, 1u), vec3<u32>(14410u, 4294967295u, arg_1)))) % vec3<u32>(32u));
    return StorageBuffer(arg_3, _wgslsmith_div_f32(443f, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(arg_3))))), vec3<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(737f, 218f, true)) * _wgslsmith_f_op_f32(arg_0 + arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(min(arg_3, -2030f)), true))), -587f), -vec3<i32>(0i, var_1.x, func_4(Struct_5(vec4<bool>(false, true, false, false), Struct_2(1000f, Struct_1(vec4<i32>(2147483647i, -49329i, -56611i, u_input.c), vec4<f32>(arg_3, 1066f, 1551f, -653f), vec3<bool>(false, true, false), vec4<u32>(var_2, 8748u, 14932u, 0u))), vec2<f32>(196f, arg_0), Struct_1(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(-917f, 1668f, -238f, -519f), vec3<bool>(false, true, true), vec4<u32>(30u, 34016u, var_3.x, arg_2.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, u_input.c, var_1.x, 1i), vec4<i32>(-14034i, 1i, var_1.x, u_input.c)), func_4(Struct_5(vec4<bool>(true, true, true, false), Struct_2(-1000f, Struct_1(vec4<i32>(40519i, -1i, -4367i, var_1.x), vec4<f32>(-1096f, 1000f, -606f, 493f), vec3<bool>(false, false, true), vec4<u32>(var_3.x, 69672u, u_input.b, 4294967295u))), vec2<f32>(arg_0, 522f), Struct_1(vec4<i32>(var_1.x, -31919i, 2147483647i, var_1.x), vec4<f32>(arg_3, arg_0, arg_3, -493f), vec3<bool>(false, false, true), vec4<u32>(1u, 18234u, 0u, 0u))), vec4<i32>(29600i, 37990i, u_input.c, u_input.c), 0u, Struct_4(vec4<f32>(-1206f, arg_0, arg_3, arg_0), vec4<f32>(arg_3, -1000f, arg_3, 238f), Struct_2(-317f, Struct_1(vec4<i32>(43117i, 0i, -1i, u_input.c), vec4<f32>(142f, 269f, -689f, arg_0), vec3<bool>(false, true, false), vec4<u32>(1u, var_3.x, var_2, var_3.x))))).b.d.x, Struct_4(vec4<f32>(653f, -2293f, 577f, arg_3), vec4<f32>(arg_0, 1281f, 1753f, arg_3), Struct_2(504f, Struct_1(vec4<i32>(var_1.x, u_input.c, var_1.x, -17006i), vec4<f32>(726f, arg_0, 331f, 1112f), vec3<bool>(false, false, false), vec4<u32>(arg_2.x, 43888u, var_3.x, u_input.b))))).b.a.x), -1445f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(3038f - -479f), select(vec3<u32>(u_input.a, 10606u, 4294967295u), vec3<u32>(4294967295u, u_input.a, u_input.b), vec3<bool>(true, false, false)), Struct_4(vec4<f32>(964f, -1867f, -200f, 1312f), vec4<f32>(-746f, 1000f, 891f, 968f), Struct_2(-504f, Struct_1(vec4<i32>(u_input.c, u_input.c, -21662i, -2120i), vec4<f32>(-2313f, -178f, 1000f, -1530f), vec3<bool>(false, true, true), vec4<u32>(37017u, 0u, 0u, 0u)))), Struct_4(vec4<f32>(619f, 1000f, 1060f, -1000f), vec4<f32>(-1000f, 1590f, 1000f, 239f), Struct_2(1227f, Struct_1(vec4<i32>(u_input.c, 0i, u_input.c, u_input.c), vec4<f32>(1338f, -1823f, 1121f, 1000f), vec3<bool>(false, false, false), vec4<u32>(u_input.b, 31943u, 13126u, 0u)))))) + _wgslsmith_f_op_f32(func_2(u_input.c, true, false).d.b.x + -1231f))), 1u, firstLeadingBit(_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.b, u_input.a), vec2<u32>(1u, u_input.a), true) >> (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), abs(vec2<u32>(u_input.b, 83254u) | vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1296f) * _wgslsmith_f_op_f32(-1f)));
}

