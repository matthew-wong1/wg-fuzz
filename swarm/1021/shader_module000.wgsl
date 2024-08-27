struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = Struct_2(-2330f, ~(~(~(~3890u))), arg_0, select(select(!(!vec4<bool>(true, arg_0.a, var_0.e.x, true)), !(!vec4<bool>(false, true, arg_0.b.x, var_0.a)), all(var_0.b)), vec4<bool>(var_0.e.x, !all(arg_1.b.xx), arg_0.a, all(select(vec4<bool>(true, var_0.b.x, false, true), vec4<bool>(true, arg_0.a, var_0.b.x, var_0.e.x), vec4<bool>(false, arg_1.b.x, true, var_0.b.x)))), all(select(vec4<bool>(arg_1.e.x, var_0.a, false, var_0.e.x), vec4<bool>(arg_0.b.x, arg_0.a, arg_0.a, arg_1.b.x), vec4<bool>(arg_1.e.x, true, true, var_0.e.x))) & all(select(vec2<bool>(false, true), vec2<bool>(arg_0.b.x, var_0.b.x), arg_0.a))));
    return var_1.c.d.zzx;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1567f, 478f, 191f) * vec3<f32>(-110f, 1431f, 1970f)))))) * vec3<f32>(-1698f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-163f)) * -917f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(200f, 389f)), _wgslsmith_f_op_f32(f32(-1f) * -2466f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-372f, -1147f, -1172f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(101f, -136f, -107f), vec3<f32>(-2081f, 324f, 207f), vec3<bool>(false, true, true))) - vec3<f32>(-259f, 1325f, -1073f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(true, vec3<bool>(true, false, true), var_0.x, vec4<f32>(var_0.x, var_0.x, -951f, 1176f), vec2<bool>(false, true)), Struct_1(true, vec3<bool>(false, true, false), 1154f, vec4<f32>(344f, 1240f, 1354f, var_0.x), vec2<bool>(true, false))))))));
    let var_2 = Struct_1(!(true != all(vec3<bool>(true, true, false))), vec3<bool>(any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), true)), true, any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1154f + var_0.x), _wgslsmith_f_op_f32(-505f - var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-869f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1870f, -403f, var_1.x) * vec4<f32>(-607f, var_1.x, 465f, var_1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(729f, -469f, -274f, var_1.x), vec4<f32>(281f, var_0.x, var_1.x, var_0.x), vec4<bool>(false, false, true, false)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(var_1.x * 176f), var_1.x, -197f)), select(vec4<bool>(true, u_input.c.x > u_input.c.x, true, false), vec4<bool>(var_1.x <= 264f, true, true, true), true))), vec2<bool>(all(vec3<bool>(true, true, true)), false));
    let var_3 = Struct_1(any(vec4<bool>(all(!vec4<bool>(var_2.e.x, false, var_2.b.x, false)), !var_2.b.x, !var_2.a, false & var_2.e.x)), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x - 568f))) * 491f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.d * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(var_1.x)), var_2.d.x, var_2.d.x))), !select(select(select(var_2.b.xy, vec2<bool>(true, false), var_2.e), vec2<bool>(false, var_2.b.x), vec2<bool>(false, true)), !select(var_2.e, vec2<bool>(false, false), var_2.e.x), var_2.a));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, var_1.x, var_2.c, 961f))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1476f), -469f, var_3.c, _wgslsmith_f_op_f32(-323f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(261f, 339f, false)), _wgslsmith_f_op_f32(-var_3.d.x)))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(360f + var_1.x)) * _wgslsmith_f_op_f32(-265f - 388f)) * _wgslsmith_div_f32(var_3.c, var_0.x)), max(u_input.d.x, 4294967295u), Struct_1(all(select(var_3.b, select(var_3.b, vec3<bool>(true, false, var_3.e.x), var_2.b), select(vec3<bool>(true, var_3.a, var_3.e.x), vec3<bool>(var_3.e.x, var_2.b.x, var_3.e.x), vec3<bool>(true, true, var_2.e.x)))), vec3<bool>(false, false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-437f, _wgslsmith_f_op_f32(-301f + var_2.c))) - _wgslsmith_f_op_f32(f32(-1f) * -633f)), var_4, var_2.e), !vec4<bool>(any(var_3.b.zy), !var_3.a, true, true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.d.x), vec2<u32>(arg_0.b, 4294967295u)), vec2<u32>(66751u, u_input.c.x)), ~(~4294967295u), reverseBits(arg_0.b & 1u), u_input.d.x));
    let var_1 = false;
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-(vec2<i32>(-65521i, u_input.b.x) ^ ~vec2<i32>(arg_3.x, 45045i)), min(arg_3, u_input.b << (~var_0.xy % vec2<u32>(32u))), vec2<i32>(u_input.b.x ^ (arg_3.x & -2147483647i), arg_3.x)), firstTrailingBit(u_input.b));
    var_3 = -38272i;
    return arg_0;
}

