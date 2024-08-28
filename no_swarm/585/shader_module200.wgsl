struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_div_f32(-553f, _wgslsmith_f_op_f32(trunc(arg_3.d.a.x)));
    let var_1 = arg_2;
    let var_2 = select(select(arg_3.d.c.yy, select(vec2<bool>(true, true), !select(vec2<bool>(true, arg_1), vec2<bool>(false, true), vec2<bool>(arg_1, true)), arg_3.d.c.zx), true), select(vec2<bool>(arg_2, any(vec3<bool>(arg_1, false, arg_3.a)) | all(vec2<bool>(false, arg_2))), select(arg_3.d.c.zy, !arg_3.b.c.wx, vec2<bool>(arg_3.b.b, any(vec2<bool>(arg_1, arg_3.b.b)))), select(!select(arg_3.b.c.xx, vec2<bool>(arg_2, false), vec2<bool>(false, arg_2)), select(select(vec2<bool>(true, arg_2), vec2<bool>(var_1, true), arg_2), select(vec2<bool>(true, false), arg_3.b.c.zx, vec2<bool>(arg_2, false)), !vec2<bool>(true, arg_2)), false)), select(55002u < u_input.a, !arg_1, var_1 || all(arg_3.b.c.wwy)));
    let var_3 = Struct_2(true, arg_3.d, abs(1i), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_3.d.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(252f, arg_3.d.a.x, arg_3.b.a.x, 440f))))), false, arg_3.d.c, 1u), (_wgslsmith_mod_i32(-2147483647i >> (arg_3.d.d % 32u), firstTrailingBit(arg_3.e)) & _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0, 16927i, -8515i), vec3<i32>(-6081i, arg_3.c, -32881i), arg_3.b.c.wyx), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.e, -30782i, 1i), vec3<i32>(2147483647i, arg_3.c, -2147483647i)))) ^ arg_0);
    let var_4 = Struct_1(arg_3.d.a, _wgslsmith_add_u32(var_3.d.d, ~(var_3.b.d >> (u_input.a % 32u))) < 31407u, vec4<bool>(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-831f * var_3.b.a.x) - var_0) == _wgslsmith_f_op_f32(f32(-1f) * -1899f), arg_3.d.b), arg_3.b.d);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_3.d.a - vec4<f32>(var_0, 1202f, -1137f, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_4.a, vec4<f32>(1115f, 693f, 1000f, -195f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-781f, 1128f, var_4.a.x, var_3.b.a.x)))))));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = ~vec4<u32>(u_input.a, arg_0, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, arg_0, u_input.a), reverseBits(vec4<u32>(4294967295u, arg_0, u_input.a, 76655u))), ~(~1u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_i32(-1i, min(1i, ~18073i)), false, any(vec4<bool>(true, any(vec2<bool>(true, true)), true, true)), Struct_2(true, Struct_1(vec4<f32>(1000f, -1000f, 790f, 1533f), true, vec4<bool>(true, true, false, true), 4294967295u), _wgslsmith_mult_i32(38064i << (u_input.a % 32u), -23694i << (arg_0 % 32u)), Struct_1(vec4<f32>(-1298f, 551f, -295f, -1259f), true, vec4<bool>(true, true, true, true), _wgslsmith_clamp_u32(23106u, 84u, u_input.a)), select(0i, _wgslsmith_clamp_i32(2147483647i, 3939i, -2147483647i), true)))), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_add_u32(0u, arg_0) ^ ~40718u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 16727u), var_0.ww, (var_0.yz >> (vec2<u32>(arg_0, 8285u) % vec2<u32>(32u))) & firstTrailingBit(var_0.wy))));
    let var_2 = var_1;
    var var_3 = select(29943u, 2353u, false);
    var_3 = 0u << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(var_1.d), arg_0 >> (var_1.d % 32u), firstTrailingBit(var_1.d)), vec3<u32>(_wgslsmith_mod_u32(4294967295u, 54488u), var_2.d, _wgslsmith_div_u32(var_2.d, 22540u))), 4294967295u, abs(~(~arg_0))) % 32u);
    return ~_wgslsmith_div_i32(countOneBits(0i), -2147483647i);
}

