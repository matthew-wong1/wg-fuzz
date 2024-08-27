struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> i32 {
    let var_0 = arg_1;
    var var_1 = u_input.d;
    return ~(u_input.d >> (~(~_wgslsmith_dot_vec3_u32(u_input.b.yzz, u_input.a.wwx)) % 32u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    let var_0 = Struct_1(!(!(!arg_2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(418f, arg_0.x, 626f, -343f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-589f, 234f, -606f, arg_2.b.x), arg_0, vec4<bool>(true, arg_2.c, arg_2.a.x, false))))))), arg_2.a.x);
    var var_1 = ~u_input.b.zxy;
    var var_2 = _wgslsmith_f_op_vec2_f32(arg_0.wx + vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1429f))))));
    var var_3 = 1170f;
    let var_4 = vec4<f32>(613f, -1000f, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-510f - _wgslsmith_div_f32(-558f, _wgslsmith_f_op_f32(f32(-1f) * -590f))) * _wgslsmith_f_op_f32(-arg_0.x)));
    return ~(-2147483647i);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_1(select(vec3<bool>(all(vec2<bool>(true, true)), true, select(all(vec2<bool>(true, false)), false, false)), !vec3<bool>(true, all(vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(462f, -2481f, 127f, 1040f), vec4<f32>(-366f, -103f, 974f, -715f), true)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1231f, -1044f, 1848f, -846f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(549f, 144f, -1000f, -708f)), vec4<f32>(-596f, 1000f, -1144f, 419f))) - vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1937f), _wgslsmith_f_op_f32(f32(-1f) * -236f)), -351f, _wgslsmith_f_op_f32(-667f + _wgslsmith_f_op_f32(-251f + 649f)))), !(u_input.a.x < ~u_input.b.x));
    var var_1 = -1000f;
    var_0 = Struct_1(vec3<bool>(false, var_0.c, u_input.a.x <= u_input.e.x), var_0.b, var_0.a.x);
    let var_2 = -firstLeadingBit(~select(arg_0 & 0i, -2147483647i, true));
    let var_3 = -(reverseBits(select(u_input.c.x, i32(-1i) * -10826i, false)) ^ _wgslsmith_add_i32(1i, 1i));
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) + -248f)), -2209f, _wgslsmith_f_op_f32(f32(-1f) * -1811f));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = !select(select(!arg_2.a, !arg_2.a, !arg_1.c), select(select(vec3<bool>(arg_2.c, arg_1.c, true), vec3<bool>(false, arg_1.a.x, true), arg_2.a.x), !select(arg_2.a, arg_2.a, arg_2.a), arg_2.a), !(!vec3<bool>(true, arg_1.a.x, arg_2.c)));
    var var_1 = arg_1;
    let var_2 = arg_1;
    var_1 = Struct_1(arg_1.a, vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-var_1.b.x)) + _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(-36449i, 13745i, 2147483647i, u_input.d), vec4<i32>(-2147483647i, -1i, u_input.c.x, -101094i)))).x), -483f, 1165f), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1256f + -1344f) - var_2.b.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.b.x)))) | true);
    var_1 = Struct_1(vec3<bool>(true, var_1.c, select(false, false | arg_1.a.x, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b)) * arg_1.b), false);
    return -(_wgslsmith_mult_i32(-1i, u_input.c.x) ^ -2147483647i);
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_mod_i32(func_2(u_input.c.xx, Struct_1(vec3<bool>(false, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-428f, -846f, -1375f, 1324f) * vec4<f32>(290f, 110f, -113f, -1000f)), true), ~74153u & u_input.e.x, 287f), _wgslsmith_mult_i32(26279i, ~(-u_input.c.x))));
    var_0 = u_input.d;
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(func_4(~max(func_3(vec4<f32>(931f, -417f, -612f, -1069f), u_input.c.zx, Struct_1(vec3<bool>(false, false, false), vec4<f32>(262f, 459f, -1636f, 468f), false), false), u_input.d), -min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.d), vec4<i32>(0i, u_input.d, u_input.d, -1i)), ~vec4<i32>(u_input.d, -53242i, 17585i, -4741i)))), Struct_1(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-251f + -1144f), -1110f, -2575f, -1396f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1639f, 736f, -1233f, -567f) - vec4<f32>(-402f, -595f, 759f, 1232f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(711f, -1799f, 1214f, 2224f)))), false));
    var_0 = func_3(vec4<f32>(574f, _wgslsmith_f_op_f32(-883f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-853f)), _wgslsmith_f_op_f32(f32(-1f) * -694f)))), _wgslsmith_f_op_f32(-1408f * _wgslsmith_f_op_f32(trunc(-444f))), _wgslsmith_f_op_f32(1532f - 790f)), u_input.c.zz, Struct_1(vec3<bool>(!all(vec3<bool>(false, false, true)), true, _wgslsmith_add_i32(u_input.c.x, 31129i) <= reverseBits(u_input.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(-551f, -1151f, -2377f, -1420f)), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(180f, -1902f, 2437f, 860f) * vec4<f32>(642f, 1813f, -1909f, 516f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-839f)) + -439f))), _wgslsmith_f_op_f32(sign(-538f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_4(u_input.c.x, ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, 0i))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1242f)) + 1f))));
    return Struct_1(vec3<bool>(true | (max(1i, 1102i) < u_input.c.x), !any(vec2<bool>(false, true)), !all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1504f, var_1.x, var_1.x, 383f)))) - vec4<f32>(_wgslsmith_f_op_f32(step(1452f, 213f)), var_1.x, _wgslsmith_f_op_f32(trunc(-1593f)), -590f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -365f, -218f, 876f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -685f, var_1.x, var_1.x), vec4<f32>(var_1.x, -231f, 1338f, -1153f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 243f, var_1.x, 433f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 442f, -393f, var_1.x) * vec4<f32>(-616f, 356f, var_1.x, var_1.x)))))), true);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = -(~((-vec4<i32>(u_input.d, -21215i, u_input.c.x, u_input.d) << (firstTrailingBit(vec4<u32>(13033u, u_input.b.x, 13349u, arg_0)) % vec4<u32>(32u))) ^ (vec4<i32>(0i, u_input.c.x, u_input.c.x, -34690i) << (~vec4<u32>(u_input.a.x, 4294967295u, arg_0, u_input.a.x) % vec4<u32>(32u)))));
    let var_1 = ~(~(-var_0.ww));
    var var_2 = -u_input.c;
    var var_3 = arg_1;
    var var_4 = vec4<i32>(-1i | _wgslsmith_div_i32(-17268i, 1i << (~arg_0 % 32u)), -var_2.x, 0i, firstLeadingBit(1i));
    return StorageBuffer(var_0, -1i, _wgslsmith_add_i32(select(-39830i, func_3(arg_1.b, _wgslsmith_add_vec2_i32(var_1, vec2<i32>(u_input.c.x, u_input.d)), arg_2, !var_3.a.x), arg_2.a.x), _wgslsmith_mod_i32(var_4.x, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_add_u32(~_wgslsmith_mod_u32(~u_input.e.x, 4294967295u), countOneBits(~(~1u))), Struct_1(select(vec3<bool>(true, true, false), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, false, true)), vec4<f32>(979f, -366f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(811f - 882f) + _wgslsmith_f_op_f32(ceil(426f))), 1f), true), func_1());
}

