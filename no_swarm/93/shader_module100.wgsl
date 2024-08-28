struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = abs(vec3<i32>(1i, 1i, 1i));
    var_0 = ~(-(vec3<i32>(-1i) * -(~vec3<i32>(0i, -33747i, 38514i))));
    var_0 = vec3<i32>(-14719i, select(reverseBits(var_0.x), _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(arg_1, u_input.c.x)) | firstLeadingBit(30694i), all(vec4<bool>(arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), arg_0.x, true))), -35140i);
    var_0 = abs(vec3<i32>(-1i, 0i, 9405i));
    var_0 = u_input.c;
    return _wgslsmith_f_op_f32(step(-1557f, arg_3.x));
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -362f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, false), u_input.c.x, vec3<f32>(-520f, -216f, -362f), vec2<f32>(-178f, 543f))))))));
    var var_1 = _wgslsmith_f_op_f32(-508f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f * -1298f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(655f)) + -1000f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2005f, 924f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f)))));
    var var_2 = 1i;
    let var_3 = false;
    var_0 = -761f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(357f - _wgslsmith_f_op_f32(-793f * -599f)), 532f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1853f, -128f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(183f * 2438f)))))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2071f, 1773f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f + -196f)), 2590f))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, arg_2, 429f, 3107f), vec4<f32>(arg_2, -442f, -1378f, 1143f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(658f, -798f), _wgslsmith_f_op_f32(max(545f, -1331f)), 1154f, arg_2), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-169f, arg_2, -945f, -1300f)), vec4<f32>(arg_2, -2263f, 289f, arg_2), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(false, true, arg_1, false), vec4<bool>(true, false, arg_1, false)))))), false));
    var var_1 = Struct_3(Struct_2(min(-max(u_input.c.x, -2147483647i), 9086i), Struct_1(arg_1, var_0.x), ~vec4<u32>(1u, 1u, arg_0, u_input.d) << ((_wgslsmith_add_vec4_u32(u_input.a, u_input.a) | select(vec4<u32>(0u, arg_0, u_input.d, u_input.d), u_input.a, false)) % vec4<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, -1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(12365i, -2147483647i, 4864i, u_input.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, -12173i), vec4<i32>(0i, 24491i, u_input.c.x, -38143i)), countOneBits(vec4<i32>(-2147483647i, -40208i, u_input.c.x, u_input.c.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(6534i, u_input.c.x, u_input.c.x, 0i), -vec4<i32>(u_input.c.x, 0i, u_input.c.x, -60420i))), select(_wgslsmith_add_i32(~0i, u_input.c.x >> (0u % 32u)), u_input.c.x & abs(65133i), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.xx + var_0.xz))))), ~(-11895i), 789f);
    var_1 = Struct_3(var_1.a, ~u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yw + var_1.c), _wgslsmith_f_op_vec2_f32(trunc(var_0.yw))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_2)) + var_0.yz)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, -1i, var_1.d, u_input.c.x), -vec4<i32>(_wgslsmith_mod_i32(var_1.d, -1i), var_1.a.a << (10571u % 32u), var_1.b.x, 2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-410f))), 1f));
    var var_2 = var_1.a.b;
    let var_3 = select(select(!(!vec4<bool>(false, true, false, var_1.a.b.a)), !(!(!vec4<bool>(var_2.a, true, false, var_1.a.b.a))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)) | (abs(var_1.a.c.x) >= 16629u)), !vec4<bool>(!any(vec2<bool>(true, var_2.a)), var_2.a, !var_2.a & true, true), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.b.x, var_1.b.x, 2147483647i, 16662i) ^ -vec4<i32>(192i, u_input.c.x, 32973i, var_1.d), vec4<i32>(u_input.c.x, u_input.c.x, -22899i, 1i) << (abs(vec4<u32>(79526u, 27703u, u_input.d, 99272u)) % vec4<u32>(32u))) > -var_1.a.a);
    return ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(40058u, var_1.a.c.x))), min(_wgslsmith_mult_vec2_u32(var_1.a.c.zw, var_1.a.c.xw), vec2<u32>(0u, u_input.d))), ~(~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), false), vec3<bool>(13574u < func_1(u_input.b, true, -3118f), all(vec3<bool>(true, true, false)) && all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(trunc(-607f)) <= -451f), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, any(vec4<bool>(true, true, true, false)))), select(vec3<bool>(true, true, true), vec3<bool>(select(true, false, true), true, true), vec3<bool>(u_input.a.x < 1u, false, select(true, true, false))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), any(vec3<bool>(true, true, true)));
    var var_1 = Struct_3(Struct_2(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.c.x, u_input.c.x) & vec4<i32>(u_input.c.x, -11736i, u_input.c.x, -1i), abs(vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x)))), Struct_1(true, -395f), max(select(u_input.a, u_input.a, false) << (vec4<u32>(u_input.b, 1u, u_input.b, u_input.b) % vec4<u32>(32u)), countOneBits(~u_input.a))), vec3<i32>(~(-41158i), _wgslsmith_mult_i32(67297i, -3819i), _wgslsmith_sub_i32(-2147483647i, ~22643i)) & _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(5999i, -2147483647i, u_input.c.x) >> (u_input.a.zwx % vec3<u32>(32u)), u_input.c), u_input.c), vec2<f32>(_wgslsmith_f_op_f32(-632f + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1054f))))), ~abs(-81206i), -1634f);
    var var_2 = Struct_4(u_input.a.x);
    var_0 = select(vec3<bool>(var_1.a.b.a, var_0.x, _wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(u_input.c.x, var_1.d, -18207i), select(u_input.c.x, -105292i, var_0.x)) != u_input.c.x), select(vec3<bool>(var_1.a.b.a, var_0.x | var_0.x, var_1.a.b.a), vec3<bool>(var_0.x, true & !var_0.x, false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, var_1.a.b.a, true), vec3<bool>(var_0.x, true, var_1.a.b.a), var_1.a.b.a), !vec3<bool>(var_1.a.b.a, true, true), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(var_1.a.b.a, false, false))), ~u_input.c.x == 30153i)), !(!vec3<bool>(!var_1.a.b.a, true, var_1.c.x > 334f)));
    var var_3 = -616f;
    var_1 = Struct_3(var_1.a, vec3<i32>(-u_input.c.x, reverseBits(-32788i), ~(var_1.b.x >> (~var_2.a % 32u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(var_1.c)))), var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.b, 2149f)))), _wgslsmith_f_op_f32(-1942f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x))))), -u_input.c.x, vec4<i32>(~(-13684i), -countOneBits(u_input.c.x), u_input.c.x, 1i));
}

