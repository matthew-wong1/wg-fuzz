struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = 1u;
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~29159u, ~(~_wgslsmith_mult_u32(1u, 4294967295u)), ~(~(~0u))), vec3<u32>(~(~(~u_input.a)), 1u, 71959u));
    var var_1 = vec3<bool>(false, (firstTrailingBit(countOneBits(-8445i)) >= (abs(0i) << ((0u << (u_input.c.x % 32u)) % 32u))) | all(arg_1.a), all(vec2<bool>(all(arg_0.a.wy), all(vec2<bool>(true, arg_1.a.x)) & false)));
    var_0 = firstLeadingBit(u_input.a) >> (firstLeadingBit(min(_wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c), ~(~57353u))) % 32u);
    let var_2 = u_input.e.zx;
    return max(~vec3<u32>(~(4294967295u | u_input.a), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 15775u), vec4<u32>(54590u, u_input.a, 0u, u_input.c.x))), u_input.a), _wgslsmith_sub_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.c.x) << (vec3<u32>(25003u, u_input.c.x, u_input.a) % vec3<u32>(32u)), min(vec3<u32>(0u, 25296u, u_input.a), vec3<u32>(2776u, u_input.c.x, u_input.c.x))), countOneBits(vec3<u32>(0u, 61799u, u_input.a)), true), vec3<u32>(u_input.a, firstTrailingBit(u_input.a), reverseBits(u_input.c.x))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_3(abs(11620u));
    let var_1 = Struct_2(arg_3, arg_3.a.x, !(!(!arg_3.a.xz)), false);
    var_0 = Struct_3(firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 4294967295u), u_input.c)))));
    var_0 = Struct_3(_wgslsmith_dot_vec3_u32(func_3(Struct_1(select(arg_3.a, arg_3.a, arg_3.a), true, var_1.a.c), arg_3), vec3<u32>(u_input.a, arg_0, ~arg_0) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, var_0.a, 1u), vec3<u32>(var_0.a, 35728u, 0u) | vec3<u32>(21684u, 4294967295u, var_0.a), abs(vec3<u32>(u_input.a, var_0.a, u_input.c.x))) % vec3<u32>(32u))));
    let var_2 = firstTrailingBit(u_input.c);
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(100f, -242f)), 1694f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1406f) - _wgslsmith_f_op_f32(round(575f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1862f, -601f) - _wgslsmith_div_f32(-1631f, 1224f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2329f + 1000f))), -1468f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1229f)) + 162f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-628f, 411f))))));
    let var_1 = Struct_1(!(!(!select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, true, false), arg_0.x))), arg_0.x == arg_0.x, -1i);
    let var_2 = var_0.yy;
    var var_3 = false;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-896f, -478f, var_2.x) + vec3<f32>(var_2.x, 177f, 303f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-930f, -954f, 337f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(exp2(var_2.x)), 1f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 370f, 203f)), vec3<f32>(var_2.x, -433f, -408f))))));
    return Struct_3(~23554u);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = func_4(vec2<bool>(any(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, func_2(arg_0.a, u_input.e.x, vec3<f32>(1000f, -123f, -1156f), Struct_1(vec4<bool>(true, true, false, false), true, u_input.d)))), false), vec4<u32>(0u, 33423u, 1u, u_input.a));
    var var_1 = Struct_1(!select(vec4<bool>(any(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, false)), true, -21884i > u_input.d), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), true)), all(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), u_input.b);
    var var_2 = Struct_1(var_1.a, !(all(var_1.a) && !all(vec2<bool>(true, true))), ~_wgslsmith_sub_i32(-16445i, var_1.c));
    var var_3 = var_1.c & abs(var_1.c);
    let var_4 = var_0.a;
    return Struct_1(var_1.a, arg_0.a == (var_4 & ((6106u | var_4) & 4294967295u)), abs(-(~_wgslsmith_clamp_i32(0i, u_input.b, 33349i))));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = -select(-u_input.e.xyx, u_input.e.zyx, func_1(func_4(var_0.a.ww, ~vec4<u32>(4294967295u, 31239u, 4294967295u, u_input.a))).b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1294f + _wgslsmith_f_op_f32(select(-1931f, 1207f, true))) - -2399f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(519f + -557f) - 199f))));
    var var_3 = func_1(Struct_3(u_input.c.x));
    var_1 = u_input.e.yxy;
    return func_4(var_3.a.yw, max(abs(vec4<u32>(11604u, u_input.a, u_input.c.x, u_input.a) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 31730u, u_input.c.x, u_input.a), vec4<u32>(u_input.c.x, 17556u, 0u, 4294967295u)) % vec4<u32>(32u))), vec4<u32>(1u, u_input.c.x, ~reverseBits(26703u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 11407u, 0u), select(vec3<u32>(4294967295u, u_input.a, u_input.c.x), vec3<u32>(0u, u_input.a, u_input.c.x), true)))));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1912f, -541f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1257f, 1455f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f - 1000f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) * 786f), -783f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2813f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(295f, -897f)))))));
    let var_1 = select(!(!vec4<bool>(true, false, true, any(vec4<bool>(false, false, true, true)))), func_1(arg_1).a, false);
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1899f, var_0.x, -1117f, var_0.x) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1491f, 397f, 253f) + vec4<f32>(var_0.x, -502f, var_0.x, 400f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-498f, var_0.x, var_0.x, 1942f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1948f, 162f, var_0.x, -479f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(676f, 2098f, var_0.x, var_0.x)))), var_1.x)))));
    var var_2 = Struct_1(!(!vec4<bool>(var_1.x, false, true, true)), var_1.x, 2147483647i);
    var var_3 = u_input.a;
    return max(u_input.e.xw, (reverseBits(firstLeadingBit(vec2<i32>(26821i, var_2.c))) >> (arg_0 % vec2<u32>(32u))) >> (~(~vec2<u32>(38487u, 4294967295u)) % vec2<u32>(32u)));
}

