struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = select(select(vec2<bool>(arg_1.e, arg_1.e & all(vec4<bool>(true, false, arg_1.e, true))), !vec2<bool>(any(vec3<bool>(arg_1.e, arg_1.e, arg_1.e)), any(vec2<bool>(false, arg_1.e))), !vec2<bool>(any(vec2<bool>(false, arg_1.e)), !arg_1.e)), !vec2<bool>(!arg_1.e, arg_1.e), all(vec2<bool>(arg_0.x < (arg_1.b << (arg_0.x % 32u)), any(vec3<bool>(true, false, true)))));
    let var_1 = Struct_2(_wgslsmith_add_vec2_u32(~(~arg_1.a.wy), _wgslsmith_div_vec2_u32(vec2<u32>(~arg_0.x, _wgslsmith_add_u32(arg_1.d.x, arg_1.b)), ~min(arg_0.yy, vec2<u32>(0u, arg_0.x)))), vec3<i32>(_wgslsmith_div_i32(35929i, u_input.b), -_wgslsmith_mod_i32(u_input.a.x, countOneBits(-15691i)), ~_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_div_i32(u_input.a.x, u_input.b))), select(vec3<bool>(!all(vec2<bool>(arg_1.e, false)), true, var_0.x), vec3<bool>(u_input.c.x >= _wgslsmith_sub_i32(u_input.b, u_input.c.x), var_0.x, all(!vec4<bool>(var_0.x, var_0.x, true, arg_1.e))), all(!vec4<bool>(true, var_0.x, true, true))));
    var var_2 = _wgslsmith_div_u32(20902u, ~(6811u | arg_0.x));
    var_2 = firstLeadingBit(select(arg_0.x, _wgslsmith_mult_u32(arg_0.x, 4294967295u ^ arg_1.b), !(!(!var_1.c.x))));
    var var_3 = !arg_1.e;
    return ~vec3<u32>(min(35796u, reverseBits(34624u)), _wgslsmith_sub_u32(arg_0.x, arg_1.b) | arg_0.x, _wgslsmith_add_u32(var_1.a.x, _wgslsmith_clamp_u32(1u, 4294967295u, arg_0.x))) ^ arg_1.a.wyx;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~arg_0.a.x, max(0u, 0u), 5793u, 0u) >> ((arg_0.a >> (reverseBits(arg_0.a) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(arg_0.a.x, countOneBits(abs(29427u)), arg_0.a.x, _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(102212u, arg_2.a.x, 0u)), func_3(arg_0.a.yxx, Struct_1(arg_0.a, 1u, arg_0.c, vec2<u32>(arg_2.a.x, arg_2.a.x), true), Struct_3(arg_0.c)))));
    let var_1 = (firstLeadingBit(u_input.a.x) | _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(59365i, u_input.a.x, u_input.a.x, arg_2.b.x)), ~(vec4<i32>(u_input.a.x, arg_2.b.x, 1i, arg_2.b.x) | vec4<i32>(u_input.b, arg_2.b.x, u_input.a.x, -33345i)))) | abs(1i);
    return vec3<bool>(arg_2.c.x, countOneBits(arg_2.a.x) >= _wgslsmith_dot_vec3_u32(abs(arg_0.a.wzz), vec3<u32>(1u, ~arg_2.a.x, arg_2.a.x)), false);
}

