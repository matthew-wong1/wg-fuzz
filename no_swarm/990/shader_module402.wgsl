struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_sub_u32(u_input.b, reverseBits(55650u));
    global0 = _wgslsmith_f_op_f32(max(-2272f, _wgslsmith_f_op_f32(1528f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(309f + -1000f), _wgslsmith_f_op_f32(-380f * -1032f), true)) - 1f))));
    global0 = 926f;
    global0 = -1682f;
    global0 = -1422f;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1142f, _wgslsmith_f_op_f32(abs(-1000f)), 1008f, -1513f)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.wwy);
    var var_1 = Struct_1(vec3<i32>(~max(~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-31992i, 0i, 4888i), vec3<i32>(0i, 0i, -47743i))), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(18876i, 2147483647i, 10678i, 2147483647i), vec4<i32>(-2147483647i, -32700i, -16049i, -25185i)) & -12937i), -1i | min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(-8392i, 1i, 56354i)), _wgslsmith_dot_vec2_i32(vec2<i32>(47603i, 1i), vec2<i32>(-2147483647i, -6975i)))), _wgslsmith_mult_i32(4306i, _wgslsmith_clamp_i32(0i, -2147483647i, _wgslsmith_mod_i32(countOneBits(2147483647i), _wgslsmith_clamp_i32(-67463i, 51821i, 0i)))), arg_3.x, i32(-1i) * -66514i);
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(select(max(select(var_1.a, vec3<i32>(var_1.a.x, var_1.d, var_1.a.x), false), vec3<i32>(1i, var_1.d, var_1.a.x)), vec3<i32>(abs(var_1.d), var_1.b, -var_1.b), vec3<bool>(true, true, true)), var_1.a ^ _wgslsmith_div_vec3_i32(vec3<i32>(var_1.b, var_1.b, 1i), var_1.a)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(firstLeadingBit(2147483647i), var_1.b, ~var_1.b, -2147483647i), _wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, var_1.a.x, -10565i, -12742i), vec4<i32>(-2147483647i, -2147483647i, -10684i, var_1.d))), _wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(59113i), var_1.d, var_1.a.x, ~4625i), vec4<i32>(-1i, -1i, max(-40550i, 2147483647i), firstTrailingBit(0i)))), 1u, -_wgslsmith_add_i32(-var_1.a.x, var_1.a.x));
    var_1 = var_2;
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1), vec4<f32>(var_0.x, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-778f, _wgslsmith_f_op_f32(max(465f, 904f)))) - -574f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(ceil(arg_0))))))));
    return u_input.a;
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = -286f;
    global0 = 982f;
    global0 = var_0;
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_1.a);
    return arg_0.a.zy;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    var var_0 = arg_1.a.a.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427f + _wgslsmith_f_op_f32(min(-1506f, -722f))));
    let var_1 = func_4(Struct_1(-(~vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), (40763i | _wgslsmith_div_i32(arg_0.x, 16746i)) & _wgslsmith_mult_i32(-14358i, i32(-1i) * -27921i), _wgslsmith_dot_vec3_u32(u_input.a, func_3(_wgslsmith_div_f32(-716f, 111f), arg_1.a.a, vec2<u32>(0u, u_input.c), ~vec4<u32>(0u, 45942u, 42330u, 0u))), -firstLeadingBit(i32(-1i) * -3750i)));
    global0 = -1115f;
    global0 = arg_2;
    return Struct_1(select(~select(arg_0.yzy & vec3<i32>(2147483647i, arg_0.x, 33593i), arg_0.ywy, true), reverseBits(vec3<i32>(21167i, 11628i, -1i) << (u_input.a % vec3<u32>(32u))), !select(!arg_1.c.zxw, vec3<bool>(false, arg_1.c.x, arg_1.c.x), arg_1.c.wwz)), arg_0.x, _wgslsmith_mult_u32(1423u, func_3(arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a.a + arg_1.b.a) - vec4<f32>(arg_1.a.a.x, arg_2, arg_1.b.a.x, arg_1.b.a.x)), func_3(-1569f, func_1().a, u_input.a.zz, ~vec4<u32>(u_input.c, u_input.a.x, 0u, u_input.b)).zy, _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 1u), vec4<u32>(1u, 4294967295u, u_input.c, u_input.c)), ~vec4<u32>(4294967295u, u_input.a.x, u_input.b, 45832u))).x), _wgslsmith_div_i32(max(~(-35552i), -1i), -select(var_1.x, var_1.x, -110f >= arg_2)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_4) -> f32 {
    global0 = -1791f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f));
    global0 = _wgslsmith_f_op_f32(trunc(-818f));
    global0 = arg_3.a.a.x;
    let var_0 = arg_3.c.x;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (70142u == _wgslsmith_mult_u32(~min(u_input.a.x, 1u), _wgslsmith_div_u32(_wgslsmith_div_u32(51809u, 4294967295u), u_input.c))) | !(!all(vec2<bool>(true, true)));
    global0 = 527f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-324f, _wgslsmith_f_op_f32(min(-715f, 562f)), false))))) - _wgslsmith_f_op_f32(278f + _wgslsmith_f_op_f32(func_5(func_1(), func_2(vec4<i32>(1i, 1i, 1i, 1i), Struct_4(Struct_2(vec4<f32>(-1039f, -1210f, 893f, -614f)), Struct_2(vec4<f32>(1000f, -419f, 1000f, -595f)), vec4<bool>(false, var_0, true, false), vec2<bool>(false, var_0)), 1189f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(254f, 292f, 299f))))), Struct_4(func_1(), func_1(), !vec4<bool>(var_0, var_0, false, true), vec2<bool>(var_0, var_0))))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-286f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1264f)))), _wgslsmith_f_op_f32(f32(-1f) * -252f), 764f), vec3<u32>(u_input.c, select(_wgslsmith_div_u32(func_2(vec4<i32>(-2147483647i, -23947i, 50659i, 53366i), Struct_4(Struct_2(vec4<f32>(1000f, 229f, 1000f, 928f)), Struct_2(vec4<f32>(-364f, 276f, 113f, 500f)), vec4<bool>(var_0, var_0, var_0, false), vec2<bool>(var_0, var_0)), -250f).c, u_input.b), ~_wgslsmith_dot_vec3_u32(vec3<u32>(2214u, 73693u, u_input.a.x), u_input.a), true & any(vec4<bool>(var_0, var_0, var_0, var_0))), ~42604u), -1226f, firstLeadingBit(~reverseBits(~vec4<u32>(u_input.c, 44341u, u_input.a.x, u_input.a.x))), firstTrailingBit(~func_2(vec4<i32>(-484i, -46476i, -38607i, 1i), Struct_4(Struct_2(vec4<f32>(135f, 1732f, -569f, 1400f)), Struct_2(vec4<f32>(962f, 109f, 1599f, -503f)), vec4<bool>(true, false, var_0, var_0), vec2<bool>(true, var_0)), -261f).a ^ ~vec3<i32>(1i, 1i, 1i)));
}

