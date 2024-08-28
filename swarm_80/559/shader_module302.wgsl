struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(u_input.c, _wgslsmith_sub_u32(16369u, firstTrailingBit(u_input.c)), vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(var_0.c.x, -349f))))))));
    var var_2 = min(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0.b), vec2<u32>(1u, var_0.a)), vec2<u32>(var_0.a, 27336u)), firstLeadingBit(vec2<u32>(2181u, 0u))), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.a, ~u_input.c), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, u_input.c)), vec2<u32>(1u, 1u)))) | vec2<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, 1u));
    let var_3 = vec2<i32>(i32(-1i) * -(~(-22074i)), -2147483647i);
    var_2 = vec2<u32>(select(var_0.b, u_input.c, any(vec4<bool>(any(vec2<bool>(false, true)), true, all(vec2<bool>(true, false)), true))), _wgslsmith_dot_vec3_u32(~vec3<u32>(~u_input.c, reverseBits(var_2.x), var_0.a), select(_wgslsmith_sub_vec3_u32(vec3<u32>(60644u, 59274u, u_input.c), vec3<u32>(var_0.b, 96251u, var_2.x)), (vec3<u32>(40920u, var_2.x, var_0.b) | vec3<u32>(7165u, 81691u, var_2.x)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, 1626u, 0u), vec3<u32>(37171u, 48878u, 10545u)) % vec3<u32>(32u)), vec3<bool>(true, -8288i != u_input.a, false))));
    return vec3<u32>(firstLeadingBit(_wgslsmith_clamp_u32(12831u, 1u, _wgslsmith_mod_u32(var_2.x, 64043u) << (var_2.x % 32u))), 11092u, ~u_input.c);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, select(_wgslsmith_clamp_u32(u_input.c, 0u, u_input.c), ~u_input.c, true), ~u_input.c), vec3<u32>(u_input.c | u_input.c, max(u_input.c, u_input.c), ~7957u) ^ func_3()) & _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, 4294967295u, 4294967295u)), ~(~vec3<u32>(u_input.c, 7566u, 77426u))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29157u, u_input.c), vec2<u32>(u_input.c, 0u)) | (12565u ^ u_input.c), _wgslsmith_mult_u32(select(4294967295u, 108144u, false), _wgslsmith_mod_u32(0u, 19414u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(308u, 1u, u_input.c)))));
    var_0 = vec3<u32>(abs(abs(_wgslsmith_mod_u32(u_input.c, u_input.c) | 17928u)), 8243u, var_0.x);
    var var_1 = select(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)), select(vec2<bool>(true, false), vec2<bool>(true, false), select(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true)), true, !(u_input.b <= u_input.a))), true);
    let var_2 = ~vec4<i32>(~(-u_input.d), 0i, -17215i, _wgslsmith_sub_i32(-2147483647i, max(u_input.e, -14630i)));
    var var_3 = Struct_3(_wgslsmith_add_u32(min(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(6524u, var_0.x, var_0.x) ^ vec3<u32>(var_0.x, u_input.c, var_0.x), ~vec3<u32>(var_0.x, 0u, 12696u))), max(abs(var_0.x), reverseBits(var_0.x))), func_3().x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1317f, _wgslsmith_f_op_f32(abs(-1000f)), 982f, _wgslsmith_f_op_f32(f32(-1f) * -328f))))));
    return Struct_3(~reverseBits(max(~0u, ~var_3.b)), var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_3.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -139f), var_3.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-741f)), _wgslsmith_f_op_f32(-var_3.c.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, -1189f, var_3.c.x, var_3.c.x))) - _wgslsmith_f_op_vec4_f32(var_3.c + var_3.c))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = !any(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~arg_1.a, min(vec2<i32>(u_input.b, _wgslsmith_div_i32(arg_1.a.x, 1i)), arg_1.a)), countOneBits(vec2<i32>(0i, abs(u_input.a))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1420f - 447f), 937f)), arg_2.c.x) - vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(floor(arg_2.c.x))));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(func_2(), Struct_4(select(vec2<i32>(65945i, u_input.b) ^ vec2<i32>(-5413i, 31929i), ~vec2<i32>(u_input.a, 0i), arg_0)), func_2())), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-499f, 1438f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(u_input.c, 4294967295u, vec4<f32>(-806f, -1000f, -1048f, -806f)), Struct_4(vec2<i32>(81902i, 36521i)), func_2())).x + 975f)), !all(vec2<bool>(var_0, any(vec2<bool>(false, arg_0.x))))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 257f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, 2375f))))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(291f, var_1.x) * vec2<f32>(-677f, var_1.x)))))));
    var var_2 = Struct_3(~u_input.c, ~u_input.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(exp2(var_1.x)), -795f, _wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(766f, 138f, -730f, var_1.x)), vec4<f32>(var_1.x, var_1.x, 1419f, -763f)))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false || all(vec4<bool>(all(vec4<bool>(false, true, true, true)), false, false, true)), any(vec4<bool>(false, all(vec4<bool>(false, true, false, true)), false, true)), (func_1(vec2<bool>(true, true)) != false) & !any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), true);
    var var_1 = Struct_4(abs(vec2<i32>(~(~0i), -(i32(-1i) * -19084i))));
    var_1 = Struct_4(_wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, u_input.b), var_1.a)), var_1.a ^ ~var_1.a));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(func_2(), Struct_4(vec2<i32>(15704i, var_1.a.x << (u_input.c % 32u))), func_2())).x, any(select(vec3<bool>(var_0.x, all(var_0), !var_0.x), var_0.wzx, var_0.wwx)), _wgslsmith_div_f32(1770f, _wgslsmith_f_op_f32(-1611f - -1619f)), ~abs(1i) & ~_wgslsmith_mod_i32(var_1.a.x, 51473i));
    let var_3 = var_0.wy;
    var var_4 = select(select(vec2<bool>(true, !select(false, var_2.b, false)), vec2<bool>(!(-23390i != var_1.a.x), func_1(vec2<bool>(true, false))), var_2.b), var_3, !(!var_0.zw));
    var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * var_2.c), _wgslsmith_f_op_f32(abs(957f)))), var_4.x, var_2.c, var_1.a.x);
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(558f))), _wgslsmith_f_op_f32(var_2.a - 1407f) < _wgslsmith_f_op_f32(trunc(-2067f)), 1532f, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(2230f, firstTrailingBit(firstTrailingBit(min(vec4<i32>(-12327i, u_input.d, 27534i, u_input.a), vec4<i32>(var_2.d, u_input.b, -2147483647i, var_2.d))) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c, 4294967295u, 87767u), vec4<u32>(u_input.c, 89452u, u_input.c, 3668u)) | firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(2147483647i, var_5.d), select(var_1.a.x, var_2.d, var_3.x), -2147483647i, _wgslsmith_add_i32(var_5.d, var_5.d)), select(select(vec4<i32>(-1i, 39976i, 1i, -2147483647i), vec4<i32>(1i, 0i, -2147483647i, -19586i), var_0) ^ -vec4<i32>(-53131i, u_input.a, -13471i, var_2.d), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 12978i, var_1.a.x, -46994i), firstTrailingBit(vec4<i32>(u_input.d, var_1.a.x, 1116i, 1992i))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_5.d, var_1.a.x, var_2.d), vec3<i32>(var_1.a.x, u_input.a, -16520i)) < var_2.d)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1997f * var_5.a) - _wgslsmith_f_op_f32(1000f - var_5.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)), var_2.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_2.c, var_5.a) * vec3<f32>(-126f, var_2.a, var_5.c)), vec3<f32>(var_5.a, var_5.a, var_5.a), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1478f, var_2.a, 310f)))), vec4<u32>(u_input.c, 4294967295u, ~4294967295u, u_input.c));
}

