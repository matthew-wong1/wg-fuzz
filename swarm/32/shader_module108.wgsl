struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec3<bool> {
    let var_0 = any(select(select(vec4<bool>(true, arg_2, all(vec2<bool>(false, true)), true), !select(vec4<bool>(true, false, true, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(true, arg_2, false, false)), vec4<bool>(arg_2, false, arg_2, arg_2)), !(!select(vec4<bool>(false, false, arg_2, false), vec4<bool>(false, false, true, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2))), select(select(select(vec4<bool>(false, false, true, arg_2), vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(arg_2, false, arg_2, arg_2)), select(vec4<bool>(false, arg_2, false, false), vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(true, arg_2, false, false)), !vec4<bool>(arg_2, arg_2, arg_2, true)), select(select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(false, true, false, true), vec4<bool>(arg_2, true, false, false)), vec4<bool>(arg_2, arg_2, false, arg_2), select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(false, true, true, false))), vec4<bool>(arg_2, false, true, arg_2 == true))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.c.d, 823f, -159f), vec3<f32>(arg_0.a.d.a.x, arg_1.e.a.x, 1295f)))) * vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.d.b + arg_1.e.a.x), arg_0.a.d.d, 1218f)), vec3<f32>(_wgslsmith_f_op_f32(-2258f - _wgslsmith_f_op_f32(arg_0.a.d.a.x - arg_1.c.d)), _wgslsmith_f_op_f32(arg_1.c.d * arg_1.e.d), arg_0.a.d.a.x))), arg_1.e, !select(select(vec4<bool>(var_0, var_0, false, var_0), select(vec4<bool>(var_0, arg_2, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, arg_2, var_0, false)), vec4<bool>(false, arg_2, var_0, var_0)), select(select(vec4<bool>(false, true, true, arg_2), vec4<bool>(var_0, false, var_0, false), arg_2), !vec4<bool>(arg_2, var_0, true, true), !var_0), vec4<bool>(arg_2, false, false, arg_2)), ~_wgslsmith_dot_vec2_u32(~arg_1.a.zx, reverseBits(vec2<u32>(arg_3, arg_3)) & _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.e.e, arg_1.d.e), vec2<u32>(1u, 26673u))));
    let var_2 = u_input.b.x;
    let var_3 = var_1;
    let var_4 = Struct_3(var_1.a, arg_0.a.e, vec4<bool>(arg_2 | true, select(var_1.c.x, (arg_2 || false) | (var_3.b.e < 29509u), var_3.c.x), any(select(var_1.c, var_3.c, -2147483647i >= u_input.b.x)), !var_1.c.x), var_1.b.e);
    return var_1.c.zzx;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> vec2<bool> {
    var var_0 = firstLeadingBit(((u_input.b.zx >> (~u_input.a.zx % vec2<u32>(32u))) ^ u_input.b.yy) | reverseBits(u_input.b.zz));
    global0 = _wgslsmith_f_op_f32(-arg_1.b.d);
    let var_1 = Struct_3(arg_1.a, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.a * _wgslsmith_f_op_vec2_f32(select(arg_1.a.zx, vec2<f32>(arg_1.b.d, 1377f), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.a.yy)))), -133f, 1i, arg_1.a.x, _wgslsmith_dot_vec4_u32((vec4<u32>(arg_2, arg_1.b.e, 50394u, u_input.a.x) & vec4<u32>(51445u, 4294967295u, 15868u, 1u)) | vec4<u32>(35297u, u_input.a.x, 1994u, 0u), vec4<u32>(0u, 41926u & u_input.a.x, ~arg_1.d, ~arg_2))), arg_1.c, 32084u);
    var var_2 = true || !select(true, func_3(Struct_5(Struct_2(vec4<u32>(1u, 1u, 24528u, 31367u), 20935i, var_1.b, arg_1.b, Struct_1(arg_1.a.yx, -491f, 1i, arg_1.b.a.x, 91646u)), arg_1.b.e, u_input.a.x), Struct_2(vec4<u32>(arg_1.b.e, 30883u, arg_2, arg_1.b.e), u_input.b.x, var_1.b, var_1.b, var_1.b), true, 15478u).x, all(vec2<bool>(true, true)));
    let var_3 = select(vec3<bool>(false, var_1.c.x, false), func_3(Struct_5(Struct_2(vec4<u32>(var_1.d, arg_2, 38283u, arg_1.d), -2147483647i, Struct_1(var_1.b.a, 1487f, var_0.x, arg_1.b.b, 80305u), arg_1.b, Struct_1(vec2<f32>(arg_1.b.b, var_1.a.x), var_1.b.b, u_input.b.x, arg_1.b.d, arg_1.b.e)), ~1u, ~_wgslsmith_div_u32(arg_2, 7824u)), Struct_2(~vec4<u32>(58872u, 8962u, arg_1.d, 2617u) & reverseBits(vec4<u32>(0u, arg_1.d, 0u, u_input.a.x)), ~(0i | u_input.b.x), arg_1.b, var_1.b, Struct_1(var_1.b.a, 312f, var_0.x, _wgslsmith_div_f32(-469f, -1945f), ~21757u)), select(var_1.c.x, !(!arg_0.x), var_1.c.x), 4294967295u), select(func_3(Struct_5(Struct_2(vec4<u32>(arg_2, u_input.a.x, 0u, 1u), var_0.x, var_1.b, Struct_1(var_1.b.a, arg_1.b.d, arg_1.b.c, -1459f, 44280u), Struct_1(var_1.a.yz, 1086f, -7553i, 1995f, 1u)), 21484u, 4294967295u), Struct_2(~vec4<u32>(arg_2, arg_2, var_1.d, 11064u), var_0.x, arg_1.b, Struct_1(vec2<f32>(717f, 1000f), -363f, arg_1.b.c, var_1.b.d, u_input.a.x), Struct_1(vec2<f32>(var_1.a.x, arg_1.a.x), arg_1.a.x, var_1.b.c, arg_1.b.a.x, 3820u)), true, arg_1.b.e), func_3(Struct_5(Struct_2(vec4<u32>(38630u, var_1.b.e, 73233u, u_input.a.x), var_1.b.c, var_1.b, Struct_1(vec2<f32>(-1284f, -227f), -2335f, u_input.b.x, arg_1.a.x, 4968u), var_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2, 4294967295u, arg_2), vec4<u32>(1u, var_1.d, arg_2, var_1.b.e)), var_1.b.e), Struct_2(max(vec4<u32>(0u, arg_1.d, 18119u, u_input.a.x), vec4<u32>(112717u, 19615u, 1u, 0u)), -18491i, var_1.b, Struct_1(vec2<f32>(-729f, var_1.b.a.x), -653f, arg_1.b.c, arg_1.a.x, arg_1.d), arg_1.b), false, 40375u), _wgslsmith_f_op_f32(trunc(331f)) < _wgslsmith_f_op_f32(select(arg_1.a.x, 106f, true))));
    return func_3(Struct_5(Struct_2(~reverseBits(vec4<u32>(4294967295u, 4294967295u, arg_1.b.e, 38085u)), select(-27760i, u_input.b.x, true), arg_1.b, arg_1.b, var_1.b), abs(arg_2), firstTrailingBit(~0u)), Struct_2(abs(~vec4<u32>(85221u, var_1.b.e, arg_1.d, 4967u)), arg_1.b.c, var_1.b, arg_1.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-268f + 145f), -1744f), _wgslsmith_f_op_f32(-465f + _wgslsmith_f_op_f32(var_1.b.a.x * var_1.b.a.x)), -1i | var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a.x - var_1.b.b))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), var_1.b.e))), !(!((var_1.c.x & var_1.c.x) || (arg_1.d >= 4294967295u))), firstLeadingBit(arg_2)).zy;
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<bool>, arg_3: bool) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(707f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(266f * arg_1), arg_1), arg_1))), Struct_1(vec2<f32>(arg_1, arg_1), arg_1, ~27952i, -779f, max(14480u >> (u_input.a.x % 32u), 0u << (arg_0.x % 32u)) >> (~arg_0.x % 32u)), vec4<bool>(arg_2.x, true, arg_2.x, ~select(-11807i, 0i, arg_2.x) >= -(31319i | u_input.b.x)), u_input.a.x);
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, -981f, arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1451f, var_0.a.x, 174f)))), var_0.b, select(!vec4<bool>(all(var_0.c.wy), var_0.c.x, all(var_0.c), false), vec4<bool>(false, any(var_0.c), any(select(vec4<bool>(var_0.c.x, false, true, arg_2.x), vec4<bool>(true, var_0.c.x, arg_2.x, true), vec4<bool>(arg_2.x, var_0.c.x, true, true))), true), vec4<bool>(var_0.c.x, true, arg_3, true)), u_input.a.x);
    let var_1 = select(!var_0.c, select(select(!var_0.c, select(vec4<bool>(false, arg_3, arg_2.x, false), !var_0.c, any(var_0.c)), false), !select(!var_0.c, var_0.c, arg_3), false), !arg_3);
    var var_2 = var_0.b;
    var var_3 = Struct_3(var_0.a, var_0.b, vec4<bool>(arg_2.x, var_1.x, !arg_3, false), u_input.a.x);
    return vec3<f32>(_wgslsmith_f_op_f32(var_0.b.b + _wgslsmith_f_op_f32(f32(-1f) * -903f)), -1266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_3.b.b, arg_1))))));
}