fn func_4(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f - -1103f)))))), -713f, _wgslsmith_f_op_f32(633f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1699f + -817f) + _wgslsmith_f_op_f32(step(2928f, 456f))))));
    var var_1 = _wgslsmith_f_op_f32(min(1687f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1377f)), _wgslsmith_f_op_f32(f32(-1f) * -602f))))));
    var_1 = _wgslsmith_f_op_f32(sign(-1068f));
    var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-439f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_div_f32(779f, -1021f)), _wgslsmith_f_op_f32(max(var_0.x, -748f)))), -1380f));
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(var_0.x))), var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)))), true, vec4<bool>(false, true, any(vec3<bool>(-37621i <= arg_1, any(vec4<bool>(arg_0, true, true, false)), false)), select(false, (arg_0 | arg_0) | true, arg_0)), _wgslsmith_div_u32(4294967295u >> (u_input.a % 32u), ~4294967295u));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = false & (!(-1130f <= _wgslsmith_f_op_f32(-arg_0.x)) & !(-1i > _wgslsmith_sub_i32(arg_1.x, arg_1.x)));
    let var_1 = 2147483647i;
    var var_2 = -1772f;
    let var_3 = vec2<u32>(u_input.a, ~(~4294967295u));
    let var_4 = true;
    return func_4(true != !(!(var_0 || var_0)), (func_2(u_input.a) << (42797u % 32u)) >> (u_input.a % 32u));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, ~countOneBits(44984i)), 26333i, -1i << (func_4(true, 38622i).d % 32u));
    let var_1 = 1i;
    var_0 = var_1;
    var_0 = -36425i;
    let var_2 = -2147483647i;
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~func_5(1f, false, func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1253f, -1383f, -1000f, -1441f), vec4<f32>(-1093f, 398f, -139f, -109f)), vec4<i32>(-31565i, 1i, 0i, 1i) << (vec4<u32>(0u, u_input.a, 9461u, 1u) % vec4<u32>(32u))), ~17497u), ~select(~1u, 4294967295u, true));
    let var_1 = -728f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-func_4(all(vec4<bool>(true, true, true, true)), -25471i).a.wx);
    let var_3 = u_input.a & u_input.a;
    var var_4 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, var_1, -902f, var_1))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(339f, var_1, var_1, 121f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_1, 1106f, 1367f), vec4<f32>(var_1, var_1, var_1, -1785f), false)) + vec4<f32>(-744f, var_2.x, -2217f, var_1)))), vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(1i, -1i)), -39387i, 1i >> (u_input.a % 32u), -abs(-2147483647i)) | -vec4<i32>(_wgslsmith_div_i32(-1i, 1i), 23081i, 1i, 1i));
    var_4 = Struct_1(_wgslsmith_div_vec4_f32(var_4.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1766f, 1255f, var_4.a.x, _wgslsmith_div_f32(var_4.a.x, var_2.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(var_4.a)))), func_4(var_4.c.x && var_4.c.x, -24943i).b))), true, !var_4.c, func_1(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mult_i32(1i, -2147483647i), var_4.b, var_4.b, Struct_2(var_4.c.x, Struct_1(vec4<f32>(var_1, -1344f, 197f, var_4.a.x), var_4.b, vec4<bool>(false, var_4.c.x, var_4.b, true), var_3), -74923i, Struct_1(vec4<f32>(var_2.x, -212f, -957f, var_1), false, vec4<bool>(true, false, var_4.b, true), 1u), -2147483647i))).x, var_2.x, -707f, _wgslsmith_f_op_f32(var_1 + -302f)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -_wgslsmith_div_vec4_i32(vec4<i32>(1442i, 8369i, -1i, -2147483647i), vec4<i32>(2147483647i, 1i, -15771i, 2147483647i)))).d);
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec2<u32>(_wgslsmith_mod_u32(var_0.x >> (var_4.d % 32u), countOneBits(var_0.x)), var_4.d), reverseBits(-41265i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1613f)))))), var_2.x)));
}

