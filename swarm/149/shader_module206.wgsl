struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = true;
    var var_1 = 720f;
    return _wgslsmith_div_i32(1i, u_input.c.x) ^ arg_1;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = ~vec2<u32>(_wgslsmith_add_u32(~52000u | ~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x >> (1u % 32u), _wgslsmith_dot_vec3_u32(u_input.a.zwx, u_input.a.zzy))), 24357u);
    let var_1 = Struct_1(any(!(!(!vec3<bool>(true, arg_1.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-297f, -1460f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * _wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_f32(-arg_0)), 0i, _wgslsmith_f_op_vec3_f32(sign(arg_3)), u_input.a.yww << (u_input.a.yzx % vec3<u32>(32u)));
    return ~0u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: bool) -> i32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = Struct_1(true, _wgslsmith_div_f32(arg_0.d.x, 1156f), reverseBits(-32170i), arg_0.d, ~vec3<u32>(84808u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), var_0.e.x << (0u % 32u)), 61579u));
    var_1 = Struct_1(var_0.a, var_1.d.x, u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1029f, 246f, arg_2.x)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.d, arg_0.d, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) * vec3<f32>(arg_0.b, var_0.d.x, 528f)))), _wgslsmith_mod_vec3_u32(var_0.e & vec3<u32>(var_1.e.x, _wgslsmith_mult_u32(arg_0.e.x, arg_0.e.x), max(9726u, var_1.e.x)), abs(min(min(var_1.e, vec3<u32>(21199u, 4294967295u, arg_0.e.x)), vec3<u32>(var_0.e.x, arg_1.x, var_1.e.x)))));
    return var_0.c;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: bool) -> f32 {
    let var_0 = Struct_1((max(func_2(arg_0, -22944i), u_input.c.x) ^ u_input.b) != u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), func_4(Struct_1(u_input.a.x > func_3(-148f, vec2<bool>(arg_2, true), vec2<f32>(473f, 342f), vec3<f32>(2223f, 1000f, 1000f)), -1000f, min(~u_input.c.x, 6954i | u_input.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(252f, 1119f, -1959f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-651f, 390f, 257f) + vec3<f32>(1048f, 752f, -498f))), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(u_input.a.yzw << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), u_input.a.zwx) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -796f), 378f)), -1489f), false), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-876f)))), 512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) + -535f))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x ^ 44796u, 25900u)), vec3<u32>(1u, ~u_input.a.x, u_input.a.x), firstLeadingBit(~_wgslsmith_mult_vec3_u32(u_input.a.wzy, u_input.a.wzz))));
    var var_1 = min(reverseBits(min(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b, -1i), vec3<i32>(u_input.c.x, var_0.c, u_input.c.x)) & ~vec3<i32>(89677i, -2147483647i, 2147483647i), (vec3<i32>(-2147483647i, -1i, u_input.b) >> (vec3<u32>(4294967295u, 18253u, u_input.a.x) % vec3<u32>(32u))) | abs(vec3<i32>(-2147483647i, 20205i, -43069i)))), _wgslsmith_add_vec3_i32(max(vec3<i32>(-15915i, 2999i, 0i), vec3<i32>(2147483647i, 2147483647i, -2147483647i)), min(vec3<i32>(6518i, -1i, var_0.c) << (vec3<u32>(1u, 7418u, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(-2147483647i, var_0.c, u_input.c.x))) << ((_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(0u, var_0.e.x, u_input.a.x)), var_0.e) | u_input.a.yxz) % vec3<u32>(32u)));
    return var_0.d.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -1239f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-610f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -527f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1681f + arg_1.d.x), _wgslsmith_div_f32(arg_2.x, arg_0.x))) + 1441f));
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~u_input.a.x), vec2<u32>(func_3(_wgslsmith_f_op_f32(trunc(918f)), !vec2<bool>(var_0, arg_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(248f, 393f)), _wgslsmith_f_op_vec3_f32(arg_1.d + arg_3.d)), arg_1.e.x)));
    var_1 = u_input.a.x << (select(1u, 1u, true) % 32u);
    var_1 = 21866u;
    var_1 = ~arg_1.e.x;
    return Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1604f) + _wgslsmith_f_op_f32(f32(-1f) * -189f))))), 1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_3.b * arg_3.b), _wgslsmith_f_op_f32(arg_3.d.x + arg_2.x), _wgslsmith_f_op_f32(arg_1.b + arg_2.x))), arg_1.d), vec3<u32>(0u, arg_3.e.x, min(4294967295u, ~firstTrailingBit(u_input.a.x))));
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-728f, arg_1.d.x)))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), 179f), 172f)), countOneBits(u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_1.d))), firstTrailingBit(_wgslsmith_add_vec3_u32(~(~u_input.a.wyx), (vec3<u32>(84326u, 14750u, arg_1.e.x) | vec3<u32>(arg_1.e.x, 1u, 0u)) ^ arg_1.e)));
    let var_1 = var_0;
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(trunc(-267f)), ~(~var_1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_1.d, vec3<f32>(-959f, 250f, arg_1.b), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1125f, var_1.d.x, -2516f) * var_0.d)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-575f, -1089f, -303f), vec3<f32>(-1001f, -1827f, arg_1.d.x), true))))), vec3<u32>(_wgslsmith_sub_u32(1u, u_input.a.x), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(213f, var_0.b) + vec2<f32>(var_0.d.x, 1000f)) - var_1.d.zx), var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-447f, -158f)), func_5(vec2<f32>(arg_1.d.x, arg_1.b), Struct_1(true, var_1.d.x, -14471i, arg_1.d, var_1.e), _wgslsmith_f_op_vec2_f32(exp2(var_0.d.xx)), Struct_1(false, -651f, arg_0, var_0.d, u_input.a.xww))).e.x, min(arg_1.e.x, abs(4294967295u))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(2147483647i, func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, 1313f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-237f, -923f) + vec2<f32>(378f, -613f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, -189f))), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) + _wgslsmith_f_op_f32(select(256f, -1875f, false))), 2147483647i, vec3<f32>(_wgslsmith_f_op_f32(func_1(true, true, true, true)), _wgslsmith_f_op_f32(246f * 100f), _wgslsmith_f_op_f32(func_1(true, false, false, true))), min(vec3<u32>(u_input.a.x, u_input.a.x, 1u) << (u_input.a.xwy % vec3<u32>(32u)), max(u_input.a.zyy, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), Struct_1(true, -540f, 18518i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1192f, 1739f, 863f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -187f, -557f) * vec3<f32>(-850f, 1009f, 787f)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))), firstLeadingBit(vec3<u32>(4294967295u, 24933u, u_input.a.x)))));
    let var_1 = vec2<f32>(var_0.d.x, var_0.b);
    var_0 = func_6((var_0.c | var_0.c) | _wgslsmith_mod_i32(-103i, _wgslsmith_sub_i32(~var_0.c, u_input.c.x)), func_6(-2147483647i | select(i32(-1i) * -7718i, ~u_input.c.x, true), func_5(var_0.d.xz, Struct_1(false, 937f, -17588i, _wgslsmith_f_op_vec3_f32(-var_0.d), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<u32>(64246u, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-664f, -545f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-278f, var_1.x), vec2<f32>(var_1.x, var_1.x), false)))), func_5(_wgslsmith_f_op_vec2_f32(-var_1), func_5(var_0.d.yy, Struct_1(false, 985f, 52466i, var_0.d, vec3<u32>(39449u, u_input.a.x, 107919u)), var_1, Struct_1(true, 246f, var_0.c, vec3<f32>(var_0.b, var_1.x, var_0.d.x), vec3<u32>(var_0.e.x, 27491u, u_input.a.x))), _wgslsmith_f_op_vec2_f32(var_1 * var_0.d.zy), Struct_1(var_0.a, 499f, -18004i, vec3<f32>(var_1.x, var_0.b, -916f), vec3<u32>(4294967295u, 1u, var_0.e.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1073f)), 1224f, -208f, var_1.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 559f, var_0.b, 949f) + vec4<f32>(-1609f, var_0.b, var_0.d.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -1000f, var_1.x, var_1.x)), !vec4<bool>(var_0.a, false, var_0.a, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, 432f, var_0.d.x, 1108f))), false))));
    var_0 = Struct_1(any(select(vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(var_0.a, false, false, true), !var_0.a)) | true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-589f + -1668f))), 11265i, var_2.ywz, u_input.a.ywx);
    let var_3 = u_input.c.x;
    let var_4 = select(select(vec3<bool>(var_0.a, true, !func_6(var_0.c, Struct_1(false, var_1.x, -1i, vec3<f32>(var_0.b, 2143f, -1655f), vec3<u32>(51274u, var_0.e.x, 1u))).a), vec3<bool>(true, true, all(select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(false, true, var_0.a), vec3<bool>(false, true, var_0.a)))), !(!select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, false, var_0.a), true))), vec3<bool>(var_0.a, all(select(!vec3<bool>(false, var_0.a, var_0.a), !vec3<bool>(false, var_0.a, var_0.a), select(vec3<bool>(true, var_0.a, true), vec3<bool>(false, false, var_0.a), vec3<bool>(true, var_0.a, var_0.a)))), ~var_0.e.x < 27602u), true);
    var_0 = Struct_1(all(vec4<bool>(var_0.a, true, var_4.x, true)), -620f, u_input.b << (69737u % 32u), var_2.zyw, select(~_wgslsmith_div_vec3_u32(u_input.a.zzz >> (vec3<u32>(68052u, u_input.a.x, 0u) % vec3<u32>(32u)), vec3<u32>(46591u, 0u, var_0.e.x) ^ var_0.e), ~u_input.a.wxz, vec3<bool>(false, true, (var_2.x >= 642f) != (-1557f >= var_0.d.x))));
    let var_5 = func_6(func_6(_wgslsmith_clamp_i32(firstTrailingBit(var_3 | u_input.b), -8930i, 1i), func_6(func_5(vec2<f32>(var_0.d.x, var_2.x), func_6(var_3, Struct_1(var_4.x, -186f, -28572i, vec3<f32>(var_0.d.x, 1917f, var_0.b), vec3<u32>(u_input.a.x, var_0.e.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(step(var_2.wx, var_0.d.zz)), func_5(vec2<f32>(var_2.x, var_2.x), Struct_1(true, var_1.x, var_0.c, vec3<f32>(-236f, var_1.x, var_2.x), vec3<u32>(var_0.e.x, 4294967295u, 4294967295u)), vec2<f32>(var_2.x, var_0.d.x), Struct_1(var_4.x, var_1.x, -497i, var_2.wwz, vec3<u32>(var_0.e.x, 4294967295u, 102992u)))).c, func_6(abs(52117i), func_5(var_0.d.yx, Struct_1(false, -1276f, 0i, vec3<f32>(1076f, var_1.x, var_0.b), u_input.a.zxx), vec2<f32>(var_1.x, var_2.x), Struct_1(true, -1487f, 1i, vec3<f32>(880f, -1579f, 833f), u_input.a.yyw))))).c, Struct_1(!(all(vec4<bool>(false, true, true, false)) & var_4.x), 325f, -63716i >> (~(15555u << (u_input.a.x % 32u)) % 32u), _wgslsmith_f_op_vec3_f32(-var_0.d), abs(~var_0.e)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_1.x, ~func_6(_wgslsmith_sub_i32(1i, ~(-18281i)), Struct_1(true, _wgslsmith_f_op_f32(-var_5.b), countOneBits(var_5.c), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2127f, 730f, var_0.b), var_2.xxx)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.e.x, u_input.a.x, u_input.a.x), vec3<u32>(1u, var_0.e.x, 22767u)))).e.x);
}

