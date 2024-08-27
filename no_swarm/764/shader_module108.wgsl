struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = !arg_1.x;
    let var_1 = Struct_1(_wgslsmith_mod_u32(72038u, firstTrailingBit(firstTrailingBit(abs(30596u)))));
    var var_2 = Struct_1(var_1.a);
    var var_3 = u_input.e;
    var_2 = var_1;
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1291f)), -122f, -283f)), 66564i, u_input.e);
    var_0 = Struct_2(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x)))), 812f), 19468i, countOneBits(var_0.c));
    var var_1 = vec4<bool>(!(!(!any(vec3<bool>(false, false, false)))), all(select(vec4<bool>(false, true, all(vec3<bool>(false, true, false)), true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(69195i < arg_2, u_input.b.x < arg_0.a, 60302u != arg_0.a, true))), select(arg_1.a >= ~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(13849u, arg_0.a, 0u, arg_0.a)), true, !all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), (!(var_0.c.x > 14216i) | ((1684f > var_0.a.x) && (arg_0.a > 1u))) != any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)));
    var_1 = !(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), select(!vec4<bool>(var_1.x, false, false, var_1.x), select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(true, false, false, var_1.x), true), vec4<bool>(var_1.x, true, var_1.x, true)), !vec4<bool>(false, false, false, var_1.x)));
    let var_2 = Struct_2(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(var_0.a.x)), -879f), i32(-1i) * -_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2, arg_2, 13724i), vec3<i32>(1i, 14143i, 2147483647i)), (vec4<i32>(-1i) * -vec4<i32>(arg_2, var_0.b, 21092i, -2147483647i)) << ((_wgslsmith_sub_vec4_u32(~u_input.b, select(vec4<u32>(87681u, 1u, arg_1.a, arg_0.a), vec4<u32>(arg_0.a, 1u, 0u, 1u), vec4<bool>(true, true, false, var_1.x))) << (vec4<u32>(arg_1.a & u_input.d, 1u, 4294967295u, select(arg_1.a, 1u, var_1.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return select(vec2<bool>(all(!(!vec2<bool>(true, var_1.x))), false), !var_1.xz, any(var_1.zy));
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    return func_2(arg_0.x, !select(vec4<bool>(false && arg_0.x, select(false, arg_0.x, arg_0.x), all(arg_0), !arg_0.x), vec4<bool>(arg_0.x, !arg_0.x, true, !arg_0.x), true));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-863f)), 1108f)))), 1000f, -893f), i32(-1i) * -1i, ~(~vec4<i32>(-u_input.e.x, ~(-42035i), u_input.c, ~u_input.a)));
    var var_1 = Struct_1(_wgslsmith_add_u32(u_input.b.x, arg_1.a));
    let var_2 = 4294967295u;
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a), 37208i, -u_input.e);
    var_1 = arg_1;
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)) * _wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(-1391f, var_0.a.x, -480f), false))) + vec3<f32>(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(sign(780f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1328f, var_0.a.x)))), _wgslsmith_dot_vec3_i32(select(firstTrailingBit(vec3<i32>(-38875i, 48015i, 78132i)), var_0.c.xzx, select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), func_3(arg_2, arg_1, u_input.e.x).x)), u_input.e.wxw), firstTrailingBit(u_input.e));
}

