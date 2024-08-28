struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<bool> {
    var var_0 = !(!vec4<bool>(arg_0.b.x, any(vec3<bool>(true, arg_0.b.x, true)), false, true));
    let var_1 = arg_0.c;
    var_0 = !(!vec4<bool>(true, any(vec2<bool>(var_0.x, arg_0.b.x)), arg_0.b.x, select(u_input.a.x <= u_input.a.x, !arg_0.b.x, any(vec4<bool>(true, var_0.x, true, true)))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = Struct_2(min(reverseBits(firstLeadingBit(_wgslsmith_mult_i32(2147483647i, u_input.a.x))), ~(-10334i) & (_wgslsmith_div_i32(u_input.a.x, -30575i) >> (~u_input.b % 32u))), arg_0.a.x);
    return !select(vec3<bool>(arg_0.b.x & arg_0.b.x, true, false), !select(vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(arg_0.b.x, true, var_0.x), var_0.x), 1i == -_wgslsmith_add_i32(var_3.a, u_input.a.x));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-646f - _wgslsmith_f_op_f32(round(-164f))), _wgslsmith_f_op_f32(-136f - _wgslsmith_f_op_f32(f32(-1f) * -1195f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1434f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-2607f)))), _wgslsmith_f_op_f32(f32(-1f) * -902f), 283f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1743f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(530f - -734f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(948f, 766f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1218f, -876f, arg_0))))), !select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(false, arg_1.b.x, arg_2.b.x, arg_0), true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, _wgslsmith_f_op_f32(trunc(-1705f)), 1147f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-569f, 136f)))));
    var var_2 = Struct_2(30204i, _wgslsmith_mult_u32(u_input.c, firstLeadingBit(u_input.c)) ^ u_input.b);
    var_2 = Struct_2(-firstTrailingBit(0i | var_2.a), arg_3.x);
    let var_3 = Struct_1(~reverseBits(vec2<u32>(min(arg_3.x, 4592u), 0u)), arg_2.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(ceil(var_1.x)), -1155f, _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(174f, 269f, var_1.x, var_1.x)))))));
    return select(vec3<i32>(_wgslsmith_mod_i32(countOneBits(~(-57553i)), -var_2.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i ^ var_2.a, u_input.a.x), countOneBits(vec2<i32>(u_input.a.x, -2147483647i))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(15596i, var_2.a, u_input.a.x, 2147483647i), vec4<i32>(5978i, var_2.a, 38846i, var_2.a), select(vec4<bool>(arg_0, var_3.b.x, arg_2.a, arg_2.a), vec4<bool>(false, false, false, true), vec4<bool>(false, true, arg_2.a, false))), min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -1i, var_2.a, 0i), vec4<i32>(u_input.a.x, -1i, 27982i, 29780i)), vec4<i32>(u_input.a.x, -1346i, u_input.a.x, -2147483647i) | vec4<i32>(var_2.a, 43916i, u_input.a.x, -2147483647i)))), countOneBits(vec3<i32>(20685i, -2147483647i, var_2.a) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.x, arg_3.x, 1u), vec3<u32>(4294967295u, 4294967295u, var_2.b)) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(arg_3, vec3<u32>(arg_3.x, var_2.b, 4294967295u)), firstLeadingBit(firstLeadingBit(vec3<u32>(arg_3.x, u_input.b, var_2.b))), arg_3) % vec3<u32>(32u)), select(select(vec3<bool>(false, arg_0, func_3(var_3, u_input.b).x), vec3<bool>(true, true, true), vec3<bool>(any(var_3.b), !var_3.b.x, true)), func_3(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4504u, 1u)), !vec2<bool>(false, arg_2.b.x), _wgslsmith_f_op_vec4_f32(var_3.c - vec4<f32>(481f, -1000f, var_1.x, -806f))), _wgslsmith_add_u32(~var_3.a.x, var_2.b)), any(vec4<bool>(false, false, all(var_3.b), !arg_1.a))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = func_4(true, Struct_4(any(func_3(Struct_1(vec2<u32>(31870u, 0u), vec2<bool>(true, true), vec4<f32>(arg_1.b, 1428f, 620f, arg_1.b)), 4294967295u)) && select(any(vec4<bool>(false, false, true, false)), false, any(vec3<bool>(true, false, false))), select(func_3(Struct_1(vec2<u32>(arg_2.b, 9684u), vec2<bool>(false, false), vec4<f32>(arg_1.b, -1469f, arg_1.b, arg_1.b)), arg_2.b).zx, vec2<bool>(false, select(true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_4(false, vec2<bool>(false, true)), _wgslsmith_sub_vec3_u32(min(vec3<u32>(33388u, arg_2.b, _wgslsmith_mult_u32(0u, 0u)), vec3<u32>(~1u, max(10942u, 66923u), min(u_input.b, arg_2.b))), vec3<u32>(arg_2.b, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_2.b, 30802u), 4294967295u), 0u)));
    var var_1 = _wgslsmith_clamp_vec3_i32(u_input.a, var_0, func_4((firstTrailingBit(u_input.c) < max(4294967295u, u_input.c)) == any(vec4<bool>(true, true, true, true)), Struct_4(true, vec2<bool>(arg_1.b > -540f, true)), Struct_4(false, vec2<bool>(true, true)), select(vec3<u32>(1u, u_input.b, arg_2.b), vec3<u32>(u_input.c, 1u, 13219u) & vec3<u32>(u_input.c, 0u, u_input.b), vec3<bool>(true, false, true)) ^ vec3<u32>(43454u & arg_2.b, firstLeadingBit(arg_2.b), 4294967295u)));
    let var_2 = arg_1;
    let var_3 = Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, arg_2.b) << (vec2<u32>(arg_2.b, 6371u) % vec2<u32>(32u)), vec2<u32>(61475u, 4294967295u) & vec2<u32>(0u, u_input.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(arg_2.b, 4294967295u), vec2<u32>(arg_2.b, 0u))) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(21502u, 64964u), abs(vec2<u32>(4294967295u, arg_2.b))), ~firstLeadingBit(vec2<u32>(0u, 4294967295u)), ~(vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(u_input.b, arg_2.b))) % vec2<u32>(32u)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1474f), -1000f, _wgslsmith_f_op_f32(max(var_2.b, -101f)), 293f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1226f, arg_1.b, arg_1.b, var_2.b))))));
    var var_4 = false;
    return arg_1.a;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> Struct_4 {
    var var_0 = vec2<bool>(select(!arg_0, 21395u < ~(~u_input.c), !any(!vec3<bool>(true, arg_3.b.x, arg_0))), arg_0);
    let var_1 = var_0.x && all(!(!func_3(Struct_1(vec2<u32>(u_input.c, 44706u), vec2<bool>(true, false), vec4<f32>(arg_2.b, arg_1, 1000f, 1000f)), u_input.b)));
    let var_2 = ~(-vec4<i32>(2147483647i, u_input.a.x, arg_2.a.x, 2147483647i));
    var var_3 = arg_3.b.x;
    var_3 = true;
    return arg_3;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = u_input.a;
    let var_1 = func_5(false, 525f, Struct_3(func_2(var_0.x, Struct_3(vec4<i32>(u_input.a.x, -1160i, arg_1.a, -2147483647i), _wgslsmith_f_op_f32(-arg_0)), Struct_2(1i, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -600f) - arg_0)), Struct_4(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false))), !select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), all(vec2<bool>(true, false)))));
    var_0 = u_input.a;
    let var_2 = var_1;
    var var_3 = var_0.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1047f;
    let var_1 = Struct_3(-(~(-(~vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1046f - -1481f)) * -468f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-475f - 183f)))), true)));
    let var_2 = 68384u;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1227f, var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * var_1.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(678f, -538f, var_1.b, 950f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-811f, var_1.b, var_1.b, var_1.b), vec4<f32>(var_1.b, -941f, var_1.b, -831f))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, var_1.b, _wgslsmith_f_op_f32(1017f + var_1.b), _wgslsmith_f_op_f32(func_1(var_1.b, Struct_2(-32158i, 1u), 4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1690f, 1658f, 1312f, 182f) + vec4<f32>(var_1.b, var_1.b, var_1.b, -332f))))), 0u, 19089u, _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(round(-499f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(round(1f)))), var_1.b));
}