fn func_1() -> bool {
    let var_0 = Struct_3(-1008f);
    let var_1 = select(select(vec2<bool>(true, true), vec2<bool>(any(func_2(Struct_1(vec4<u32>(23185u, 21001u, 80245u, 80429u), 44055u, -1663f, vec2<u32>(4294967295u, 0u), false), false, Struct_2(vec2<u32>(4294967295u, 3898u), vec3<i32>(u_input.a.x, u_input.a.x, u_input.c.x), vec3<bool>(true, false, false)), true)), true), vec2<bool>(true, false)), vec2<bool>(true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(var_0.a != 1513f, true, any(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true))));
    var var_2 = select(-vec4<i32>(13920i, -(u_input.a.x << (44169u % 32u)), _wgslsmith_div_i32(u_input.b, 0i), 1i), (firstTrailingBit(~vec4<i32>(u_input.b, u_input.b, 0i, -18969i)) | vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), u_input.a), -u_input.b, u_input.c.x, ~u_input.a.x)) >> (max(~firstLeadingBit(vec4<u32>(0u, 11127u, 1u, 45807u)), vec4<u32>(~35726u, ~1u, 4294967295u, ~1u)) % vec4<u32>(32u)), vec4<bool>(!var_1.x, var_1.x, all(var_1), true));
    var var_3 = Struct_1(~min(~vec4<u32>(1u, 1u, 1u, 1u), ~max(vec4<u32>(1u, 24625u, 0u, 4294967295u), vec4<u32>(30496u, 4294967295u, 15512u, 0u))), 1u, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(f32(-1f) * -1766f)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 27259u), vec2<u32>(1u >> (~4294967295u % 32u), 1u)), var_1.x);
    var_2 = vec4<i32>(_wgslsmith_add_i32(max(-79233i, -1i), reverseBits(_wgslsmith_clamp_i32(~1i, 1i << (var_3.b % 32u), firstLeadingBit(u_input.c.x)))), _wgslsmith_sub_i32(-(~(-1i)), select(-8054i, -13024i, !var_1.x) >> ((12618u << ((var_3.b & var_3.a.x) % 32u)) % 32u)), 0i, _wgslsmith_sub_i32(countOneBits(abs(1i)), ~4498i));
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_i32(arg_3.b.x, _wgslsmith_dot_vec2_i32(u_input.c.zx, -vec2<i32>(arg_3.b.x, u_input.b))) << (abs(max(1u, ~arg_3.a.x)) % 32u);
    let var_1 = vec4<i32>(0i, max(reverseBits(_wgslsmith_dot_vec2_i32(arg_3.b.zz, ~u_input.c.zz)), (i32(-1i) * -arg_3.b.x) | 20066i), 1i, arg_3.b.x);
    let var_2 = Struct_2(max(arg_3.a, ~reverseBits(vec2<u32>(arg_3.a.x, arg_3.a.x))), -max(reverseBits(u_input.a), ~var_1.wyx ^ vec3<i32>(-37580i, 2147483647i, 1i)), vec3<bool>(arg_0.a >= -1063f, arg_3.c.x, func_2(Struct_1(firstTrailingBit(vec4<u32>(0u, 1u, arg_3.a.x, 39325u)), arg_3.a.x, arg_0.a, min(vec2<u32>(arg_3.a.x, arg_3.a.x), arg_3.a), true), true, Struct_2(~vec2<u32>(0u, arg_3.a.x), vec3<i32>(var_1.x, u_input.b, u_input.c.x) & u_input.c, arg_3.c), arg_2).x));
    let var_3 = var_1.zxw;
    let var_4 = _wgslsmith_add_i32(-5141i ^ _wgslsmith_sub_i32(36637i, firstTrailingBit(_wgslsmith_dot_vec3_i32(var_2.b, u_input.c))), -var_2.b.x);
    return Struct_1(vec4<u32>(~_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(4294967295u, arg_3.a.x)), ~_wgslsmith_mult_u32(var_2.a.x, 4294967295u) ^ ~arg_3.a.x, 4294967295u, var_2.a.x), 27007u, arg_0.a, _wgslsmith_mult_vec2_u32(vec2<u32>(max(var_2.a.x, 36569u) >> (_wgslsmith_mod_u32(var_2.a.x, 41569u) % 32u), ~arg_3.a.x >> ((arg_3.a.x | 78310u) % 32u)), vec2<u32>(var_2.a.x, arg_3.a.x & var_2.a.x)), arg_3.c.x & false);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> Struct_3 {
    let var_0 = arg_1;
    var var_1 = ~(~_wgslsmith_mod_i32(-(~arg_2), _wgslsmith_dot_vec3_i32(min(u_input.c, vec3<i32>(33439i, -6415i, -5983i)), vec3<i32>(arg_2, u_input.c.x, u_input.a.x))));
    let var_2 = Struct_2(~reverseBits(arg_1.a.yw), _wgslsmith_clamp_vec3_i32(~u_input.a, select(vec3<i32>(i32(-1i) * -79814i, 2147483647i, 2147483647i), vec3<i32>(_wgslsmith_mod_i32(arg_2, 2147483647i), arg_2, _wgslsmith_mult_i32(arg_2, arg_2)), !var_0.e), u_input.c), vec3<bool>(var_0.e, var_0.e, true));
    var_1 = arg_2;
    var_1 = 13405i;
    return Struct_3(var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-161f, _wgslsmith_f_op_f32(-1256f - 1184f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(424f)))))), func_4(Struct_3(1f), func_1(), false, Struct_2(~countOneBits(vec2<u32>(0u, 9040u)), vec3<i32>(-2147483647i, u_input.a.x, 10523i) | u_input.c, vec3<bool>(all(vec2<bool>(var_0, false)), true, any(vec2<bool>(true, true))))), u_input.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(-896f), var_0, var_0, Struct_2(vec2<u32>(1u, 39492u), vec3<i32>(u_input.c.x, 2147483647i, u_input.a.x), vec3<bool>(false, var_0, false))).c - -452f)))));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(abs(1u), _wgslsmith_div_u32(38370u, ~1u), ~(~1u)), max(vec3<u32>(~min(0u, 23117u), _wgslsmith_mod_u32(~0u, 23315u), 1u), ~vec3<u32>(1u, 1u, 1u)));
    var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1058f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), func_4(func_5(2121f, func_4(Struct_3(-1396f), false | var_0, true, Struct_2(vec2<u32>(1u, 29281u), vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), vec3<bool>(var_0, var_0, true))), ~(~1i), var_1.a), false != var_0, true, Struct_2(max(min(vec2<u32>(3997u, 70234u), vec2<u32>(20463u, 39965u)), ~vec2<u32>(4294967295u, 1u)), min(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(-2147483647i, u_input.c.x, u_input.a.x)), u_input.c), select(select(vec3<bool>(var_0, false, false), vec3<bool>(var_0, var_0, false), false), select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, var_0), var_0), !vec3<bool>(var_0, false, false)))), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1585f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a)))));
    var var_3 = Struct_1(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 4294967295u), ~(~vec2<u32>(4294967295u, 105039u))), ~max(27472u, 61548u), 3214u), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, select(~1u, _wgslsmith_clamp_u32(77536u, 63874u, 16248u), u_input.a.x == u_input.b)), _wgslsmith_div_u32(1u, ~countOneBits(4294967295u))), _wgslsmith_f_op_f32(-219f * -1000f), ~reverseBits(vec2<u32>(firstLeadingBit(12694u), 0u)), true);
    var_1 = func_5(var_3.c, func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c, var_3.c))), any(!vec2<bool>(var_3.e, false)), var_0, Struct_2(var_3.a.wx, -vec3<i32>(0i, -37208i, u_input.a.x), vec3<bool>(var_0, true, false))), select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), ~vec2<i32>(24824i, 27388i)), -2147483647i, var_0 & func_4(Struct_3(-353f), true, true, Struct_2(var_3.d, u_input.a, vec3<bool>(var_3.e, var_0, false))).e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * 648f) - 1790f));
    var var_4 = _wgslsmith_f_op_f32(-771f - _wgslsmith_f_op_f32(var_3.c - 1f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(var_3.a.wxw, ~var_3.a.zzy | _wgslsmith_clamp_vec3_u32(var_3.a.wwy, var_3.a.xyw, var_3.a.xzz)), abs(-u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(u_input.b), 85771i | _wgslsmith_dot_vec3_i32(vec3<i32>(15910i, 15992i, 2147483647i), vec3<i32>(u_input.b, u_input.c.x, -2147483647i)), _wgslsmith_sub_i32(42443i, -12594i) | (u_input.b << (var_3.b % 32u))), vec3<i32>(_wgslsmith_sub_i32(52526i, u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.xy, _wgslsmith_sub_vec2_i32(u_input.a.xx, vec2<i32>(-13449i, u_input.c.x))), u_input.c.x)), vec2<u32>(min(var_3.a.x, var_3.d.x << (4294967295u % 32u)), var_3.a.x) & firstTrailingBit(vec2<u32>(firstTrailingBit(var_3.d.x), var_3.d.x)));
}

