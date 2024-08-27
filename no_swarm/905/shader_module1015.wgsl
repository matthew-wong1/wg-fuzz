struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-103f, 1000f, 1142f), vec3<f32>(-1122f, -862f, 1416f))))))));
}

fn func_2() -> Struct_4 {
    return Struct_4(Struct_2(Struct_1(vec3<bool>(any(vec2<bool>(false, false)), true, u_input.d >= u_input.b), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3()))), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(218f, -806f, -494f, 878f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(959f, 1156f, -326f, -1105f)))), (u_input.d <= 12390i) && true), vec2<bool>(false, true), u_input.c, true));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.d.x * arg_2.b.b.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1793f)))), _wgslsmith_f_op_vec3_f32(func_3()).x);
    let var_1 = _wgslsmith_sub_u32(34803u, countOneBits(4294967295u));
    var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    let var_2 = true;
    var var_3 = !(!select(!vec4<bool>(false, arg_2.b.c.x, false, arg_2.c), select(vec4<bool>(arg_2.b.e, true, false, false), select(vec4<bool>(arg_2.c, true, true, var_2), vec4<bool>(arg_2.b.e, true, false, arg_2.b.e), vec4<bool>(arg_2.b.e, var_2, var_2, var_2)), !vec4<bool>(true, var_2, arg_0.a.a.e, arg_0.a.d)), !select(vec4<bool>(false, var_2, arg_2.b.a.x, arg_2.b.e), vec4<bool>(var_2, true, var_2, arg_2.b.a.x), true)));
    return vec2<f32>(_wgslsmith_f_op_f32(1387f - -937f), arg_2.b.d.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.a.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -610f));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.a.b.x)))) * 790f), arg_3.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), -372f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.a.b.x + arg_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -424f));
    let var_2 = false | (arg_3.a.c.x && func_2().a.b.x);
    let var_3 = func_2().a;
    let var_4 = arg_0.x;
    return Struct_2(Struct_1(var_3.a.a, var_1.wxw, vec2<bool>(true, true), var_3.a.d, true), arg_3.b, vec3<i32>(max(u_input.b, ~(-var_3.c.x)), _wgslsmith_mult_i32(u_input.b, var_3.c.x), -countOneBits(14341i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 5786u, arg_2), ~vec3<u32>(27215u, 0u, arg_2)) % 32u)), any(vec3<bool>(arg_1, !var_2, any(var_3.a.a) | var_3.b.x)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(), vec2<i32>(_wgslsmith_sub_i32(-46849i, 50700i), u_input.c.x), Struct_3(_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(1i, arg_1, arg_1)), Struct_1(vec3<bool>(arg_0, arg_0, arg_0), vec3<f32>(1358f, 1153f, 2634f), vec2<bool>(false, arg_0), vec4<f32>(-790f, -389f, 1948f, -127f), false), any(vec4<bool>(arg_0, true, arg_0, true)), ~u_input.c.xx, vec4<i32>(arg_1, -1239i, arg_1, arg_1)))) + vec2<f32>(-177f, 1656f)), arg_2.x < 4294967295u, ~arg_2.x, func_2().a);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1238f, -290f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_3()).x, var_0.a.b.x, true)), var_0.a.d.x)))));
    var_1 = vec4<f32>(607f, -345f, _wgslsmith_f_op_f32(136f + 1578f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1284f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-284f, var_0.a.d.x, false)) - var_1.x)) - _wgslsmith_f_op_f32(abs(-612f))));
    var var_2 = var_0.a.b.x;
    let var_3 = !vec2<bool>(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_0.a.d.x), vec2<f32>(var_1.x, 1000f))), select(-910f > var_0.a.d.x, 0i >= u_input.b, all(vec4<bool>(false, false, true, var_0.b.x))), _wgslsmith_dot_vec2_u32(abs(arg_2.yx), ~vec2<u32>(93047u, arg_2.x)), var_0).b.x, false);
    return Struct_4(func_5(vec2<f32>(var_1.x, 624f), false, arg_2.x, func_2().a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !vec2<bool>(false, !any(vec3<bool>(true, false, false))), min(_wgslsmith_clamp_u32(12176u, 1110u, 0u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 14853u), vec4<u32>(21517u, 0u, 8650u, 0u)) % 32u), 1u) == ~(~max(0u, 5823u)));
    let var_1 = ~select(select(vec4<i32>(_wgslsmith_sub_i32(8246i, u_input.b), max(3737i, u_input.a.x), 1i | u_input.c.x, firstLeadingBit(-1047i)), ~(-vec4<i32>(u_input.d, u_input.b, 56428i, u_input.d)), !(!var_0.x)), vec4<i32>(u_input.d << (abs(0u) % 32u), -3331i, 0i, -2147483647i), all(select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, true, false), false), !vec3<bool>(false, false, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(false, var_0.x, var_0.x)))));
    let var_2 = 32218u;
    let var_3 = _wgslsmith_add_vec2_i32(u_input.a << (~vec2<u32>(4294967295u ^ var_2, 4294967295u) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(_wgslsmith_div_i32(2147483647i >> (var_2 % 32u), ~u_input.c.x), -min(47469i, 0i))));
    var var_4 = func_1(true, -reverseBits(var_3.x), ~(~vec3<u32>(var_2, 4294967295u, 1u)) >> ((_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(var_2, 0u, 4294967295u)), abs(vec3<u32>(var_2, var_2, var_2))) | reverseBits(abs(vec3<u32>(4294967295u, 4294967295u, 49058u)))) % vec3<u32>(32u)));
    var_4 = Struct_4(Struct_2(Struct_1(func_2().a.a.a, _wgslsmith_f_op_vec3_f32(-var_4.a.a.d.xzy), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(var_4.a.a.d * _wgslsmith_div_vec4_f32(vec4<f32>(var_4.a.a.b.x, var_4.a.a.b.x, -113f, var_4.a.a.d.x), var_4.a.a.d)), func_2().a.d), vec2<bool>(true, all(func_1(var_4.a.d, var_1.x, vec3<u32>(var_2, var_2, 31634u)).a.b)), var_4.a.c, true));
    var_4 = func_2();
    var var_5 = var_4.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4.a.a.b.x, 2876f, var_5.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.a.a.d.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f) * _wgslsmith_div_f32(var_4.a.a.b.x, var_4.a.a.d.x)))), ~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, var_3.x, var_3.x, -1i), vec4<i32>(1i, var_3.x, -2147483647i, var_4.a.c.x)), -var_1), -_wgslsmith_mult_vec4_i32(var_1, vec4<i32>(-1i, u_input.d, var_3.x, var_1.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(407f, _wgslsmith_f_op_vec3_f32(func_3()).x, var_4.a.a.d.x))), var_2 << (var_2 % 32u), vec4<f32>(-1309f, var_4.a.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_div_f32(var_5.d.x, -2160f)));
}

