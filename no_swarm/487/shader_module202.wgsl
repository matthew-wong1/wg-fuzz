struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = abs(~(-30i));
    return vec4<bool>(false, _wgslsmith_sub_u32(firstLeadingBit(firstTrailingBit(u_input.b)), u_input.c.x) != u_input.a.x, -18133i >= ((var_0 << (max(arg_0, arg_0) % 32u)) >> (_wgslsmith_mod_u32(45858u, min(15591u, u_input.a.x)) % 32u)), true);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = select(!(!select(vec4<bool>(true, arg_2, true, arg_1), !vec4<bool>(arg_1, true, false, false), !vec4<bool>(arg_1, arg_1, true, true))), func_3(0u), any(vec3<bool>(false, any(func_3(0u).zx), arg_1)));
    var var_1 = !vec4<bool>(true, var_0.x, false, true);
    let var_2 = Struct_3(vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) - arg_0) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), var_0.x), vec4<i32>(-1i, -1i, ~(~(-17375i)), _wgslsmith_sub_i32(~(-1i), _wgslsmith_mult_i32(1i, -39945i)) << (u_input.c.x % 32u)), firstTrailingBit(vec3<u32>(u_input.c.x, 1u, 1u)), 1178f, Struct_2(!all(vec3<bool>(arg_1, false, arg_2)), _wgslsmith_mod_u32(u_input.a.x, min(u_input.c.x, u_input.c.x >> (7502u % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1595f, arg_0, arg_0, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -556f, 2203f, -1000f), vec4<f32>(arg_0, arg_0, 415f, arg_0), false))))));
    var_1 = !vec4<bool>(false, var_0.x, !var_2.e.a, !((var_1.x == true) | false));
    var var_3 = abs(_wgslsmith_add_vec4_i32(-vec4<i32>(53055i, ~var_2.b.x, -38850i, var_2.b.x), var_2.b));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(122f))));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(197f, 710f, -2442f) + vec3<f32>(541f, 719f, 465f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 851f, -449f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -964f), _wgslsmith_f_op_f32(func_2(-527f, true, false)), _wgslsmith_f_op_f32(1504f * 1666f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-633f, 1571f, -2704f), vec3<f32>(189f, 1000f, -539f), vec3<bool>(true, true, false))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1234f, 178f, 535f)))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-330f - var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(835f)))));
    let var_2 = 1u;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(var_0.x)));
    let var_4 = select(vec3<i32>(-7809i, _wgslsmith_mod_i32(arg_0, 7313i), arg_0 << (~(~u_input.b) % 32u)), vec3<i32>(-13913i, firstTrailingBit(_wgslsmith_clamp_i32(arg_0, arg_0 | 0i, -8364i)), arg_0 ^ -arg_0), true);
    return true & select(all(select(func_3(var_2), vec4<bool>(false, true, false, true), true)), true, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1471f)));
    let var_1 = Struct_1(1094f);
    var var_2 = max(vec4<i32>(i32(-1i) * -27118i, ~(-max(-2147483647i, 1i)), ~1i, -1i), ~vec4<i32>(1i, 1i, 1i, 1i));
    let var_3 = var_1;
    var_2 = abs(-_wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, var_2.x, -25899i, 3333i), vec4<i32>(62912i, var_2.x, -2147483647i, -65511i)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 2941i, -43185i, 25923i)));
    return Struct_2(true | !(var_2.x == 0i), u_input.c.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-818f, var_3.a, -1158f, -471f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, var_0.a, 804f, -1194f) - vec4<f32>(777f, 990f, -1888f, var_1.a)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-923f, var_1.a, 1000f, -845f)))), !vec4<bool>(false, true, false, arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_div_f32(-1000f, var_1.a), var_0.a, arg_1.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1254f, 390f, -1541f, 1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -761f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(504f, -946f) * _wgslsmith_f_op_f32(f32(-1f) * -1425f)))));
    var var_1 = Struct_2(any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(false, true, false)), true, select(true, true, false), false), false)), _wgslsmith_dot_vec3_u32(u_input.a, ~u_input.c ^ u_input.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) * var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2812f)) + _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_0.a))), var_0.a, _wgslsmith_div_f32(-902f, _wgslsmith_f_op_f32(f32(-1f) * -1621f))));
    var var_2 = Struct_2(var_1.a, min(~_wgslsmith_div_u32(~var_1.b, u_input.a.x), var_1.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.c.x, 2007f, var_0.a, -603f), vec4<f32>(-506f, var_1.c.x, -2110f, -1115f))) - var_1.c))));
    var_1 = func_4(select(select(vec3<bool>(var_2.a, true, !var_1.a), !(!vec3<bool>(var_2.a, true, var_1.a)), select(!vec3<bool>(var_1.a, var_2.a, var_1.a), select(vec3<bool>(true, false, var_1.a), vec3<bool>(true, false, false), true), true)), !select(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, true, var_2.a), var_1.a), vec3<bool>(false, true, false), false), func_1(1i)), vec3<f32>(var_1.c.x, var_0.a, var_2.c.x));
    let var_3 = select(!vec3<bool>(true, true, var_1.a), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), !vec3<bool>(var_2.a, false, var_2.a)), select(vec3<bool>(false, var_2.a, var_2.a), vec3<bool>(false, true, false), true), var_1.a), true);
    let var_4 = ~(vec2<i32>(abs(1i), min(1i, ~43906i)) >> (~firstLeadingBit(vec2<u32>(u_input.c.x, var_2.b)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.zx, var_1.b & max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 0u) & u_input.a.xx, vec2<u32>(4294967295u, 33391u)), 35335u));
}

