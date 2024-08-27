struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    var var_0 = true;
    let var_1 = -(~max(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, -56385i), firstLeadingBit(vec2<i32>(u_input.c, u_input.e.x))), u_input.a));
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_2() -> vec3<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(1188f, -683f)))) - 1316f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) + _wgslsmith_f_op_f32(f32(-1f) * -149f)) - _wgslsmith_f_op_f32(trunc(-395f))), _wgslsmith_f_op_f32(func_3(vec2<bool>(false, any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(floor(-1636f))))));
    var var_1 = Struct_1(!vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, _wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_f_op_f32(-1991f - var_0.x)), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = Struct_2(_wgslsmith_sub_i32(1i, u_input.c), Struct_1(var_1.a, false), Struct_1(var_1.a, var_1.b), Struct_1(select(!select(var_1.a, vec4<bool>(true, var_1.b, false, var_1.b), vec4<bool>(var_1.b, var_1.a.x, var_1.a.x, var_1.a.x)), select(var_1.a, !var_1.a, true), var_1.a.x), true));
    var_1 = var_2.d;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-206f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1736f)))))));
    return firstTrailingBit(vec3<i32>(-2147483647i ^ select(var_2.a, -2147483647i, var_2.b.a.x), -21992i, reverseBits(_wgslsmith_div_i32(2147483647i, -52474i))) & _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(-9487i), var_2.a, max(-51622i, u_input.a.x)), vec3<i32>(select(u_input.a.x, -2147483647i, true), var_2.a, ~(-1i))));
}

fn func_1(arg_0: i32) -> vec3<f32> {
    let var_0 = -vec3<i32>(_wgslsmith_add_i32(~arg_0, -2147483647i), -27838i, arg_0) | min(_wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(0i, arg_0, u_input.c)), max(vec3<i32>(-40813i, -1i, -29710i) ^ vec3<i32>(arg_0, arg_0, u_input.c), func_2())), vec3<i32>(arg_0, countOneBits(_wgslsmith_mult_i32(-13036i, u_input.a.x)), arg_0));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-308f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2852f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(727f + 932f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 682f), 1f)), -1254f));
    var var_2 = (_wgslsmith_f_op_f32(select(229f, var_1.x, (0u != u_input.b) && all(vec4<bool>(true, true, false, true)))) < var_1.x) | true;
    var var_3 = Struct_1(vec4<bool>(!any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-641f, var_1.x)) * _wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), var_1.x))) > _wgslsmith_f_op_f32(trunc(-743f)), ~_wgslsmith_mult_i32(2693i, arg_0) != firstTrailingBit(-36287i), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, true)))), !any(vec2<bool>(true, false)));
    var var_4 = u_input.d;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1648f, var_1.x, 352f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_1.yzy, var_1.xwy), var_1.wzz))) + _wgslsmith_f_op_vec3_f32(select(var_1.yzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, -865f, -1545f)))), all(vec4<bool>(var_3.b, var_3.a.x, var_3.b, var_3.a.x)) != (var_3.a.x & true)))) * var_1.wyw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(u_input.e.x));
    var var_1 = reverseBits(1u);
    let var_2 = 5392u;
    var_1 = var_2;
    let var_3 = vec3<i32>(firstLeadingBit(func_2().x), -1i, _wgslsmith_clamp_i32(firstLeadingBit(43859i), _wgslsmith_mult_i32(1i, abs(2147483647i)), u_input.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(15440i, ~_wgslsmith_mod_i32(u_input.c, -1i)), u_input.a.x & (~1i ^ u_input.a.x), 47824i, ~_wgslsmith_mod_i32(-1i, select(var_3.x, 49042i, true))), -max(u_input.c, u_input.c) | max(50538i, _wgslsmith_clamp_i32(1i, firstTrailingBit(var_3.x), abs(45371i))));
}

