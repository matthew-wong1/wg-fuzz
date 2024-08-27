struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.b.c.x);
    let var_1 = Struct_1(all(vec4<bool>(true, arg_3.a, arg_1, true)), _wgslsmith_sub_vec3_i32(arg_3.b.xww, countOneBits(u_input.e.zxy)), -(i32(-1i) * -_wgslsmith_clamp_i32(arg_3.b.x, -2147483647i, 2147483647i)));
    let var_2 = Struct_1(select(true, all(!(!vec3<bool>(var_1.a, arg_1, true))), false), u_input.e.xzy, var_1.c);
    let var_3 = ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(0i, arg_2.b.b.x), arg_2.b.b.x, max(0i, i32(-1i) * -2147483647i)), arg_3.b.x);
    var var_4 = u_input.d;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-880f, -988f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -574f))))), _wgslsmith_f_op_f32(floor(arg_2.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(686f, arg_3.c.x) - 2048f), any(select(vec4<bool>(var_1.a, arg_3.a, true, false), vec4<bool>(true, arg_0.a, true, true), arg_1))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> Struct_2 {
    let var_0 = vec4<bool>(!arg_2.a.a, arg_3.a.a, arg_2.b.a, any(vec3<bool>(any(vec3<bool>(arg_3.b.a, arg_3.c.x, arg_3.b.a)), arg_2.a.c.x < 1439f, arg_2.a.a)) & (42814u > u_input.b.x));
    let var_1 = ~abs(firstTrailingBit(countOneBits(u_input.c.yx) ^ ~vec2<u32>(1u, u_input.c.x)));
    var var_2 = Struct_4(arg_2.a, arg_3.b, arg_3.c);
    var var_3 = Struct_2(false, abs(abs(abs(vec4<i32>(-28262i, u_input.a.x, arg_2.b.c, 53192i)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(true, u_input.e, vec4<f32>(713f, var_2.a.c.x, -977f, arg_3.a.c.x)), any(select(arg_3.c, var_2.c, false)), Struct_3(select(arg_2.c.yx, vec2<bool>(false, var_0.x), arg_3.c.yy), Struct_2(arg_2.c.x, arg_2.a.b, arg_2.a.c)), var_2.a)), arg_3.a.c));
    var_3 = Struct_2(all(!(!(!vec2<bool>(var_2.a.a, false)))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-abs(vec4<i32>(arg_3.b.b.x, arg_3.b.c, 5747i, arg_3.b.c)), _wgslsmith_mod_vec4_i32(select(arg_2.a.b, vec4<i32>(-95433i, u_input.a.x, var_2.a.b.x, var_2.b.b.x), vec4<bool>(arg_2.c.x, var_2.b.a, true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(-10358i, 33613i, arg_2.a.b.x, 1i), vec4<i32>(-61821i, var_3.b.x, -8945i, 33682i)))), firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(arg_3.a.b.x, var_3.b.x), 4811i >> (1u % 32u), ~2147483647i, -15842i))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.a.c.x))) + arg_3.a.c.x), arg_3.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a.c.x), _wgslsmith_f_op_f32(-arg_2.a.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -341f)));
    return Struct_2(!(select(15187i, u_input.e.x ^ 2147483647i, false) < u_input.a.x), ~vec4<i32>(-var_2.b.c, var_2.a.b.x, ~arg_3.b.c, i32(-1i) * -arg_3.b.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_3.c.x)))), var_2.a.c.x, var_3.c.x, var_3.c.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = vec3<i32>(min(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a.b.x, arg_1.b.x, u_input.a.x), vec3<i32>(-2147483647i, arg_3.b.c, arg_3.b.c))), func_2(vec3<f32>(arg_3.a.c.x, arg_3.a.c.x, -1000f), ~u_input.d.x, arg_3, Struct_4(Struct_2(true, arg_3.a.b, arg_1.c), arg_3.b, arg_0.xzy)).b.x) | -1i, countOneBits(-u_input.a.x), ~(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.e.x, -2147483647i), arg_3.b.b.xz | vec2<i32>(u_input.e.x, -44120i)) << (40719u % 32u)));
    var_0 = arg_1.b.xxw;
    var_0 = (firstTrailingBit(~arg_3.a.b.zzz) << (max((u_input.b.xxw >> (u_input.b.ywz % vec3<u32>(32u))) | reverseBits(u_input.b.yyw), vec3<u32>(countOneBits(u_input.c.x), firstLeadingBit(u_input.c.x), u_input.d.x << (u_input.b.x % 32u))) % vec3<u32>(32u))) | vec3<i32>(countOneBits(u_input.e.x), i32(-1i) * -_wgslsmith_mod_i32(arg_3.a.b.x, arg_3.a.b.x), arg_1.b.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(arg_3.a.c.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-arg_1.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(-arg_1.c.x))))));
    let var_2 = 20752u;
    return !(!(!(!arg_3.c.zy)));
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = vec4<f32>(arg_1, 594f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f) + 1000f)));
    return Struct_3(vec2<bool>(all(!vec4<bool>(arg_2.x, arg_0.x, false, true)), !(!all(vec2<bool>(arg_2.x, arg_2.x)))), Struct_2(false, reverseBits(countOneBits(vec4<i32>(u_input.e.x, arg_3.x, -57106i, arg_3.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * arg_1) - 453f), 1130f, _wgslsmith_f_op_f32(-arg_1), -1000f)));
}

