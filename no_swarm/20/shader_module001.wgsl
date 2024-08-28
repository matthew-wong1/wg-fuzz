struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    var var_0 = Struct_2(arg_0.c.a, Struct_1(max(arg_1.a.x, _wgslsmith_sub_i32(1i, select(u_input.b, -18573i, arg_1.b.c.x))), _wgslsmith_clamp_vec4_i32(min(arg_0.c.b.b, arg_0.c.b.b), ~_wgslsmith_mod_vec4_i32(arg_0.c.b.b, arg_1.b.b), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.a, arg_1.b.b.x, arg_1.b.a, -23201i), vec4<i32>(arg_0.c.b.b.x, arg_1.a.x, -2147483647i, arg_0.e)), firstTrailingBit(arg_0.c.b.b))), select(vec3<bool>(true, true, !arg_1.b.c.x), select(select(vec3<bool>(arg_1.b.c.x, false, arg_1.c), arg_0.b.zyx, vec3<bool>(false, arg_0.a, false)), select(vec3<bool>(arg_1.b.c.x, false, false), vec3<bool>(true, true, arg_1.b.c.x), arg_0.c.b.c.x), true), !select(vec3<bool>(arg_0.a, false, arg_1.c), vec3<bool>(true, false, arg_0.a), arg_0.b.wyx))), !(!(arg_1.b.c.x | false)) && !(u_input.d == _wgslsmith_clamp_u32(12749u, u_input.c, 1u)));
    let var_1 = arg_0.d.yz;
    var var_2 = vec4<u32>(~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(17410u, u_input.c, 33005u, 20210u), vec4<u32>(4294967295u, 4294967295u, 5828u, 17014u)), u_input.c)), u_input.c, ~u_input.d, countOneBits(0u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, _wgslsmith_f_op_f32(-1086f + 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.d.x)))));
    return !(-var_0.b.a == arg_0.e);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> i32 {
    let var_0 = arg_0.c;
    let var_1 = all(vec4<bool>(!(func_3(Struct_3(arg_0.b.c.x, vec4<bool>(true, arg_0.b.c.x, false, var_0), Struct_2(u_input.a.zx, Struct_1(-11656i, arg_0.b.b, vec3<bool>(true, arg_0.c, false)), true), vec3<f32>(519f, 1225f, -860f), arg_0.a.x), Struct_2(vec2<i32>(1i, 1i), arg_0.b, var_0)) | func_3(Struct_3(false, vec4<bool>(false, false, var_0, false), arg_0, vec3<f32>(-224f, 359f, 1828f), -8262i), arg_0)), true, any(!vec3<bool>(var_0, true, true)), true));
    let var_2 = ~(-arg_0.b.b.xzz);
    var var_3 = Struct_3(true, select(!select(vec4<bool>(true, true, var_1, var_1), select(vec4<bool>(var_0, true, arg_0.c, var_1), vec4<bool>(true, arg_0.b.c.x, false, true), vec4<bool>(var_1, var_1, var_0, var_1)), var_1), vec4<bool>(true, false, var_1, false & !arg_0.c), true), Struct_2(arg_0.a, Struct_1(var_2.x, select(firstLeadingBit(vec4<i32>(-1i, -2147483647i, 15851i, -6398i)), arg_0.b.b, vec4<bool>(true, true, arg_0.b.c.x, var_1)), select(vec3<bool>(arg_0.b.c.x, true, arg_0.c), !arg_0.b.c, vec3<bool>(arg_0.b.c.x, var_0, true))), false), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -2093f, -1333f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-308f, 585f, -255f), vec3<f32>(-1742f, -708f, 713f)))), vec3<f32>(1000f, -2115f, _wgslsmith_f_op_f32(f32(-1f) * -288f))))), u_input.b);
    var var_4 = var_3.c.b;
    return ~(-69900i);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x) + -1078f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -610f) * _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(step(arg_0.x, -814f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(-248f, arg_0.x))), arg_0.x)));
    var var_1 = arg_1.b;
    let var_2 = 1u;
    var_1 = Struct_1(7299i, arg_1.b.b, vec3<bool>(true, arg_1.c, all(arg_1.b.c)));
    let var_3 = 81563u;
    return ~vec3<u32>(firstTrailingBit(~3119u), ~abs(min(var_3, u_input.d)), ~reverseBits(26538u));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.d, u_input.d & 50070u, ~19363u) & ~vec3<u32>(u_input.c, 6171u, u_input.d)), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1628f, -426f, 1324f, -1254f), vec4<f32>(319f, -756f, 1140f, 942f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-188f, -2309f, 275f, 185f)))))), Struct_2(u_input.a.zz, Struct_1(func_2(Struct_2(vec2<i32>(u_input.a.x, u_input.b), Struct_1(10438i, vec4<i32>(-1i, u_input.b, u_input.b, -23896i), vec3<bool>(true, false, false)), false), vec2<u32>(u_input.c, 1u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.a.x, 0i), vec4<i32>(-55242i, 2147483647i, 37064i, u_input.a.x)), vec3<bool>(false, false, false)), true)));
    let var_1 = Struct_3(true & (u_input.c != 4910u), vec4<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), true, true, false), Struct_2(-((vec2<i32>(2147483647i, u_input.b) >> (vec2<u32>(u_input.c, 12868u) % vec2<u32>(32u))) << (~vec2<u32>(u_input.d, 14228u) % vec2<u32>(32u))), Struct_1(~_wgslsmith_mult_i32(u_input.b, 38308i), vec4<i32>(countOneBits(u_input.a.x), u_input.a.x, -52975i, u_input.a.x), vec3<bool>(true, true, true)), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(429f * -454f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-545f, 413f)), 1f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))), u_input.a.x);
    var_0 = 4294967295u;
    var_0 = 4294967295u;
    var var_2 = var_1.d.x;
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-u_input.a, u_input.a), -2147483647i), var_1.c.b.b, vec3<bool>(var_1.c.c, any(vec3<bool>(true, true, true)), any(var_1.b.zyw)));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_3(true, select(vec4<bool>(arg_2.c.x, true, all(arg_2.c.xz), 4294967295u == arg_3.x), select(vec4<bool>(all(arg_2.c), func_1().c.x, true, true), vec4<bool>(arg_2.c.x && arg_2.c.x, func_1().c.x, any(vec4<bool>(false, true, arg_2.c.x, true)), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x), vec4<bool>(arg_2.c.x, true, true, true)), !vec4<bool>(true, arg_2.c.x, true, true), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x))), all(!vec2<bool>(arg_2.c.x, false)) | (false != all(vec4<bool>(arg_2.c.x, false, arg_2.c.x, arg_2.c.x)))), Struct_2(((u_input.a.yz >> (arg_3.yz % vec2<u32>(32u))) << (vec2<u32>(u_input.c, u_input.d) % vec2<u32>(32u))) | vec2<i32>(countOneBits(-20114i), ~arg_2.a), Struct_1(1i, arg_2.b, !vec3<bool>(true, true, arg_2.c.x)), true), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1170f, arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + -1000f), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - arg_0)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-754f, 894f, arg_0)))))), 1i);
    var_0 = Struct_3(true, vec4<bool>(true, arg_2.c.x, false || var_0.a, any(func_1().c.xx)), Struct_2(func_1().b.yw, Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e, -1650i, -1i), var_0.c.b.b.wzz), -max(var_0.c.b.b, vec4<i32>(22069i, -1i, -1i, var_0.c.b.a)), func_1().c), var_0.c.c), vec3<f32>(1260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1074f * var_0.d.x))), -107f), 3999i);
    var var_1 = var_0.c.b;
    var_1 = arg_2;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -577f) >= _wgslsmith_f_op_f32(-839f - _wgslsmith_f_op_f32(-var_0.d.x)), select(select(var_0.b, vec4<bool>(false, !var_0.a, var_1.a != var_0.c.b.a, !var_0.c.c), var_1.c.x), vec4<bool>(var_1.c.x, false, any(vec2<bool>(var_0.c.c, true)), true), !var_0.a), Struct_2(select(vec2<i32>(1i, var_1.a) >> (~vec2<u32>(0u, 21942u) % vec2<u32>(32u)), vec2<i32>(u_input.b, 2147483647i) & -vec2<i32>(var_0.c.a.x, -2147483647i), select(vec2<bool>(var_1.c.x, arg_2.c.x), select(arg_2.c.yx, var_1.c.yy, true), select(var_0.b.xy, arg_2.c.yz, var_0.c.b.c.xx))), Struct_1(select(~arg_1, ~1i, !var_0.a), ~countOneBits(var_0.c.b.b), var_0.b.wzw), var_0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-345f + _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(round(var_0.d.x)), 368f)), max(~(-abs(-20511i)), ~54044i));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-867f, 328i, func_1(), vec3<u32>(func_4(vec4<f32>(1711f, _wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(step(-533f, 1254f)), 1310f), Struct_2(max(u_input.a.yy, vec2<i32>(6492i, u_input.b)), func_1(), all(vec4<bool>(false, true, false, false)))).x, u_input.d, 68208u));
    let var_1 = 72150i | ~(~func_2(Struct_2(u_input.a.yz, Struct_1(-14702i, vec4<i32>(u_input.a.x, u_input.a.x, var_0.b.b.x, u_input.b), vec3<bool>(true, var_0.c, var_0.c)), true), vec2<u32>(74090u, 6434u)));
    let var_2 = func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(774f - 1303f))), ~select(2147483647i, ~select(var_0.b.b.x, u_input.a.x, false), var_0.b.c.x), func_1(), vec3<u32>(select(7284u, u_input.d, any(vec4<bool>(true, true, true, true))), firstTrailingBit(_wgslsmith_mod_u32(u_input.d, _wgslsmith_clamp_u32(6587u, 0u, 4294967295u))), abs(u_input.d)));
    let var_3 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1188f + -154f) * -627f), _wgslsmith_clamp_i32(13156i, 38622i, var_2.a.x), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(min(-2147483647i, 34269i), var_1), select(_wgslsmith_add_vec2_i32(u_input.a.xz, vec2<i32>(var_0.b.a, -2147483647i)), _wgslsmith_add_vec2_i32(u_input.a.zz, u_input.a.xy), var_2.b.c.zy)), abs(select(var_0.b.b | var_2.b.b, _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a.x, var_2.b.b.x, 21485i, 2840i), vec4<i32>(var_1, 0i, 1i, u_input.a.x)), !var_2.b.c.x)), select(var_0.b.c, vec3<bool>(select(var_0.b.c.x, false, var_0.b.c.x), var_2.c & false, var_0.c), select(vec3<bool>(var_2.c, false, false), func_1().c, vec3<bool>(true, var_2.b.c.x, var_2.c)))), ~(~(~(~vec3<u32>(6990u, 64051u, u_input.c)))));
    var_0 = var_2;
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_3.b.b.xxw, vec4<i32>(_wgslsmith_div_i32(abs(2147483647i), ~(~(-553i))), -1i ^ var_1, var_0.b.b.x, var_0.a.x), ~countOneBits(0u));
}

