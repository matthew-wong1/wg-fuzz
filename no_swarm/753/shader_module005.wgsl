struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_3(~(~reverseBits(vec3<u32>(1u, 1u, u_input.b))), 1u);
    return abs(1u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(!arg_1.x, arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 + -449f))), _wgslsmith_f_op_f32(arg_2 + arg_2)))), arg_2, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))), arg_2));
    var var_1 = Struct_3(~(~vec3<u32>(func_3(81436i), u_input.c & u_input.d.x, select(u_input.b, u_input.d.x, false))), u_input.d.x | _wgslsmith_mult_u32(abs(1u), 0u));
    var_1 = Struct_3(select(max(_wgslsmith_mod_vec3_u32(reverseBits(var_1.a), ~u_input.d.xxy), u_input.d.zxz), u_input.d.yzz, any(select(vec2<bool>(var_0.a.a, true), vec2<bool>(false, var_0.a.a), true))), ~_wgslsmith_dot_vec3_u32(u_input.d.wzz, ~firstTrailingBit(vec3<u32>(var_1.b, 583u, u_input.b))));
    var_1 = Struct_3(abs(~vec3<u32>(max(var_1.a.x, u_input.b), abs(u_input.d.x), 25193u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d.xww, vec3<u32>(4294967295u, u_input.b, var_1.b)), vec3<u32>(u_input.d.x, 4294967295u, var_1.b) & vec3<u32>(90947u, 4294967295u, u_input.d.x)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(86420u, u_input.c, 1u), var_1.a, vec3<u32>(19926u, 1u, 1u)))), var_1.a));
    var var_2 = Struct_3(~_wgslsmith_div_vec3_u32(u_input.d.zyx, var_1.a) << (~u_input.d.ywx % vec3<u32>(32u)), ~var_1.b);
    return var_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_4(Struct_2(func_2(firstTrailingBit(vec3<i32>(32283i, 19477i, -2147483647i)), vec3<bool>(arg_1.x != true, arg_1.x, any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_2.a.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(181f, arg_2.c.x, true))))).a, _wgslsmith_f_op_f32(sign(arg_2.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(arg_2.b * -1949f), _wgslsmith_f_op_f32(round(arg_2.b))))), ~(~u_input.d.zwx));
    var var_1 = any(select(select(!select(arg_1, vec4<bool>(false, false, false, arg_2.a.a), vec4<bool>(false, arg_1.x, false, false)), select(!vec4<bool>(arg_1.x, false, false, true), arg_1, false), true), vec4<bool>(var_0.a.a.a && false, true, !all(arg_1), var_0.a.a.a), arg_1));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c * _wgslsmith_f_op_vec3_f32(abs(var_0.a.c))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1723f, -1509f, arg_2.b), vec3<f32>(1000f, -896f, arg_2.c.x)))))) + arg_2.c)));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    var var_4 = func_2(~(countOneBits(firstLeadingBit(vec3<i32>(19126i, u_input.a, u_input.a))) | abs(max(vec3<i32>(var_0.a.a.b, -45594i, -16623i), vec3<i32>(42394i, -1i, -27003i)))), vec3<bool>(arg_1.x, false, !arg_2.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - 491f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))).a;
    return var_4.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    let var_0 = ~(max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -47485i) ^ arg_0, countOneBits(arg_0)), func_4(~vec4<u32>(1u, 48135u, arg_1.a.x, arg_2.b), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), func_2(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<bool>(true, false, true), 1000f))) << (arg_2.b % 32u));
    let var_1 = func_2(select(~(~(-vec3<i32>(2147483647i, var_0, var_0))), vec3<i32>(0i, firstLeadingBit(var_0), arg_0.x), !vec3<bool>(true, true, func_2(vec3<i32>(var_0, arg_0.x, 13091i), vec3<bool>(false, true, true), -429f).a.a)), !vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true, true), _wgslsmith_f_op_f32(2388f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(952f, -191f, true)) + 318f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(var_1.c + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1764f, var_1.b, var_1.a.c)), var_1.c, false)))));
    var var_3 = func_2(~(~(-reverseBits(vec3<i32>(var_1.a.b, u_input.a, 0i)))), !select(select(select(vec3<bool>(var_1.a.a, var_1.a.a, var_1.a.a), vec3<bool>(var_1.a.a, false, false), vec3<bool>(var_1.a.a, true, var_1.a.a)), select(vec3<bool>(false, var_1.a.a, var_1.a.a), vec3<bool>(var_1.a.a, true, false), false), !var_1.a.a), !(!vec3<bool>(false, var_1.a.a, true)), !select(vec3<bool>(var_1.a.a, false, false), vec3<bool>(false, true, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -1460f)).c.x;
    let var_4 = vec2<i32>(u_input.a, var_0);
    return Struct_4(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, 1i, 1640i) | vec3<i32>(-40824i, u_input.a, -5389i), vec3<i32>(var_1.a.b, var_0, abs(46085i))), select(select(vec3<bool>(var_1.a.a, false, var_1.a.a), select(vec3<bool>(false, var_1.a.a, false), vec3<bool>(true, true, false), var_1.a.a), select(vec3<bool>(true, var_1.a.a, var_1.a.a), vec3<bool>(true, true, var_1.a.a), vec3<bool>(var_1.a.a, var_1.a.a, true))), vec3<bool>(any(vec2<bool>(var_1.a.a, false)), all(vec2<bool>(false, var_1.a.a)), all(vec3<bool>(false, false, var_1.a.a))), !select(vec3<bool>(var_1.a.a, true, var_1.a.a), vec3<bool>(false, false, var_1.a.a), vec3<bool>(true, var_1.a.a, var_1.a.a))), var_2.x), ~arg_1.a);
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(round(388f));
    var var_1 = ~func_3(-2147483647i);
    let var_2 = func_2(vec3<i32>(-1i, u_input.a, 2147483647i), select(vec3<bool>(func_2(vec3<i32>(arg_0.a.a.b, u_input.a, 2147483647i) >> (vec3<u32>(arg_0.b.x, u_input.d.x, u_input.b) % vec3<u32>(32u)), select(vec3<bool>(arg_0.a.a.a, arg_0.a.a.a, arg_0.a.a.a), vec3<bool>(false, arg_0.a.a.a, arg_0.a.a.a), arg_0.a.a.a), arg_0.a.b).a.a, arg_0.a.a.a, arg_0.a.a.a), !vec3<bool>(true, arg_1 < 1u, true), vec3<bool>(arg_0.a.a.a, arg_0.a.a.a, any(vec3<bool>(true, arg_0.a.a.a, true)))), arg_0.a.c.x);
    let var_3 = abs(~func_1(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(27957i, -27414i), vec2<i32>(-42741i, arg_0.a.a.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a.a.b, arg_0.a.a.b), vec2<i32>(40099i, u_input.a))), Struct_3(~vec3<u32>(arg_1, 65725u, 24598u), arg_1), Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 27079u, u_input.b), u_input.d.wyw), u_input.d.x)).b.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-146f, -358f));
    return min(select(var_2.a.b, firstTrailingBit(var_2.a.b), true & arg_0.a.a.a), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = vec3<i32>(func_5(func_1(~vec2<i32>(u_input.a, -50421i), Struct_3(u_input.d.xyx, u_input.d.x), Struct_3(vec3<u32>(78685u, u_input.b, u_input.c), 48879u)), _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.d.x))) & firstLeadingBit(u_input.a), u_input.a, u_input.a);
    let var_2 = Struct_4(Struct_2(Struct_1(true, u_input.a, func_1(vec2<i32>(var_1.x, 1i) << (u_input.d.zy % vec2<u32>(32u)), Struct_3(u_input.d.yyw, u_input.b), Struct_3(u_input.d.wxz, u_input.b)).a.a.c), -1000f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1037f))), 928f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1408f, 935f, false)) + _wgslsmith_div_f32(158f, -584f)))), u_input.d.xxz);
    var var_3 = func_1(vec2<i32>(1395i, 0i), Struct_3(u_input.d.yxx, 0u), Struct_3(var_2.b >> (~var_2.b % vec3<u32>(32u)), 29299u));
    let var_4 = u_input.d;
    var var_5 = _wgslsmith_clamp_i32(u_input.a, func_1(var_1.zy, Struct_3(var_2.b, ~4294967295u), Struct_3(~vec3<u32>(29795u, var_2.b.x, var_3.b.x), _wgslsmith_mult_u32(u_input.d.x, ~0u))).a.a.b, _wgslsmith_add_i32(-countOneBits(-2147483647i), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.x, -2147483647i), firstTrailingBit(-2147483647i))));
    var_0 = ~func_5(func_1(var_1.zz, Struct_3(u_input.d.ywx, ~4294967295u), Struct_3(firstTrailingBit(var_2.b), firstTrailingBit(u_input.c))), var_2.b.x >> (func_1(-var_1.zz, Struct_3(vec3<u32>(4294967295u, var_2.b.x, 14172u), 10752u), Struct_3(vec3<u32>(var_3.b.x, var_2.b.x, 4294967295u), var_2.b.x)).b.x % 32u));
    let var_6 = Struct_2(Struct_1(true, -8835i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.c.x + -217f) - var_2.a.a.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.b), var_3.a.a.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, var_3.a.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + 1002f), _wgslsmith_f_op_f32(select(var_3.a.a.c, var_2.a.b, true))))) - _wgslsmith_f_op_vec3_f32(-var_2.a.c)));
    var var_7 = var_3.b.x & (var_2.b.x & ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(779f)) - var_6.c.x), _wgslsmith_sub_i32(~var_1.x, -(~(-var_2.a.a.b))));
}