fn func_7(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = abs(u_input.a);
    var var_1 = func_1(func_4(!select(func_1(Struct_3(u_input.a)).a.wz, select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), select(true, arg_0, arg_0)), countOneBits(firstTrailingBit(~vec4<u32>(16234u, 1u, var_0, arg_1)))));
    var var_2 = Struct_2(func_1(Struct_3(0u)), func_1(func_5(func_1(func_4(vec2<bool>(false, false), vec4<u32>(u_input.a, u_input.c.x, 88364u, 17890u))))).b, vec2<bool>(u_input.b > -2147483647i, true | ((u_input.e.x | -2147483647i) <= u_input.b)), false);
    var var_3 = Struct_1(func_1(Struct_3(1u)).a, !any(vec3<bool>(var_1.a.x, true, var_2.d)) | true, abs(u_input.d) >> (~arg_1 % 32u));
    var var_4 = Struct_2(Struct_1(!(!select(var_2.a.a, var_3.a, true)), true, _wgslsmith_div_i32(func_6(u_input.c, Struct_3(arg_1)).x, i32(-1i) * -1i) | func_6(~u_input.c, func_5(Struct_1(var_3.a, true, 2147483647i))).x), true, !func_1(Struct_3(4294967295u)).a.yz, false);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(~u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c.x) | ~vec2<u32>(u_input.c.x, u_input.c.x), ~vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_div_u32(_wgslsmith_add_u32(~0u, ~u_input.c.x), u_input.c.x)));
    var var_1 = u_input.e.yz;
    var var_2 = Struct_3(~(u_input.a & countOneBits(~4294967295u)));
    var var_3 = true;
    var var_4 = func_7(!(_wgslsmith_f_op_f32(f32(-1f) * -1520f) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-466f, 1487f))))), _wgslsmith_clamp_u32(var_2.a, 6964u, var_2.a), max(~(u_input.e.wx ^ u_input.e.zx), func_6(~vec2<u32>(33128u, u_input.a), func_5(func_1(Struct_3(68164u))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.c, _wgslsmith_add_i32(-27962i, 1i) | -_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.c, -2147483647i, -45249i, 28120i) ^ u_input.e, _wgslsmith_add_vec4_i32(u_input.e, u_input.e)));
}