fn func_1() -> vec4<bool> {
    var var_0 = func_5(!func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1127f, -1188f, -1222f)), ~1u, Struct_4(Struct_2(false, vec4<i32>(u_input.a.x, -51719i, 31757i, -2147483647i), vec4<f32>(139f, -262f, -926f, 1025f)), Struct_1(true, u_input.e.zxz, u_input.e.x), vec3<bool>(true, true, false)), Struct_4(Struct_2(true, vec4<i32>(u_input.a.x, u_input.a.x, -7463i, 0i), vec4<f32>(1000f, -243f, -1659f, 226f)), Struct_1(false, vec3<i32>(u_input.e.x, u_input.a.x, u_input.e.x), -2147483647i), vec3<bool>(true, false, false))), vec2<bool>(true, all(vec2<bool>(false, true))), Struct_4(Struct_2(true, u_input.e, vec4<f32>(-966f, 780f, -1468f, 710f)), Struct_1(true, vec3<i32>(u_input.a.x, 0i, u_input.a.x), 0i), vec3<bool>(true, false, true))), 525f, !(!vec4<bool>(true, select(false, false, false), true, any(vec3<bool>(true, false, false)))), u_input.a.zx);
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(234f, var_0.b.c.x, var_0.b.c.x) - vec3<f32>(var_0.b.c.x, 2257f, var_0.b.c.x))))))));
    let var_2 = reverseBits(countOneBits(~vec2<i32>(-22112i, reverseBits(-29724i))));
    let var_3 = 4294967295u;
    var var_4 = _wgslsmith_mult_i32(25909i, _wgslsmith_add_i32(u_input.e.x >> (~u_input.b.x % 32u), -_wgslsmith_dot_vec2_i32(u_input.e.zy, vec2<i32>(34744i, -70162i))));
    return vec4<bool>(true, true, false, !var_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)))), func_1(), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, false))), func_1()), func_1(), !(!any(vec4<bool>(false, false, false, true)))), !vec4<bool>(func_1().x, true, false, any(vec4<bool>(false, true, false, true)) || any(vec4<bool>(false, true, false, false))));
    let var_1 = false;
    var var_2 = Struct_4(func_5(func_5(var_0.zy, _wgslsmith_f_op_f32(ceil(-176f)), vec4<bool>(true, false, func_5(vec2<bool>(false, var_1), 1563f, var_0, u_input.a.zx).b.a, true), u_input.a.yz).a, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_vec4_f32(func_3(func_5(vec2<bool>(true, var_0.x), 2498f, vec4<bool>(var_1, var_0.x, var_0.x, var_1), vec2<i32>(0i, u_input.a.x)).b, true, func_5(var_0.xw, 318f, vec4<bool>(var_1, false, var_0.x, false), vec2<i32>(u_input.a.x, u_input.a.x)), func_2(vec3<f32>(-724f, 211f, -455f), u_input.b.x, Struct_4(Struct_2(true, u_input.e, vec4<f32>(1731f, -721f, -102f, 1135f)), Struct_1(var_0.x, u_input.e.zwx, u_input.e.x), vec3<bool>(true, var_1, var_1)), Struct_4(Struct_2(true, vec4<i32>(57168i, u_input.e.x, u_input.a.x, -712i), vec4<f32>(1465f, 449f, 898f, -381f)), Struct_1(true, vec3<i32>(u_input.e.x, 27168i, 16586i), u_input.e.x), vec3<bool>(var_0.x, true, var_1))))).x), vec4<bool>(!(!var_1), var_1 || true, any(func_4(var_0, Struct_2(true, u_input.e, vec4<f32>(1902f, -542f, -1140f, -1074f)), vec2<bool>(false, true), Struct_4(Struct_2(false, vec4<i32>(-1i, 15961i, -1i, u_input.e.x), vec4<f32>(114f, -808f, 1645f, -1205f)), Struct_1(true, u_input.e.ywx, 2147483647i), vec3<bool>(var_0.x, false, false)))), select(func_5(var_0.wx, 518f, vec4<bool>(true, var_0.x, var_1, false), vec2<i32>(u_input.a.x, u_input.e.x)).b.a, true, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.e.x, 2147483647i))).b, Struct_1(!var_0.x, u_input.a, _wgslsmith_div_i32(-u_input.a.x, _wgslsmith_add_i32(22368i, u_input.a.x)) | max(0i, -u_input.e.x)), vec3<bool>(true, func_5(func_5(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), true), func_5(var_0.wx, -1319f, vec4<bool>(var_1, var_0.x, var_1, true), vec2<i32>(-2147483647i, -2147483647i)).b.c.x, func_1(), vec2<i32>(27931i, -31450i) ^ u_input.a.zx).a, -619f, var_0, -vec2<i32>(6776i, u_input.e.x)).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(180f + 430f) - _wgslsmith_f_op_f32(step(-1036f, -1259f))) < _wgslsmith_f_op_f32(516f * -390f)));
    var_2 = Struct_4(func_5(var_2.c.yz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1136f), var_2.a.c.x), vec4<bool>(func_5(var_2.c.xz, _wgslsmith_f_op_f32(floor(-1599f)), select(vec4<bool>(var_1, var_2.c.x, var_0.x, var_1), vec4<bool>(true, false, true, true), vec4<bool>(var_1, false, var_2.a.a, false)), -u_input.e.wx).a.x, true, true, var_1), var_2.a.b.wz | _wgslsmith_mod_vec2_i32(u_input.a.yy, ~var_2.b.b.xx)).b, var_2.b, func_1().zwy);
    var var_3 = var_2.b;
    var var_4 = ~u_input.e.zxz;
    var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.c.x));
}

