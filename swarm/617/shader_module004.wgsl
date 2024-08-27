struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = !(!(!any(vec2<bool>(false, false))));
    var var_1 = _wgslsmith_sub_u32(u_input.a, 1u);
    var_0 = true;
    var_0 = true;
    var_0 = !all(vec2<bool>(any(vec2<bool>(true, true)), true));
    return abs(i32(-1i) * -1i);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = -4322i;
    var var_1 = Struct_3(firstTrailingBit(69521u) & u_input.a, vec3<bool>(all(vec4<bool>(true, true, arg_2.a.x, false)), !(!arg_3.b.x), true));
    var var_2 = _wgslsmith_sub_vec2_u32(select(vec2<u32>(abs(4294967295u), ~var_1.a), vec2<u32>(18126u, reverseBits(~34027u)), !(!arg_3.b.yz)), select(abs(countOneBits(vec2<u32>(u_input.a, var_1.a))) | _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(101561u, u_input.a)), ~vec2<u32>(60804u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1.a), reverseBits(vec2<u32>(var_1.a, 0u)))), u_input.a < ~firstLeadingBit(1u)));
    var var_3 = Struct_4(Struct_2(var_1.b, ~_wgslsmith_mod_vec2_i32(select(vec2<i32>(26838i, arg_2.c), vec2<i32>(1i, -24717i), arg_3.a), -vec2<i32>(53350i, var_0)), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -1485f), _wgslsmith_f_op_f32(sign(arg_1.x))), arg_0, Struct_1(!arg_2.a, !vec3<bool>(arg_2.b.x, arg_2.a.x, false), 33104i)), Struct_2(!arg_0.b, _wgslsmith_add_vec2_i32(vec2<i32>(18185i, arg_3.c) << (~vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u)), min(vec2<i32>(2147483647i, -2147483647i) | vec2<i32>(var_0, 1i), vec2<i32>(2147483647i, 55518i) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))), arg_1.wzw, arg_3, Struct_1(vec2<bool>(all(vec4<bool>(false, false, arg_2.b.x, arg_2.a.x)), true), !(!arg_3.b), -abs(arg_3.c))), arg_2);
    var_3 = Struct_4(Struct_2(var_1.b, ~firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.c, 28010i), vec2<i32>(-28554i, var_0))), vec3<f32>(var_3.b.c.x, _wgslsmith_f_op_f32(max(var_3.b.c.x, _wgslsmith_f_op_f32(arg_1.x - 262f))), _wgslsmith_f_op_f32(exp2(arg_1.x))), Struct_1(vec2<bool>(arg_2.a.x, true), arg_2.b, -6174i), var_3.a.d), var_3.b, arg_2);
    return false;
}