fn func_1() -> vec3<f32> {
    let var_0 = func_5(1u, Struct_1(u_input.d >> (_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 2881u, u_input.b.x), u_input.b.zxw)) % 32u)), func_4(select(func_3(func_2(false, vec4<bool>(true, true, false, false)), Struct_1(u_input.d), ~u_input.e.x), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), func_3(func_2(true, vec4<bool>(true, false, false, false)), func_2(false, vec4<bool>(false, false, true, true)), ~1i))));
    let var_1 = func_2(u_input.e.x < reverseBits(~21473i >> (func_2(false, vec4<bool>(true, true, true, true)).a % 32u)), vec4<bool>(all(!func_3(Struct_1(u_input.d), Struct_1(0u), u_input.c)), (-1i <= (var_0.b & var_0.c.x)) | any(vec4<bool>(true, true, true, true)), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), false));
    var var_2 = Struct_1(26017u);
    let var_3 = !any(!vec3<bool>(var_2.a == 4294967295u, 969f >= var_0.a.x, true));
    var var_4 = func_2(all(select(select(!vec4<bool>(false, false, true, var_3), !vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(var_3, var_3, true, var_3)), vec4<bool>(!var_3, all(vec2<bool>(true, true)), func_3(var_1, Struct_1(16618u), var_0.c.x).x, var_3 && var_3), !select(vec4<bool>(var_3, true, true, var_3), vec4<bool>(var_3, false, false, var_3), true))), select(select(vec4<bool>(!var_3, true, true, any(vec4<bool>(false, false, true, var_3))), !(!vec4<bool>(var_3, true, false, var_3)), select(!vec4<bool>(false, false, var_3, true), !vec4<bool>(var_3, false, var_3, var_3), vec4<bool>(true, true, true, true))), !(!select(vec4<bool>(var_3, var_3, var_3, true), vec4<bool>(var_3, var_3, var_3, var_3), var_3)), var_3));
    return vec3<f32>(-2191f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(ceil(397f)))), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(493f + _wgslsmith_f_op_f32(-var_0.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1105f, 414f, -1197f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(982f, -671f, 1000f) * vec3<f32>(1000f, -347f, -524f)), vec3<f32>(1984f, -689f, 1034f)))))));
    let var_1 = any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(true, false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), func_3(Struct_1(abs(5155u)), func_2(true, vec4<bool>(false, false, false, false)), _wgslsmith_add_i32(u_input.e.x, firstLeadingBit(13876i)))));
    var var_2 = func_5(~_wgslsmith_mod_u32(4294967295u, ~40631u), func_4(vec2<bool>(var_1, !all(vec4<bool>(var_1, false, var_1, false)))), Struct_1(abs(1u)));
    let var_3 = func_5(~(~u_input.d), func_2(var_1, !vec4<bool>(var_1, func_3(Struct_1(34618u), Struct_1(61445u), var_2.b).x, !var_1, func_3(Struct_1(94331u), Struct_1(4294967295u), 0i).x)), func_4(!(!(!vec2<bool>(var_1, var_1)))));
    var var_4 = true;
    var var_5 = var_3;
    let var_6 = u_input.e.xyz;
    let var_7 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a.x, -2498f, 715f, var_2.a.x) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_5.a.x, 1056f, 562f, var_3.a.x)))) - vec4<f32>(-1619f, _wgslsmith_f_op_f32(636f * 1180f), var_5.a.x, _wgslsmith_f_op_f32(abs(var_3.a.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 1000f, 463f, var_2.a.x), vec4<f32>(-1444f, 861f, -843f, -480f))))))), vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_3.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1294f))))));
    var var_8 = Struct_1(select(u_input.b.x, _wgslsmith_mult_u32(firstLeadingBit(18534u), ~4294967295u), select(false, all(!vec4<bool>(var_1, var_1, true, true)), var_3.a.x > _wgslsmith_f_op_f32(abs(-403f)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b.yy, select(vec2<u32>(~1157u, 4294967295u ^ var_8.a), vec2<u32>(4294967295u, u_input.b.x) | ~vec2<u32>(u_input.b.x, var_8.a), true), vec2<bool>(!any(vec4<bool>(false, false, var_1, var_1)), func_3(func_4(vec2<bool>(true, var_1)), Struct_1(u_input.d), -12561i).x)), firstTrailingBit(select(vec3<u32>(10675u, 0u, _wgslsmith_mod_u32(0u, var_8.a)), ~abs(u_input.b.yyx), vec3<bool>(var_1 || false, true, u_input.a > -5419i))));
}

