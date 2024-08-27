struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = min(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 17712u, u_input.c.x, u_input.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 27091u, arg_1, 4294967295u), vec4<u32>(arg_1, u_input.e, 1u, arg_1))), vec4<u32>(arg_1, countOneBits(36024u), 52276u, u_input.b)), ~(vec4<u32>(~16046u, ~arg_1, ~arg_1, 8620u) << (firstTrailingBit(vec4<u32>(61268u, 4294967295u, 49233u, u_input.e)) % vec4<u32>(32u))));
    let var_1 = arg_0;
    var var_2 = Struct_1(u_input.d.x);
    var_2 = var_1.a;
    let var_3 = arg_0.a;
    return firstTrailingBit(~(~arg_1 | _wgslsmith_sub_u32(min(57955u, 1u), ~var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(~u_input.a.xw, -u_input.d));
    let var_1 = arg_1;
    let var_2 = Struct_3(u_input.a.yww, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1703f), _wgslsmith_f_op_f32(floor(-448f)), -799f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1760f, 1632f), vec2<f32>(-181f, -1939f), true))))))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1417f + var_2.c.x)));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.c.x - 1431f))) * var_2.c.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1342f, var_2.c.x, -552f))));
}

fn func_2(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = Struct_1(u_input.d.x);
    var var_1 = 34920i;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -694f, -499f) * _wgslsmith_f_op_vec3_f32(func_4(var_0, Struct_2(Struct_1(u_input.a.x), !vec2<bool>(arg_1, false)), ~func_3(Struct_2(Struct_1(var_0.a), vec2<bool>(false, arg_1)), ~62281u, u_input.d.x), 2147483647i)));
    var var_3 = var_0;
    var_3 = Struct_1(_wgslsmith_div_i32(abs(~(~u_input.d.x)), select(-37371i, _wgslsmith_dot_vec2_i32(vec2<i32>(99i, var_3.a), vec2<i32>(var_0.a, -1i)), false) ^ 18239i));
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_u32(~select(vec3<u32>(~9595u, u_input.c.x, 18215u), vec3<u32>(u_input.c.x, u_input.b, 11232u) & u_input.c, arg_0), _wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(3739u, u_input.c.x, u_input.b), _wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(u_input.b, 0u, 1u)))), u_input.c | u_input.c, (~vec3<u32>(u_input.e, u_input.e, u_input.c.x) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, 28712u, u_input.c.x), vec3<u32>(u_input.b, 63271u, 4294967295u))) >> (_wgslsmith_mod_vec3_u32(~u_input.c, ~u_input.c) % vec3<u32>(32u))));
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec4_u32(~max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 11899u, 36584u, 1u), vec4<u32>(56267u, 0u, u_input.e, u_input.b)), vec4<u32>(0u, u_input.e, 55368u, u_input.b)), (vec4<u32>(66808u, 17839u, 21181u, 4294967295u) >> (vec4<u32>(38882u, u_input.c.x, u_input.c.x, 63543u) % vec4<u32>(32u))) | ~(~vec4<u32>(u_input.b, 21385u, 114304u, u_input.c.x))));
    let var_2 = u_input.a;
    var_0 = ~15411u;
    let var_3 = Struct_3(u_input.a.xxy, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 283f, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-956f, arg_1, arg_1, arg_1) * vec4<f32>(arg_1, -168f, arg_1, arg_1)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-209f - _wgslsmith_f_op_f32(max(306f, arg_1))), -785f)));
    return _wgslsmith_f_op_f32(func_2(1080f, !(!any(select(vec2<bool>(true, arg_0.x), arg_0.yx, vec2<bool>(false, arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.wzx;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-439f)) - -586f) * 322f)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2230f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 654f)) + 428f) - _wgslsmith_f_op_f32(func_1(vec3<bool>(true, all(vec3<bool>(false, false, false)), true), _wgslsmith_f_op_f32(-1057f - _wgslsmith_f_op_f32(f32(-1f) * -633f))))));
    let var_3 = 1i;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-1299f + var_2.x)), _wgslsmith_f_op_f32(-var_2.x))) - var_2.x);
    let var_4 = !(!vec3<bool>(all(vec3<bool>(true, true, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), false));
    let var_5 = Struct_3(_wgslsmith_add_vec3_i32(-min(_wgslsmith_sub_vec3_i32(var_0, vec3<i32>(-1i, 2147483647i, -44976i)), var_0), var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(46483i), Struct_2(Struct_1(0i), vec2<bool>(var_4.x, false)), 36687u, u_input.a.x)).x, -2118f, 1557f, _wgslsmith_f_op_f32(round(913f))) * vec4<f32>(_wgslsmith_f_op_f32(func_2(1000f, var_4.x)), _wgslsmith_f_op_f32(floor(-1679f)), var_2.x, _wgslsmith_f_op_f32(-var_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_vec3_f32(func_4(Struct_1(-2147483647i), Struct_2(Struct_1(var_0.x), var_4.yx), firstLeadingBit(1u), -var_3)).x), _wgslsmith_f_op_f32(ceil(1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.c.x, 1u, u_input.c.x)), vec3<u32>(_wgslsmith_mult_u32(1u, u_input.e), 4294967295u, 50339u)));
}

