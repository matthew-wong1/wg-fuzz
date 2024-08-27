struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_3,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = ~1u;
    let var_1 = arg_1;
    let var_2 = u_input.b;
    var var_3 = var_1;
    let var_4 = Struct_4(var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1479f), arg_1.a)), var_1, Struct_3(Struct_1(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a ^ u_input.a), vec3<bool>(arg_2.x, true, true)), var_1), vec4<u32>(u_input.b.x, arg_0, 55800u, max(arg_0, 0u)));
    return vec2<u32>(7210u ^ _wgslsmith_mod_u32(17258u, max(arg_0, u_input.b.x)), var_2.x);
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = 335f;
    let var_1 = ~vec2<u32>(11238u, _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(u_input.b.x, 3282u) | u_input.b.xx)) | abs(u_input.b.ww << ((~u_input.b.zw | func_3(u_input.b.x, Struct_2(-322f), vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x))) % vec2<u32>(32u)));
    var_0 = -810f;
    let var_2 = 4294967295u;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) + 341f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1188f, -1483f, false))))));
    return countOneBits(abs(u_input.b));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f), -958f)) - _wgslsmith_f_op_f32(f32(-1f) * -522f));
    var var_2 = Struct_2(var_1);
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1400f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a)))), Struct_2(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1129f - var_2.a) * var_2.a))), Struct_3(Struct_1(vec4<i32>(-1i, u_input.a.x, 38608i, -47150i) & firstLeadingBit(u_input.a), vec3<bool>(true, true, select(false, false, false))), Struct_2(1000f)), min(arg_1, arg_0));
    let var_4 = u_input.a.x;
    return -1000f;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1284f, -2459f, _wgslsmith_f_op_f32(trunc(-1158f)), _wgslsmith_f_op_f32(f32(-1f) * -378f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-966f, 656f, -238f, 1348f) * vec4<f32>(-1000f, 1077f, -2225f, -117f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1f));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1658f, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-620f * var_0.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -365f, var_0.x, 1269f))))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_0.x, _wgslsmith_f_op_f32(var_0.x * -1000f)), vec4<f32>(var_0.x, var_0.x, var_0.x, -272f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(996f, 709f)), var_0.x, 466f, _wgslsmith_f_op_f32(sign(579f)))) + vec4<f32>(_wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(1084f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(func_4(func_2(Struct_1(u_input.a, vec3<bool>(false, false, false))), firstLeadingBit(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))))));
    let var_2 = ~(i32(-1i) * -min(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-3213i, u_input.a.x, 3931i, -2147483647i), u_input.a)));
    var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-631f, _wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(sign(-153f)), 681f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1160f, _wgslsmith_div_f32(var_0.x, 893f), 937f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-468f, var_0.x, var_0.x, -1359f)))))));
    return Struct_3(Struct_1(abs(u_input.a ^ abs(u_input.a)), vec3<bool>(select(false, true, -22168i > var_2), true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)))), Struct_2(var_0.x));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>, arg_3: u32) -> Struct_2 {
    var var_0 = min(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-31940i, ~u_input.a.x), arg_0.a.a.x, 0i), ~(-15689i)) & -(~(~(~(-2147483647i))));
    let var_1 = Struct_4(func_1().b, _wgslsmith_div_f32(arg_0.b.a, arg_0.b.a), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), arg_0, firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b ^ vec4<u32>(arg_3, 0u, 11854u, 4294967295u), u_input.b << (u_input.b % vec4<u32>(32u))), ~arg_3, 1u, ~(~u_input.b.x))));
    var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(min(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0.a.a.x, var_1.d.a.a.x), 1i), ~1i), i32(-1i) * -select(1i, 6187i, arg_0.a.b.x)), select(-1i, max(arg_0.a.a.x, var_1.d.a.a.x), !(34621u > ~var_1.e.x)));
    let var_2 = arg_2.x || !(arg_0.a.b.x & true);
    let var_3 = func_1().b;
    return var_3;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_clamp_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-19600i, 1i, arg_2.x, arg_1.x), vec4<i32>(arg_1.x, 32551i, 27801i, 1i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.a.x, 0i, arg_1.x, -988i), vec4<i32>(u_input.a.x, arg_1.x, u_input.a.x, 40921i)), ~u_input.a), vec3<bool>(_wgslsmith_sub_u32(arg_3.x, arg_3.x) > _wgslsmith_mult_u32(1u, u_input.b.x), select(any(vec4<bool>(false, true, arg_0.a.b.x, arg_0.a.b.x)), false | arg_0.a.b.x, true), true)), Struct_2(arg_0.b.a));
    var var_1 = arg_0;
    var_1 = Struct_3(func_1().a, func_1().b);
    var_1 = func_1();
    var var_2 = Struct_3(Struct_1(~countOneBits(var_1.a.a), var_1.a.b), Struct_2(1000f));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-119f, 526f) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1250f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -479f)), -1627f)), -152f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1848f + _wgslsmith_f_op_f32(f32(-1f) * -1643f)));
    var var_1 = u_input.a.x;
    var var_2 = vec4<bool>(false, false, true, false);
    let var_3 = func_6(Struct_3(Struct_1(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), vec3<bool>(true, u_input.b.x > u_input.b.x, all(vec4<bool>(var_2.x, var_2.x, var_2.x, false)))), func_5(func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1626f)), _wgslsmith_f_op_f32(f32(-1f) * -1286f))), select(vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(var_2.x, true, var_2.x, true), true), 8954u)), firstTrailingBit(~(vec4<i32>(-29644i, 1i, 1i, -1i) & u_input.a)), select(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a.x), -u_input.a.x, -1490i << (u_input.b.x % 32u)), ~(-u_input.a.wzy)), _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), all(var_2.yzy)), _wgslsmith_mult_vec3_i32(u_input.a.wyy, firstTrailingBit(u_input.a.wzx))), var_2.xxy), ~(func_3(_wgslsmith_add_u32(1u, u_input.b.x), func_1().b, vec4<bool>(false, var_2.x, true, false)) | func_2(func_1().a).wy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-1791f)));
}

