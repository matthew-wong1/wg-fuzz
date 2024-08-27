struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 22561i;

var<private> global1: bool;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.a)))), -359f));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, 207f), vec3<f32>(arg_1.a, 445f, -709f))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a, arg_1.a, 652f)))))))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -2451f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1159f, 1094f, arg_1.a, var_0.x) * vec4<f32>(-1804f, var_0.x, 1000f, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-963f, arg_1.a, -641f, 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1114f, var_0.x, arg_1.a, 2182f) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, -259f, 765f))))), Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1184f, 1000f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(654f, var_0.x, 428f)))), arg_1, _wgslsmith_f_op_f32(-1f)));
    let var_2 = var_1.c;
    let var_3 = vec3<i32>(~max(_wgslsmith_add_i32(~1i, -261i ^ arg_0.x), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(arg_0.x, var_2.a.c.x))), -max(u_input.b, -17521i), var_1.c.c.c.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_0.yy);
    return abs(var_2.c.b.yy);
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: u32, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = !vec3<bool>(!all(vec4<bool>(true, true, false, false)), _wgslsmith_mult_u32(firstTrailingBit(93783u), arg_3.x) > (arg_2 & reverseBits(19825u)), 20644i != -u_input.b);
    global0 = u_input.a.x;
    global1 = var_0.x | !(!((u_input.e | u_input.a.x) <= firstLeadingBit(7765i)));
    return Struct_4(vec4<f32>(-299f, 506f, 1f, -262f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_1, -446f, -1324f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -861f, 618f) * vec4<f32>(arg_0.x, 416f, arg_1, -2061f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0.x, -1000f, arg_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 494f, -1745f, 111f))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(-524f, arg_0.x)), ~vec3<u32>(52335u, arg_3.x, u_input.d) & firstTrailingBit(vec3<u32>(arg_3.x, 11914u, u_input.d)), select(u_input.a.wzx, vec3<i32>(u_input.b, -6923i, u_input.a.x) << (vec3<u32>(61090u, 28739u, arg_3.x) % vec3<u32>(32u)), all(vec4<bool>(false, true, true, var_0.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(arg_0.x, vec3<u32>(arg_3.x, u_input.d, 0u), vec3<i32>(16051i, u_input.a.x, 2147483647i)), vec3<f32>(arg_0.x, 1000f, arg_1), Struct_1(arg_0.x, vec3<u32>(arg_3.x, u_input.d, 21434u), u_input.a.yxy), 249f), Struct_1(arg_0.x, vec3<u32>(15727u, 1u, arg_2), vec3<i32>(u_input.e, -688i, 26378i)), Struct_1(784f, vec3<u32>(u_input.c, arg_3.x, 36199u), u_input.a.zwz), false)), _wgslsmith_f_op_f32(step(1875f, arg_0.x)), _wgslsmith_f_op_f32(sign(1173f))), vec3<f32>(arg_1, -756f, arg_0.x)), Struct_1(_wgslsmith_f_op_f32(round(188f)), firstLeadingBit(vec3<u32>(45433u, u_input.d, 58010u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.x, 38182u, 1u), vec3<u32>(u_input.d, arg_2, 4294967295u)) % vec3<u32>(32u)), ~(~vec3<i32>(-1i, -30226i, u_input.a.x))), _wgslsmith_f_op_f32(round(arg_1))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    global1 = false;
    return func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a, -1618f) * arg_1.c.b.xz)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -801f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_1.c.b.x)), _wgslsmith_f_op_f32(func_2(arg_1.d, Struct_1(arg_1.a.a, arg_1.c.c.b, u_input.a.zxz), Struct_1(-1000f, vec3<u32>(arg_1.c.c.b.x, u_input.c, u_input.c), u_input.a.xzx), true)))))), _wgslsmith_f_op_f32(select(arg_1.d.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.a)))), true | all(vec2<bool>(true, true)))), arg_1.a.b.x, func_3(max(firstLeadingBit(u_input.a) & min(u_input.a, u_input.a), -select(u_input.a, vec4<i32>(216i, arg_2, 0i, -1i), vec4<bool>(false, false, true, false))), Struct_1(arg_1.c.d, ~(vec3<u32>(u_input.c, 1u, arg_1.d.c.b.x) << (vec3<u32>(50620u, u_input.c, arg_1.b.b.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(~u_input.a.yww, u_input.a.zwz << (arg_1.a.b % vec3<u32>(32u)))), min(~abs(arg_1.d.c.b.x), _wgslsmith_div_u32(arg_1.d.a.b.x, arg_1.a.b.x))));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(floor(arg_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-695f + _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(round(274f))), any(!arg_3))), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(arg_0.c.a.a, vec3<u32>(9269u, 4294967295u, u_input.c), u_input.a.zww), _wgslsmith_f_op_vec3_f32(floor(arg_0.b.zww)), arg_0.c.c, _wgslsmith_f_op_f32(arg_0.b.x - -2178f)), func_4(vec2<f32>(-1000f, 942f), _wgslsmith_f_op_f32(2457f * -621f), arg_2, _wgslsmith_mult_vec2_u32(arg_0.c.a.b.xz, arg_0.c.a.b.xx)).c.a, arg_0.c.c, arg_1))));
    let var_1 = 111f;
    global1 = arg_1 & (any(vec2<bool>(arg_1 | arg_1, true)) & false);
    global0 = 1i;
    global0 = -abs(-25293i);
    return max(~_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.c, arg_0.c.c.b.x, 35990u), vec4<u32>(1u | u_input.c, 4294967295u, 1u, 4294967295u)), min(vec4<u32>(0u, 4294967295u, _wgslsmith_clamp_u32(0u, 1u, ~6999u), ~(~arg_2)), vec4<u32>((arg_2 << (arg_0.c.c.b.x % 32u)) << (firstLeadingBit(arg_2) % 32u), 68976u, _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(1u, u_input.c)), arg_0.c.c.b.x)));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<u32> {
    let var_0 = (_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.wzx, -vec3<i32>(u_input.b, u_input.e, arg_1.c.c.x)), vec3<i32>(-arg_2.a.c.x, ~arg_2.c.c.x, 0i), ~vec3<i32>(-12352i, u_input.a.x, -1i)) >> (_wgslsmith_div_vec3_u32(arg_0.ywz, abs(func_4(arg_2.b.yy, arg_1.a.a, 1u, vec2<u32>(1u, 107104u)).c.a.b)) % vec3<u32>(32u))) | vec3<i32>(arg_1.c.c.x, min(max(u_input.b, arg_2.a.c.x), 10924i) ^ func_4(_wgslsmith_f_op_vec2_f32(-arg_1.b.yx), 743f, ~1u, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a.b.x, 16114u), vec2<u32>(572u, arg_2.a.b.x))).c.a.c.x, _wgslsmith_add_i32(abs(abs(-5517i)), _wgslsmith_sub_i32(16286i | arg_1.c.c.x, arg_2.a.c.x)));
    var var_1 = arg_2.a;
    return arg_1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_mod_u32(0u, var_0);
    var var_2 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(-236f, -690f)))), func_6(func_5(func_1(vec3<f32>(-187f, 1000f, 2087f), Struct_3(Struct_1(-503f, vec3<u32>(u_input.c, 4294967295u, var_0), vec3<i32>(u_input.e, -2147483647i, 0i)), Struct_1(920f, vec3<u32>(19077u, 4294967295u, 62284u), u_input.a.yxw), Struct_2(Struct_1(360f, vec3<u32>(u_input.c, 3174u, u_input.c), vec3<i32>(u_input.e, u_input.a.x, u_input.a.x)), vec3<f32>(-185f, 996f, -474f), Struct_1(658f, vec3<u32>(u_input.d, var_0, 0u), vec3<i32>(3104i, -7468i, -1i)), -1000f), Struct_2(Struct_1(-2050f, vec3<u32>(45419u, 1u, 13219u), vec3<i32>(u_input.b, u_input.b, -1i)), vec3<f32>(-368f, 1395f, -586f), Struct_1(-1000f, vec3<u32>(66246u, 60344u, var_1), vec3<i32>(0i, 2147483647i, u_input.b)), 1151f)), -27172i), true, ~43433u, select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), func_4(vec2<f32>(1573f, -494f), _wgslsmith_f_op_f32(round(-652f)), u_input.c, vec2<u32>(u_input.d, var_0) & vec2<u32>(4294967295u, 4807u)).c, func_4(_wgslsmith_div_vec2_f32(vec2<f32>(607f, 1271f), vec2<f32>(-1844f, 128f)), _wgslsmith_f_op_f32(floor(1000f)), ~var_0, reverseBits(vec2<u32>(1u, 11492u))).c, !select(vec2<bool>(false, false), vec2<bool>(true, false), true)), -u_input.a.xwx), countOneBits(1u));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.a.a, _wgslsmith_f_op_f32(var_2.a.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) * var_2.a.a)))));
    let var_4 = !(!vec2<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(abs(_wgslsmith_add_u32(var_1, var_1)), ~(~46765u)), 1u, -1219f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(301f * -1000f), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(var_3.x - 1474f), _wgslsmith_f_op_f32(-899f - var_3.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.a), _wgslsmith_f_op_f32(select(var_2.a.a, -815f, var_4.x)), var_3.x, _wgslsmith_f_op_f32(step(var_3.x, var_3.x))))))));
}

