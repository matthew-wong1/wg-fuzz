struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = -_wgslsmith_add_i32(-1045i, arg_0) ^ ~(-(_wgslsmith_add_i32(arg_0, arg_1.c) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 27042u, 0u, 0u), vec4<u32>(12905u, 39397u, 1u, 0u)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, _wgslsmith_div_f32(-620f, 139f), 453f, -465f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(max(arg_1.b.x, 1419f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(770f, arg_1.b.x, arg_1.a, 218f))))))));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(ceil(1341f))));
    var var_4 = Struct_1(var_2.a, vec4<f32>(_wgslsmith_f_op_f32(-220f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + -782f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(415f, var_2.b.x)), _wgslsmith_f_op_f32(1000f * -1000f), arg_1.d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -980f)), arg_1.a, -802f), any(vec2<bool>(arg_1.e.x, arg_1.e.x)));
    return var_2.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = select(vec3<bool>(true, true & !select(false, false, false), true), select(select(vec3<bool>(any(vec2<bool>(true, false)), true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec2<bool>(true, all(vec4<bool>(false, true, true, true)) && true)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(-2147483647i), Struct_2(1217f, vec3<f32>(-191f, -184f, -2170f), 0i, var_1.x, vec4<bool>(true, true, var_1.x, false)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -894f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1530f, 572f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-945f, 619f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_i32(1i, u_input.a.x, u_input.a.x), Struct_2(142f, vec3<f32>(-712f, -130f, 1000f), u_input.c.x, true, vec4<bool>(var_1.x, var_1.x, false, false))))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1000f * 418f), -854f, _wgslsmith_f_op_f32(-141f - -103f), _wgslsmith_f_op_f32(-1000f * -1000f))))), var_1.x);
    var var_3 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 1u, ~46238u), reverseBits(~28446u));
    var_0 = var_2.c;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(836f * 388f), _wgslsmith_f_op_f32(round(-1127f)))) + var_2.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(sign(var_2.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1190f + var_2.a) * _wgslsmith_f_op_f32(var_2.a + 1985f)))), var_2.a, var_2.a), select(select(any(!var_1.xy), all(!vec3<bool>(var_2.c, var_2.c, false)), !(!var_2.c)), (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(5264u, 16490u, 1u, 0u)) | ~0u) >= firstLeadingBit(~16336u), false));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_div_f32(-424f, -441f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(var_0.b, vec4<f32>(1190f, 214f, var_0.a, var_0.a), vec4<bool>(true, false, true, false))), vec4<f32>(var_0.a, var_0.a, var_0.a, -1214f), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 191f, 2417f, var_0.a), _wgslsmith_f_op_vec4_f32(-var_0.b), select(vec4<bool>(true, var_0.c, var_0.c, false), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.c, false, true, false))))))), var_0.c);
    var var_1 = func_2().b.x;
    var var_2 = Struct_2(502f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(544f))), -775f, -2076f), max(-u_input.a.x, 1i), var_0.c, select(vec4<bool>(all(vec2<bool>(var_0.c, var_0.c)), true, true && var_0.c, -1163f < _wgslsmith_f_op_f32(sign(var_0.a))), vec4<bool>(true, !var_0.c, true, all(!vec3<bool>(var_0.c, var_0.c, var_0.c))), !var_0.c));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(-589f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_div_vec4_f32(var_0.b, var_0.b))) - var_0.b), false);
    return func_2();
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.b.x, -1000f), _wgslsmith_f_op_f32(-1321f + -303f), !arg_0.c)) * 1529f))) < _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_1 = -32462i;
    let var_2 = select(firstTrailingBit((vec4<i32>(u_input.a.x, 27416i, -24345i, 32755i) | vec4<i32>(u_input.b.x, 0i, u_input.a.x, u_input.b.x)) & abs(vec4<i32>(u_input.b.x, 1i, u_input.c.x, u_input.c.x))) << (~countOneBits(firstLeadingBit(vec4<u32>(4294967295u, 13962u, 1305u, 4294967295u))) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.a.x, abs(_wgslsmith_mod_i32(8444i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c))), _wgslsmith_mult_i32(firstLeadingBit(reverseBits(u_input.c.x)), _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 0i))))), var_0);
    let var_3 = func_1();
    var_1 = 1i;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(894f, 715f, 669f))), _wgslsmith_f_op_vec3_f32(-var_3.b.zyy), arg_0.c))), var_3.b.zwz)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(f32(-1f) * -1780f)) + var_3.b.x), -911f, _wgslsmith_f_op_f32(func_1().a - func_1().b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~1u);
    let var_1 = vec4<bool>(all(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, all(vec2<bool>(false, false)), true, any(vec3<bool>(false, false, false))), true)), true, all(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))), false);
    let var_2 = !var_1.xyw;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_1()))))));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * var_3.x) + _wgslsmith_f_op_f32(ceil(var_3.x))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(-1808f - -1730f))))), vec3<f32>(596f, _wgslsmith_f_op_f32(func_3(~0i, Struct_2(_wgslsmith_f_op_f32(-1029f * var_3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-620f, var_3.x, -538f)), u_input.c.x >> (15100u % 32u), false, select(vec4<bool>(true, var_2.x, false, false), var_1, var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(1114f - 1418f))))), -17877i, var_1.x, !var_1);
    var var_5 = min(~(~(~vec2<u32>(51771u, 1u))), vec2<u32>(87371u, 9096u));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(64980u) & _wgslsmith_sub_u32(var_5.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_5.x, var_5.x, var_5.x), vec3<u32>(47996u, var_5.x, var_5.x)))), -1547f, -(abs(u_input.c.x) << (4294967295u % 32u)));
}