fn func_2() -> vec4<bool> {
    var var_0 = true == all(vec2<bool>(true, select(u_input.a, 13219u, false) > abs(74585u)));
    var_0 = u_input.a <= ~abs(1u);
    var_0 = true;
    var var_1 = Struct_4(Struct_2(vec3<bool>(true, false, true), select(-vec2<i32>(0i, -40049i), vec2<i32>(-35579i, -31443i), select(vec2<bool>(true, false), vec2<bool>(false, false), true)) ^ vec2<i32>(1i, ~1i), vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(463f, -962f), _wgslsmith_f_op_f32(f32(-1f) * -453f)))), Struct_1(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), func_3(Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), -1i), vec4<f32>(1550f, -1741f, -700f, 443f), Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, true), -34290i), Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, false), 1i))), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), func_1(~vec2<u32>(13u, 44433u))), Struct_1(vec2<bool>(true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), 1i)), Struct_2(vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true), min(_wgslsmith_sub_vec2_i32(vec2<i32>(-40734i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 19799i), vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, -15501i))), vec2<i32>(2855i, ~1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(871f)), -991f, _wgslsmith_f_op_f32(ceil(585f)))), Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, true), firstTrailingBit(1i)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), ~1i)), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, true)))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), -75147i));
    var var_2 = Struct_2(vec3<bool>(!(!func_3(var_1.b.d, vec4<f32>(var_1.b.c.x, -1233f, -166f, var_1.a.c.x), var_1.c, var_1.c)), var_1.a.e.a.x, false), ~(-vec2<i32>(var_1.a.b.x, 5386i)) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) << (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(1u, 1u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(496f, var_1.b.c.x, var_1.b.c.x))))))), var_1.c, var_1.a.d);
    return vec4<bool>(var_2.d.b.x, any(!(!var_1.a.a)), var_2.a.x, (var_1.c.b.x && true) && var_1.c.a.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = -430f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1343f, 500f), _wgslsmith_f_op_f32(trunc(-2074f)))) - -259f)));
    var var_1 = Struct_1(vec2<bool>(true, all(func_2().wx)), arg_0.xwy, i32(-1i) * -(~1i));
    let var_2 = Struct_4(Struct_2(func_2().yzx, firstTrailingBit(vec2<i32>(var_1.c << (u_input.a % 32u), 2147483647i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-106f, -851f, 456f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-219f, 555f, -898f)))))), Struct_1(arg_1.xx, !vec3<bool>(arg_1.x, false, false), min(1i, abs(var_1.c))), Struct_1(arg_0.xz, !(!arg_1.xxz), var_1.c)), Struct_2(vec3<bool>(true, true, true), _wgslsmith_sub_vec2_i32(select(firstLeadingBit(vec2<i32>(8583i, -27230i)), abs(vec2<i32>(2147483647i, 12169i)), all(vec3<bool>(arg_1.x, true, arg_1.x))), ~firstTrailingBit(vec2<i32>(var_1.c, -63095i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1948f, -906f, -1373f)))))), Struct_1(!func_2().xx, arg_0.zzw, 4042i), Struct_1(vec2<bool>(arg_0.x, all(vec3<bool>(arg_0.x, false, var_1.b.x))), vec3<bool>(true, var_1.b.x, var_1.b.x), -34691i)), Struct_1(var_1.b.yz, !vec3<bool>(func_3(Struct_1(arg_1.zy, var_1.b, -2147483647i), vec4<f32>(-812f, -565f, 466f, -1404f), Struct_1(var_1.b.xy, vec3<bool>(false, arg_0.x, false), var_1.c), Struct_1(var_1.b.yx, vec3<bool>(false, false, true), -47929i)), func_3(Struct_1(vec2<bool>(false, true), vec3<bool>(arg_1.x, true, true), var_1.c), vec4<f32>(-736f, 1662f, 474f, 627f), Struct_1(arg_1.zz, vec3<bool>(false, var_1.a.x, arg_0.x), -2147483647i), Struct_1(arg_0.ww, vec3<bool>(false, arg_0.x, true), 1i)), true), -1i));
    let var_3 = var_2.b.d.c;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<bool>(!any(vec2<bool>(true, true)) | true, true, true && (func_1(vec2<u32>(u_input.a, 1u)) > _wgslsmith_clamp_i32(46007i, -24022i, -21398i)), true), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(select(false, true, false), true, false, true)), vec4<bool>(true, any(vec2<bool>(true, true)), false, all(vec2<bool>(true, true))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), func_2()), any(vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(0u, 0u));
    let var_2 = vec2<bool>(func_2().x, all(vec3<bool>(all(vec3<bool>(false, var_0.a.x, var_0.a.x)), false, true || any(vec4<bool>(var_0.a.x, var_0.d.b.x, true, var_0.e.b.x)))));
    var var_3 = Struct_3(abs(~(~(u_input.a << (u_input.a % 32u)))), !func_4(func_2(), select(!vec4<bool>(true, false, var_0.a.x, var_2.x), vec4<bool>(var_0.d.a.x, var_2.x, var_0.d.b.x, var_0.a.x), true)).d.b);
    var_0 = func_4(func_2(), !select(!vec4<bool>(var_2.x, var_3.b.x, var_3.b.x, var_0.d.a.x), !select(vec4<bool>(var_2.x, false, var_0.a.x, true), vec4<bool>(false, false, var_2.x, false), vec4<bool>(var_2.x, false, false, true)), select(select(vec4<bool>(true, var_3.b.x, var_0.a.x, false), vec4<bool>(false, true, var_2.x, false), vec4<bool>(true, var_0.d.a.x, false, false)), func_2(), vec4<bool>(var_2.x, false, var_2.x, true))));
    var var_4 = Struct_2(select(vec3<bool>(false, var_2.x, true || !var_0.a.x), vec3<bool>(var_0.a.x & !var_3.b.x, !(!var_3.b.x), _wgslsmith_dot_vec2_i32(var_0.b, vec2<i32>(var_0.d.c, -21173i)) >= var_0.b.x), !vec3<bool>(var_0.e.b.x, var_2.x & true, var_0.c.x != var_0.c.x)), min(vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, var_0.b.x, var_0.e.c, var_0.e.c)), vec4<i32>(1i, 0i, var_0.d.c, var_0.b.x)), _wgslsmith_sub_i32(func_4(vec4<bool>(var_0.d.a.x, false, var_2.x, var_3.b.x), vec4<bool>(false, var_0.a.x, var_2.x, false)).d.c, var_0.e.c)), vec2<i32>(var_0.e.c, -firstLeadingBit(var_0.d.c))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(step(-625f, _wgslsmith_f_op_f32(min(var_0.c.x, 1577f))))))), var_0.d, func_4(vec4<bool>(true, !(!var_2.x), abs(u_input.a) < var_3.a, (var_0.a.x | var_3.b.x) || func_3(Struct_1(vec2<bool>(var_2.x, true), var_0.d.b, 42264i), vec4<f32>(-538f, -917f, -2042f, var_0.c.x), var_0.d, Struct_1(var_0.e.a, vec3<bool>(var_0.a.x, var_3.b.x, false), 1i))), !(!vec4<bool>(var_3.b.x, false, var_2.x, true))).d);
    var var_5 = reverseBits(~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(60865u, var_3.a, u_input.a, 38689u), abs(vec4<u32>(u_input.a, 24943u, 4294967295u, 44100u))), vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a, u_input.a), 40253u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, 4294967295u, var_3.a, u_input.a), vec4<u32>(var_3.a, 13513u, u_input.a, u_input.a)))));
    var_0 = Struct_2(select(!select(vec3<bool>(false, true, false), var_3.b, select(vec3<bool>(false, false, var_2.x), var_4.d.b, var_0.e.b.x)), !var_0.e.b, !var_2.x), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 505f, -692f)), var_4.c)), var_0.c) - var_0.c), var_0.d, func_4(func_2(), vec4<bool>(true, !select(var_2.x, true, var_0.a.x), (var_3.b.x | false) && true, func_2().x)).e);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4.c.x, -826f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x))))), -_wgslsmith_mult_vec2_i32(vec2<i32>(-var_0.d.c, 2147483647i), var_0.b), firstLeadingBit(var_0.e.c), firstLeadingBit(~(_wgslsmith_dot_vec2_u32(var_5.xz, var_5.yx) >> (~0u % 32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c.x) + var_0.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-136f, 1847f, var_2.x)))), var_4.c.x))));
}

