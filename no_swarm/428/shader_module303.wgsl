struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec2<u32>(~(~(~_wgslsmith_div_u32(u_input.a.x, 29763u))), u_input.a.x & _wgslsmith_dot_vec3_u32(firstTrailingBit(abs(u_input.a.xzw)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x), vec3<u32>(0u, 4294967295u, 43538u)) << (max(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(38343u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))));
    let var_1 = max(u_input.a.ywx, u_input.a.xzz);
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global0.x, -1453f, true)), _wgslsmith_f_op_f32(-global0.x)))))));
    var var_2 = u_input.b;
    global0 = vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), -1950f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))))));
    return ~firstTrailingBit(~22661u | ~abs(u_input.a.x));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_u32(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, ~0u) & (~33471u & u_input.a.x), ~(~func_3())));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1868f, global0.x), vec2<f32>(global0.x, -635f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1424f) * vec2<f32>(833f, global0.x)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(-global0.x)), 1272f) * vec2<f32>(1f, 1f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 159f), vec4<f32>(global0.x, global0.x, -907f, global0.x)) + vec4<f32>(855f, -1162f, 328f, -1136f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 336f, -1418f, global0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 630f, -324f, global0.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), -1537f, -470f, _wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 866f, 391f, global0.x))))))));
    let var_2 = countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, var_0)), func_3(), u_input.a.x, firstTrailingBit(u_input.a.x) | func_3()), ~u_input.a));
    var var_3 = Struct_1(u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), var_1.x), !(_wgslsmith_div_i32(2147483647i, u_input.c) >= -27220i), -1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-3453f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(~arg_3.d, arg_3.e.c, true, reverseBits(-24573i << ((arg_3.d << (~0u % 32u)) % 32u)));
    var var_1 = !vec2<bool>(18437i < arg_3.b, select(any(vec4<bool>(false, arg_0.x, arg_2, arg_2)) | arg_2, any(!arg_0.zy), var_0.c));
    var var_2 = _wgslsmith_f_op_f32(func_2());
    var var_3 = any(vec2<bool>(!((u_input.b.x == var_0.d) & any(vec2<bool>(false, var_1.x))), !var_1.x));
    var_3 = any(!select(arg_0.xzz, vec3<bool>(false, true, false), any(arg_3.e.e.wwx)));
    return arg_3;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = vec3<bool>(!arg_2, arg_1.d, arg_2);
    global0 = arg_0.e.a.yz;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e.a.xz));
    var var_1 = arg_1.c;
    var_1 = arg_0.e.a.x;
    return func_1(func_1(arg_1.e, _wgslsmith_f_op_f32(f32(-1f) * -1223f), arg_2, func_1(arg_1.e, -232f, arg_1.d, arg_0)).e.e, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(ceil(-1592f))), arg_1.d, func_1(vec4<bool>(true, arg_2, true, !all(vec4<bool>(var_0.x, true, var_0.x, arg_1.e.x))), arg_0.e.c, arg_1.b.x, func_1(func_1(select(arg_1.e, vec4<bool>(arg_2, false, false, arg_0.a), false), -779f, false, func_1(vec4<bool>(false, arg_2, var_0.x, var_0.x), arg_0.c, arg_2, Struct_3(false, u_input.b.x, 862f, arg_0.d, Struct_2(arg_0.e.a, var_0.xx, -888f, true, vec4<bool>(false, var_0.x, var_0.x, false))))).e.e, global0.x, true, Struct_3(false, firstLeadingBit(arg_0.b), 1236f, arg_0.d, func_1(arg_0.e.e, arg_0.e.a.x, false, Struct_3(arg_2, arg_0.b, -1245f, 141564u, Struct_2(arg_1.a, arg_1.b, arg_0.c, arg_1.d, arg_0.e.e))).e)))).e;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1.e.a)));
    let var_1 = func_4(func_1(!vec4<bool>(true, arg_1.a, false, true), -458f, func_1(!select(arg_1.e.e, arg_1.e.e, arg_1.e.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), ~u_input.a.x < (66730u & arg_1.d), func_1(select(arg_1.e.e, arg_1.e.e, arg_1.e.b.x), _wgslsmith_f_op_f32(-var_0.x), arg_1.a, func_1(arg_1.e.e, var_0.x, arg_1.e.d, Struct_3(arg_1.e.e.x, -15264i, global0.x, u_input.a.x, Struct_2(var_0, vec2<bool>(false, false), -539f, true, arg_1.e.e))))).e.e.x, arg_1), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), global0.x, _wgslsmith_f_op_f32(-arg_1.e.c)), _wgslsmith_f_op_vec3_f32(-arg_1.e.a)), select(select(arg_1.e.e.yx, arg_1.e.b, !arg_1.e.e.xy), arg_1.e.b, arg_1.e.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-837f * arg_1.c), _wgslsmith_f_op_f32(trunc(global0.x))))), arg_1.a, arg_1.e.e), true).a.xz;
    var var_2 = true && !(!(!(true || arg_1.a)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(arg_1.e.a * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0 + _wgslsmith_div_vec3_f32(arg_1.e.a, vec3<f32>(arg_1.c, global0.x, 608f))), arg_1.e.a, countOneBits(arg_0) == (arg_0 | arg_1.b)))), vec2<bool>(false, any(!vec2<bool>(false, arg_1.e.e.x))), _wgslsmith_f_op_f32(step(382f, 1237f)), false, arg_1.e.e);
    var var_4 = _wgslsmith_clamp_vec2_u32(~((u_input.a.xz ^ arg_2) >> (abs(vec2<u32>(0u, arg_1.d)) % vec2<u32>(32u))), vec2<u32>(4294967295u, 13980u), firstTrailingBit(~_wgslsmith_add_vec2_u32(arg_2, vec2<u32>(u_input.a.x, 0u)))) & abs(vec2<u32>(_wgslsmith_add_u32(2729u, 28469u & arg_1.d), ~33006u));
    return Struct_1(_wgslsmith_clamp_u32(0u, ~(~u_input.a.x), 48549u), func_4(Struct_3(arg_1.a, countOneBits(abs(-1i)), func_4(Struct_3(var_3.d, -2147483647i, -1808f, 4294967295u, Struct_2(vec3<f32>(var_0.x, 1162f, -435f), vec2<bool>(var_3.b.x, true), 681f, false, vec4<bool>(arg_1.e.e.x, true, var_3.e.x, true))), var_3, all(vec4<bool>(false, false, var_3.e.x, var_3.e.x))).a.x, var_4.x, arg_1.e), arg_1.e, all(!vec3<bool>(arg_1.e.d, arg_1.a, true))).c, arg_1.a, 8828i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -25185i;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(776f, global0.x)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, -2120f), vec2<f32>(-571f, -759f)))))))));
    let var_1 = vec4<bool>(false, ((u_input.c | 2147483647i) >> (1u % 32u)) == -2147483647i, u_input.a.x == 1u, true);
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1386f, 456f) + vec2<f32>(636f, -1000f)), select(var_1.yy, vec2<bool>(false, false), vec2<bool>(var_1.x, var_1.x))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(901f, global0.x)))))))));
    global0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(1268f)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x + -898f)))));
    var var_2 = !vec2<bool>(true, !(all(vec2<bool>(true, var_1.x)) | var_1.x));
    let var_3 = func_5(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(u_input.b.zyz), u_input.b.zyy), _wgslsmith_mod_i32(1168i, var_0) ^ -1i), Struct_3(var_1.x, -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) + 1000f), 17009u, func_4(func_1(!vec4<bool>(true, var_2.x, false, var_2.x), global0.x, true, Struct_3(var_1.x, u_input.c, global0.x, 81910u, Struct_2(vec3<f32>(-1000f, 1612f, global0.x), var_1.zw, global0.x, true, vec4<bool>(var_2.x, var_1.x, true, var_1.x)))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.x, global0.x) - vec3<f32>(global0.x, 1000f, global0.x)), !var_1.zy, -1126f, select(false, var_2.x, var_2.x), var_1), true)), u_input.a.xy << (abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 10569u), reverseBits(u_input.a.yw), _wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(0u, 1u)))) % vec2<u32>(32u)));
    var_2 = select(func_1(func_1(vec4<bool>(true, true, var_2.x, !var_3.c), -1480f, var_3.c, func_1(select(var_1, vec4<bool>(true, var_1.x, var_2.x, false), vec4<bool>(var_3.c, var_1.x, var_3.c, var_2.x)), _wgslsmith_f_op_f32(ceil(419f)), true, Struct_3(false, u_input.b.x, var_3.b, 1u, Struct_2(vec3<f32>(-1000f, 496f, global0.x), var_1.xz, -1772f, var_3.c, var_1)))).e.e, -275f, !(!var_2.x & (986u == u_input.a.x)), Struct_3(var_2.x, 11200i, 762f, u_input.a.x, func_4(Struct_3(false, var_0, -174f, u_input.a.x, Struct_2(vec3<f32>(var_3.b, global0.x, -252f), var_1.wy, -1000f, var_2.x, vec4<bool>(var_3.c, false, var_2.x, var_2.x))), func_1(var_1, 710f, var_3.c, Struct_3(var_3.c, 13492i, global0.x, 4294967295u, Struct_2(vec3<f32>(global0.x, 140f, 1000f), vec2<bool>(true, true), global0.x, var_2.x, vec4<bool>(var_1.x, true, var_3.c, var_3.c)))).e, var_3.c))).e.e.yx, !(!select(!var_1.xx, var_1.yy, var_1.zx)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2188f, _wgslsmith_f_op_f32(global0.x - 328f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_3.b)), var_3.b)), vec2<u32>(_wgslsmith_add_u32(~(u_input.a.x >> (u_input.a.x % 32u)), ~8471u), _wgslsmith_add_u32(firstLeadingBit(55268u), firstLeadingBit(var_3.a) << (reverseBits(62190u) % 32u))), _wgslsmith_f_op_f32(152f * _wgslsmith_f_op_f32(sign(var_3.b))), vec4<i32>(max(var_0, var_3.d), var_0, var_0, var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -815f, 664f), vec3<f32>(933f, -921f, global0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.b, var_3.b, global0.x))), false))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(826f - var_3.b), -1136f, -266f) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b, -493f, -776f), vec3<f32>(global0.x, global0.x, -401f), var_2.x)))))));
}

