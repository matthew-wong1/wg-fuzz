struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-605f, 697f)), 567f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-832f)), _wgslsmith_f_op_f32(f32(-1f) * -1093f), 0u >= u_input.a.x))))), 662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(749f + 1578f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(1441f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(608f * -1346f), false)), true)), vec3<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))) & select(any(vec3<bool>(true, true, false)), false, true), true));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f))))));
    var var_3 = all(select(!(!vec4<bool>(true, true, false, var_1.b.x)), vec4<bool>(var_2.x > var_1.a, !var_1.b.x, any(vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x)), var_1.b.x), any(vec3<bool>(!var_1.b.x, false, var_1.b.x))));
    var var_4 = Struct_2(-(-1i >> (~u_input.a.x % 32u)), Struct_1(var_0.x, var_1.b), Struct_1(_wgslsmith_f_op_f32(sign(var_0.x)), vec3<bool>(true, any(!var_1.b), true)), (vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 1u), u_input.a.x << (u_input.a.x % 32u), 4294967295u) ^ (vec3<u32>(1u, 77294u, 55894u) & _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a.x, 119969u), vec3<u32>(u_input.a.x, u_input.a.x, 1u)))) ^ abs(vec3<u32>(54785u, _wgslsmith_mod_u32(26672u, u_input.a.x), u_input.a.x)));
    return _wgslsmith_f_op_vec3_f32(-var_0);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(952f, -1166f, 1146f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(210f, -413f, -1474f), vec3<f32>(-1100f, -1417f, 968f)), _wgslsmith_f_op_vec3_f32(func_3())))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())))));
    let var_1 = Struct_2(i32(-1i) * -(~(-35049i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-797f))), select(select(vec3<bool>(arg_3.x, arg_3.x, false), select(vec3<bool>(arg_3.x, false, arg_3.x), vec3<bool>(arg_3.x, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(false, true, arg_3.x))), !select(vec3<bool>(true, arg_3.x, false), vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(arg_3.x, false, arg_3.x)), true)), Struct_1(_wgslsmith_f_op_f32(select(2412f, _wgslsmith_f_op_f32(-var_0.x), !arg_3.x)), select(vec3<bool>(true, true, true), vec3<bool>(arg_3.x, any(vec2<bool>(false, true)), arg_3.x & true), vec3<bool>(false, true, true & arg_3.x))), vec3<u32>(arg_0, min(u_input.a.x | firstTrailingBit(arg_0), min(~u_input.a.x, ~50888u)), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_0, arg_0, u_input.a.x, 4294967295u), ~vec4<u32>(44049u, 4294967295u, 16248u, 4294967295u), select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, true, true, arg_3.x), vec4<bool>(false, true, true, false))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, u_input.a.x, arg_0, arg_0), vec4<u32>(arg_0, 48195u, u_input.a.x, u_input.a.x)) | ~vec4<u32>(21240u, 4294967295u, arg_0, 21628u))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a, var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, 476f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(410f, -1705f, -1067f) - vec3<f32>(1421f, 587f, var_0.x)) - vec3<f32>(var_1.c.a, _wgslsmith_f_op_f32(-var_0.x), -168f))));
    var var_2 = select(!vec4<bool>(var_1.b.b.x, !all(vec3<bool>(var_1.b.b.x, false, false)), true, !arg_3.x), vec4<bool>(!(!select(var_1.c.b.x, arg_3.x, arg_3.x)), true, var_1.c.b.x, u_input.d.x < (_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.a, 2147483647i, arg_2), vec4<i32>(arg_1, 48766i, var_1.a, -47253i)) >> (~13715u % 32u))), !((arg_1 | arg_1) <= 26676i));
    return Struct_1(125f, !var_2.zyw);
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_2(~min(u_input.d.x ^ u_input.d.x, u_input.b.x), Struct_1(1333f, vec3<bool>(true, all(arg_0.b), true)), arg_0, abs(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, max(u_input.a.x, u_input.a.x)), 1u, u_input.a.x)));
    var var_1 = var_0.d.x;
    let var_2 = abs(u_input.d.xx);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-931f + arg_0.a), _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-var_0.b.a), arg_0.a, -1000f));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1905f + _wgslsmith_f_op_f32(f32(-1f) * -442f)))), -386f));
    return ~abs(-1i);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = countOneBits(firstLeadingBit(arg_1));
    var_0 = u_input.a.x;
    var var_1 = vec3<i32>(~(-func_4(func_2(arg_1, -47940i, u_input.b.x, vec2<bool>(arg_0, true)))), u_input.b.x, ~(-u_input.b.x));
    var_1 = u_input.b.wyx;
    var var_2 = max(~_wgslsmith_add_i32(_wgslsmith_sub_i32(3763i, var_1.x), 31624i) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d.yzz, vec3<i32>(u_input.c, -25262i, -22528i) ^ u_input.b.zxz), u_input.d.yxw), func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)), select(!vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, false), func_2(arg_1, u_input.c, var_1.x, vec2<bool>(arg_0, false)).b))));
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(394f - _wgslsmith_f_op_vec3_f32(func_3()).x))), !(!(!vec3<bool>(false, false, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_u32(select(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a ^ u_input.a), true), u_input.a.x);
    var_0 = ~u_input.a.x | 8410u;
    var var_1 = Struct_2(-33213i, func_1(any(vec2<bool>(true, true)), ~_wgslsmith_mod_u32(~64844u, 1u), 11188u), func_2(u_input.a.x << (_wgslsmith_dot_vec2_u32(u_input.a ^ vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a)) % 32u), u_input.b.x, u_input.c, vec2<bool>(true, true)), ~select(~select(vec3<u32>(u_input.a.x, u_input.a.x, 20259u), vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<bool>(false, false, false)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 28451u, 98545u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, 80976u), vec3<u32>(8080u, 8170u, u_input.a.x)), max(vec3<u32>(u_input.a.x, 33689u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 33401u))), all(func_1(true, u_input.a.x, u_input.a.x).b)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1278f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.c.a)), _wgslsmith_f_op_f32(exp2(var_1.c.a)))), -1105f, _wgslsmith_f_op_f32(-var_1.c.a));
    let var_3 = var_1.c;
    var_1 = Struct_2(_wgslsmith_dot_vec3_i32(~firstLeadingBit(-u_input.d.wzy), reverseBits(min(_wgslsmith_add_vec3_i32(u_input.d.wxw, vec3<i32>(2147483647i, -2147483647i, u_input.d.x)), -u_input.b.zzz))), var_1.c, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -719f))), var_3.b), _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(u_input.a.x, 4294967295u, 0u))), vec3<u32>(4092u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.d.x, u_input.a.x), var_1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec2_i32(u_input.d.zz, ~u_input.d.zx) & u_input.b.yy);
}

