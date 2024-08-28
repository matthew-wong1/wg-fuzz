struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(-752f, select(arg_1.b.b, true, select(any(!vec4<bool>(arg_3, arg_0.c.b, true, false)), arg_0.c.b, all(select(vec3<bool>(true, false, arg_1.b.b), vec3<bool>(false, true, true), vec3<bool>(arg_0.b.b, arg_1.c.b, false))))), firstLeadingBit(arg_0.b.c), vec2<u32>(min(~(~1u), reverseBits(arg_2.x) >> (21321u % 32u)), 21959u));
    var var_1 = any(vec3<bool>(arg_0.b.a > _wgslsmith_f_op_f32(step(232f, 1878f)), (all(vec3<bool>(false, false, arg_3)) && any(vec2<bool>(var_0.b, false))) != false, arg_3 && true));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_1.b.a + _wgslsmith_f_op_f32(var_0.a - -702f)), false, ~abs(arg_1.c.c), vec2<u32>(~min(arg_0.c.c.x >> (arg_0.b.d.x % 32u), arg_0.b.c.x | arg_1.c.c.x), var_0.c.x));
    var_1 = any(!select(vec3<bool>(var_2.b, true, var_0.b && var_2.b), vec3<bool>(true, false || var_0.b, true), var_0.b));
    var_1 = ~_wgslsmith_add_u32(var_2.d.x, ~arg_0.c.d.x) > arg_1.b.d.x;
    return _wgslsmith_dot_vec4_u32(~arg_1.c.c, (vec4<u32>(~arg_2.x, arg_2.x, arg_1.c.c.x, _wgslsmith_div_u32(arg_1.b.d.x, 76741u)) | arg_0.c.c) & abs(countOneBits(~vec4<u32>(4294967295u, arg_0.b.d.x, 3667u, arg_1.b.c.x))));
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = vec3<i32>(firstTrailingBit(~(-2147483647i)), u_input.d.x, max(u_input.b, u_input.c.x));
    let var_1 = _wgslsmith_mult_vec4_u32(~arg_0.c.c, vec4<u32>(~min(4294967295u, 4294967295u), 4294967295u ^ _wgslsmith_mult_u32(arg_0.c.d.x, 4294967295u), reverseBits(~33250u), 1u)) & vec4<u32>(max(func_3(Struct_3(u_input.c.x, arg_0.c, arg_0.c), Struct_3(var_0.x, Struct_1(720f, arg_0.a.x, vec4<u32>(47247u, 44871u, 9704u, arg_0.c.d.x), vec2<u32>(arg_0.c.c.x, 4294967295u)), arg_0.c), ~vec4<u32>(39135u, 0u, 4422u, arg_0.c.d.x), arg_0.a.x), arg_0.c.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(61571u, 36239u, arg_0.c.c.x, arg_0.c.c.x), reverseBits(arg_0.c.c)) ^ (4294967295u >> (arg_0.c.d.x % 32u)), ~(_wgslsmith_mult_u32(1u, 29931u) & _wgslsmith_div_u32(0u, arg_0.c.d.x)), arg_0.c.c.x);
    var var_2 = countOneBits(-vec4<i32>(u_input.d.x, _wgslsmith_clamp_i32(abs(1i), _wgslsmith_mult_i32(u_input.b, var_0.x), ~14217i), 0i, 1i));
    var var_3 = select(select(arg_0.d, arg_0.d, arg_0.d), select(!vec3<bool>(!arg_0.a.x, arg_0.d.x, 1u == var_1.x), !(!select(arg_0.d, arg_0.d, arg_0.d)), select(select(arg_0.d, arg_0.d, vec3<bool>(true, true, arg_0.c.b)), arg_0.d, arg_0.d)), !(true && !arg_0.a.x));
    var var_4 = Struct_1(-1141f, select(var_3.x, !any(vec4<bool>(var_3.x, arg_0.d.x, false, false)), arg_0.d.x), vec4<u32>(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, arg_0.c.d.x), var_1.zx)), _wgslsmith_div_u32(1u, select(arg_0.c.d.x, arg_0.c.d.x, true)), _wgslsmith_dot_vec3_u32(~countOneBits(var_1.yxy), countOneBits(select(var_1.yyz, vec3<u32>(var_1.x, 14694u, var_1.x), true))), firstLeadingBit(var_1.x)), ~select(firstLeadingBit(~vec2<u32>(var_1.x, var_1.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.c.c.x, arg_0.c.d.x), _wgslsmith_mod_vec2_u32(var_1.yy, arg_0.c.c.xx)), true));
    return var_3.x;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c.a)));
    var var_1 = Struct_3(reverseBits(countOneBits(arg_3) | 0i), Struct_1(arg_0.b.x, true, arg_2.c.c & arg_0.c.c, ~(~_wgslsmith_sub_vec2_u32(arg_2.c.c.zx, arg_0.c.c.wz))), Struct_1(arg_0.b.x, true, min(vec4<u32>(1u, arg_0.c.c.x, arg_0.c.c.x, arg_0.c.d.x) >> (vec4<u32>(arg_2.c.d.x, arg_2.c.c.x, 0u, 1u) % vec4<u32>(32u)), vec4<u32>(arg_1, 0u, arg_0.c.d.x, arg_0.c.d.x)) | reverseBits(arg_2.c.c >> (vec4<u32>(386u, 61414u, arg_0.c.d.x, arg_0.c.c.x) % vec4<u32>(32u))), arg_0.c.c.wy));
    var_1 = Struct_3(var_1.a, arg_0.c, var_1.b);
    let var_2 = vec3<f32>(-200f, _wgslsmith_f_op_f32(trunc(var_1.c.a)), _wgslsmith_f_op_f32(trunc(arg_0.c.a)));
    var_1 = Struct_3(-2147483647i, Struct_1(_wgslsmith_f_op_f32(step(1041f, var_2.x)), var_1.c.b, ~(~vec4<u32>(4294967295u, 9300u, arg_0.c.c.x, arg_0.c.d.x)), min(arg_0.c.c.yz, ~var_1.b.d << (max(arg_2.c.d, vec2<u32>(arg_1, arg_2.c.d.x)) % vec2<u32>(32u)))), arg_0.c);
    return Struct_3(-u_input.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(max(1282f, 951f))), true, ~vec4<u32>(arg_0.c.d.x, 1u, 1u, 11809u) & ~arg_0.c.c, vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, arg_0.c.d.x), var_1.c.c.xzz)), reverseBits(57971u) >> (min(26713u, arg_1) % 32u))), var_1.b);
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = func_4(Struct_2(vec2<bool>(func_2(Struct_2(vec2<bool>(true, true), vec2<f32>(1757f, 1625f), Struct_1(1674f, true, vec4<u32>(0u, arg_0, arg_0, arg_0), vec2<u32>(arg_0, 0u)), vec3<bool>(false, false, false))), !all(vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1086f, 1431f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(189f, -1000f)))), !all(vec2<bool>(false, true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -698f) + 529f), true, min(~vec4<u32>(1u, 4294967295u, arg_0, arg_0), abs(vec4<u32>(arg_0, 0u, arg_0, 0u))), ~vec2<u32>(1u, arg_0) | (vec2<u32>(64265u, arg_0) >> (vec2<u32>(arg_0, 37461u) % vec2<u32>(32u)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), firstLeadingBit(abs(~4294967295u)), Struct_2(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1977f, -681f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(287f, 322f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(322f, 851f)))), Struct_1(_wgslsmith_f_op_f32(ceil(-879f)), 4294967295u > arg_0, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_0, 5296u, arg_0), vec4<u32>(1u, arg_0, arg_0, 4188u)) << (~vec4<u32>(arg_0, arg_0, arg_0, arg_0) % vec4<u32>(32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(37946u, 7623u))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), any(vec4<bool>(false, false, false, true)))), u_input.d.x);
    var var_1 = 1i;
    var var_2 = Struct_2(select(select(select(select(vec2<bool>(var_0.b.b, var_0.c.b), vec2<bool>(false, var_0.b.b), vec2<bool>(true, false)), !vec2<bool>(true, var_0.c.b), !vec2<bool>(false, var_0.b.b)), select(!vec2<bool>(true, var_0.b.b), vec2<bool>(false, true), vec2<bool>(false, var_0.b.b)), var_0.b.a != var_0.b.a), vec2<bool>(false, var_0.c.b), vec2<bool>(true, all(select(vec4<bool>(false, true, var_0.b.b, true), vec4<bool>(true, true, false, var_0.c.b), true)))), vec2<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(step(var_0.b.a, var_0.b.a)))), _wgslsmith_f_op_f32(func_4(Struct_2(vec2<bool>(var_0.b.b, true), vec2<f32>(-1625f, 634f), var_0.c, vec3<bool>(true, var_0.c.b, var_0.c.b)), 1u, Struct_2(vec2<bool>(true, false), vec2<f32>(287f, var_0.b.a), Struct_1(var_0.b.a, false, vec4<u32>(var_0.c.d.x, arg_0, arg_0, arg_0), vec2<u32>(0u, 92519u)), vec3<bool>(true, var_0.b.b, var_0.c.b)), 23455i).b.a * _wgslsmith_f_op_f32(f32(-1f) * -294f))), func_4(Struct_2(!vec2<bool>(false, var_0.c.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, -534f))), var_0.c, vec3<bool>(var_0.b.b & var_0.b.b, true, true)), func_3(Struct_3(u_input.c.x, func_4(Struct_2(vec2<bool>(true, false), vec2<f32>(var_0.c.a, -505f), var_0.b, vec3<bool>(true, var_0.c.b, true)), arg_0, Struct_2(vec2<bool>(false, false), vec2<f32>(2525f, 1333f), Struct_1(var_0.c.a, false, vec4<u32>(var_0.b.c.x, 0u, var_0.c.d.x, 13106u), vec2<u32>(0u, 0u)), vec3<bool>(false, var_0.c.b, true)), u_input.c.x).c, func_4(Struct_2(vec2<bool>(true, false), vec2<f32>(-549f, 727f), var_0.c, vec3<bool>(true, var_0.b.b, var_0.b.b)), 8505u, Struct_2(vec2<bool>(false, var_0.b.b), vec2<f32>(-854f, var_0.c.a), var_0.c, vec3<bool>(true, false, true)), var_0.a).c), Struct_3(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-18705i, -2147483647i, var_0.a)), var_0.b, func_4(Struct_2(vec2<bool>(var_0.b.b, false), vec2<f32>(var_0.b.a, var_0.c.a), var_0.b, vec3<bool>(true, var_0.c.b, var_0.b.b)), 2261u, Struct_2(vec2<bool>(var_0.b.b, true), vec2<f32>(1074f, var_0.c.a), Struct_1(256f, true, var_0.b.c, vec2<u32>(arg_0, 60296u)), vec3<bool>(true, true, var_0.b.b)), -4587i).b), min(var_0.c.c, var_0.b.c) ^ vec4<u32>(50429u, 1u, 42783u, arg_0), 45471u < _wgslsmith_add_u32(0u, arg_0)), Struct_2(!vec2<bool>(var_0.c.b, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.b.a))), var_0.b, vec3<bool>(false, all(vec3<bool>(true, true, var_0.b.b)), u_input.b > -1i)), u_input.b).c, !select(select(!vec3<bool>(false, false, var_0.b.b), select(vec3<bool>(true, var_0.b.b, var_0.b.b), vec3<bool>(true, true, var_0.c.b), true), 578f >= var_0.b.a), select(!vec3<bool>(var_0.c.b, false, false), !vec3<bool>(true, var_0.c.b, false), true), !vec3<bool>(var_0.c.b, false, var_0.b.b)));
    var var_3 = 0u;
    var var_4 = var_2.c.c;
    return var_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> vec2<bool> {
    var var_0 = arg_0.b.a;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1472f, -1230f, arg_0.b.b))));
    var_0 = arg_0.b.a;
    let var_1 = func_4(Struct_2(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(arg_0.c.b, arg_0.c.b)), vec2<bool>(true, arg_0.c.b), vec2<bool>(arg_0.c.b, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, arg_0.c.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a, -558f)))), arg_0.b, !select(!vec3<bool>(arg_0.c.b, arg_0.b.b, arg_0.b.b), select(vec3<bool>(arg_0.b.b, arg_0.b.b, arg_0.c.b), vec3<bool>(arg_0.c.b, false, false), arg_0.c.b), !vec3<bool>(false, false, arg_0.b.b))), ~arg_0.b.c.x, Struct_2(select(select(vec2<bool>(true, true), !vec2<bool>(arg_0.b.b, arg_0.b.b), arg_0.c.b), !vec2<bool>(arg_0.b.b, arg_0.b.b), select(vec2<bool>(arg_0.b.b, false), select(vec2<bool>(arg_0.c.b, arg_0.b.b), vec2<bool>(true, true), vec2<bool>(arg_0.c.b, false)), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.a, -1000f), vec2<f32>(746f, arg_0.b.a))))), func_1(arg_0.c.d.x).c, !select(vec3<bool>(arg_0.b.b, false, arg_0.b.b), select(vec3<bool>(arg_0.c.b, true, arg_0.c.b), vec3<bool>(arg_0.c.b, arg_0.c.b, true), vec3<bool>(true, true, false)), any(vec3<bool>(arg_0.b.b, arg_0.c.b, false)))), arg_0.a);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f), 524f) - func_4(Struct_2(vec2<bool>(var_1.b.b, false), vec2<f32>(283f, arg_0.c.a), var_1.c, vec3<bool>(false, var_1.c.b, arg_0.c.b)), ~4294967295u, Struct_2(vec2<bool>(false, true), vec2<f32>(arg_0.b.a, -2332f), arg_0.b, vec3<bool>(true, var_1.b.b, var_1.b.b)), reverseBits(12495i)).c.a))));
    return !(!(!(!(!vec2<bool>(var_1.b.b, arg_0.c.b)))));
}