fn func_2(arg_0: u32) -> vec4<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(115f, 413f, -1809f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(375f, 368f, 120f), vec3<f32>(-198f, 1253f, 468f))))), _wgslsmith_f_op_vec3_f32(func_5(u_input.a.yz, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, 321f), -1594f)), func_4(func_3(Struct_5(Struct_2(vec4<u32>(37143u, u_input.a.x, u_input.a.x, arg_0), u_input.b.x, Struct_1(vec2<f32>(1016f, 681f), -221f, 2147483647i, -2266f, arg_0), Struct_1(vec2<f32>(-734f, 2019f), -1000f, u_input.b.x, 255f, arg_0), Struct_1(vec2<f32>(144f, 380f), -653f, u_input.b.x, -107f, 13823u)), 1u, 32804u), Struct_2(vec4<u32>(u_input.a.x, 28900u, 18142u, arg_0), -5988i, Struct_1(vec2<f32>(1292f, 470f), 418f, 17988i, -960f, 32330u), Struct_1(vec2<f32>(-326f, -1358f), -142f, 2147483647i, -2115f, 7950u), Struct_1(vec2<f32>(-284f, -1598f), -1908f, u_input.b.x, 1122f, u_input.a.x)), true, 51087u), Struct_3(vec3<f32>(-173f, -109f, 518f), Struct_1(vec2<f32>(-319f, 1678f), -197f, u_input.b.x, -149f, 1u), vec4<bool>(true, false, true, false), 110527u), reverseBits(u_input.a.x)), true)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1412f, -804f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 1405f), vec2<f32>(380f, -1000f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(328f, -113f) + vec2<f32>(391f, 1733f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(684f, 782f)), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(591f, -726f)), select(any(vec4<bool>(false, false, true, false)), true, true))), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1i, 0i, u_input.b.x, u_input.b.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, u_input.a.x, 4294967295u, 0u), vec4<u32>(arg_0, 1u, 8189u, arg_0)) % vec4<u32>(32u)), ~(~vec4<i32>(2147483647i, 2147483647i, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -976f)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.a.x), arg_0), _wgslsmith_mult_u32(74030u, arg_0) << (arg_0 % 32u))), !select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), 1u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(202f))), var_0.c.x)) * 214f);
    let var_1 = firstTrailingBit(u_input.b.x);
    global0 = -492f;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1253f);
    return -vec4<i32>(-7477i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xy, firstTrailingBit(vec2<i32>(-8091i, 36646i))), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 17112i), u_input.b.xz), u_input.b.yy)), _wgslsmith_mod_i32(-2147483647i ^ u_input.b.x, ~(-2147483647i)) | u_input.b.x);
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: bool) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(1513f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -934f) - _wgslsmith_f_op_f32(sign(-2023f))))));
    let var_0 = -13229i;
    var var_1 = reverseBits(~_wgslsmith_dot_vec3_u32(max(select(u_input.a, u_input.a, true), ~u_input.a), vec3<u32>(26767u | u_input.a.x, ~u_input.a.x, max(u_input.a.x, u_input.a.x))));
    var_1 = firstTrailingBit(u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1053f * 1f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(429f - 410f), _wgslsmith_div_f32(-1000f, -1141f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-238f * -1000f), -1156f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1363f * -731f)))));
    return Struct_4(1u, -2147483647i >> (~u_input.a.x % 32u), Struct_2(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(~47131u, u_input.a.x), u_input.a.x, min(min(u_input.a.x, u_input.a.x), u_input.a.x)), 18941i, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), _wgslsmith_f_op_f32(exp2(var_2)), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(vec2<u32>(u_input.a.x, u_input.a.x), var_2, vec2<bool>(true, arg_2), arg_2)).x), firstLeadingBit(~u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(806f, var_2) + vec2<f32>(547f, var_2)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-176f, -541f) * vec2<f32>(var_2, var_2))), _wgslsmith_f_op_f32(-var_2), 1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1303f, 2410f, arg_2)))), 1u), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2, -1000f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1438f, 1045f), vec2<f32>(666f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * -596f) + _wgslsmith_f_op_f32(f32(-1f) * -740f)), i32(-1i) * -16781i, _wgslsmith_f_op_f32(select(845f, _wgslsmith_f_op_f32(var_2 * var_2), false)), ~_wgslsmith_add_u32(0u, 80812u))), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, ~(u_input.a.x << (u_input.a.x % 32u))), u_input.a.x, 19343u), abs(u_input.b.x));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_6(-(_wgslsmith_dot_vec4_i32(func_2(arg_2.a.a.x), arg_1) ^ arg_3.c), abs((arg_2.a.e.c & ~(-45740i)) ^ arg_3.c), select(any(vec2<bool>(true, true)), true, any(vec4<bool>(true, func_4(vec3<bool>(true, false, false), Struct_3(vec3<f32>(arg_3.d, arg_2.a.d.d, arg_3.d), Struct_1(vec2<f32>(arg_2.a.e.b, 519f), arg_3.b, 2147483647i, -875f, arg_3.e), vec4<bool>(true, false, true, true), 49942u), 34921u).x, true, true))));
    var var_1 = u_input.b.x;
    global0 = arg_3.d;
    var var_2 = 925f;
    var_0 = func_6(-2147483647i, ~func_2(arg_3.e).x, true);
    return func_6(_wgslsmith_mult_i32(0i, func_2(_wgslsmith_div_u32(func_6(arg_0, 21426i, false).d.x, 4294967295u)).x), _wgslsmith_mult_i32(~0i, arg_1.x) >> (~func_6(arg_0, -4306i, var_0.c.d.d <= 260f).d.x % 32u), select(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), ~(arg_2.b & arg_3.e) < var_0.d.x, any(vec4<bool>(true, true, true, true)))).c.e;
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    let var_0 = arg_2;
    let var_1 = ~abs(~arg_1.e);
    let var_2 = arg_1.b;
    global0 = arg_1.a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(316f, 1585f, -1362f, 1265f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f + var_3.x))) - arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(_wgslsmith_sub_i32(-u_input.b.x, -(i32(-1i) * -2147483647i)) >= -reverseBits(10336i), all(vec3<bool>(select(true, true, true), true, true)), true);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1117f)) * _wgslsmith_f_op_f32(f32(-1f) * -822f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(true, func_1(-81129i, vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x), Struct_5(Struct_2(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.b.x, Struct_1(vec2<f32>(-576f, -210f), 1580f, u_input.b.x, 286f, 0u), Struct_1(vec2<f32>(897f, -493f), 992f, -1i, 159f, 4294967295u), Struct_1(vec2<f32>(-1000f, 2026f), -1600f, 2147483647i, 678f, u_input.a.x)), 0u, u_input.a.x), Struct_1(vec2<f32>(1614f, -653f), 151f, u_input.b.x, 254f, u_input.a.x)), vec2<bool>(false, true), func_4(vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_3(vec3<f32>(-2193f, -1214f, 1904f), Struct_1(vec2<f32>(708f, -542f), -2190f, u_input.b.x, 1732f, u_input.a.x), vec4<bool>(true, true, true, var_0.x), 58921u), u_input.a.x).x))))));
    global0 = -372f;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-414f)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(191f, 1000f, true)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1761f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2115f + 738f)), 1f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-223f - _wgslsmith_f_op_f32(f32(-1f) * -730f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-526f * _wgslsmith_f_op_f32(f32(-1f) * -601f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-772f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -699f) - _wgslsmith_f_op_f32(floor(1128f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(func_1(u_input.b.x, vec4<i32>(-1i, 1i, 55060i, -1i), Struct_5(Struct_2(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), -1i, Struct_1(vec2<f32>(-1097f, 346f), 1000f, u_input.b.x, 860f, u_input.a.x), Struct_1(vec2<f32>(1000f, -541f), 998f, u_input.b.x, -1354f, 1u), Struct_1(vec2<f32>(-1000f, 518f), 694f, u_input.b.x, 1000f, 4294967295u)), u_input.a.x, u_input.a.x), Struct_1(vec2<f32>(-518f, 395f), 840f, u_input.b.x, 535f, 1u)).a.x, -2346f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1074f, 543f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-178f, 1298f)))), _wgslsmith_f_op_f32(func_7(true, Struct_1(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.zy), _wgslsmith_f_op_f32(1000f - 1260f), vec2<bool>(var_0.x, var_0.x), var_0.x & var_0.x)).yy, -1663f, u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -867f), 1u), !select(vec2<bool>(true, true), select(var_0.xx, vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false)), select(vec2<bool>(true, var_0.x), var_0.zx, vec2<bool>(true, var_0.x))), all(func_3(Struct_5(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), -2147483647i, Struct_1(vec2<f32>(917f, -931f), 2390f, u_input.b.x, 1042f, 13419u), Struct_1(vec2<f32>(-218f, 704f), 441f, u_input.b.x, -694f, 118955u), Struct_1(vec2<f32>(157f, -282f), -1024f, 47558i, 1312f, u_input.a.x)), 12067u, 1u), Struct_2(vec4<u32>(0u, u_input.a.x, 34999u, 4294967295u), u_input.b.x, Struct_1(vec2<f32>(1446f, 874f), -1244f, u_input.b.x, -1766f, 0u), Struct_1(vec2<f32>(1079f, 874f), -1340f, u_input.b.x, 1443f, u_input.a.x), Struct_1(vec2<f32>(468f, -1340f), 241f, u_input.b.x, -128f, u_input.a.x)), false, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))))), u_input.b.x ^ _wgslsmith_sub_i32(firstTrailingBit(~u_input.b.x), ~u_input.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(412f, -1263f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_f_op_f32(-1043f - -1415f)))))), 46209u | countOneBits(u_input.a.x));
    var var_2 = vec2<bool>(var_0.x && var_0.x, func_4(select(!func_3(Struct_5(Struct_2(vec4<u32>(0u, 0u, u_input.a.x, 1u), u_input.b.x, Struct_1(vec2<f32>(var_1.b, 116f), var_1.b, var_1.c, -141f, var_1.e), var_1, Struct_1(vec2<f32>(var_1.a.x, -789f), var_1.d, -23337i, var_1.d, 11551u)), 78882u, 84310u), Struct_2(vec4<u32>(49848u, u_input.a.x, 1u, u_input.a.x), 7683i, var_1, var_1, Struct_1(var_1.a, var_1.b, -2147483647i, var_1.b, 0u)), false, var_1.e), select(!var_0, !vec3<bool>(var_0.x, var_0.x, true), select(var_0, var_0, var_0.x)), select(var_0, select(var_0, vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), var_0)), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, var_1.d, -216f) - vec3<f32>(var_1.d, var_1.a.x, 2772f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1810f, -299f, -370f))), var_1, vec4<bool>(var_0.x, false, var_0.x, true), max(u_input.a.x & 1u, 55140u)), 0u).x);
    let x = u_input.a;
    s_output = StorageBuffer(max(select(u_input.a.x, func_1(-1i, vec4<i32>(var_1.c, u_input.b.x, u_input.b.x, u_input.b.x), Struct_5(Struct_2(vec4<u32>(36423u, 13234u, u_input.a.x, 0u), u_input.b.x, var_1, Struct_1(var_1.a, var_1.d, 32140i, -1881f, 1u), var_1), 0u, var_1.e), var_1).e << (_wgslsmith_mod_u32(36165u, var_1.e) % 32u), all(func_3(Struct_5(Struct_2(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x), 1i, Struct_1(var_1.a, 1836f, var_1.c, -887f, u_input.a.x), var_1, Struct_1(var_1.a, var_1.b, u_input.b.x, var_1.a.x, 1u)), u_input.a.x, u_input.a.x), Struct_2(vec4<u32>(13160u, var_1.e, 0u, u_input.a.x), u_input.b.x, var_1, var_1, var_1), var_0.x, 37448u))), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, var_1.d, var_1.a.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.x, var_1.a.x, 473f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -368f, 617f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, 1000f, -391f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 620f, -623f))) * vec3<f32>(561f, 275f, var_1.d)))), vec3<f32>(570f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-729f, _wgslsmith_f_op_f32(sign(-1229f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * var_1.a.x)))));
}