fn func_1(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = 2147483647i;
    var_0 = _wgslsmith_add_i32(firstTrailingBit((_wgslsmith_clamp_i32(1i, u_input.b.x, -21100i) << (~1u % 32u)) & reverseBits(~(-69637i))), 0i);
    var_0 = _wgslsmith_sub_i32(u_input.b.x, u_input.b.x);
    let var_1 = func_4(func_2(-2147483647i), func_2(_wgslsmith_add_i32(2025i, ~u_input.b.x | _wgslsmith_add_i32(u_input.b.x, u_input.b.x))), func_2(-2147483647i).c, u_input.b);
    var var_2 = var_1;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1178f, var_1.c.d.x, 450f, -437f) * _wgslsmith_f_op_vec4_f32(floor(var_1.c.d)))) * var_1.c.d)));
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = vec4<bool>(false, (arg_2.x | (min(arg_1, u_input.a) <= 28908u)) & arg_2.x, true, all(select(vec4<bool>(false, arg_2.x, false, true), !vec4<bool>(arg_2.x, false, arg_2.x, false), arg_2.x)));
    var var_1 = func_4(func_2(_wgslsmith_clamp_i32(43917i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 1i) & arg_3, ~vec3<i32>(arg_3.x, u_input.b.x, -59912i)), 17983i)), func_2(_wgslsmith_clamp_i32(-34970i, -(i32(-1i) * -4113i), ~arg_3.x)), Struct_1(1f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1503f))), select(arg_2, func_2(_wgslsmith_mult_i32(arg_3.x, 2147483647i)).d.wzx, func_4(func_2(u_input.b.x), func_4(Struct_2(-982f, 61262u, Struct_1(arg_2.x, var_0.wyw, arg_0.x, vec4<f32>(arg_0.x, arg_0.x, -730f, arg_0.x), vec2<bool>(var_0.x, true)), vec4<bool>(true, var_0.x, var_0.x, arg_2.x)), Struct_2(arg_0.x, 40905u, Struct_1(false, vec3<bool>(arg_2.x, true, true), arg_0.x, arg_0, vec2<bool>(var_0.x, false)), var_0), Struct_1(var_0.x, var_0.zyw, arg_0.x, arg_0, var_0.zw), vec2<i32>(27721i, arg_3.x)), func_2(u_input.b.x).c, _wgslsmith_mod_vec2_i32(vec2<i32>(-22245i, arg_3.x), arg_3.zz)).c.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, arg_2.x, arg_2.x))).x)))), arg_0, arg_2.xx), arg_3.xz).c.d.yww;
    let var_2 = select(!select(!arg_2, arg_2, arg_2.x), vec3<bool>(true, all(vec4<bool>(arg_2.x, any(var_0), func_4(Struct_2(810f, arg_1, Struct_1(arg_2.x, vec3<bool>(arg_2.x, arg_2.x, true), arg_0.x, arg_0, vec2<bool>(var_0.x, arg_2.x)), vec4<bool>(false, var_0.x, var_0.x, true)), Struct_2(2564f, u_input.c.x, Struct_1(var_0.x, vec3<bool>(arg_2.x, true, var_0.x), var_1.x, vec4<f32>(var_1.x, var_1.x, 1541f, 179f), arg_2.yx), vec4<bool>(false, false, arg_2.x, var_0.x)), Struct_1(var_0.x, arg_2, -586f, arg_0, vec2<bool>(true, false)), arg_3.yx).d.x, arg_0.x < arg_0.x)), arg_2.x), firstTrailingBit(~_wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(u_input.d.x, 0u))) <= _wgslsmith_div_u32(4294967295u, firstLeadingBit(21803u >> (u_input.c.x % 32u))));
    let var_3 = func_4(func_4(func_2(arg_3.x), func_4(Struct_2(_wgslsmith_f_op_f32(min(-1663f, -597f)), arg_1, func_4(Struct_2(-1573f, arg_1, Struct_1(false, var_0.xzy, -1058f, arg_0, var_2.xx), vec4<bool>(var_2.x, true, false, false)), Struct_2(arg_0.x, arg_1, Struct_1(false, vec3<bool>(var_2.x, true, var_2.x), -1046f, vec4<f32>(arg_0.x, var_1.x, arg_0.x, var_1.x), var_2.yx), var_0), Struct_1(false, vec3<bool>(var_2.x, true, arg_2.x), var_1.x, vec4<f32>(-520f, -2422f, var_1.x, var_1.x), var_2.zx), vec2<i32>(28917i, 1i)).c, var_0), func_2(u_input.b.x), Struct_1(var_0.x, !var_0.yzz, -1406f, _wgslsmith_f_op_vec4_f32(floor(arg_0)), !vec2<bool>(arg_2.x, var_2.x)), min(-vec2<i32>(arg_3.x, 0i), vec2<i32>(-2147483647i, -2147483647i) ^ u_input.b)), func_2(19182i).c, ~(~vec2<i32>(u_input.b.x, arg_3.x) & u_input.b)), Struct_2(_wgslsmith_f_op_f32(trunc(func_4(func_2(arg_3.x), func_4(Struct_2(var_1.x, u_input.d.x, Struct_1(false, vec3<bool>(true, false, arg_2.x), arg_0.x, vec4<f32>(var_1.x, var_1.x, arg_0.x, arg_0.x), arg_2.yy), vec4<bool>(var_2.x, true, false, false)), Struct_2(var_1.x, arg_1, Struct_1(arg_2.x, vec3<bool>(var_2.x, var_0.x, arg_2.x), arg_0.x, vec4<f32>(var_1.x, var_1.x, 1184f, var_1.x), var_0.xz), var_0), Struct_1(arg_2.x, var_2, arg_0.x, arg_0, var_0.xw), u_input.b), func_4(Struct_2(var_1.x, 4294967295u, Struct_1(false, vec3<bool>(arg_2.x, true, var_0.x), arg_0.x, arg_0, arg_2.xy), vec4<bool>(true, var_0.x, false, false)), Struct_2(816f, u_input.d.x, Struct_1(arg_2.x, vec3<bool>(false, true, false), 258f, arg_0, vec2<bool>(false, arg_2.x)), var_0), Struct_1(false, vec3<bool>(true, var_0.x, false), -583f, arg_0, arg_2.zz), vec2<i32>(u_input.b.x, 2147483647i)).c, _wgslsmith_clamp_vec2_i32(u_input.b, arg_3.zx, vec2<i32>(u_input.b.x, -1i))).c.c)), arg_1, func_2((i32(-1i) * -24695i) & _wgslsmith_mod_i32(arg_3.x, 11178i)).c, vec4<bool>(any(func_4(Struct_2(var_1.x, arg_1, Struct_1(var_2.x, arg_2, var_1.x, vec4<f32>(var_1.x, arg_0.x, -1363f, arg_0.x), vec2<bool>(var_2.x, true)), var_0), Struct_2(-535f, 46735u, Struct_1(true, arg_2, -591f, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec2<bool>(var_2.x, true)), vec4<bool>(true, var_0.x, false, arg_2.x)), Struct_1(true, arg_2, 1313f, vec4<f32>(-801f, -1009f, arg_0.x, var_1.x), var_0.zz), vec2<i32>(0i, u_input.b.x)).d), true, var_2.x, var_2.x)), Struct_1(var_2.x & true, !var_2, _wgslsmith_f_op_f32(exp2(var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(-func_2(282i).a), 662f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(arg_2)).x)), vec2<bool>(true, true)), u_input.b).c;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_3.d.zzw))) - vec3<f32>(arg_0.x, func_2(u_input.b.x).a, _wgslsmith_div_f32(var_1.x, var_3.d.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.d.x, 759f, var_3.d.x), _wgslsmith_f_op_vec3_f32(-arg_0.wxx), select(var_3.b, vec3<bool>(var_3.b.x, false, false), arg_2))), _wgslsmith_f_op_vec3_f32(arg_0.ywy * arg_0.wwy), true | arg_2.x))));
    return func_4(func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1093f + var_1.x) - -521f), ~(~0u), var_3, func_2(u_input.b.x).d), func_4(Struct_2(var_3.c, u_input.d.x, func_2(arg_3.x).c, vec4<bool>(var_3.b.x, true, false, var_0.x)), func_4(Struct_2(var_1.x, 4294967295u, Struct_1(var_2.x, vec3<bool>(false, var_2.x, var_3.b.x), -187f, arg_0, vec2<bool>(false, true)), vec4<bool>(false, false, var_0.x, false)), Struct_2(102f, 2873u, Struct_1(var_2.x, vec3<bool>(true, arg_2.x, false), arg_0.x, var_3.d, vec2<bool>(false, true)), var_0), Struct_1(var_3.b.x, vec3<bool>(arg_2.x, var_2.x, true), var_1.x, vec4<f32>(var_3.d.x, 758f, -962f, arg_0.x), vec2<bool>(var_2.x, true)), -vec2<i32>(-2147483647i, -25319i)), func_4(func_4(Struct_2(1158f, arg_1, var_3, vec4<bool>(false, true, var_0.x, false)), Struct_2(var_3.c, arg_1, Struct_1(true, vec3<bool>(var_2.x, arg_2.x, false), var_3.c, vec4<f32>(var_1.x, 517f, var_1.x, var_1.x), vec2<bool>(var_0.x, true)), vec4<bool>(arg_2.x, false, false, true)), var_3, u_input.b), Struct_2(arg_0.x, 1u, Struct_1(var_2.x, vec3<bool>(var_0.x, var_3.e.x, var_3.b.x), -577f, arg_0, vec2<bool>(arg_2.x, true)), vec4<bool>(false, true, true, var_0.x)), Struct_1(true, vec3<bool>(false, true, var_2.x), 1254f, arg_0, vec2<bool>(var_3.b.x, true)), select(vec2<i32>(-2147483647i, -1i), u_input.b, var_0.x)).c, -_wgslsmith_sub_vec2_i32(arg_3.yy, vec2<i32>(arg_3.x, 6006i))), var_3, vec2<i32>(i32(-1i) * -u_input.b.x, -33625i)), Struct_2(arg_0.x, arg_1, func_2(-arg_3.x).c, !(!vec4<bool>(false, var_2.x, arg_2.x, arg_2.x))), var_3, abs(vec2<i32>(-1i, ~(-u_input.b.x)))).c;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = !(!vec4<bool>(all(select(vec4<bool>(arg_1.b.x, arg_1.a, arg_1.e.x, arg_1.b.x), vec4<bool>(arg_1.a, arg_1.b.x, true, arg_1.e.x), vec4<bool>(arg_1.e.x, true, arg_1.a, arg_1.e.x))), true, true, arg_1.a));
    var_0 = vec4<bool>(!(arg_1.b.x & !var_0.x), arg_1.b.x, true, arg_1.e.x | !(!arg_1.a != any(arg_1.e)));
    var_0 = !(!vec4<bool>(true && !arg_1.e.x, select(true, any(vec2<bool>(var_0.x, true)), false), false, !arg_1.e.x));
    var var_1 = _wgslsmith_add_vec3_i32(min(select(vec3<i32>(arg_2.x, arg_2.x, arg_2.x), arg_2, true), _wgslsmith_clamp_vec3_i32(vec3<i32>(-55i, arg_2.x, 6446i), vec3<i32>(arg_2.x, u_input.b.x, arg_2.x), vec3<i32>(10684i, u_input.b.x, u_input.b.x))) & max(~vec3<i32>(arg_2.x, arg_2.x, -2147483647i), ~arg_2), ~(-vec3<i32>(1i, 0i, 0i)) | firstTrailingBit(max(arg_2, arg_2))) | arg_2;
    let var_2 = arg_1.b.yx;
    return func_2(-53809i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, any(!vec4<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, false)), true, true)));
    var var_1 = func_6(firstTrailingBit(19591u), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, false, var_0.x))))), countOneBits(~u_input.a) << (1u % 32u), vec3<bool>(var_0.x, true, func_4(func_4(Struct_2(-1110f, 4294967295u, Struct_1(var_0.x, vec3<bool>(var_0.x, false, false), -1134f, vec4<f32>(-339f, -271f, 592f, 1585f), vec2<bool>(var_0.x, var_0.x)), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), Struct_2(-721f, u_input.c.x, Struct_1(true, vec3<bool>(var_0.x, var_0.x, false), 255f, vec4<f32>(-1000f, -793f, 540f, 1000f), vec2<bool>(true, var_0.x)), vec4<bool>(var_0.x, true, true, true)), Struct_1(var_0.x, vec3<bool>(false, false, var_0.x), -865f, vec4<f32>(-567f, 813f, 3061f, 1000f), vec2<bool>(false, var_0.x)), u_input.b), func_2(u_input.b.x), Struct_1(false, vec3<bool>(true, false, var_0.x), -745f, vec4<f32>(-1000f, -1000f, 451f, -242f), vec2<bool>(var_0.x, true)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(-17998i, 2147483647i))).d.x), vec3<i32>(firstTrailingBit(14071i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -2147483647i, -60049i), -vec4<i32>(-1578i, -2147483647i, -2730i, u_input.b.x)), -2147483647i)), vec3<i32>(1i, u_input.b.x, 28315i));
    let var_2 = var_1.c.d.x;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_6(~var_1.b, func_2(u_input.b.x).c, ~vec3<i32>(u_input.b.x, -2147483647i, 1i)).c.c, -1077f))), var_1.a);
    var_0 = func_5(func_6(0u, func_5(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, var_1.c.a, var_1.d.x))), ~min(var_1.b, 24283u), var_1.c.b, ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (~vec3<u32>(var_1.b, var_1.b, 20870u) % vec3<u32>(32u))), vec3<i32>(-1i) * -reverseBits(vec3<i32>(38888i, u_input.b.x, u_input.b.x))).c.d, 1u, vec3<bool>(true, var_0.x, var_1.c.b.x), vec3<i32>(~(-1i), -_wgslsmith_sub_i32(u_input.b.x << (29041u % 32u), max(u_input.b.x, u_input.b.x)), _wgslsmith_mult_i32(abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, 0i), vec4<i32>(u_input.b.x, -2147483647i, 13472i, u_input.b.x))) | (_wgslsmith_div_i32(-2147483647i, -4253i) ^ u_input.b.x))).b.yy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_6(_wgslsmith_mult_u32(_wgslsmith_div_u32(6951u, 3986u), var_1.b), var_1.c, vec3<i32>(_wgslsmith_add_i32(33411i, u_input.b.x), u_input.b.x, u_input.b.x)).b, (u_input.d.x << (~13142u % 32u)) & ~var_1.b), _wgslsmith_dot_vec3_u32(u_input.d, ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b, 51595u, var_1.b), vec3<u32>(u_input.d.x, 40772u, u_input.c.x), u_input.d))), reverseBits(-(0i | u_input.b.x)) << (0u % 32u), u_input.d.xy);
}