fn func_6(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1502f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-486f, -290f)) - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(-813f)))) > -273f, max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(firstTrailingBit(0u), 7435u, 4294967295u >> (1u % 32u), ~1u)), countOneBits(vec2<u32>(16980u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(17195u, 7423u, 51524u), vec3<u32>(0u, 10151u, 4294967295u)) % 32u), firstLeadingBit(~1u))));
    let var_1 = _wgslsmith_mult_vec2_u32(var_0.c.ww, ~vec2<u32>(30817u >> (~var_0.c.x % 32u), var_0.c.x));
    var var_2 = var_0.a;
    let var_3 = vec4<i32>(~u_input.a, u_input.b, firstLeadingBit(-13684i), 2147483647i);
    var_2 = _wgslsmith_f_op_f32(round(-2865f));
    return Struct_3(var_3.x, var_0, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(select(select(func_5(func_1(46926u), firstTrailingBit(u_input.d)), vec2<bool>(u_input.d.x < 36741i, true), any(func_5(Struct_3(u_input.a, Struct_1(1710f, true, vec4<u32>(4294967295u, 0u, 1356u, 0u), vec2<u32>(0u, 1u)), Struct_1(-704f, false, vec4<u32>(0u, 20544u, 1u, 0u), vec2<u32>(4294967295u, 8788u))), u_input.d))), vec2<bool>(func_1(1u).b.b, _wgslsmith_f_op_f32(ceil(449f)) > func_1(49861u).b.a), false));
    let var_1 = _wgslsmith_mod_vec2_i32(~vec2<i32>(func_1(8398u ^ var_0.b.c.x).a, _wgslsmith_mod_i32(-2147483647i, -var_0.a)), ~(~vec2<i32>(var_0.a, -2147483647i) | vec2<i32>(u_input.c.x, var_0.a)) << ((vec2<u32>(_wgslsmith_sub_u32(var_0.b.d.x, var_0.c.d.x), 1u) << (vec2<u32>(~27656u, var_0.b.c.x << (var_0.b.d.x % 32u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = vec3<bool>(var_0.b.b, func_1(1u).c.b, var_0.b.b);
    var_2 = !(!(!select(select(vec3<bool>(var_0.c.b, false, true), vec3<bool>(var_0.b.b, var_2.x, true), vec3<bool>(true, var_0.c.b, var_0.c.b)), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(false, var_2.x, false), vec3<bool>(var_0.b.b, var_0.b.b, true)), func_6(vec2<bool>(var_0.c.b, false)).b.b)));
    var_2 = vec3<bool>(var_2.x, var_0.c.b, !var_0.c.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a, var_0.c.a, var_0.c.a, var_0.c.a) + vec4<f32>(var_0.c.a, var_0.c.a, var_0.b.a, 515f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-752f, -303f, 652f, var_0.b.a)))) * vec4<f32>(-3257f, _wgslsmith_f_op_f32(var_0.c.a + var_0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -744f), _wgslsmith_f_op_f32(-var_0.b.a)))));
    let var_4 = vec2<bool>(!any(select(select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_0.c.b, var_2.x, false), true), vec3<bool>(var_0.c.b, false, false), var_2.x)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.x))), var_3.x) - var_3.yx), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-431f * func_6(vec2<bool>(var_4.x, var_4.x)).c.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(921f, var_3.x)), var_3.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.ywx * vec3<f32>(var_0.b.a, 1686f, var_3.x)))))), ~var_0.a);
}

