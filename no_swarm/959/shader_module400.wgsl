struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(select(arg_0.d, arg_0.d, arg_0.d));
    var var_1 = firstLeadingBit(arg_0.c << (~1u % 32u));
    var_1 = firstTrailingBit(-2147483647i);
    var var_2 = Struct_2(vec3<bool>(all(arg_0.d.xz), !any(select(vec4<bool>(true, true, false, arg_0.b), vec4<bool>(true, true, false, arg_0.b), false)), true));
    var var_3 = ~0u;
    return arg_0.a;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2.e.x)), 1f)), _wgslsmith_f_op_f32(-1f) <= arg_2.e.x, _wgslsmith_mod_i32(i32(-1i) * -25204i, _wgslsmith_mod_i32(0i, arg_2.c)), select(select(select(!arg_2.d, vec3<bool>(arg_2.d.x, true, arg_2.b), arg_2.d.x), select(select(arg_2.d, arg_2.d, false), select(arg_2.d, vec3<bool>(arg_2.d.x, true, arg_1), arg_2.b), !arg_2.b), vec3<bool>(true, arg_2.b, any(vec2<bool>(arg_1, arg_2.d.x)))), select(select(vec3<bool>(arg_2.d.x, true, false), arg_2.d, 0i >= u_input.a.x), select(arg_2.d, !vec3<bool>(arg_1, false, true), arg_2.d), arg_2.b), true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a.x, arg_2.e.x, 360f), vec3<f32>(arg_2.a.x, 584f, -1336f), arg_2.d))))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) - _wgslsmith_f_op_f32(trunc(arg_2.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.e.xx))), arg_2.d.xx)), var_0.b, 2147483647i, !var_0.d, _wgslsmith_f_op_vec3_f32(trunc(arg_2.e)));
    var var_1 = arg_2;
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -764f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.e.x * -1486f), _wgslsmith_div_f32(254f, -338f)) + -1000f)), var_1.d.x, min(var_0.c, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-42323i, var_1.c, 2147483647i, var_0.c), firstTrailingBit(vec4<i32>(0i, var_0.c, var_1.c, 37560i))), abs(vec4<i32>(arg_2.c, u_input.a.x, arg_2.c, var_0.c)))), select(vec3<bool>(true, true, !(arg_2.a.x != arg_0)), !vec3<bool>(arg_2.e.x > 876f, var_0.d.x, !var_0.d.x), vec3<bool>(var_1.d.x, false, true)), vec3<f32>(_wgslsmith_f_op_f32(round(-984f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e.x, -1000f)) * _wgslsmith_f_op_f32(max(-608f, var_0.a.x))), 629f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-846f, 448f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
    var_1 = arg_2;
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -329f), _wgslsmith_f_op_vec2_f32(func_3(arg_2)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.x + arg_2.a.x))), arg_0), vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) - -917f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) + _wgslsmith_f_op_f32(187f - arg_0))), var_0.e.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(286f, 1000f, true)) + -819f), 1f, -1589f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1167f, 431f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1183f * -2464f), _wgslsmith_f_op_f32(648f * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)), -898f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1809f, -1159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1258f * 1061f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f - 384f) - 1189f)), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f) + _wgslsmith_f_op_f32(f32(-1f) * -1137f)), true, Struct_1(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(1083f, 1030f), false, u_input.a.x, vec3<bool>(true, false, true), vec3<f32>(609f, 1052f, -372f)))), true, u_input.a.x, vec3<bool>(false, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-820f, -1031f, -314f) - vec3<f32>(663f, 1172f, 1000f))), vec3<u32>(1u, 1u, 1u))))));
    var var_1 = (u_input.a.x >= 1i) || (all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))) && all(vec3<bool>(true, true, true)));
    var_1 = true;
    var var_2 = Struct_2(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec2<bool>(true, true)), any(vec4<bool>(true, false, false, false)))), vec3<bool>(select(true, select(true, false, true), all(vec3<bool>(false, false, true))), -u_input.a.x > 2147483647i, true), vec3<bool>(all(vec3<bool>(true, false, false)), true, true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(175f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-223f)) * _wgslsmith_div_f32(666f, var_0.x))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -744f), any(vec3<bool>(var_2.a.x, false, true)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1008f, 1000f) - var_0.wy), true, u_input.a.x, !var_2.a, _wgslsmith_f_op_vec3_f32(trunc(var_0.www))), vec3<u32>(4294967295u, 1u, ~1u))).x), false, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.xw * var_0.zy), _wgslsmith_f_op_vec2_f32(sign(var_0.yz)), !var_2.a.x)), var_0.yx), !(!var_2.a.x) && var_2.a.x, 1i, vec3<bool>(var_2.a.x, all(vec4<bool>(var_2.a.x, var_2.a.x, true, false)), var_2.a.x | true), vec3<f32>(var_0.x, -667f, var_0.x)), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), 1u, 87877u)), firstTrailingBit(vec3<u32>(1u, 14089u, abs(1u))))));
    return Struct_1(var_0.yz, false, u_input.a.x, vec3<bool>(true, u_input.a.x != -_wgslsmith_mod_i32(u_input.a.x, 26011i), (-2147483647i | u_input.a.x) > max(u_input.a.x, abs(u_input.a.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zyw + vec3<f32>(var_0.x, -308f, -788f)) + _wgslsmith_f_op_vec3_f32(var_3.wzy * var_3.zwx)), var_3.xyx, var_2.a.x)))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = -590f;
    var_0 = 1036f;
    let var_1 = func_2();
    let var_2 = -u_input.a.yz ^ select(u_input.a.zx, ~u_input.a.zy, vec2<bool>(any(vec4<bool>(arg_2, var_1.b, arg_2, false)) | any(vec4<bool>(var_1.b, true, true, arg_2)), !all(vec3<bool>(true, true, var_1.d.x))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-940f * -1000f)));
    return countOneBits(arg_1.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<f32>) -> StorageBuffer {
    var var_0 = false;
    let var_1 = vec2<f32>(arg_2.x, 907f);
    var_0 = true;
    return StorageBuffer(abs(~17620u | ~(arg_1 >> (21160u % 32u))), arg_2.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5((vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 16611i, 17682i), vec4<i32>(18487i, -29121i, 34519i, 2147483647i))) << ((select(select(vec4<u32>(1u, 4294967295u, 1u, 20839u), vec4<u32>(39784u, 0u, 1u, 32719u), true), ~vec4<u32>(40092u, 0u, 6463u, 1154u), true) | _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, 0u, 1u, 6968u), vec4<u32>(1u, 1u, 635u, 66016u)), vec4<u32>(0u, 0u, 121035u, 0u), vec4<u32>(0u, 0u, 4397u, 3680u))) % vec4<u32>(32u)), func_1(~1u, vec2<u32>(~4294967295u, _wgslsmith_mult_u32(1u, 0u) | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 78675u), vec2<u32>(41413u, 99791u))), true, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1824f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1690f, 412f), vec2<f32>(-495f, -1144f), false))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(223f, -683f), vec2<f32>(595f, -464f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1490f, -1222f)))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(111f)), _wgslsmith_f_op_f32(max(740f, -231f))), -732f)));
}

